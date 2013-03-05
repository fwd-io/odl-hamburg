module.exports =
    ## Put your general Website information here!
    templateData:
        site:
            title: "Open Device Lab Hamburg"
            twitter: "odl_hh"
            facebook: "https://www.facebook.com/OpenDeviceLabHamburg"
            email: "hello@opendevicelab.de"
            phone: "1234 5678"
        devices:
            iphone3gs: 
                manufacturer: "Apple"
                model: "iPhone 3GS"
                os: "iOS"
                version: "6"
                contributor: "<a href='http://twitter.com/flix'>Felix Gliesche</a>"
                type: "phone"
            ipodtouch4g:
                manufacturer: "Apple"
                model: "iPod Touch 4G"
                os: "iOS"
                version: "6"
                contributor: "<a href='http://twitter.com/achimsen'>Joachim Penk</a>"
                type: "phone"
            ipad3:
                manufacturer: "Apple"
                model: "iPad 3"
                os: "iOS"
                version: "6"
                contributor: "<a href='http://twitter.com/fwd_io'>FWD.IO</a>"
                type: "tablet"
            Bold9700:
                manufacturer: "Blackberry"
                model: "Bold 9700"
                os: "OS"
                version: "6"
                contributor: "<a href='http://carsale24.de'>Nikolai Roth</a>"
                type: "phone"
            Pearl9105:
                manufacturer: "Blackberry"
                model: "Pearl 9105"
                os: "OS"
                version: "6"
                contributor: "<a href='http://schoetz-partner.com'>Patrick Schötz</a>"
                type: "phone"
            E90Communicator:
                manufacturer: "Nokia"
                model: "E90 Communicator"
                os: "Symbian"
                version: "9.2"
                contributor: "<a href='http://schoetz-partner.com'>Patrick Schötz</a>"
                type: "phone"
            E75:
                manufacturer: "Nokia"
                model: "E75"
                os: "Symbian"
                version: "9.3"
                contributor: "<a href='http://schoetz-partner.com'>Patrick Schötz</a>"
                type: "phone"

    ## Helpers for the handlebars templating engine
    plugins:
        handlebars:
            helpers:
                getBlock: (type, prefix, additional...) ->
                    additional.pop()
                    newPaths = (prefix+path for path in additional)
                    @getBlock(type).add(newPaths).toHTML()

                lowercase: (string) ->
                    string.toLowerCase()

                safeurl: (url) ->
                    encodeURI(url)

    events:
        writeAfter: (opts, next) ->
            balUtil = require('bal-util')
            docpad = @docpad
            rootPath = docpad.config.rootPath

            command = ["#{rootPath}/node_modules/grunt-cli/bin/grunt", 'default']
            balUtil.spawn(command, {cwd:rootPath, output:true}, next)

            @

