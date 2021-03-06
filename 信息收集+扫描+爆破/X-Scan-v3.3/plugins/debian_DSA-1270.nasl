# This script was automatically generated from the dsa-1270
# Debian Security Advisory
# It is released under the Nessus Script Licence.
# Advisory is copyright 1997-2009 Software in the Public Interest, Inc.
# See http://www.debian.org/license
# DSA2nasl Convertor is copyright 2004-2009 Tenable Network Security, Inc.

if (! defined_func('bn_random')) exit(0);

include('compat.inc');

if (description) {
 script_id(24879);
 script_version("$Revision: 1.8 $");
 script_xref(name: "DSA", value: "1270");
 script_cve_id("CVE-2007-0002", "CVE-2007-0238", "CVE-2007-0239");

 script_set_attribute(attribute:'synopsis', value: 
'The remote host is missing the DSA-1270 security update');
 script_set_attribute(attribute: 'description', value:
'Several security related problems have been discovered in
OpenOffice.org, the free office suite.  The Common Vulnerabilities and
Exposures project identifies the following problems:
CVE-2007-0002
    iDefense reported several integer overflow bugs in libwpd, a
    library for handling WordPerfect documents that is included in
    OpenOffice.org.  Attackers are able to exploit these with
    carefully crafted WordPerfect files that could cause an
    application linked with libwpd to crash or possibly execute
    arbitrary code.
CVE-2007-0238
    Next Generation Security discovered that the StarCalc parser in
    OpenOffice.org contains an easily exploitable stack overflow that
    could be used by a specially crafted document to execute
    arbitrary code.
CVE-2007-0239
    It has been reported that OpenOffice.org does not escape shell
    meta characters and is hence vulnerable to execute arbitrary shell
    commands via a specially crafted document after the user clicked
    to a prepared link.
This updated advisory only provides packages for the upcoming etch
release alias Debian GNU/Linux 4.0.
For the stable distribution (sarge) these problems have been fixed in
version 1.1.3-9sarge6.
');
 script_set_attribute(attribute: 'see_also', value: 
'http://www.debian.org/security/2007/dsa-1270');
 script_set_attribute(attribute: 'solution', value: 
'The Debian project recommends that you upgrade your OpenOffice.');
script_set_attribute(attribute: 'cvss_vector', value: 'CVSS2#AV:N/AC:M/Au:N/C:C/I:C/A:C');
script_end_attributes();

 script_copyright(english: "This script is (C) 2009 Tenable Network Security, Inc.");
 script_name(english: "[DSA1270] DSA-1270-2 openoffice.org");
 script_category(ACT_GATHER_INFO);
 script_family(english: "Debian Local Security Checks");
 script_dependencies("ssh_get_info.nasl");
 script_require_keys("Host/Debian/dpkg-l");
 script_summary(english: "DSA-1270-2 openoffice.org");
 exit(0);
}

include("debian_package.inc");

if ( ! get_kb_item("Host/Debian/dpkg-l") ) exit(1, "Could not obtain the list of packages");

deb_check(prefix: 'openoffice.org', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-bin', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-dev', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-evolution', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-gtk-gnome', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-kde', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-l10n-af', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-l10n-ar', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-l10n-ca', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-l10n-cs', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-l10n-cy', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-l10n-da', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-l10n-de', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-l10n-el', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-l10n-en', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-l10n-es', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-l10n-et', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-l10n-eu', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-l10n-fi', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-l10n-fr', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-l10n-gl', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-l10n-he', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-l10n-hi', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-l10n-hu', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-l10n-it', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-l10n-ja', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-l10n-kn', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-l10n-ko', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-l10n-lt', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-l10n-nb', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-l10n-nl', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-l10n-nn', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-l10n-ns', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-l10n-pl', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-l10n-pt', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-l10n-pt-br', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-l10n-ru', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-l10n-sk', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-l10n-sl', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-l10n-sv', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-l10n-th', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-l10n-tn', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-l10n-tr', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-l10n-zh-cn', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-l10n-zh-tw', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-l10n-zu', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-mimelnk', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'openoffice.org-thesaurus-en-us', release: '3.1', reference: '1.1.3-9sarge6');
deb_check(prefix: 'ttf-opensymbol', release: '3.1', reference: '1.1.3-9sarge6');
if (deb_report_get()) security_hole(port: 0, extra:deb_report_get());
else exit(0, "Host is not affected");
