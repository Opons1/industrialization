core.register_node(":industrialization:stone", {
    tiles = {"industrialization_stone.png"},
    groups = {stone = 1}
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
    groups = {crumbly = 1, soil = 1, grass_block = 1}
})

core.register_node(":industrialization:oak_tree", {
	tiles = {"industrialization_oak_top.png", "industrialization_oak_top.png", "industrialization_oak_tree.png"},
    groups = {tree = 1}
})

core.register_node(":industrialization:leaves", {
    drawtype = "allfaces",
    tiles = {"industrialization_oak_leaves.png"},
    groups = {leaves = 1, snappy = 1}
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
    groups = {stone = 1, oddly_breakable_by_hand = 2}
})

industrialization.register_grass(3, "industrialization_grass_", {
    description = "Grass",
    name = "industrialization:grass",
    groups = {oddly_breakable_by_hand = 1,}

})