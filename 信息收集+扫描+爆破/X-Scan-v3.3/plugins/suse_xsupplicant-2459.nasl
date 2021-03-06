
#
# (C) Tenable Network Security
#
# The text description of this plugin is (C) Novell, Inc.
#

include("compat.inc");

if ( ! defined_func("bn_random") ) exit(0);

if(description)
{
 script_id(27502);
 script_version ("$Revision: 1.5 $");
 script_name(english: "SuSE Security Update:  xsupplicant: Security upgrade to version 1.2.8 (xsupplicant-2459)");
 script_set_attribute(attribute: "synopsis", value: 
"The remote SuSE system is missing the security patch xsupplicant-2459");
 script_set_attribute(attribute: "description", value: "xsupplicant has been upgraded to version 1.2.8, which
includes bugfixes and one security fix:

CVE-2006-5601: A post-authentication stack overflow in the
EAP handling could be used by already authenticated
attacker to overflow a stackbuffer and so potentially
execute code.
");
 script_set_attribute(attribute: "cvss_vector", value: "CVSS2#AV:N/AC:L/Au:S/C:C/I:C/A:C");
script_set_attribute(attribute: "solution", value: "Install the security patch xsupplicant-2459");
script_end_attributes();

script_cve_id("CVE-2006-5601");
script_summary(english: "Check for the xsupplicant-2459 package");
 
 script_category(ACT_GATHER_INFO);
 
 script_copyright(english:"This script is Copyright (C) 2009 Tenable Network Security");
 script_family(english: "SuSE Local Security Checks");
 script_dependencies("ssh_get_info.nasl");
 script_require_keys("Host/SuSE/rpm-list");
 exit(0);
}

include("rpm.inc");

if ( ! get_kb_item("Host/SuSE/rpm-list") ) exit(1, "Could not gather the list of packages");
if ( rpm_check( reference:"xsupplicant-1.2.8-14.5", release:"SUSE10.1") )
{
	security_hole(port:0, extra:rpm_report_get());
	exit(0);
}
exit(0,"Host is not affected");
