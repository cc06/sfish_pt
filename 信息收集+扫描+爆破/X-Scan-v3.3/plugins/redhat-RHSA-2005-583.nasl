
#
# (C) Tenable Network Security
#
# The text of this plugin is (C) Red Hat Inc.
#

include("compat.inc");
if ( ! defined_func("bn_random") ) exit(0);

if(description)
{
 script_id(19380);
 script_version ("$Revision: 1.6 $");
 script_name(english: "RHSA-2005-583: dump");
 script_set_attribute(attribute: "synopsis", value: 
"The remote host is missing the patch for the advisory RHSA-2005-583");
 script_set_attribute(attribute: "description", value: '
  Updated dump packages that address two security issues are now available
  for Red Hat Enterprise Linux 2.1.

  This update has been rated as having low security impact by the Red Hat
  Security Response Team.

  Dump examines files in a file system, determines which ones need to be
  backed up, and copies those files to a specified disk, tape, or other
  storage medium.

  A flaw was found with dump file locking. A malicious local user could
  manipulate the file lock in such a way as to prevent dump from running.
  The Common Vulnerabilities and Exposures project (cve.mitre.org) assigned
  the name CAN-2002-1914 to this issue.

  Users of dump should upgrade to these erratum packages, which contain a
  patch to resolve this issue.


');
 script_set_attribute(attribute: "cvss_vector", value: "CVSS2#AV:L/AC:L/Au:N/C:N/I:N/A:P");
script_set_attribute(attribute: "see_also", value: "http://rhn.redhat.com/errata/RHSA-2005-583.html");
script_set_attribute(attribute: "solution", value: "Get the newest RedHat Updates.");
script_end_attributes();

script_cve_id("CVE-2002-1914");
script_summary(english: "Check for the version of the dump packages");
 
 script_category(ACT_GATHER_INFO);
 
 script_copyright(english:"This script is Copyright (C) 2009 Tenable Network Security");
 script_family(english: "Red Hat Local Security Checks");
 script_dependencies("ssh_get_info.nasl");
 
 script_require_keys("Host/RedHat/rpm-list");
 exit(0);
}

include("rpm.inc");

if ( ! get_kb_item("Host/RedHat/rpm-list") ) exit(1, "Could not get the list of packages");

if ( rpm_check( reference:"dump-0.4b25-1.72.2", release:'RHEL2.1') )
{
 security_note(port:0, extra:rpm_report_get());
 exit(0);
}
if ( rpm_check( reference:"rmt-0.4b25-1.72.2", release:'RHEL2.1') )
{
 security_note(port:0, extra:rpm_report_get());
 exit(0);
}
exit(0, "Host if not affected");
