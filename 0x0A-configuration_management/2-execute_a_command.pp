# Define a Puppet manifest to kill a process named 'killmenow' using pkill
exec { 'kill_process_killmenow':
  command => '/usr/bin/pkill killmenow',
  path    => '/usr/bin:/bin',
  onlyif  => 'pgrep killmenow',
}
