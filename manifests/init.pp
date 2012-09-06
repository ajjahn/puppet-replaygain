class replaygain {
  include replaygain::install

  # cron { "gain":
  #   command => "find /vagrant -iname *.m4a | while read file; do aacgain -r -e \"\$file\" >> '/vagrant/aac.txt'; done; find /vagrant -iname *.mp3 | while read file; do mp3gain -r -e \"\$file\" >> '/vagrant/mp3.txt'; done",
  #   require => Class['replaygain::install'],
  #   minute => '*/2',
  #   user => 'root',
  #   hour => '*',
  #   ensure => absent
  # }

  # exec { "gain":
  #   command => "find /vagrant -iname *.m4a | while read file; do aacgain -r -e \"\$file\" >> '/vagrant/aac.txt'; done; find /vagrant -iname *.mp3 | while read file; do mp3gain -r -e \"\$file\" >> '/vagrant/mp3.txt'; done",
  #   require => Class['replaygain::install'],
  # }

}
