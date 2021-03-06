# This script was automatically generated from the 775-2 Ubuntu Security Notice
# It is released under the Nessus Script Licence.
# Ubuntu Security Notices are (C) 2005 Canonical, Inc.
# USN2nasl Convertor is (C) 2005 Tenable Network Security, Inc.
# See http://www.ubuntulinux.org/usn/
# Ubuntu(R) is a registered trademark of Canonical, Inc.

if (! defined_func("bn_random")) exit(0);
include('compat.inc');

if (description) {
script_id(39362);
script_version("$Revision: 1.1 $");
script_copyright("Ubuntu Security Notice (C) 2009 Canonical, Inc. / NASL script (C) 2009 Tenable Network Security, Inc.");
script_category(ACT_GATHER_INFO);
script_family(english: "Ubuntu Local Security Checks");
script_dependencies("ssh_get_info.nasl");
script_require_keys("Host/Ubuntu", "Host/Ubuntu/release", "Host/Debian/dpkg-l");

script_xref(name: "USN", value: "775-2");
script_summary(english:"quagga regression");
script_name(english:"USN775-2 : quagga regression");
script_set_attribute(attribute:'synopsis', value: 'These remote packages are missing security patches :
- quagga 
- quagga-doc 
');
script_set_attribute(attribute:'description', value: 'USN-775-1 fixed vulnerabilities in Quagga.  The preventative fixes
introduced in Quagga prior to Ubuntu 9.04 could result in BGP service
failures.  This update fixes the problem.

We apologize for the inconvenience.

Original advisory details:

 It was discovered that the BGP service in Quagga did not correctly
 handle certain AS paths containing 4-byte ASNs.  An authenticated remote
 attacker could exploit this flaw to cause bgpd to abort, leading to a
 denial of service.');
script_set_attribute(attribute:'solution', value: 'Upgrade to : 
- quagga-0.99.9-6ubuntu0.2 (Ubuntu 8.10)
- quagga-doc-0.99.9-6ubuntu0.2 (Ubuntu 8.10)
');
script_set_attribute(attribute: 'risk_factor', value: 'High');
script_end_attributes();

exit(0);
}

include('ubuntu.inc');

if ( ! get_kb_item('Host/Ubuntu/release') ) exit(1, 'Could not gather the list of packages');

extrarep = NULL;

found = ubuntu_check(osver: "8.10", pkgname: "quagga", pkgver: "0.99.9-6ubuntu0.2");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package quagga-',found,' is vulnerable in Ubuntu 8.10
Upgrade it to quagga-0.99.9-6ubuntu0.2
');
}
found = ubuntu_check(osver: "8.10", pkgname: "quagga-doc", pkgver: "0.99.9-6ubuntu0.2");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package quagga-doc-',found,' is vulnerable in Ubuntu 8.10
Upgrade it to quagga-doc-0.99.9-6ubuntu0.2
');
}

if (w) { security_hole(port: 0, extra: extrarep); }
else exit(0, "Host is not vulnerable");
