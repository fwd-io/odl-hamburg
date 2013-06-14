module.exports =
    ## Put your general Website information here!
    templateData:
        site:
            title: "Open Device Lab X"
            twitter: "odl"
            facebook: "https://www.facebook.com/facebookdevelopers"
            email: "hello@example.com"
            phone: "1234 5678"
            twitterWidgetId: "12341234"
        partnerLogos: [
            {
                path: "assets/img/android.svg"
                url: "http://www.fwd.io"
            }
        ]
        devices:
            iphone3gs: 
                manufacturer: "Apple"
                model: "iPhone 3GS"
                os: "iOS"
                version: "6"
                contributor: "<a href='http://www.example.com'>John Doe</a>"
                type: "phone"
            ipodtouch4g:
                manufacturer: "Samsung"
                model: "Galaxy Tab"
                os: "Android"
                version: "4"
                contributor: "Foocorp"
                type: "tablet"
            foo:
                manufacturer: "RIM"
                model: "Blackberry Bolt"
                os: "OS"
                version: "6"
                contributor: "Monsters, Inc."
                type: "phone"
            bar:
                manufacturer: "Nokia"
                model: "Communicat0r"
                os: "Symbian"
                version: "0.0.1"
                contributor: "Foocorp"
                type: "phone"
            webos:
                manufacturer: "HP"
                model: "Minitinyphone"
                os: "WebOS"
                version: "3"
                contributor: "HP"
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