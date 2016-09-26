node /^ns\d+\.wdc3\.continuent\.com$/ {

  include dns::server

  dns::server::options { '/etc/bind/named.conf.options':
    forwarders => [ '10.142.7.1', '10.142.7.2' ]
  }

  dns::zone { 'wdc3.continuent.com':
    soa         => 'ns1.wdc3.continuent.com',
    ….
  }

  #Pull all of the A records from PuppetDB
  Dns::Record::A <<||>>
}
