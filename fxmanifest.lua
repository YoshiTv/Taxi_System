fx_version 'cerulean'
game 'gta5'
lua54 'yes'
version '1.0'
author 'Created By YoshiTv'
description 'Taxi_System'

shared_script {
    '@ox_lib/init.lua',
    'shared/**.lua'
}

server_scripts {
    'server/*.lua'
}

client_scripts {
    'client/*.lua'
}
