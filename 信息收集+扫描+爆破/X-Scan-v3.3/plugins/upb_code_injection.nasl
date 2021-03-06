# 
# (C) Tenable Network Security, Inc.
#


include("compat.inc");

if(description)
{
 script_id(11671);
 script_version ("$Revision: 1.10 $");
 script_cve_id("CVE-2003-0395");
 script_bugtraq_id(7678);
 script_xref(name:"OSVDB", value:"12052");
 
 script_name(english:"Ultimate PHP Board admin_iplog.php Arbitrary Code Execution");

 script_set_attribute(attribute:"synopsis", value:
"The remote host has a PHP script that may allow arbitrary code
execution on the remote system." );
 script_set_attribute(attribute:"description", value:
"The remote host is running Ultimate PHP Board (UPB).

There is a flaw in this version which may allow an attacker
to execute arbitrary code on this host, by sending a malformed
user-agent which contains PHP commands.  Once the user-agent
has been sent, it is stored in the logs. When the administrator
of this web site will read the logs through admin_ip.php,
the code will be executed." );
 script_set_attribute(attribute:"solution", value:
"Upgrade to the latest version of this CGI." );
 script_set_attribute(attribute:"cvss_vector", value: "CVSS2#AV:N/AC:L/Au:N/C:C/I:C/A:C" );

script_end_attributes();

 
 script_summary(english:"Checks for UPB");
 
 script_category(ACT_GATHER_INFO);
 
 script_copyright(english:"This script is Copyright (C) 2003-2009 Tenable Network Security, Inc.");
 script_family(english:"CGI abuses");
 script_dependencie("find_service1.nasl", "http_version.nasl");
 script_require_ports("Services/www", 80);
 script_exclude_keys("Settings/disable_cgi_scanning");
 exit(0);
}

# The script code starts here

include("global_settings.inc");
include("misc_func.inc");
include("http.inc");

port = get_http_port(default:80);
if(!can_host_php(port:port))exit(0, "The remote web server does not support PHP.");

# Loop through directories.
if (thorough_tests) dirs = list_uniq(make_list( "/upb", "/board", cgi_dirs()));
else dirs = make_list(cgi_dirs());

foreach d (dirs)
{
 res = http_send_recv3(method:"GET", item:string(d, "/index.php"), port:port);
 if(isnull(res) ) exit(1,"Null response to index.php request.");
 if(egrep(pattern:"Powered by<br>UPB Version :.* 1\.(0[^0-9]|[0-9])", string:res[2]))
  {
    security_hole(port);
    exit(0);
  }
}
