class base {
case $::osfamily{
"RedHat	: {
$pacotes = ["epelrelease","git","vim","sysstat","htop","httpd","figlet"]
}
"Debian":{ 
      exec{"atualizar_pacotes":
	       command => "/usr/bin/apt update"
	   }
$pacotes = ["git","vim","sysstat","htop","httpd","figlet"]
}
}
package{$pacotes:
        ensure => present
	}

}

