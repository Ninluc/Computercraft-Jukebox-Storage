local set    = require("settings")

local mining = {}


function mining.getNextStep(clientId)
    local lastStep, parameters
    local lastStepLine = actM.getLastAction(clientId)
    if not (lastStepLine == nil or lastStepLine == "") then
        lastStep, parameters = string.match(lastStepLine, "(.*)%" .. set.actionsFieldSeparator .. "(.*)")
        -- If no parameters
        if lastStep == nil then
            lastStep = lastStepLine
        elseif parameters then
            parameters = strT.splitByChar(parameters, set.actionsParametersSeparator)
        end
    else
        lastStep = nil
    end


        if (uInput.ask("Êtes-vous certains que la tortue est bien positionnée (voir documentation)\n (y/n)") == "y") then

    -- if lastStep == nil then
    --     return actM.format("digDown",  {"30"})

    -- elseif lastStep == "digDown" then
    --     return actM.format("digForward", {tostring(set.galleriesSpaceBetween)})
    
    -- elseif lastStep == "digForward" then
    return actM.format("go", {0, 0, 0, true})

    -- elseif lastStep == "digForward" then
        -- return actM.format("digForward", {tostring(set.galleriesLength)})
    -- end



    -- return nil
    -- return nil
end

return mining