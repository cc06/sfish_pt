# This script was automatically generated from the dsa-1473
# Debian Security Advisory
# It is released under the Nessus Script Licence.
# Advisory is copyright 1997-2009 Software in the Public Interest, Inc.
# See http://www.debian.org/license
# DSA2nasl Convertor is copyright 2004-2009 Tenable Network Security, Inc.

if (! defined_func('bn_random')) exit(0);

include('compat.inc');

if (description) {
 script_id(30065);
 script_version("$Revision: 1.5 $");
 script_xref(name: "DSA", value: "1473");
 script_cve_id("CVE-2007-6350", "CVE-2007-6415");

 script_set_attribute(attribute:'synopsis', value: 
'The remote host is missing the DSA-1473 security update');
 script_set_attribute(attribute: 'description', value:
'Joachim Breitner discovered that Subversion support in scponly is
inherently insecure, allowing execution of arbitrary commands.  Further
investigation showed that rsync and Unison support suffer from similar
issues.  This set of issues has been assigned CVE-2007-6350.
In addition, it was discovered that it was possible to invoke scp
with certain options that may lead to the execution of arbitrary commands
(CVE-2007-6415).
This update removes Subversion, rsync and Unison support from the
scponly package, and prevents scp from being invoked with the dangerous
options.
For the old stable distribution (sarge), these problems have been fixed
in version 4.0-1sarge2.
For the stable distribution (etch), these problems have been fixed in
version 4.6-1etch1.
');
 script_set_attribute(attribute: 'see_also', value: 
'http://www.debian.org/security/2008/dsa-1473');
 script_set_attribute(attribute: 'solution', value: 
'The Debian project recommends that you upgrade your scponly package.');
script_set_attribute(attribute: 'cvss_vector', value: 'CVSS2#AV:N/AC:M/Au:S/C:C/I:C/A:C');
script_end_attributes();

 script_copyright(english: "This script is (C) 2009 Tenable Network Security, Inc.");
 script_name(english: "[DSA1473] DSA-1473-1 scponly");
 script_category(ACT_GATHER_INFO);
 script_family(english: "Debian Local Security Checks");
 script_dependencies("ssh_get_info.nasl");
 script_require_keys("Host/Debian/dpkg-l");
 script_summary(english: "DSA-1473-1 scponly");
 exit(0);
}

include("debian_package.inc");

if ( ! get_kb_item("Host/Debian/dpkg-l") ) exit(1, "Could not obtain the list of packages");

deb_check(prefix: 'scponly', release: '3.1', reference: '4.0-1sarge2');
deb_check(prefix: 'scponly', release: '4.0', reference: '4.6-1etch1');
if (deb_report_get()) security_hole(port: 0, extra:deb_report_get());
else exit(0, "Host is not affected");
