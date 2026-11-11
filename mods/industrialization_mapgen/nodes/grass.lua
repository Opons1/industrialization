local worn_color = "^[colorize:#4f3a26:190"
local ind = industrialization

core.register_node(":industrialization:grass_block", {
    tiles = {
    "industrialization_grass_top.png",
    "industrialization_dirt.png",
	"industrialization_dirt.png^industrialization_grass_side.png",
    },
    groups = {crumbly = 1, soil = 1, grass_block = 1},
    on_step = function(pos, player)
        if ind.random(2) then
            core.set_node(pos, {name = "industrialization:grass_block_worn"})
        end
    end
})

core.register_node(":industrialization:grass_block_worn", {
    tiles = {
    "industrialization_grass_top.png" .. worn_color,
    "industrialization_dirt.png",
	"industrialization_dirt.png^(industrialization_grass_side.png" .. worn_color .. ")",
    },
    drawtype = "nodebox",
    node_box = {
        type = "fixed",
        fixed = {-0.5, -0.5, -0.5, 0.5, 0.4375, 0.5},
    },
    groups = {crumbly = 1, soil = 1, grass_block = 1, worn_grass = 1},
})

local worn_grasses = {
    ["industrialization:grass_block_worn"] = "industrialization:grass_block"
}

core.register_abm({
    label = "Dirt unwearing",
    nodenames = {"group:worn_grass"},
    interval = 60,
    chance = 10,
    action = function(pos, node)
        core.set_node(pos, {name = worn_grasses[node.name]})
    end,
})

