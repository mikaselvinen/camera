class camera{

	Package { ensure => 'installed', allowcdrom => "true" }
		package { 'gedit':}
		package { 'vlc':}
		package { 'pinta':}
		package { 'tree':}
		package { 'darktable':}
		package { 'rawtherapee':}
                package { 'xul-ext-ublock-origin':}
		package { 'firefox':}


	file{"/etc/firefox/syspref.js":
		content => template("camera/syspref.js"),
		require => Package["xul-ext-ublock-origin"],
		notify => Service["firefox"],
	}

	service {"firefox":
		provider => "systemd",
		require => Package["firefox"],
	}

}

