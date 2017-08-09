# Royal C Jackson Jr.
# Skill Evaluation
# Date: 8/9/2017
# File: dnsmasq_edition.rb
# The custom fact

# Comments:
# Firstly we need to create a boiler plate custom fact in the .
# module by creating the following file lib/facter/dnsmasq_edition.rb

# To run the custom fact, invoke: % puppet facts

Facter.add('dnsmasq_edition_custom') do
  confine :osfamily => : centos7_linux
  setcode do
    'testvalue'
  end
end