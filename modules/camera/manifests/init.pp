class camera{

	Package { ensure => 'installed', allowcdrom => "true" }
		package { 'gedit':}
		package { 'vlc':}
		package { 'pinta':}
		package { 'tree':}
		package { 'darktable':}
		package { 'rawtherapee':}
}

