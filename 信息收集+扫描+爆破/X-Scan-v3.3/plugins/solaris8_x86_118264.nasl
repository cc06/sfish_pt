#
# (C) Tenable Network Security
#
#

if ( ! defined_func("bn_random") ) exit(0);
include("compat.inc");

if(description)
{
 script_id(23463);
 script_version("$Revision: 1.10 $");

 script_name(english: "Solaris 5.8 (x86) : 118264-25");
 script_set_attribute(attribute: "synopsis", value:
"The remote host is missing Sun Security Patch number 118264-25");
 script_set_attribute(attribute: "description", value:
'Portal Server 6.3_x86: Miscellaneous Fixes.
Date this patch was last updated by Sun : Sep/14/07');
 script_set_attribute(attribute: "solution", value:
"You should install this patch for your system to be up-to-date.");
 script_set_attribute(attribute: "see_also", value:
"http://sunsolve.sun.com/search/document.do?assetkey=1-21-118264-25-1");
 script_set_attribute(attribute: "risk_factor", value: "Medium");
 script_end_attributes();

 script_summary(english: "Check for patch 118264-25");
 script_category(ACT_GATHER_INFO);
 script_copyright(english:"This script is Copyright (C) 2009 Tenable Network Security");
 family["english"] = "Solaris Local Security Checks";
 script_family(english:family["english"]);
 
 script_dependencies("ssh_get_info.nasl");
 script_require_keys("Host/Solaris/showrev");
 exit(0);
}



include("solaris.inc");

e +=  solaris_check_patch(release:"5.8_x86", arch:"i386", patch:"118264-25", obsoleted_by:"", package:"SUNWiimps", version:"6.2,REV=2003.11.17.12.58");
e +=  solaris_check_patch(release:"5.8_x86", arch:"i386", patch:"118264-25", obsoleted_by:"", package:"SUNWps", version:"6.2,REV=2003.11.17.12.53");
e +=  solaris_check_patch(release:"5.8_x86", arch:"i386", patch:"118264-25", obsoleted_by:"", package:"SUNWpsap", version:"6.2,REV=2003.11.17.12.57");
e +=  solaris_check_patch(release:"5.8_x86", arch:"i386", patch:"118264-25", obsoleted_by:"", package:"SUNWpscp", version:"6.2,REV=2003.11.17.12.57");
e +=  solaris_check_patch(release:"5.8_x86", arch:"i386", patch:"118264-25", obsoleted_by:"", package:"SUNWpsdt", version:"6.2,REV=2003.11.17.12.35");
e +=  solaris_check_patch(release:"5.8_x86", arch:"i386", patch:"118264-25", obsoleted_by:"", package:"SUNWpsgw", version:"6.2,REV=2003.11.17.13.00");
e +=  solaris_check_patch(release:"5.8_x86", arch:"i386", patch:"118264-25", obsoleted_by:"", package:"SUNWpsks", version:"6.2,REV=2003.11.17.12.59");
e +=  solaris_check_patch(release:"5.8_x86", arch:"i386", patch:"118264-25", obsoleted_by:"", package:"SUNWpsma", version:"6.3,REV=2004.05.07.19.22");
e +=  solaris_check_patch(release:"5.8_x86", arch:"i386", patch:"118264-25", obsoleted_by:"", package:"SUNWpsmas", version:"6.3,REV=2004.05.07.19.25");
e +=  solaris_check_patch(release:"5.8_x86", arch:"i386", patch:"118264-25", obsoleted_by:"", package:"SUNWpsmig", version:"6.2,REV=2003.11.17.14.07");
e +=  solaris_check_patch(release:"5.8_x86", arch:"i386", patch:"118264-25", obsoleted_by:"", package:"SUNWpsmp", version:"6.2,REV=2003.11.17.12.56");
e +=  solaris_check_patch(release:"5.8_x86", arch:"i386", patch:"118264-25", obsoleted_by:"", package:"SUNWpsnf", version:"6.2,REV=2003.11.17.13.07");
e +=  solaris_check_patch(release:"5.8_x86", arch:"i386", patch:"118264-25", obsoleted_by:"", package:"SUNWpsnl", version:"6.2,REV=2003.11.17.13.03");
e +=  solaris_check_patch(release:"5.8_x86", arch:"i386", patch:"118264-25", obsoleted_by:"", package:"SUNWpsnlp", version:"6.2,REV=2003.11.17.13.03");
e +=  solaris_check_patch(release:"5.8_x86", arch:"i386", patch:"118264-25", obsoleted_by:"", package:"SUNWpsnm", version:"6.2,REV=2003.11.17.12.53");
e +=  solaris_check_patch(release:"5.8_x86", arch:"i386", patch:"118264-25", obsoleted_by:"", package:"SUNWpsp", version:"6.2,REV=2003.11.17.12.37");
e +=  solaris_check_patch(release:"5.8_x86", arch:"i386", patch:"118264-25", obsoleted_by:"", package:"SUNWpsplt", version:"6.3,REV=2004.05.07.18.52");
e +=  solaris_check_patch(release:"5.8_x86", arch:"i386", patch:"118264-25", obsoleted_by:"", package:"SUNWpsrw", version:"6.2,REV=2003.11.17.12.32");
e +=  solaris_check_patch(release:"5.8_x86", arch:"i386", patch:"118264-25", obsoleted_by:"", package:"SUNWpsrwp", version:"6.2,REV=2003.11.17.13.00");
e +=  solaris_check_patch(release:"5.8_x86", arch:"i386", patch:"118264-25", obsoleted_by:"", package:"SUNWpsse", version:"6.2,REV=2003.11.17.12.48");
e +=  solaris_check_patch(release:"5.8_x86", arch:"i386", patch:"118264-25", obsoleted_by:"", package:"SUNWpssso", version:"6.2,REV=2003.11.17.12.56");
e +=  solaris_check_patch(release:"5.8_x86", arch:"i386", patch:"118264-25", obsoleted_by:"", package:"SUNWpsssoa", version:"6.3,REV=2004.05.07.18.37");
if ( e < 0 ) { 
	if ( NASL_LEVEL < 3000 ) 
	   security_warning(0);
	else  
	   security_warning(port:0, extra:solaris_get_report());
	exit(0); 
} 
exit(0, "Host is not affected");
