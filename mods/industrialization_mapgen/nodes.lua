core.register_node(":industrialization:stone", {
    tiles = {"industrialization_stone.png"},
    groups = {stone = 1, cracky = 1}
})
core.register_alias("mapgen_stone", "industrialization:stone")

core.register_node(":industrialization:dirt", {
    tiles = {"industrialization_dirt.png"},
    groups = {crumbly = 1, soil = 1}
})

core.register_alias("mapgen_dirt", "industrialization:dirt")

core.register_node(":industrialization:sand", {
    tiles = {"industrialization_sand.png"},
    groups = {crumbly = 1, sand = 1, falling_node = 1}
})

core.register_alias("mapgen_sand", "industrialization:sand")

core.register_node(":industrialization:grass_block", {
    tiles = {
    "industrialization_grass_top.png",
    "industrialization_dirt.png",
	"industrialization_dirt.png^industrialization_grass_side.png",
    },
    groups = {crumbly = 1, soil = 1, grass_block = 1},
})

core.register_node(":industrialization:oak_tree", {
	tiles = {"industrialization_oak_top.png", "industrialization_oak_top.png", "industrialization_oak_tree.png"},
    groups = {tree = 1, choppy = 1}
})

core.register_node(":industrialization:leaves", {
    drawtype = "allfaces",
    tiles = {"industrialization_oak_leaves.png"},
    groups = {leaves = 1, snappy = 1},
    drop = {
        items = {
            {
                rarity = 10,
                items = {"industrialization:stick"},
            },
            {
                rarity = 20,
                items = {"industrialization:sapling_oak"},

            },
            {
                items = {"industrialization:leaves"},
            },
        },
    },
})

core.register_node(":industrialization:gravel", {
    tiles = {"industrialization_gravel.png"},
    groups = {crumbly = 2, falling_node = 1}
})
core.register_alias("mapgen_gravel", "industrialization:gravel")




core.register_node(":industrialization:rock", {
    drawtype = "nodebox",
    paramtype = "light",
    tiles = {"industrialization_stone.png"},
    node_box = {
        type = "fixed",
        fixed = {
            {-0.31, -0.5, -0.13, 0.13, -0.25, 0.19}
        }
    },
    groups = {oddly_breakable_by_hand = 2},
    on_use = function(itemstack, user, pointed_thing)
        local node = core.get_node(pointed_thing.under)
        if core.registered_nodes[node.name].groups.stone then
            local inv = user:get_inventory()
            local added = inv:add_item("main", "industrialization:sharp_rock")
            itemstack:take_item()
            if added:is_empty() then
                return itemstack
            end
        end
    end

})

industrialization.register_grass(3, "industrialization_grass_", {
    description = "Grass",
    name = "industrialization:grass",
    groups = {oddly_breakable_by_hand = 1, grass = 1}

})

core.register_node(":industrialization:sapling_oak", {
    description = "Oak Sapling",
    drawtype = "plantlike",
    paramtype = "light",
    tiles = {"industrialization_oak_sapling.png"},
    inventory_image = "industrialization_oak_sapling.png",
    groups = {oddly_breakable_by_hand = 2},
})

industrialization.register_sapling("industrialization:sapling_oak", 1, 3,
    core.get_modpath("industrialization_mapgen") .. "/schems/oak_tree_1.mts"
)