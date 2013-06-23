  ssh_authorized_key { 'root-ssh' :
    ensure => present,
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCv1vQ1jv9qYRczcKekqrDIJyZ0xecvfh+ufCP4uhzxXZzUDn3/RW/RGzq31vg+9Hh5Pf/sL1wRq61YtYszx2/+WkS6pDoH6tuv7tLOLDItUh0S19fkGMIVEwtcWaFZDiaePnv2GDehe7Dlcd2qTr1p5ZPYfCSjEGNln0bPKAtTb7vK4iGsf9kLU8rybcTdJ6v7LguOFNTBVyL/k4ovmpaAYk0Yv9P5OjtLiGDHZ51YobrQyt145CYT/FIOaeHn6MxkzDMFib8lKbGhWLOknC/QFBLdwMQ9ZIkBOWDfBVvRNtFauVQHjjcL9btF2HtcbLouPyhT1odP3lNl1OzDJo2X',
    type   => 'ssh-rsa' ,
    name   => 'dimitris@Lonestar',
    user   => 'root',
  }
