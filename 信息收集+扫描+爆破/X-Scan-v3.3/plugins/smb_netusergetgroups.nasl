#
# (C) Tenable Network Security, Inc.
#


include("compat.inc");

if(description)
{
 script_id(10894);
 script_version("$Revision: 1.15 $");
 name["english"] = "Obtains the lists of users groups";

 script_name(english:name["english"]);
 
 script_set_attribute(attribute:"synopsis", value:
"It is possible to retrieve users groups." );
 script_set_attribute(attribute:"description", value:
"Using the supplied credentials it was possible to retrieve the
list of groups each user belongs to.
Groups are stored in the KB for further checks." );
 script_set_attribute(attribute:"risk_factor", value:"None" );
 script_set_attribute(attribute:"solution", value:"n/a" );
 script_end_attributes();

 
 summary["english"] = "Implements NetUserGetGroups()";

 
 script_summary(english:summary["english"]);
 
 script_category(ACT_GATHER_INFO);
 
 
 script_copyright(english:"This script is Copyright (C) 2005-2009 Tenable Network Security, Inc.");
 family["english"] = "Windows : User management";
 script_family(english:family["english"]);
 script_dependencies("netbios_name_get.nasl",
 		     "smb_login.nasl", 
		     "smb_sid2user.nasl",
		     "snmp_lanman_users.nasl");
 script_require_keys("SMB/transport", "SMB/name", "SMB/login", "SMB/password", "SMB/Users/enumerated");
 script_require_ports(139, 445);
 exit(0);
}

#deprecated
exit(0);

include("smb_func.inc");

port = get_kb_item("SMB/transport");
if(!port)port = 139;

name	= kb_smb_name(); 	if(!name)exit(0);
login	= kb_smb_login(); 
pass	= kb_smb_password(); 	
domain  = kb_smb_domain(); 	
port	= kb_smb_transport();

if ( ! get_port_state(port) ) exit(0);
soc = open_sock_tcp(port);
if ( ! soc ) exit(0);

session_init(socket:soc, hostname:name);
r = NetUseAdd(login:login, password:pass, domain:domain, share:"IPC$");
if ( r != 1 ) exit(0);

count = 1;
login = string(get_kb_item(string("SMB/Users/", count)));
while(login)
{
 groups = NetUserGetGroups (user:login);

 foreach group (groups)
 {
  name = string("SMB/Users/", count, "/Groups");
  set_kb_item(name:name, value:group);
 }	     

 count = count + 1;
 login = string(get_kb_item(string("SMB/Users/", count)));
}

NetUseDel ();
