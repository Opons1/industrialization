core.register_node(":industrialization:stone", {
    tiles = {"industrialization_stone.png"},
    groups = {stone = 1}
})
core.register_alias("mapgen_stone", "core:stone")

core.register_node(":industrialization:dirt", {
    tiles = {"industrialization_dirt.png"},
    groups = {crumbly = 1, soil = 1}
})

core.register_node(":industrialization:grass", {
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