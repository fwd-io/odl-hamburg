module.exports =
    ## Put your general Website information here!
    templateData:
        site:
            twitter: "odl_hh"
            facebook: "https://www.facebook.com/esprit"
            email: "hello@opendevicelab.de"
            phone: "1234 5678"

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

