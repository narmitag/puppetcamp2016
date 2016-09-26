node puppetserver {
  # Configure puppetdb and its underlying database
  class { 'puppetdb': }
  # Configure the Puppet master to use puppetdb
  class { 'puppetdb::master::config': }
}

node mysql1 {

  class { '::mysql::server':
    root_password           => 'strongpassword',
    remove_default_accounts => true
  }
  @@dns::record::a { 	$hostname:
  	 		zone => 'puppetcamp.com',
  			data => $::ipaddress_eth0,
  }

}

node web1 {

  class { 'apache': }

  @@dns::record::a { 	$hostname:
  	 		zone => 'puppetcamp.com',
  			data => $::ipaddress_eth0,
  }


}

node dns1 {

  include dns::server

  dns::server::options { '/etc/bind/named.conf.options':
    forwarders => [ '10.142.7.1', '10.142.7.2' ]
  }

  dns::zone { 'puppetcamp.com':
    soa         => 'dns1.puppetcamp.com'
  }

  #Pull all of the A records from PuppetDB
  Dns::Record::A <<||>>

}
