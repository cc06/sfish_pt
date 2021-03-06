# This script was automatically generated from the dsa-1331
# Debian Security Advisory
# It is released under the Nessus Script Licence.
# Advisory is copyright 1997-2009 Software in the Public Interest, Inc.
# See http://www.debian.org/license
# DSA2nasl Convertor is copyright 2004-2009 Tenable Network Security, Inc.

if (! defined_func('bn_random')) exit(0);

include('compat.inc');

if (description) {
 script_id(25678);
 script_version("$Revision: 1.6 $");
 script_xref(name: "DSA", value: "1331");
 script_cve_id("CVE-2006-0207", "CVE-2006-4486", "CVE-2007-1864");

 script_set_attribute(attribute:'synopsis', value: 
'The remote host is missing the DSA-1331 security update');
 script_set_attribute(attribute: 'description', value:
'Several remote vulnerabilities have been discovered in PHP, a
server-side, HTML-embedded scripting language, which may lead to the
execution of arbitrary code. The Common Vulnerabilities and Exposures
project identifies the following problems:
CVE-2006-0207
    Stefan Esser discovered HTTP response splitting vulnerabilities
    in the session extension. This only affects Debian 3.1 (Sarge).
CVE-2006-4486
    Stefan Esser discovered that an integer overflow in memory allocation
    routines allows the bypass of memory limit restrictions. This only
    affects Debian 3.1 (Sarge) on 64 bit architectures.
CVE-2007-1864
    It was discovered that a buffer overflow in the xmlrpc extension
    allows the execution of arbitrary code.
For the oldstable distribution (sarge) these problems have been fixed
in version 4.3.10-22.
For the stable distribution (etch) these problems have been fixed
in version 4.4.4-8+etch4.
');
 script_set_attribute(attribute: 'see_also', value: 
'http://www.debian.org/security/2007/dsa-1331');
 script_set_attribute(attribute: 'solution', value: 
'The Debian project recommends that you upgrade your PHP packages.');
script_set_attribute(attribute: 'cvss_vector', value: 'CVSS2#AV:N/AC:L/Au:N/C:P/I:P/A:P');
script_end_attributes();

 script_copyright(english: "This script is (C) 2009 Tenable Network Security, Inc.");
 script_name(english: "[DSA1331] DSA-1331-1 php4");
 script_category(ACT_GATHER_INFO);
 script_family(english: "Debian Local Security Checks");
 script_dependencies("ssh_get_info.nasl");
 script_require_keys("Host/Debian/dpkg-l");
 script_summary(english: "DSA-1331-1 php4");
 exit(0);
}

include("debian_package.inc");

if ( ! get_kb_item("Host/Debian/dpkg-l") ) exit(1, "Could not obtain the list of packages");

deb_check(prefix: 'libapache-mod-php4', release: '3.1', reference: '4.3.10-22');
deb_check(prefix: 'libapache2-mod-php4', release: '3.1', reference: '4.3.10-22');
deb_check(prefix: 'php4', release: '3.1', reference: '4.3.10-22');
deb_check(prefix: 'php4-cgi', release: '3.1', reference: '4.3.10-22');
deb_check(prefix: 'php4-cli', release: '3.1', reference: '4.3.10-22');
deb_check(prefix: 'php4-common', release: '3.1', reference: '4.3.10-22');
deb_check(prefix: 'php4-curl', release: '3.1', reference: '4.3.10-22');
deb_check(prefix: 'php4-dev', release: '3.1', reference: '4.3.10-22');
deb_check(prefix: 'php4-domxml', release: '3.1', reference: '4.3.10-22');
deb_check(prefix: 'php4-gd', release: '3.1', reference: '4.3.10-22');
deb_check(prefix: 'php4-imap', release: '3.1', reference: '4.3.10-22');
deb_check(prefix: 'php4-ldap', release: '3.1', reference: '4.3.10-22');
deb_check(prefix: 'php4-mcal', release: '3.1', reference: '4.3.10-22');
deb_check(prefix: 'php4-mhash', release: '3.1', reference: '4.3.10-22');
deb_check(prefix: 'php4-mysql', release: '3.1', reference: '4.3.10-22');
deb_check(prefix: 'php4-odbc', release: '3.1', reference: '4.3.10-22');
deb_check(prefix: 'php4-pear', release: '3.1', reference: '4.3.10-22');
deb_check(prefix: 'php4-recode', release: '3.1', reference: '4.3.10-22');
deb_check(prefix: 'php4-snmp', release: '3.1', reference: '4.3.10-22');
deb_check(prefix: 'php4-sybase', release: '3.1', reference: '4.3.10-22');
deb_check(prefix: 'php4-xslt', release: '3.1', reference: '4.3.10-22');
deb_check(prefix: 'libapache-mod-php4', release: '4.0', reference: '4.4.4-8+etch4');
deb_check(prefix: 'libapache2-mod-php4', release: '4.0', reference: '4.4.4-8+etch4');
deb_check(prefix: 'php4', release: '4.0', reference: '4.4.4-8+etch4');
deb_check(prefix: 'php4-cgi', release: '4.0', reference: '4.4.4-8+etch4');
deb_check(prefix: 'php4-cli', release: '4.0', reference: '4.4.4-8+etch4');
deb_check(prefix: 'php4-common', release: '4.0', reference: '4.4.4-8+etch4');
deb_check(prefix: 'php4-curl', release: '4.0', reference: '4.4.4-8+etch4');
deb_check(prefix: 'php4-dev', release: '4.0', reference: '4.4.4-8+etch4');
deb_check(prefix: 'php4-domxml', release: '4.0', reference: '4.4.4-8+etch4');
deb_check(prefix: 'php4-gd', release: '4.0', reference: '4.4.4-8+etch4');
deb_check(prefix: 'php4-imap', release: '4.0', reference: '4.4.4-8+etch4');
deb_check(prefix: 'php4-interbase', release: '4.0', reference: '4.4.4-8+etch4');
deb_check(prefix: 'php4-ldap', release: '4.0', reference: '4.4.4-8+etch4');
deb_check(prefix: 'php4-mcal', release: '4.0', reference: '4.4.4-8+etch4');
deb_check(prefix: 'php4-mcrypt', release: '4.0', reference: '4.4.4-8+etch4');
deb_check(prefix: 'php4-mhash', release: '4.0', reference: '4.4.4-8+etch4');
deb_check(prefix: 'php4-mysql', release: '4.0', reference: '4.4.4-8+etch4');
deb_check(prefix: 'php4-odbc', release: '4.0', reference: '4.4.4-8+etch4');
deb_check(prefix: 'php4-pear', release: '4.0', reference: '4.4.4-8+etch4');
deb_check(prefix: 'php4-pgsql', release: '4.0', reference: '4.4.4-8+etch4');
deb_check(prefix: 'php4-pspell', release: '4.0', reference: '4.4.4-8+etch4');
deb_check(prefix: 'php4-recode', release: '4.0', reference: '4.4.4-8+etch4');
deb_check(prefix: 'php4-snmp', release: '4.0', reference: '4.4.4-8+etch4');
deb_check(prefix: 'php4-sybase', release: '4.0', reference: '4.4.4-8+etch4');
deb_check(prefix: 'php4-xslt', release: '4.0', reference: '4.4.4-8+etch4');
if (deb_report_get()) security_hole(port: 0, extra:deb_report_get());
else exit(0, "Host is not affected");
