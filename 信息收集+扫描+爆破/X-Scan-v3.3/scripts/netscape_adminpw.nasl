#
# This script was written by Renaud Deraison <deraison@cvs.nessus.org>
#
# See the Nessus Scripts License for details
#

if(description)
{
 script_id(10468);
 script_bugtraq_id(1579);
 script_version ("$Revision: 1.17 $");

 name["english"] = "Netscape Administration Server admin password";
 name["francais"] = "Netscape Administration Server admin password";
 
 script_name(english:name["english"], francais:name["francais"]);
 
 desc["english"] = "
The file /admin-serv/config/admpw is readable.

This file contains the encrypted password for the Netscape
administration server. Although it is encrypted, an attacker
may attempt to crack it by brute force.

Solution : Remove read access permissions for this file and/or stop
the Netscape administration server.

Risk factor : Medium";

 desc["francais"] = "
Le fichier /admin-serv/config/admpw est lisible par tous.

Ce fichier contient le mot de passe crypt� du serveur
d'administration Netscape.
Bien qu'il soit crypt�, ce mot de passe est � la merci
d'un pirate qui peut le retrouver par force brute.

Solution : mettez des protections de lecture sur ce fichier et/ou
stoppez le serveur d'administration netscape
Facteur de risque : Moyen";

 script_description(english:desc["english"], francais:desc["francais"]);
 
 summary["english"] = "Reads admpw";
 summary["francais"] = "Lit admpw";
 script_summary(english:summary["english"], francais:summary["francais"]);
 
 script_category(ACT_GATHER_INFO);
 
 
 script_copyright(english:"This script is Copyright (C) 2000 Renaud Deraison",
		francais:"Ce script est Copyright (C) 2000 Renaud Deraison");
 family["english"] = "CGI abuses";
 family["francais"] = "Abus de CGI";
 script_family(english:family["english"], francais:family["francais"]);
 script_dependencie("find_service.nes", "http_version.nasl", "www_fingerprinting_hmap.nasl");
 script_require_ports("Services/www", 80);
 script_require_keys("www/netscape-commerce", "www/netscape-fasttrack", "www/iplanet");
 
 exit(0);
}

#
# The script code starts here
#

include("http_func.inc");
include("http_keepalive.inc");
port = get_http_port(default:80);

if ( ! get_port_state(port) ) exit(0);

sig = get_kb_item("www/hmap/" + port + "/description");
if ( sig && "Netscape" >!< sig && "SunONE" >!< sig ) exit(0);


res = is_cgi_installed_ka(item:"/admin-serv/config/admpw", port:port);
if(res)security_warning(port);
