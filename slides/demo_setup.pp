yum install puppetserver
puppet module install puppetlabs-puppetdb

Site.pp

node puppetserver {
  # Configure puppetdb and its underlying database
  class { 'puppetdb': }
  # Configure the Puppet master to use puppetdb
  class { 'puppetdb::master::config': }
}
