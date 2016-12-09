class camera{

	Package { ensure => 'installed', allowcdrom => "true" }
		package { 'gedit':}
		package { 'vlc':}
		package { 'pinta':}
		package { 'tree':}
		package { 'darktable':}
		package { 'rawtherapee':}
                package { 'xul-ext-ublock-origin':}

	file{"/etc/firefox/syspref.js.erb":
		content => template("camera/syspref.js.erb"),
		require => Package["xul-ext-ublock-origin"],
	}

}

