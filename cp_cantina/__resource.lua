resource_manifest_version 'cp_cantina'

description 'CP CANTINA'

author 'Carlo Pennetta'

version '1.0.0'

server_scripts {
	'@es_extended/locale.lua',
	'config.lua',
	'server.lua',
}

client_scripts {
	'@es_extended/locale.lua',
	'config.lua',
	'client.lua'
}

dependencies {
	'es_extended'
}