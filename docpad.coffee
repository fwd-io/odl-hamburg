module.exports =
    ## Put your general Website information here!
    templateData:
        site:
            title: "Open Device Lab Hamburg"
            twitter: "odl_hh"
            facebook: "https://www.facebook.com/OpenDeviceLabHamburg"
            appid: "626483900710424"
            email: "hello@opendevicelab.de"
            phone: "+49 (0)40 2388 1356"
            gdomain: "opendevicelab.de"
            gid: "UA-35083554-1"
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
            Desire:
                manufacturer: "HTC"
                model: "Desire"
                os: "Android"
                version: "2.2"
                contributor: "<a href='http://schoetz-partner.com'>Patrick Schötz</a>"
                type: "phone"
            Desire2:
                manufacturer: "HTC"
                model: "Desire"
                os: "Android"
                version: "2.3.7 (Custom Rom)"
                contributor: "<a href='http://fwd.io'>FWD.IO</a>"
                type: "phone"
            Wildfire:
                manufacturer: "HTC"
                model: "Wildfire"
                os: "Android"
                version: "2.2.1"
                contributor: "<a href='http://twitter.com/achimsen'>Joachim Penk</a>"
                type: "phone"
            GalaxyS:
                manufacturer: "Samsung"
                model: "Galaxy S"
                os: "Android"
                version: "2.3.6"
                contributor: "<a href='http://twitter.com/achimsen'>Joachim Penk</a>"
                type: "phone"
            GalaxyTab:
                manufacturer: "Samsung"
                model: "Galaxy Tab 10.1 M"
                os: "Android"
                version: "3.1"
                contributor: "<a href='http://fwd.io'>FWD.IO</a>"
                type: "tablet"
            VB730:
                manufacturer: "ViewSonic"
                model: "VB730"
                os: "Android"
                version: "2.2.1"
                contributor: "<a href='http://twitter.com/cover_up'>Cover-Up</a>"
                type: "tablet"

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

    ## Hook for running Grunt.js tasks
    events:
        writeAfter: (opts, next) ->
            balUtil = require('bal-util')
            docpad = @docpad
            rootPath = docpad.config.rootPath

            command = ["#{rootPath}/node_modules/grunt-cli/bin/grunt", 'default']
            balUtil.spawn(command, {cwd:rootPath, output:true}, next)

            @

