local genHotfix = require(PluginPath..'/GenHotfix')
local genRuntime = require(PluginPath..'/GenRuntime')

function onPublish(handler)
    if not handler.genCode then 
        handler.genCode = false
        genHotfix(handler)
    else
        handler.genCode = false
        genRuntime(handler)
    end
end