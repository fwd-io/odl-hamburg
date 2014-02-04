module.exports =
    ## Put your general Website information here!
    templateData:
        site:
            title: "Open Device Lab Hamburg"
            twitter: "odl_hh"
            phone: "+49 40 2286 9517"
            facebook: "https://www.facebook.com/OpenDeviceLabHamburg"
            appid: "626483900710424"
            email: "hello@opendevicelab.de"
            gdomain: "opendevicelab.de"
            gid: "UA-35083554-1"
            twitterWidgetId: "345529577604542466"

        partnerLogos: [
            {
                path: "assets/img/launchco-hh.svg"
                url: "http://launchco.com"
            }
            {
                path: "assets/img/coverup.svg"
                url: "http://www.coverupaccessories.com/"
            }
            {
                path: "assets/img/nokia.svg"
                url: "http://www.nokia.com"
            }
        ]
        devices:
            iphone3gs: 
                manufacturer: "Apple"
                model: "iPhone 3GS"
                os: "iOS"
                version: "6"
                contributor: "<a target='_blank' href='http://twitter.com/flix'>Felix Gliesche</a>"
                type: "phone"
                dead: true
            ipad1:
                manufacturer: "Apple"
                model: "iPad 1st generation"
                os: "iOS"
                version: "5.1.1"
                contributor: "<a target='_blank' href='http://twitter.com/flix'>Felix Gliesche</a>"
                type: "tablet"
            iphone5:
                manufacturer: "Apple"
                model: "iPhone 5"
                os: "iOS"
                version: "6.1.4"
                contributor: "<a target='_blank' href='http://twitter.com/flix'>Felix Gliesche</a>"
                type: "phone"
                private: true
            Bold9700:
                manufacturer: "Blackberry"
                model: "Bold 9700"
                os: "OS"
                version: "6"
                contributor: "<a target='_blank' href='http://carsale24.de'>Nikolai Roth</a>"
                type: "phone"
            Pearl9105:
                manufacturer: "Blackberry"
                model: "Pearl 9105"
                os: "OS"
                version: "6"
                contributor: "<a target='_blank' href='http://schoetz-partner.com'>Patrick Schötz</a>"
                type: "phone"
            lumia800:
                manufacturer: "Nokia"
                model: "Lumia 800"
                os: "Windows Phone"
                version: "7.8"
                contributor: "<a target='_blank' href='http://www.developer.nokia.com/Devices/Device_specifications/Lumia_800/'>Nokia</a>"
                type: "phone"
            lumia920:
                manufacturer: "Nokia"
                model: "Lumia 920"
                os: "Windows Phone"
                version: "8"
                contributor: "<a target='_blank' href='http://www.developer.nokia.com/Devices/Device_specifications/Lumia_920/'>Nokia</a>"
                type: "phone"
            asha:
                manufacturer: "Nokia"
                model: "Asha 311"
                os: "Nokia OS"
                version: "5.92"
                contributor: "<a target='_blank' href='http://www.developer.nokia.com/Devices/Device_specifications/Asha_311/'>Nokia</a>"
                type: "phone"
            E90Communicator:
                manufacturer: "Nokia"
                model: "E90 Communicator"
                os: "Symbian"
                version: "9.2"
                contributor: "<a target='_blank' href='http://schoetz-partner.com'>Patrick Schötz</a>"
                type: "phone"
            E75:
                manufacturer: "Nokia"
                model: "E75"
                os: "Symbian"
                version: "9.3"
                contributor: "<a target='_blank' href='http://schoetz-partner.com'>Patrick Schötz</a>"
                type: "phone"
            Desire:
                manufacturer: "HTC"
                model: "Desire"
                os: "Android"
                version: "2.2"
                contributor: "<a target='_blank' href='http://schoetz-partner.com'>Patrick Schötz</a>"
                type: "phone"
            PalmPixiPlus:
                manufacturer: "Palm"
                model: "Palm Pixi Plus"
                os: "Palm webOS"
                version: "1.4.5"
                contributor: "<a target='_blank' href='http://launchco.com'>LAUNCH/CO</a>"
                type: "phone"
            GalaxyS:
                manufacturer: "Samsung"
                model: "Galaxy S"
                os: "Android"
                version: "2.3.6"
                contributor: "<a target='_blank' href='http://twitter.com/achimsen'>Joachim Penk</a>"
                type: "phone"
            GalaxyTab:
                manufacturer: "Samsung"
                model: "Galaxy Tab 10.1 M"
                os: "Android"
                version: "3.1"
                contributor: "<a target='_blank' href='http://launchco.com'>LAUNCH/CO</a>"
                type: "tablet"
            VB730:
                manufacturer: "ViewSonic"
                model: "VB730"
                os: "Android"
                version: "2.2.1"
                contributor: "<a target='_blank' href='http://twitter.com/cover_up'>Cover-Up</a>"
                type: "tablet"

    ## Helpers for the handlebars templating engine
    plugins:
        less:
            compress: true
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
                    
                ifCond: (v1, v2, options) ->
                    if(v1 == v2)
                        return options.fn(this)
                    else 
                        options.inverse(this);
        sitemap:
            hostname: "http://hamburg.opendevicelab.de"
            changefreq: "weekly"
            priority: 1

    ## Dev stuff
    growl: false
