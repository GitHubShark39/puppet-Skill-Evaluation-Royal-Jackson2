# Royal C Jackson Jr.
# Skill Evaluation
# Date: 8/9/2017
# File:  domain_dnsmasq.pp
# Comment: Ensure service is running
# You want to ensure a service is running and have puppet restart it when needed.


class running_service {

  service { 'dnsmasq':
    ensure => 'running',
  }

}