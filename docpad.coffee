module.exports = 
    plugins:
        handlebars:
            helpers:
                getBlock: (type, additional...) ->
                    additional.pop()
                    @getBlock(type).add(additional).toHTML()

                lowercase: (string) ->
                    string.toLowerCase()

