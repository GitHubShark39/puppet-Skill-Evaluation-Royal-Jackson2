# Royal C Jackson Jr.
# Skill Evaluation
# Date: 8/9/2017
# File:  domain_dnsmasq.pp
# Comment: Add Domain in dnsmasq

class { 'dnsmasq': 
  domain     => [ 'bob.com', 'alice.com']
  dhcp_range => [ '1234::, test-only'] 
}