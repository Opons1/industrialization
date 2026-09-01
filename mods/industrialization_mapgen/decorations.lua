core.register_decoration({
    deco_type = "simple",
    place_on = {"industrialization:grass_block"},
    sidelen = 4,
    fill_ratio = 0.5,
    flags = "all_floors",
    decoration = "industrialization:rock",
    spawn_by = "industrialization:stone",
    num_spawn_by = 2,
    check_offset = -1,
})

core.register_decoration({
    deco_type = "simple",
    place_on = {"industrialization:stone"},
    sidelen = 4,
    fill_ratio = 0.02,
    flags = "all_floors",
    decoration = "industrialization:rock",
    y_min = -30,
    y_max = 30,
})