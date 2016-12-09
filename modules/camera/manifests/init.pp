class camera{

	Package { ensure => 'installed', allowcdrom => "true" }
		package { 'gedit':}
		package { 'vlc':}
		package { 'pinta':}
		package { 'tree':}
		package { 'darktable':}
		package { 'rawtherapee':}
                package { 'xul-ext-ublock-origin':}

	file{"/etc/firefox/":
		content => template("camera/syspref.js"),
		require => Package["xul-ext-ublock-origin"],
	}

}

