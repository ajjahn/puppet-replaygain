define replaygain::scan ($interval = 1, $ensure = present) {

  $directory = $name

  cron { "replaygain-${directory}":
    command => "find ${directory} -iname *.m4a | while read file; do aacgain -r -e \"\$file\"; done; find ${directory} -iname *.mp3 | while read file; do mp3gain -r -e \"\$file\"; done",
    user => 'root',
    hour => "*/${interval}",
    ensure => $ensure,
    require => Class['replaygain::install'],
  }

}
