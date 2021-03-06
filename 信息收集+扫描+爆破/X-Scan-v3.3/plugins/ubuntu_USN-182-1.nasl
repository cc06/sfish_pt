# This script was automatically generated from the 182-1 Ubuntu Security Notice
# It is released under the Nessus Script Licence.
# Ubuntu Security Notices are (C) 2005 Canonical, Inc.
# USN2nasl Convertor is (C) 2005 Tenable Network Security, Inc.
# See http://www.ubuntulinux.org/usn/
# Ubuntu(R) is a registered trademark of Canonical, Inc.

if (! defined_func("bn_random")) exit(0);
include('compat.inc');

if (description) {
script_id(20593);
script_version("$Revision: 1.5 $");
script_copyright("Ubuntu Security Notice (C) 2009 Canonical, Inc. / NASL script (C) 2009 Tenable Network Security, Inc.");
script_category(ACT_GATHER_INFO);
script_family(english: "Ubuntu Local Security Checks");
script_dependencies("ssh_get_info.nasl");
script_require_keys("Host/Ubuntu", "Host/Ubuntu/release", "Host/Debian/dpkg-l");

script_xref(name: "USN", value: "182-1");
script_summary(english:"xorg, xfree86 vulnerabilities");
script_name(english:"USN182-1 : xorg, xfree86 vulnerabilities");
script_set_attribute(attribute:'synopsis', value: 'These remote packages are missing security patches :
- lbxproxy 
- libdmx-dev 
- libdmx1 
- libdmx1-dbg 
- libdps-dev 
- libdps1 
- libdps1-dbg 
- libfs-dev 
- libfs6 
- libfs6-dbg 
- libice-dev 
- libice6 
- libice6-dbg 
- libsm-dev 
- libsm6 
- libsm6-dbg 
- libx11-6 
- libx11-6-dbg 
- libx11-dev 
- libxau-dev 
- libxau6 
- libxau6-dbg 
- libxaw6 
- libxaw6-dbg 
- libxaw6-dev 
- libxaw7 
- libxaw7-dbg 
- libxaw7-dev 
- libxaw8 
- libxaw8-dbg 
- libxaw8-dev 
- libxcomposite-dev 
- libxcomposite1 
- libxco
[...]');
script_set_attribute(attribute:'description', value: 'A local privilege escalation vulnerability has been discovered in the
pixmap allocation handling of the X server. By allocating a huge
pixmap, a local user could trigger an integer overflow that resulted
in a memory allocation that was too small for the requested pixmap.
This resulted in a buffer overflow which could eventually be exploited
to execute arbitrary code with full root privileges.');
script_set_attribute(attribute:'solution', value: 'Upgrade to : 
- lbxproxy-6.8.2-10.1 (Ubuntu 5.04)
- libdmx-dev-6.8.2-10.1 (Ubuntu 5.04)
- libdmx1-6.8.2-10.1 (Ubuntu 5.04)
- libdmx1-dbg-6.8.2-10.1 (Ubuntu 5.04)
- libdps-dev-6.8.2-10.1 (Ubuntu 5.04)
- libdps1-6.8.2-10.1 (Ubuntu 5.04)
- libdps1-dbg-6.8.2-10.1 (Ubuntu 5.04)
- libfs-dev-6.8.2-10.1 (Ubuntu 5.04)
- libfs6-6.8.2-10.1 (Ubuntu 5.04)
- libfs6-dbg-6.8.2-10.1 (Ubuntu 5.04)
- libice-dev-6.8.2-10.1 (Ubuntu 5.04)
- libice6-6.8.2-10.1 (Ubuntu 5.04)
- libice6-dbg-6.8.2-10.1 (Ubuntu 5.04)
- libsm-dev-6.8.
[...]');
script_set_attribute(attribute: 'cvss_vector', value: 'CVSS2#AV:N/AC:H/Au:N/C:P/I:P/A:P');
script_end_attributes();

script_cve_id("CVE-2005-2495");
exit(0);
}

include('ubuntu.inc');

if ( ! get_kb_item('Host/Ubuntu/release') ) exit(1, 'Could not gather the list of packages');

extrarep = NULL;

found = ubuntu_check(osver: "5.04", pkgname: "lbxproxy", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package lbxproxy-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to lbxproxy-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libdmx-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libdmx-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libdmx-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libdmx1", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libdmx1-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libdmx1-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libdmx1-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libdmx1-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libdmx1-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libdps-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libdps-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libdps-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libdps1", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libdps1-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libdps1-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libdps1-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libdps1-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libdps1-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libfs-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libfs-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libfs-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libfs6", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libfs6-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libfs6-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libfs6-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libfs6-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libfs6-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libice-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libice-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libice-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libice6", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libice6-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libice6-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libice6-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libice6-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libice6-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libsm-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libsm-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libsm-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libsm6", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libsm6-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libsm6-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libsm6-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libsm6-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libsm6-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libx11-6", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libx11-6-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libx11-6-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libx11-6-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libx11-6-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libx11-6-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libx11-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libx11-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libx11-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxau-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxau-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxau-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxau6", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxau6-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxau6-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxau6-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxau6-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxau6-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxaw6", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxaw6-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxaw6-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxaw6-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxaw6-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxaw6-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxaw6-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxaw6-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxaw6-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxaw7", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxaw7-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxaw7-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxaw7-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxaw7-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxaw7-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxaw7-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxaw7-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxaw7-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxaw8", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxaw8-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxaw8-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxaw8-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxaw8-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxaw8-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxaw8-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxaw8-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxaw8-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxcomposite-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxcomposite-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxcomposite-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxcomposite1", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxcomposite1-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxcomposite1-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxcomposite1-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxcomposite1-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxcomposite1-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxdamage-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxdamage-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxdamage-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxdamage1", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxdamage1-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxdamage1-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxdamage1-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxdamage1-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxdamage1-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxdmcp-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxdmcp-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxdmcp-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxdmcp6", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxdmcp6-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxdmcp6-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxdmcp6-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxdmcp6-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxdmcp6-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxevie-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxevie-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxevie-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxevie1", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxevie1-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxevie1-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxevie1-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxevie1-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxevie1-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxext-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxext-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxext-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxext6", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxext6-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxext6-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxext6-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxext6-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxext6-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxfixes-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxfixes-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxfixes-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxfixes3", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxfixes3-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxfixes3-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxfixes3-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxfixes3-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxfixes3-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "4.10", pkgname: "libxft1", pkgver: "4.3.0.dfsg.1-6ubuntu25.3");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxft1-',found,' is vulnerable in Ubuntu 4.10
Upgrade it to libxft1-4.3.0.dfsg.1-6ubuntu25.3
');
}
found = ubuntu_check(osver: "4.10", pkgname: "libxft1-dbg", pkgver: "4.3.0.dfsg.1-6ubuntu25.3");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxft1-dbg-',found,' is vulnerable in Ubuntu 4.10
Upgrade it to libxft1-dbg-4.3.0.dfsg.1-6ubuntu25.3
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxi-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxi-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxi-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxi6", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxi6-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxi6-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxi6-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxi6-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxi6-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxinerama-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxinerama-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxinerama-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxinerama1", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxinerama1-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxinerama1-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxinerama1-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxinerama1-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxinerama1-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxkbfile-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxkbfile-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxkbfile-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxkbfile1", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxkbfile1-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxkbfile1-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxkbfile1-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxkbfile1-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxkbfile1-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxkbui-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxkbui-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxkbui-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxkbui1", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxkbui1-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxkbui1-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxkbui1-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxkbui1-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxkbui1-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxmu-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxmu-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxmu-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxmu6", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxmu6-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxmu6-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxmu6-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxmu6-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxmu6-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxmuu-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxmuu-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxmuu-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxmuu1", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxmuu1-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxmuu1-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxmuu1-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxmuu1-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxmuu1-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxp-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxp-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxp-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxp6", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxp6-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxp6-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxp6-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxp6-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxp6-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxpm-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxpm-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxpm-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxpm4", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxpm4-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxpm4-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxpm4-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxpm4-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxpm4-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxrandr-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxrandr-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxrandr-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxrandr2", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxrandr2-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxrandr2-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxrandr2-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxrandr2-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxrandr2-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxres-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxres-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxres-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxres1", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxres1-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxres1-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxres1-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxres1-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxres1-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxss-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxss-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxss-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxss1", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxss1-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxss1-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxss1-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxss1-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxss1-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxt-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxt-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxt-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxt6", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxt6-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxt6-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxt6-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxt6-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxt6-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxtrap-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxtrap-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxtrap-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxtrap6", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxtrap6-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxtrap6-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxtrap6-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxtrap6-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxtrap6-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxtst-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxtst-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxtst-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxtst6", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxtst6-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxtst6-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxtst6-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxtst6-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxtst6-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxv-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxv-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxv-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxv1", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxv1-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxv1-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxv1-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxv1-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxv1-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxvmc-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxvmc-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxvmc-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxvmc1", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxvmc1-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxvmc1-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxvmc1-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxvmc1-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxvmc1-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxxf86dga-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxxf86dga-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxxf86dga-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxxf86dga1", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxxf86dga1-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxxf86dga1-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxxf86dga1-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxxf86dga1-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxxf86dga1-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxxf86misc-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxxf86misc-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxxf86misc-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxxf86misc1", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxxf86misc1-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxxf86misc1-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxxf86misc1-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxxf86misc1-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxxf86misc1-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxxf86rush-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxxf86rush-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxxf86rush-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxxf86rush1", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxxf86rush1-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxxf86rush1-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxxf86rush1-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxxf86rush1-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxxf86rush1-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxxf86vm-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxxf86vm-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxxf86vm-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxxf86vm1", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxxf86vm1-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxxf86vm1-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "libxxf86vm1-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package libxxf86vm1-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to libxxf86vm1-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "pm-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package pm-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to pm-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "proxymngr", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package proxymngr-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to proxymngr-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "twm", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package twm-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to twm-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "x-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package x-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to x-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "x-window-system", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package x-window-system-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to x-window-system-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "x-window-system-core", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package x-window-system-core-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to x-window-system-core-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "x-window-system-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package x-window-system-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to x-window-system-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xbase-clients", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xbase-clients-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xbase-clients-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xdm", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xdm-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xdm-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xdmx", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xdmx-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xdmx-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xfonts-100dpi", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xfonts-100dpi-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xfonts-100dpi-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xfonts-100dpi-transcoded", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xfonts-100dpi-transcoded-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xfonts-100dpi-transcoded-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xfonts-75dpi", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xfonts-75dpi-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xfonts-75dpi-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xfonts-75dpi-transcoded", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xfonts-75dpi-transcoded-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xfonts-75dpi-transcoded-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xfonts-base", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xfonts-base-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xfonts-base-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xfonts-base-transcoded", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xfonts-base-transcoded-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xfonts-base-transcoded-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xfonts-cyrillic", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xfonts-cyrillic-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xfonts-cyrillic-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xfonts-scalable", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xfonts-scalable-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xfonts-scalable-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xfree86-common", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xfree86-common-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xfree86-common-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xfs", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xfs-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xfs-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xfwp", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xfwp-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xfwp-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xlibmesa-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xlibmesa-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xlibmesa-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xlibmesa-dri", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xlibmesa-dri-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xlibmesa-dri-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xlibmesa-dri-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xlibmesa-dri-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xlibmesa-dri-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xlibmesa-gl", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xlibmesa-gl-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xlibmesa-gl-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xlibmesa-gl-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xlibmesa-gl-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xlibmesa-gl-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xlibmesa-gl-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xlibmesa-gl-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xlibmesa-gl-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xlibmesa-glu", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xlibmesa-glu-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xlibmesa-glu-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xlibmesa-glu-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xlibmesa-glu-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xlibmesa-glu-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xlibmesa-glu-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xlibmesa-glu-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xlibmesa-glu-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xlibmesa3", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xlibmesa3-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xlibmesa3-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xlibmesa3-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xlibmesa3-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xlibmesa3-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xlibosmesa-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xlibosmesa-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xlibosmesa-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xlibosmesa4", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xlibosmesa4-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xlibosmesa4-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xlibosmesa4-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xlibosmesa4-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xlibosmesa4-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xlibs", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xlibs-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xlibs-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xlibs-data", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xlibs-data-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xlibs-data-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xlibs-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xlibs-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xlibs-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xlibs-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xlibs-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xlibs-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xlibs-pic", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xlibs-pic-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xlibs-pic-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xlibs-static-dev", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xlibs-static-dev-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xlibs-static-dev-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xlibs-static-pic", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xlibs-static-pic-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xlibs-static-pic-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xmh", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xmh-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xmh-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xnest", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xnest-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xnest-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xorg-common", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xorg-common-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xorg-common-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xprt", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xprt-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xprt-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xserver-common", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xserver-common-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xserver-common-6.8.2-10.1
');
}
found = ubuntu_check(osver: "4.10", pkgname: "xserver-xfree86", pkgver: "4.3.0.dfsg.1-6ubuntu25.3");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xserver-xfree86-',found,' is vulnerable in Ubuntu 4.10
Upgrade it to xserver-xfree86-4.3.0.dfsg.1-6ubuntu25.3
');
}
found = ubuntu_check(osver: "4.10", pkgname: "xserver-xfree86-dbg", pkgver: "4.3.0.dfsg.1-6ubuntu25.3");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xserver-xfree86-dbg-',found,' is vulnerable in Ubuntu 4.10
Upgrade it to xserver-xfree86-dbg-4.3.0.dfsg.1-6ubuntu25.3
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xserver-xorg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xserver-xorg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xserver-xorg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xserver-xorg-dbg", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xserver-xorg-dbg-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xserver-xorg-dbg-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xspecs", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xspecs-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xspecs-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xterm", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xterm-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xterm-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xutils", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xutils-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xutils-6.8.2-10.1
');
}
found = ubuntu_check(osver: "5.04", pkgname: "xvfb", pkgver: "6.8.2-10.1");
if (! isnull(found)) {
w++;
extrarep = strcat(extrarep, '
The package xvfb-',found,' is vulnerable in Ubuntu 5.04
Upgrade it to xvfb-6.8.2-10.1
');
}

if (w) { security_warning(port: 0, extra: extrarep); }
else exit(0, "Host is not vulnerable");
