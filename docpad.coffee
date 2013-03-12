module.exports =
    ## Put your general Website information here!
    templateData:
        site:
            title: "Open Device Lab X"
            twitter: "username"
            facebook: "https://www.facebook.com/facebookdevelopers"
            email: "hello@example.com"
            phone: "1234 5678"
        devices:
            iphone3gs: 
                manufacturer: "Apple"
                model: "iPhone 3GS"
                os: "iOS"
                version: "6"
                contributor: "<a href='http://www.example.com'>John Doe</a>"
                type: "phone"
            ipodtouch4g:
                manufacturer: "Apple"
                model: "iPad 3"
                os: "iOS"
                version: "6"
                contributor: "Foocorp"
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