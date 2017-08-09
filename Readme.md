# Royal C Jackson Jr.
# Skill Evaluation
# Date: 8/9/2017
# File: Readme.md

# 
SPECIFICATIONS Base Functionality: 

1. Manage the dnsmasq ​ package​ , ​ service​ , and ​ configuration file​ . 

2. Accept a ​ class parameter ​ that specifies a list of domains to spoof. a. DNS lookups against these domains should return “1.2.3.4”. 

3. Include a ​ custom fact ​ that returns the version of dnsmasq. [X]

4. Include a ​ README.md​ with at least one functional example and written as if it would be presented to a customer. [X]

5. Succeed at ‘rake validate’ 


Bonus Points: 

1. Pass Rake ​ metadata​ and ​ lint​ tests. 

2. Include at least one ​ rspec-puppet test​ that verifies: 

	a. The content of the template changes correctly based on the class parameter for domains to spoof . 
 
3. Include an ​ acceptance test​ that verifies that the dnsmasq service is running and listening to the default ports. 

	a. There is no need to acceptance test on multiple OSes (but let us know which one you used). Centos70 [Linux]


"# puppet-Skill-Evaluation-Royal-Jackson" 
