# This script was automatically generated from the 191-1 Ubuntu Security Notice
# It is released under the Nessus Script Licence.
# Ubuntu Security Notices are (C) 2005 Canonical, Inc.
# USN2nasl Convertor is (C) 2005 Tenable Network Security, Inc.
# See http://www.ubuntulinux.org/usn/
# Ubuntu(R) is a registered trademark of Canonical, Inc.

if (! defined_func("bn_random")) exit(0);
include('compat.inc');

if (description) {
script_id(20605);
script_version("$Revision: 1.5 $");
script_copyright("Ubuntu Security Notice (C) 2009 Canonical, Inc. / NASL script (C) 2009 Tenable Network Security, Inc.");
script_category(ACT_GATHER_INFO);
script_family(english: "Ubuntu Local Security Checks");
script_dependencies("ssh_get_info.nasl");
script_require_keys("Host/Ubuntu", "Host/Ubuntu/release", "Host/Debian/dpkg-l");

script_xref(name: "USN", value: "191-1");
script_summary(english:"unzip vulnerability");
script_name(english:"USN191-1 : unzip vulnerability");
script_set_attribute(attribute:'synopsis', value: 'The remote package "unzip" is missing a security patch.');
script_set_attribute(attribute:'description', value: 'Imran Ghory found a race condition in the handling of output files.
While a file was unpacked by unzip, a local attacker with write
permissions to the target directory could exploit this to change the
permissions of arbitrary files of the unzip user.');
script_set_attribute(attribute:'solution', value: 'Upgrade to : 
- unzip-5.51-2ubuntu1.2 (Ubuntu 5.04)
');
script_set_attribute(attribute: 'cvss_vector', value: 'CVSS2#AV:L/AC:H/Au:N/C:P/I:N/A:N');
script_end_attributes();

script_cve_id("CVE-2005-2475");
exit(0);
}

include('ubuntu.inc');

if ( ! get_kb_item('Host/Ubuntu/release') ) exit(1, 'Could not gather the list of packages');

extrarep = NULL;

found = ubuntu_check(osver: "5.04", pkgname: "unzip", pkgver: "5.51-2ubuntu1.2");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package unzip-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to unzip-5.51-2ubuntu1.2
');
}

if (w) { security_note(port: 0, extra: extrarep); }
else exit(0, "Host is not vulnerable");
