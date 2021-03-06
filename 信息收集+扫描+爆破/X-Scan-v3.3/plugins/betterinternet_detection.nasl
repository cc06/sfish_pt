#
# (C) Tenable Network Security, Inc.
#


include("compat.inc");


if(description)
{
 script_id(12011);
 script_version("$Revision: 1.7 $");

 script_name(english:"BetterInternet Software Detection");
 script_summary(english:"BetterInternet detection");

 script_set_attribute(
   attribute:"synopsis",
   value:"An adware program is installed on the remote host."
 );
 script_set_attribute(
   attribute:"description", 
   value:string(
     "The remote host is using BetterInternet.  This program monitors web\n",
     "traffic, displaying pop-up/pop-under advertisements based on the content."
   )
 );
 script_set_attribute(
   attribute:"see_also",
   value:"http://www.ca.com/securityadvisor/pest/pest.aspx?id=453088466"
 );
 script_set_attribute(
   attribute:"solution", 
   value:"Remove this program using a adware or spyware removal product."
 );
 script_set_attribute(
   attribute:"cvss_vector", 
   value:"CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:N"
 );
 script_end_attributes();

 script_category(ACT_GATHER_INFO);
 script_family(english:"Windows");
 
 script_copyright(english:"This script is Copyright (C) 2004-2009 Tenable Network Security, Inc.");
 
 script_dependencies("smb_registry_full_access.nasl");
 script_require_keys("SMB/registry_full_access");

 script_require_ports(139, 445);
 exit(0);
}


# start the script
include("smb_func.inc");
if ( ! get_kb_item("SMB/Registry/Enumerated") ) exit(0);

path[0] = "software\classes\clsid\{ddffa75a-e81d-4454-89fc-b9fd0631e726}";
path[1] = "software\dbi";
path[2] = "software\microsoft\code store database\distribution units\{30000273-8230-4dd4-be4f-6889d1e74167}";
path[3] = "software\microsoft\windows\currentversion\shell extensions\approved\{ddffa75a-e81d-4454-89fc-b9fd0631e726}";
path[4] = "software\microsoft\windows\currentversion\uninstall\dbi";


port = kb_smb_transport();
if(!port || ! get_port_state(port) )exit(0);

login = kb_smb_login();
pass  = kb_smb_password();
domain = kb_smb_domain();

          
soc = open_sock_tcp(port);
if(!soc) exit(0);

session_init(socket:soc, hostname:kb_smb_name());
r = NetUseAdd(login:login, password:pass, domain:domain, share:"IPC$");
if ( r != 1 ) exit(0);

handle = RegConnectRegistry(hkey:HKEY_LOCAL_MACHINE);
if ( isnull(handle) )
{
 NetUseDel();
 exit(0);
}


for (i=0; path[i]; i++) {
       key_h = RegOpenKey(handle:handle, key:path[i], mode:MAXIMUM_ALLOWED);
       if ( !isnull(key_h) ) 
       { 
         RegCloseKey(handle:key_h);
         RegCloseKey(handle:handle);
	 security_warning(port); 
	 NetUseDel();
	 exit(0);
       }
}


RegCloseKey(handle:handle);
NetUseDel();
