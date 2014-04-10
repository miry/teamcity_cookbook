name             'teamcity'
maintainer       'Michael Nikitochkin'
maintainer_email 'michael@jetthoughts.com'
license          'Apache 2.0'
description      'Installs/Configures Teamcity server'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

supports 'ubuntu', '= 12.04'

depends 'tomcat'
depends 'application_java'
