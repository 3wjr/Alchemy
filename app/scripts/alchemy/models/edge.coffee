class alchemy.models.Edge
    constructor: (edge) ->
        _.merge(@, edge)
        # Merge undefined edgeStyle keys from conf.
        # Works with undefined @edgeStyle
        conf = alchemy.conf
        @edgeStyle = _.merge(conf.edgeStyle, @edgeStyle)
        @_rawEdge = edge

    toPublic: =>
        keys = _.keys(@_rawEdge)
        _.pick(@, keys)
    