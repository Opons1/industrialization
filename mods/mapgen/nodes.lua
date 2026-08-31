core.register_node(":core:stone", {
    tiles = {"core_stone.png"}
})
core.register_alias("mapgen_stone", "core:stone")

core.register_node(":core:dirt", {
    tiles = {"core_dirt.png"}
})

core.register_node(":core:grass", {
    tiles = {
    "core_grass_top.png",
    "core_dirt.png",
	"core_dirt.png^core_grass_side.png",
    }
})

core.register_node(":core:oak_tree", {
	tiles = {"core_oak_top.png", "core_oak_top.png", "core_oak_tree.png"},
})

core.register_node(":core:leaves", {
    drawtype = "allfaces",
    tiles = {"core_oak_leaves.png"}
})