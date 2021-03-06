
#
# (C) Tenable Network Security
#
# The text description of this plugin is (C) Novell, Inc.
#

include("compat.inc");

if ( ! defined_func("bn_random") ) exit(0);

if(description)
{
 script_id(27460);
 script_version ("$Revision: 1.5 $");
 script_name(english: "SuSE Security Update:  sylpheed-claws: Update to align with clamav 0.90.x (sylpheed-claws-2685)");
 script_set_attribute(attribute: "synopsis", value: 
"The remote SuSE system is missing the security patch sylpheed-claws-2685");
 script_set_attribute(attribute: "description", value: "The mailreader sylpheed-claws directly links to the clamav
virus scan engine.

Since we released clamav 0.90 which contains a library so
version change we need to release this package to align the
requirements.
");
 script_set_attribute(attribute: "cvss_vector", value: "CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P");
script_set_attribute(attribute: "solution", value: "Install the security patch sylpheed-claws-2685");
script_end_attributes();

script_summary(english: "Check for the sylpheed-claws-2685 package");
 
 script_category(ACT_GATHER_INFO);
 
 script_copyright(english:"This script is Copyright (C) 2009 Tenable Network Security");
 script_family(english: "SuSE Local Security Checks");
 script_dependencies("ssh_get_info.nasl");
 script_require_keys("Host/SuSE/rpm-list");
 exit(0);
}

include("rpm.inc");

if ( ! get_kb_item("Host/SuSE/rpm-list") ) exit(1, "Could not gather the list of packages");
if ( rpm_check( reference:"sylpheed-claws-2.5.5-27", release:"SUSE10.2") )
{
	security_warning(port:0, extra:rpm_report_get());
	exit(0);
}
exit(0,"Host is not affected");
