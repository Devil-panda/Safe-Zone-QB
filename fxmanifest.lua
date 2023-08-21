fx_version 'cerulean'
game 'gta5'

author 'PANDA'
description 'Safe Zone script for fivem server'

shared_scripts {
    'config.lua'
}

client_script {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    'client/safe_zone.lua'
}

lua54 'yes'