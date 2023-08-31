fx_version 'bodacious'
game 'gta5'

author 'DN DEVELOPMENT'
description 'dn Notify'
version '1.0.0'

lua54 'yes'

client_scripts {
	'client/main.lua'
}

ui_page "html/index.html"

files({
    'html/**.**',
    'html/assets/**'
})

export "notify"