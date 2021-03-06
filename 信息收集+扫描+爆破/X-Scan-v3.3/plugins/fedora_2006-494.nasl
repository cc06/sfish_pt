
#
# (C) Tenable Network Security, Inc.
#
# This plugin text was extracted from Fedora Security Advisory 2006-494
#

include("compat.inc");

if ( ! defined_func("bn_random") ) exit(0);
if(description)
{
 script_id(24094);
 script_version ("$Revision: 1.3 $");
script_name(english: "Fedora 5 2006-494: yelp");
 script_set_attribute(attribute: "synopsis", value: 
"The remote host is missing the patch for the advisory FEDORA-2006-494 (yelp)");
 script_set_attribute(attribute: "description", value: "Yelp is the Gnome 2 help/documentation browser. It is designed
to help you browse all the documentation on your system in
one central tool.

Update Information:

There were several security flaws found in the mozilla
package, which yelp depends on.   Users of yelp are
advised to upgrade to this updated package which has been
rebuilt against a version of mozilla not vulnerable to these
flaws.
");
 script_set_attribute(attribute: "risk_factor", value: "High");
script_set_attribute(attribute: "solution", value: "Get the newest Fedora Updates");
script_end_attributes();

script_summary(english: "Check for the version of the yelp package");
 
 script_category(ACT_GATHER_INFO);
 
 script_copyright(english:"This script is Copyright (C) 2009 Tenable Network Security, Inc.");
 script_family(english: "Fedora Local Security Checks");
 script_dependencies("ssh_get_info.nasl");
 script_require_keys("Host/RedHat/rpm-list");
 exit(0);
}

include("rpm.inc");

if ( rpm_check( reference:"yelp-2.14.1-1.fc5.2", release:"FC5") )
{
 security_hole(port:0, extra:rpm_report_get());
 exit(0);
}
exit(0, "Host is not affected");
