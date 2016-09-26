node /^o11-bf-2-\d+\.wdc3-qa\.com$/  {
  class {"continuent_qa_node_2":
    nodes_data => {
     host1=>{'host'=> 'o11-01','iIp'=>'192.168.12.242','eIp'=> '10.158.12.242'  },
     host2=>{'host'=> 'o11-02','iIp'=>'192.168.12.243','eIp'=> '10.158.12.243'  },
    } ,
    installMySQL=>true,
    installOracle=>true,
    oracleVersion=>11,
    nfsMount=>"10.158.12.27:/nfs/oracle"
  }
}
