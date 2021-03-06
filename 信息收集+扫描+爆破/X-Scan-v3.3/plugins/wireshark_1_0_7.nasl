#
# (C) Tenable Network Security, Inc.
#


include("compat.inc");

if (description)
{
  script_id(36127);
  script_version("$Revision: 1.5 $");

  script_cve_id(
    "CVE-2009-1210",
    "CVE-2009-1267",
    "CVE-2009-1268",
    "CVE-2009-1269"
  );
  script_bugtraq_id(34291,34457);
  script_xref(name:"milw0rm", value:"8308");
  script_xref(name:"OSVDB", value:"52996");
  script_xref(name:"OSVDB", value:"53669");
  script_xref(name:"OSVDB", value:"53670");
  script_xref(name:"OSVDB", value:"53671");
  script_xref(name:"Secunia", value:"34542");

  script_name(english:"Wireshark / Ethereal 0.99.2 to 1.0.6 Multiple Vulnerabilities");
  script_summary(english:"Checks Wireshark / Ethereal version");

  script_set_attribute(attribute:"synopsis", value:
"The remote host has an application that is affected by multiple
vulnerabilities.");
  script_set_attribute(attribute:"description", value:
"The installed version of Wireshark or Ethereal is affected by multiple
issues :

  - The PROFINET dissector is affected by a format string
    vulnerability which an attacker could exploit to execute
    arbitrary code. (Bug 3372)

  - Wireshark could crash while reading a malformed LDAP
    capture file. (Bug 3262)

  - Wireshark could crash while reading a malformed Check
    Point High-Availability Protocol capture file. 
    (Bug 3269)

  - Wireshark could crash while reading a Tektronix .rf5
    capture file. (Bug 3366)" );
  script_set_attribute(attribute:"see_also", value:"https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=3382" );
  script_set_attribute(attribute:"see_also", value:"https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=3262" );
  script_set_attribute(attribute:"see_also", value:"https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=3269" );
  script_set_attribute(attribute:"see_also", value:"https://bugs.wireshark.org/bugzilla/show_bug.cgi?id=3366" );
  script_set_attribute(attribute:"see_also", value:"http://www.wireshark.org/security/wnpa-sec-2009-02.html" );
  script_set_attribute(attribute:"see_also", value:"http://www.wireshark.org/docs/relnotes/wireshark-1.0.7.html" );
  script_set_attribute(attribute:"solution", value:
"Upgrade to Wireshark 1.0.7 or later." );
  script_set_attribute(attribute:"cvss_vector", value: "CVSS2#AV:N/AC:H/Au:N/C:C/I:C/A:C" );

  script_end_attributes();

  script_category(ACT_GATHER_INFO);
  script_family(english:"Windows");

  script_copyright(english:"This script is Copyright (C) 2009 Tenable Network Security, Inc.");

  script_dependencies("wireshark_installed.nasl");
  script_require_keys("SMB/Wireshark/Installed");
  script_require_ports(139, 445);
  
  exit(0);
}

include("global_settings.inc");

# Check each install.
installs = get_kb_list("SMB/Wireshark/*");
if (isnull(installs)) exit(0);

info = "";
foreach install(keys(installs))
{
  version = install - "SMB/Wireshark/";
  ver = split(version, sep:".", keep:FALSE);
  for (i=0; i<max_index(ver); i++)
    ver[i] = int(ver[i]);

  if (
    (
      ver[0] == 0 &&
      (
        (ver[1] == 99 && ver[2] >= 2) ||
        ver[1] > 99
      )
    ) ||
    (ver[0] == 1 && ver[1] == 0 && ver[2] < 7)
  ) info += '  - Version ' + version + ', under ' + installs[install] + '\n';
}

# Report if any were found to be vulnerable
if (info)
{
  if (report_verbosity > 0)
  {
    if (max_index(split(info)) > 1) s = "s of Wireshark / Ethereal are";
    else s = " of Wireshark or Ethereal is";

    report = string(
      "\n",
      "The following vulnerable instance", s, " installed : \n",
      "\n",
      info
    );
    security_hole(port:get_kb_item("SMB/transport"), extra:report);
  }
  else security_hole(get_kb_item("SMB/transport"));
}
