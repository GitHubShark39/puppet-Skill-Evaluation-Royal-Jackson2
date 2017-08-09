# Royal C Jackson Jr.
# Skill Evaluation
# Date: 8/9/2017
# File: Readme.md

# OnyxPoint-SkillsEvaluation
# 
SPECIFICATIONS Base Functionality: 

1. Manage the dnsmasq ​ package​ , ​ service​ , and ​ configuration file​.  [X]
Install Package
$ sudo yum install dnsmasq

Verify dnsmasq service
$ps -ef | grep dnsmasq

Location of dnsmasq configuration file
$ cat /etc/dnsmasq.conf

2. Accept a ​ class parameter ​ that specifies a list of domains to spoof. a. DNS lookups against these domains should return “1.2.3.4”. [X]
[domain_dnsmasq.pp]

3. Include a ​ custom fact ​ that returns the version of dnsmasq. [X] [dnsmasq_edition.rb]

4. Include a ​ README.md​ with at least one functional example and written as if it would be presented to a customer. [X]  [Readme_dnsmasq.md]

5. Succeed at ‘rake validate’ [X]
$ puppet parser validate domain_dnsmasq.pp


Bonus Points: 

1. Pass Rake ​metadata​ and ​lint​ tests. [X]
$ puppet-lint domain_dnsmasq.pp 

2. Include at least one ​rspec-puppet test​ that verifies: [
First off, lets create a skeleton spec file for your defined type (modules/logrotate/spec/defines/rule_spec.rb)


	a. The content of the template changes correctly based on the class parameter for domains to spoof . 
 
3. Include an ​ acceptance test​ that verifies that the dnsmasq service is running and listening to the default ports.  [X]
$ puppet parser validate dnsmasq_server_acceptance_test.pp

	a. There is no need to acceptance test on multiple OSes (but let us know which one you used). CentOS Linux release 7.3.1611 (Core) [Linux]


SUBMISSION 
Gzipped Tar File 	
	
ACCEPTANCE TEST CRITERIA 

After applying the module and specifying “bob.com” and “alice.com” as the domains to spoof : 


The dnsmasq service should be running ⚫ The dnsmasq service answers DNS queries 
The dnsmasq service answers a DNS lookup of “bob.com” with “1.2.3.4” 
The dnsmasq service answers a DNS lookup of “alice.com” with “1.2.3.4” 


DURATION You have ​ seven calendar days​ from the time that you receive this exercise. In general, it should 
not take you this long to complete. However, we understand that some of this may be new to you and we want to 
ensure that you have at least one uninterrupted weekend to work on it. 


HINTS It is not our intention to see if you understand the entire Ruby environment. As such, we suggest using ​ 
RVM​ for this exercise. The following is a quickstart for getting rolling. 

############################# THIS DID NOT WORK FOR ME ##############################################
$ gpg2 --keyserver hkp://keys.gnupg.net --recv-keys \   409B6B1796C275462A1703113804BB82D39DC0E3 
$ \curl -sSL https://get.rvm.io | bash -s stable --ruby=1.9.3 --ruby=2.1.0 
$ source ~/.rvm/scripts/rvm $ rvm use --default 2.1.0 
$ rvm all do gem install bundler


############################# THIS DID WORK FOR ME ##############################################
Ruby Version Manager (RVM)
https://rvm.io/

Install RVM:

$ gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
$ \curl -sSL https://get.rvm.io | bash -s stable
$

############################# SETUP THE PUPPET ENVIRONMENT ##############################################
Setting up - Puppet - module that manages ?dnsmasq

- Install Vagrant
- Install Centos
- Install Puppet Master
- Install Puppet Agent
- Install Ruby
- Install dnsmasq
- Install rvm
- Install bind-tools
- Install puppet-lint
- beaker - Acceptance testing with beaker
- Install gems
- Install rspec-puppet
- Installing Beaker
- Install bundler
- bundle install
- rvm docs generate-ri

###############################################################################################################


############################# SETUP THE PUPPET ENVIRONMENT ##############################################

If you just wanted an instant result of your manifest without writing a module you can do it 
with puppet apply <manifest>.pp. However if you wanted to go further and organise 
your manifest->classes->modules, then you need the following steps.

** create a module skeleton
puppet module generate local_dnsmasq.pp
mv local_dnsmasq.pp domain_dnsmasq.pp

** edit your module to add classes/manifest
vim  domain_dnsmasq.pp/manifest/init.pp

** apply/test your module
puppet apply domain_dnsmasq.pp/test/init.pp
After that, you're quite ecstatic and wanted to build your module into Forge ready archive, you do.

puppet module build domain_dnsmasq.pp



###############################################################################################################

If you just wanted an instant result of your manifest without writing a module you can do it 
with puppet apply <manifest>.pp. However if you wanted to go further and organise 
your manifest->classes->modules, then you need the following steps.



** create a module skeleton
puppet module generate your-module_name
mv your-module_name module_name

** edit your module to add classes/manifest
vim  your-module/manifest/init.pp

** apply/test your module
puppet apply your-module/test/init.pp
After that, you're quite ecstatic and wanted to build your module into Forge ready archive, you do.

puppet module build module_name

###############################################################################################################

puppet-apply - Apply Puppet manifests locally

EXAMPLE
$ puppet apply -l /tmp/manifest.log manifest.pp
$ puppet apply --modulepath=/root/dev/modules -e "include ntpd::server"
$ puppet apply --catalog catalog.json

 


