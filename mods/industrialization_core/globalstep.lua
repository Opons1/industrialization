local time = 0
industrialization.globalsteps = {}
industrialization.globalsteps.playerfunctions = {}

core.register_globalstep(function(dtime)
    time = time + dtime
    if time > 0.5 then
        for _, player in ipairs(core.get_connected_players()) do
            for _, func in pairs(industrialization.globalsteps.playerfunctions) do
                func(player)
            end
        end
        time = time - 0.5
    end
end)

function industrialization.register_player_globalstep(name, func)
    industrialization.globalsteps.playerfunctions[name] = func
end

industrialization.globalsteps.nodebelow = {}
industrialization.register_player_globalstep("nodebelow", function(player)
    local pos = player:get_pos()
    pos.y = pos.y - 0.5
    local nodebelow = core.get_node(pos)
    if nodebelow.name ~= "ignore" then
        local func = core.registered_nodes[nodebelow.name].on_step
        if type(func) == "function" then
            func(player)
        end
    end
end)