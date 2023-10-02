#file about Puppet
exec { 'install_flask':
  command => '/usr/bin/pip3 install Flask==2.1.0',
  path    => '/usr/local/bin:/usr/bin:/bin', # Add the appropriate path if necessary
  creates => '/usr/local/lib/python3.x/dist-packages/Flask-2.1.0.dist-info', # Replace 'x' with your Python version
}
