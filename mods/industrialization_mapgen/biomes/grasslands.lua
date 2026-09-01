core.register_biome({
    name = "grasslands",

    node_top = "industrialization:grass_block",
    depth_top = 1,
    node_filler = "industrialization:dirt",
    depth_filler = 6,
    y_max = 50,
    y_min = 3,
    vertical_blend = 8,
    heat_point = 50.0,
    humidity_point = 50.0,
    weight = 1.0,
    node_riverbed = "industrialization:gravel",
    depth_riverbed = 2,

})
core.register_decoration({
    deco_type = "simple",

    place_on = "industrialization:grass_block",

    sidelen = 8,

    fill_ratio = 0.5,

    decoration = {
        "industrialization:grass_1", 
        "industrialization:grass_2", 
        "industrialization:grass_3"
    }

})
core.register_decoration({
    deco_type = "schematic",

    place_on = "industrialization:grass_block",

    sidelen = 8,

    fill_ratio = 0.01,

    place_offset_y = 1,

    schematic = core.get_modpath("industrialization_mapgen") .. "/schems/oak_tree_1.mts",


    flags = "place_center_x, place_center_z, force_placement",
    -- Flags for schematic decorations. See 'Schematic attributes'.

    rotation = "random",
})