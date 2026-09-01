core.register_node(":industrialization:water_source", {
    description = "Water Source",
    groups = { water_source = 1, liquid = 1, water = 1, flowing = 0,},

    tiles = {
    {
        name = "industrialization_water_flowing.png^[opacity:190",
        backface_culling = false,
        animation = {
            type = "vertical_frames",
            aspect_w = 16,
            aspect_h = 16,
            length = 1,
        },
    } 
},
    use_texture_alpha = "blend",
    drawtype = "liquid",
    paramtype = "light",
    waving = 3,
    post_effect_color = "#2979ff66",
    walkable = false,
    liquid_move_physics = true,
    move_resistance = 1,
    pointable = false,
    diggable = false,
    buildable_to = true,
    liquidtype = "source",
    liquid_viscosity = 0,
    liquid_renewable = false,
    liquid_range = 8,
    liquid_alternative_source = "industrialization:water_source",
    liquid_alternative_flowing = "industrialization:water_flowing",
})

core.register_node(":industrialization:water_flowing", {
    description = "Water Flowing",
    groups = { water_flowing = 1, liquid = 1, water = 1, flowing = 1},

    special_tiles = {
    {
        name = "industrialization_water_flowing.png^[opacity:190",
        backface_culling = false,
        animation = {
            type = "vertical_frames",
            aspect_w = 16,
            aspect_h = 16,
            length = 1,
        },
    },
    {
        name = "industrialization_water_flowing.png^[opacity:190",
        backface_culling = true,
        animation = {
            type = "vertical_frames",
            aspect_w = 16,
            aspect_h = 16,
            length = 1,
        },
    }
    },
    tiles = {"industrialization_water_flowing.png^[opacity:190"},
    use_texture_alpha = "blend",
    drawtype = "flowingliquid",

    paramtype = "light",
    paramtype2 = "flowingliquid",
    waving = 3,
    post_effect_color = "#2979ff66",
    walkable = false,
    liquid_move_physics = true,
    move_resistance = 1,
    pointable = false,
    diggable = false,
    buildable_to = true,
    liquidtype = "flowing",
    liquid_viscosity = 0,
    liquid_renewable = false,
    liquid_range = 8,
    liquid_alternative_source = "industrialization:water_source",
    liquid_alternative_flowing = "industrialization:water_flowing",
})

core.register_alias("mapgen_water_source", "industrialization:water_source")