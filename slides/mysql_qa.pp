node /^c6-az-6-\d+\.wdc3-qa\.com$/  {
  class {"continuent_qa_node_2":
    nodes_data => {
      host1=> {'host'=>'c6-01', 'iIp' => '192.168.12.216', 'eIp' => '10.158.12.216'  },
      host2=> {'host'=>'c6-02', 'iIp' => '192.168.12.217', 'eIp' => '10.158.12.217'  },
      host3=> {'host'=>'c6-03', 'iIp' => '192.168.12.218', 'eIp' => '10.158.12.218'  },
    } ,
    mysqlVersion=>'ps5.5.32'
  }
}
