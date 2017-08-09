# Royal C Jackson Jr.
# Skill Evaluation
# Date: 8/9/2017
# File:  dnsmasq_server_acceptance_test.pp
# Comment: Ensure service is running
# You want to ensure a service is running and have puppet restart it when needed.
# an ​ acceptance test​ that verifies that the dnsmasq service is running and listening to the default ports.


class running_service {

  service { 'dnsmasq':
    ensure => 'running',
  }

  exec { 'verify_dnsmasq_ps':
    command => 'ps -ef | grep dnsmasq',
    path    => '/usr/local/bin/:/bin/',
    
  }
  
  exec { 'verify_dnsmasq_ports':
    command => 'sudo netstat -lptu | grep dnsmasq',
    path    => '/usr/local/bin/:/bin/',
    
  }
  
  exec { 'verify_dnsmasq_ports':
    command => 'sudo netstat -tulpn | grep dnsmasq',
    path    => '/usr/local/bin/:/bin/',
    
  }
  
  exec { 'verify_dnsmasq_os':
    command => 'more /etc/redhat-release',
    path    => '/usr/local/bin/:/bin/',
    
  }
  
  exec { 'verify_dnsmasq_dig':
    command => 'dig +nocmd www.linux.com +noall +answer',
    path    => '/usr/local/bin/:/bin/',
    
  }
  
  exec { 'verify_dnsmasq_syntax_check':
    command => 'dnsmasq --test',
    path    => '/usr/local/bin/:/bin/',
    
  }


}