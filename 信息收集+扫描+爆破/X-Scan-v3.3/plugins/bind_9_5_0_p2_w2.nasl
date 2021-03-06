#
# (C) Tenable Network Security, Inc.
#


include("compat.inc");

if (description)
{
  script_id(34245);
  script_version("$Revision: 1.7 $");

  script_cve_id("CVE-2008-4163");
  script_bugtraq_id(31252);
  script_xref(name:"OSVDB", value:"48243");

  script_name(english:"ISC BIND 9 for Windows UDP Client Handler Remote DoS");
  script_summary(english:"Checks version of BIND");

 script_set_attribute(attribute:"synopsis", value:
"The remote name server is affected by a denial of service
vulnerability." );
 script_set_attribute(attribute:"description", value:
"According to its version number, the remote installation of BIND
suffers from a vulnerability in which the UDP client handler can be
shutdown, which in turn causes the server to stop responding to UDP
queries. 

Note that this issue only exists in the Windows code of BIND
9.5.0-P2-W1 / 9.4.2-P2-W1 / 9.3.5-P2-W1." );
 script_set_attribute(attribute:"see_also", value:"http://marc.info/?l=bind-users&m=122063620115891&w=2" );
 script_set_attribute(attribute:"see_also", value:"http://marc.info/?l=bind-users&m=122169697502216&w=2" );
 script_set_attribute(attribute:"see_also", value:"http://marc.info/?l=bind-announce&m=122180376630150&w=2" );
 script_set_attribute(attribute:"see_also", value:"http://marc.info/?l=bind-announce&m=122180244228378&w=2" );
 script_set_attribute(attribute:"see_also", value:"http://marc.info/?l=bind-announce&m=122180244228376&w=2" );
 script_set_attribute(attribute:"solution", value:
"Upgrade to BIND 9.5.0-P2-W2 / 9.4.2-P2-W2 / 9.3.5-P2-W2 or later." );
 script_set_attribute(attribute:"cvss_vector", value: "CVSS2#AV:N/AC:L/Au:N/C:N/I:N/A:P" );
script_end_attributes();

 
  script_category(ACT_GATHER_INFO);
  script_family(english: "DNS");
  script_copyright(english:"This script is Copyright (C) 2007-2009 Tenable Network Security, Inc.");
  script_dependencies("bind_version.nasl", "os_fingerprint.nasl");
  script_require_keys("bind/version");

  exit(0);
}


include("global_settings.inc");


os = get_kb_item("Host/OS");
if (!os || "Windows" >!< os) exit(0);


ver = get_kb_item("bind/version");
if (ver && ver =~ "^9\.(3\.5|4\.2|5\.0)-P2-W1($|[^0-9])") 
  security_warning(port:53, proto:"udp");
