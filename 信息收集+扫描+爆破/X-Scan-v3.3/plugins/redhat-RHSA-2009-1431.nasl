
#
# (C) Tenable Network Security
#
# The text of this plugin is (C) Red Hat Inc.
#

include("compat.inc");
if ( ! defined_func("bn_random") ) exit(0);

if(description)
{
 script_id(40922);
 script_version ("$Revision: 1.2 $");
 script_name(english: "RHSA-2009-1431: seamonkey");
 script_set_attribute(attribute: "synopsis", value: 
"The remote host is missing the patch for the advisory RHSA-2009-1431");
 script_set_attribute(attribute: "description", value: '
  Updated seamonkey packages that fix several security issues are now
  available for Red Hat Enterprise Linux 4.

  This update has been rated as having critical security impact by the Red
  Hat Security Response Team.

  SeaMonkey is an open source Web browser, email and newsgroup client, IRC
  chat client, and HTML editor.

  Several flaws were found in the processing of malformed web content. A web
  page containing malicious content could cause SeaMonkey to crash or,
  potentially, execute arbitrary code with the privileges of the user running
  SeaMonkey. (CVE-2009-3072, CVE-2009-3075)

  A use-after-free flaw was found in SeaMonkey. An attacker could use this
  flaw to crash SeaMonkey or, potentially, execute arbitrary code with the
  privileges of the user running SeaMonkey. (CVE-2009-3077)

  Descriptions in the dialogs when adding and removing PKCS #11 modules were
  not informative. An attacker able to trick a user into installing a
  malicious PKCS #11 module could use this flaw to install their own
  Certificate Authority certificates on a user\'s machine, making it possible
  to trick the user into believing they are viewing a trusted site or,
  potentially, execute arbitrary code with the privileges of the user running
  SeaMonkey. (CVE-2009-3076)

  A flaw was found in the way SeaMonkey displays the address bar when
  window.open() is called in a certain way. An attacker could use this flaw
  to conceal a malicious URL, possibly tricking a user into believing they
  are viewing a trusted site. (CVE-2009-2654)

  All SeaMonkey users should upgrade to these updated packages, which correct
  these issues. After installing the update, SeaMonkey must be restarted for
  the changes to take effect.


');
 script_set_attribute(attribute: "cvss_vector", value: "CVSS2#AV:N/AC:L/Au:N/C:C/I:C/A:C");
script_set_attribute(attribute: "see_also", value: "http://rhn.redhat.com/errata/RHSA-2009-1431.html");
script_set_attribute(attribute: "solution", value: "Get the newest RedHat Updates.");
script_end_attributes();

script_cve_id("CVE-2009-2654", "CVE-2009-3072", "CVE-2009-3075", "CVE-2009-3076", "CVE-2009-3077");
script_summary(english: "Check for the version of the seamonkey packages");
 
 script_category(ACT_GATHER_INFO);
 
 script_copyright(english:"This script is Copyright (C) 2009 Tenable Network Security");
 script_family(english: "Red Hat Local Security Checks");
 script_dependencies("ssh_get_info.nasl");
 
 script_require_keys("Host/RedHat/rpm-list");
 exit(0);
}

include("rpm.inc");

if ( ! get_kb_item("Host/RedHat/rpm-list") ) exit(1, "Could not get the list of packages");

if ( rpm_check( reference:"seamonkey-1.0.9-48.el4_8", release:'RHEL4') )
{
 security_hole(port:0, extra:rpm_report_get());
 exit(0);
}
if ( rpm_check( reference:"seamonkey-chat-1.0.9-48.el4_8", release:'RHEL4') )
{
 security_hole(port:0, extra:rpm_report_get());
 exit(0);
}
if ( rpm_check( reference:"seamonkey-devel-1.0.9-48.el4_8", release:'RHEL4') )
{
 security_hole(port:0, extra:rpm_report_get());
 exit(0);
}
if ( rpm_check( reference:"seamonkey-dom-inspector-1.0.9-48.el4_8", release:'RHEL4') )
{
 security_hole(port:0, extra:rpm_report_get());
 exit(0);
}
if ( rpm_check( reference:"seamonkey-js-debugger-1.0.9-48.el4_8", release:'RHEL4') )
{
 security_hole(port:0, extra:rpm_report_get());
 exit(0);
}
if ( rpm_check( reference:"seamonkey-mail-1.0.9-48.el4_8", release:'RHEL4') )
{
 security_hole(port:0, extra:rpm_report_get());
 exit(0);
}
if ( rpm_check( reference:"seamonkey-1.0.9-48.el4_8", release:'RHEL4.8.') )
{
 security_hole(port:0, extra:rpm_report_get());
 exit(0);
}
if ( rpm_check( reference:"seamonkey-chat-1.0.9-48.el4_8", release:'RHEL4.8.') )
{
 security_hole(port:0, extra:rpm_report_get());
 exit(0);
}
if ( rpm_check( reference:"seamonkey-devel-1.0.9-48.el4_8", release:'RHEL4.8.') )
{
 security_hole(port:0, extra:rpm_report_get());
 exit(0);
}
if ( rpm_check( reference:"seamonkey-dom-inspector-1.0.9-48.el4_8", release:'RHEL4.8.') )
{
 security_hole(port:0, extra:rpm_report_get());
 exit(0);
}
if ( rpm_check( reference:"seamonkey-js-debugger-1.0.9-48.el4_8", release:'RHEL4.8.') )
{
 security_hole(port:0, extra:rpm_report_get());
 exit(0);
}
if ( rpm_check( reference:"seamonkey-mail-1.0.9-48.el4_8", release:'RHEL4.8.') )
{
 security_hole(port:0, extra:rpm_report_get());
 exit(0);
}
exit(0, "Host if not affected");
