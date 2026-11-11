local ind = industrialization

ind.inv = {}

ind.inv.recipes = {
    shaped = {},
    shapeless = {},
    cooking = {},
    fuel = {},
}
ind.inv.recipetypes = {
}

local register_craft = core.register_craft

function core.register_craft(data)
    local type = data.type or "shaped"
    data.type = nil

    table.insert(ind.inv.recipes[type], data)

    data.type = type
    register_craft(data)
end

core.after(1, function()
    core.chat_send_all(core.serialize(ind.inv.recipes))
end)

