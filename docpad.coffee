module.exports =
    ## Put your general Website information here!
    templateData:
        site:
            twitter: "username"
            facebook: "https://www.facebook.com/example"
            email: "hello@example.com"
            phone: "1234 5678"

    ## Helpers for the handlebars templating engine
    plugins:
        handlebars:
            helpers:
                getBlock: (type, additional...) ->
                    additional.pop()
                    @getBlock(type).add(additional).toHTML()

                lowercase: (string) ->
                    string.toLowerCase()

                safeurl: (url) ->
                    encodeURI(url)

