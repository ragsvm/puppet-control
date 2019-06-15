File { backup => false }
#node 'ip-172-31-12-123' {
#  notify {'centosnode':
#   message => 'This is ip-172-31-12-123 using a node def in sitepp'
#  }
#}
node 'ip-172-31-27-245.ap-south-1' {
  notify {'matched the chopped hostname':}
  include pe_repo::platform::el_6_x86_64
  include pe_repo::platform::ubuntu_1404_amd64
}
node default {
  notify {'Hiera_include':

   message => 'Matched the Hiera_include'

  }

  hiera_include('classes')
}
