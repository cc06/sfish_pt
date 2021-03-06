#
# (C) Tenable Network Security, Inc.
#


include("compat.inc");

if (description)
{
  script_id(24758);
  script_version("$Revision: 1.9 $");

  script_cve_id("CVE-2007-1281");
  script_bugtraq_id(22795);
  script_xref(name:"OSVDB", value:"33847");

  script_name(english:"Kaspersky Anti-Virus UPX File Decompression DoS");
  script_summary(english:"Checks date of virus signatures");

 script_set_attribute(attribute:"synopsis", value:
"The remote Windows host contains an application that is prone to a
denial of service issue." );
 script_set_attribute(attribute:"description", value:
"The version of Kaspersky Anti-Virus installed on the remote host
reportedly may enter an infinite loop when it attempts to process an
executable with specially-crafted compressed UPX data.  A remote
attacker may be able to exploit this issue to cause the affected host
to consume all available CPU cycles, thereby denying service to users
of the affected host." );
 script_set_attribute(attribute:"see_also", value:"http://labs.idefense.com/intelligence/vulnerabilities/display.php?id=485" );
 script_set_attribute(attribute:"see_also", value:"http://www.securityfocus.com/archive/1/461738/30/0/threaded" );
 script_set_attribute(attribute:"solution", value:
"Update the virus signatures on or after 02/07/2007 and restart the
computer." );
 script_set_attribute(attribute:"cvss_vector", value: "CVSS2#AV:N/AC:L/Au:N/C:N/I:N/A:C" );
script_end_attributes();


  script_category(ACT_GATHER_INFO);
  script_family(english:"Windows");
  script_copyright(english:"This script is Copyright (C) 2007-2009 Tenable Network Security, Inc.");
  script_dependencies("kaspersky_installed.nasl");
  script_require_keys("Antivirus/Kaspersky/sigs");
  exit(0);
}

#

sigs = get_kb_item("Antivirus/Kaspersky/sigs");
if (sigs)
{
  sigs = split(sigs, sep:'/', keep:FALSE);
  if (
    sigs[0] == "unknown" ||
    int(sigs[2]) < 2007 || 
    (
      int(sigs[2]) == 2007 && 
      (
        int(sigs[0]) < 2 ||
        (int(sigs[0]) == 2 && int(sigs[1]) < 7)
      )
    )
  )
  security_hole(get_kb_item("SMB/transport"));
}
