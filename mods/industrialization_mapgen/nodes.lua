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
    groups = {crumbly = 1, sand = 1}
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
    groups = {crumbly = 2}
})
core.register_alias("mapgen_gravel", "industrialization:gravel")


for i = 1, 3 do
    core.register_node(":industrialization:grass_" .. i, {
        tiles = {"industrialization_grass_" .. i .. ".png"},
        groups = {oddly_breakable_by_hand = 1},
        drawtype = "plantlike",
        paramtype = "light",
        walkable = false,
        light_propagates = true,
        selection_box = {
	    type = "fixed",
	        fixed = {
		        {-0.5000, -0.5000, -0.5000, 0.5000, -0.2500, 0.5000}
	        }
        }
    })
end