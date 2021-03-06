# This script was automatically generated from 
#  http://www.gentoo.org/security/en/glsa/glsa-200803-12.xml
# It is released under the Nessus Script Licence.
# The messages are release under the Creative Commons - Attribution /
# Share Alike license. See http://creativecommons.org/licenses/by-sa/2.0/
#
# Avisory is copyright 2001-2006 Gentoo Foundation, Inc.
# GLSA2nasl Convertor is copyright 2004-2009 Tenable Network Security, Inc.

if (! defined_func('bn_random')) exit(0);

include('compat.inc');

if (description)
{
 script_id(31387);
 script_version("$Revision: 1.4 $");
 script_xref(name: "GLSA", value: "200803-12");
 script_cve_id("CVE-2008-0072");

 script_set_attribute(attribute:'synopsis', value: 'The remote host is missing the GLSA-200803-12 security update.');
 script_set_attribute(attribute:'description', value: 'The remote host is affected by the vulnerability described in GLSA-200803-12
(Evolution: Format string vulnerability)


    Ulf Harnhammar from Secunia Research discovered a format string error
    in the emf_multipart_encrypted() function in the file mail/em-format.c
    when reading certain data (e.g. the "Version:" field) from an encrypted
    e-mail.
  
Impact

    A remote attacker could entice a user to open a specially crafted
    encrypted e-mail, potentially resulting in the execution of arbitrary
    code with the privileges of the user running Evolution.
  
Workaround

    There is no known workaround at this time.
  
');
script_set_attribute(attribute:'solution', value: '
    All Evolution users should upgrade to the latest version:
    # emerge --sync
    # emerge --ask --oneshot --verbose ">=mail-client/evolution-2.12.3-r1"
  ');
script_set_attribute(attribute: 'cvss_vector', value: 'CVSS2#AV:N/AC:M/Au:N/C:P/I:P/A:P');
script_set_attribute(attribute: 'see_also', value: 'http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2008-0072');

script_set_attribute(attribute: 'see_also', value: 'http://www.gentoo.org/security/en/glsa/glsa-200803-12.xml');

script_end_attributes();

 script_copyright(english: "(C) 2009 Tenable Network Security, Inc.");
 script_name(english: '[GLSA-200803-12] Evolution: Format string vulnerability');
 script_category(ACT_GATHER_INFO);
 script_family(english: "Gentoo Local Security Checks");
 script_dependencies("ssh_get_info.nasl");
 script_require_keys('Host/Gentoo/qpkg-list');
 script_summary(english: 'Evolution: Format string vulnerability');
 exit(0);
}

include('qpkg.inc');

if ( ! get_kb_item('Host/Gentoo/qpkg-list') ) exit(1, 'No list of packages');
if (qpkg_check(package: "mail-client/evolution", unaffected: make_list("ge 2.12.3-r1"), vulnerable: make_list("lt 2.12.3-r1")
)) { security_warning(0); exit(0); }
exit(0, "Host is not affected");
