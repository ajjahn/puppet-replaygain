define replaygain::scan ($interval = 1, $ensure = present) {

  $directory = $name

  cron { "replaygain-${directory}":
    command => "find ${directory} -iname *.m4a | while read file; do aacgain -r -e -c \"\$file\"; done; find ${directory} -iname *.mp3 | while read file; do mp3gain -r -e -c \"\$file\"; done",
    user => 'root',
    hour => "*/${interval}",
    miniute => absent,
    ensure => $ensure,
    require => Class['replaygain::install'],
  }

}
