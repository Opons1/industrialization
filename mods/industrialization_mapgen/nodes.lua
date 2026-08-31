core.register_node(":industrialization:stone", {
    tiles = {"industrialization_stone.png"}
})
core.register_alias("mapgen_stone", "core:stone")

core.register_node(":industrialization:dirt", {
    tiles = {"industrialization_dirt.png"}
})

core.register_node(":industrialization:grass", {
    tiles = {
    "industrialization_grass_top.png",
    "industrialization_dirt.png",
	"industrialization_dirt.png^industrialization_grass_side.png",
    }
})

core.register_node(":industrialization:oak_tree", {
	tiles = {"industrialization_oak_top.png", "industrialization_oak_top.png", "industrialization_oak_tree.png"},
})

core.register_node(":industrialization:leaves", {
    drawtype = "allfaces",
    tiles = {"industrialization_oak_leaves.png"}
})