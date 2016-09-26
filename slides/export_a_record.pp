#Record info in PuppetDB for the DNS Server
@@dns::record::a { 	$hostname:
	 		zone => $::domain,
			data => $::ipaddress_eth0,
}
