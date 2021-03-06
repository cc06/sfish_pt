#
# This script was written by David Maciejak <david dot maciejak at kyxar dot fr>
# based on work from Tenable Network Security
#
# This script is released under the GNU GPLv2
#

# Changes by Tenable:
# - Revised plugin title, added VDB refs, revised description (4/7/2009)


include("compat.inc");

if(description)
{
 script_id(16229);
 script_version("$Revision: 1.6 $");
 script_cve_id("CVE-2005-0200");
 script_bugtraq_id(12328);
 script_xref(name:"OSVDB", value:"13119");
 
 script_name(english:"TikiWiki File Upload temp Directory Arbitrary Script Execution");

 script_set_attribute(attribute:"synopsis", value:
"A web application on the remote host has an arbitrary code execution
vulnerability." );
 script_set_attribute(attribute:"description", value:
"The remote host is running TikiWiki, a content management system written
in PHP.

The remote version of this software is vulnerable to a flaw in the way
TikiWiki handles uploaded files. If an attacker is able to upload a file,
they can then call the script remotely via a request to the $tikiroot/temp/
directory. This would allow for the execution of arbitrary PHP code on
the web server." );
 script_set_attribute(attribute:"solution", value:
"Upgrade to latest version" );
 script_set_attribute(attribute:"cvss_vector", value:"CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P" );

script_end_attributes();

 
 script_summary(english:"Checks the version of TikiWiki");
 
 script_category(ACT_GATHER_INFO);
 
 script_copyright(english:"This script is Copyright (C) 2005-2009 David Maciejak");
 script_family(english:"CGI abuses");
 script_dependencie("http_version.nasl");
 script_require_ports("Services/www", 80);
 script_exclude_keys("Settings/disable_cgi_scanning");
 exit(0);
}

#
# The script code starts here
#

include("http_func.inc");
include("http_keepalive.inc");

port = get_http_port(default:80);

if(!get_port_state(port))exit(0);
if(!can_host_php(port:port))exit(0);
function check(loc)
{
 local_var r, req;
 req = http_get(item: loc + "/tiki-index.php", port:port);
 r = http_keepalive_send_recv(port:port, data:req, bodyonly:1);
 if( r == NULL )exit(0);
 if( egrep(pattern:"This is Tiki v(0\.|1\.[0-7]\.|1\.8\.[0-5][^0-9]|1\.9 RC(1|2|3|3\.1)([^.]|[^0-9]))", string:r) )
 {
 	security_hole(port);
	exit(0);
 }
}

foreach dir (cgi_dirs())
{
 check(loc:dir);
}
