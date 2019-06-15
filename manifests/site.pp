## site.pp ##

# This file (/etc/puppetlabs/puppet/manifests/site.pp) is the main entry point
# used when an agent connects to a master and asks for an updated configuration.
#
# Global objects like filebuckets and resource defaults should go in this file,
# as should the default node definition. (The default node can be omitted
# if you use the console and don't define any other nodes in site.pp. See
# http://docs.puppetlabs.com/guides/language_guide.html#nodes for more on
# node definitions.)

## Active Configurations ##

# Disable filebucket by default for all File resources:
File { backup => false }

# DEFAULT NODE
# Node definitions in this file are merged with node data from the console. See
# http://docs.puppetlabs.com/guides/language_guide.html#nodes for more on
# node definitions.

# The default node definition matches any node lacking a more specific node
# definition. If there are no other nodes in this file, classes declared here
# will be included in every node's catalog, *in addition* to any classes
# specified in the console for that node.

#node 'ip-172-31-27-245' {

# include ntp

#}

node 'ip-172-31-12-123' {
  notify {'centosnode':
   message => 'This is ip-172-31-12-123 using a node def in sitepp'
  }
}

#node 'ip-172-31-27-150.ap-south-1.compute.internal' {
node 'ip-172-31-27-245.ap-south-1' {
  notify {'matched the chopped hostname':}
  include pe_repo::platform::el_6_x86_64
  include pe_repo::platform::ubuntu_1404_amd64
}

#node /^ip-172-31/ {

 #notify {'I am regex baby':}
# include ntp
#}


node default {
  # This is where you can declare classes for all nodes.
  # Example:
  #   class { 'my_class': }
}
