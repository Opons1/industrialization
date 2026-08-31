core.register_biome({
    name = "grasslands",

    node_top = "industrialization:grass",
    depth_top = 1,
    node_filler = "industrialization:dirt",
    depth_filler = 6,
    y_max = 31000,
    y_min = 1,
    vertical_blend = 8,
    -- Vertical distance in nodes above 'y_max' over which the biome will
    -- blend with the biome above.
    -- Set to 0 for no vertical blend. Defaults to 0.
    -- Integer [s16]
    heat_point = 50.0,
    humidity_point = 50.0,
    -- Characteristic temperature and humidity for the biome.
    -- These values create 'biome points' on a voronoi diagram with heat and
    -- humidity as axes. The resulting voronoi cells determine the
    -- distribution of the biomes.
    -- Heat and humidity have average values of 50.0, vary mostly between
    -- 0.0 and 100.0 but can exceed these values.
    weight = 1.0,
    -- Relative weight of the biome in the Voronoi diagram.
    -- A value of 0 (or less) is ignored and equivalent to 1.0.
})

core.register_decoration({
    deco_type = "schematic",

    place_on = "industrialization:grass",

    sidelen = 8,

    fill_ratio = 0.1,

    place_offset_y = 1,

    schematic = core.get_modpath("mapgen") .. "/schems/oak_tree_1.mts",


    flags = "place_center_x, place_center_z, force_placement",
    -- Flags for schematic decorations. See 'Schematic attributes'.

    rotation = "random",
}

)