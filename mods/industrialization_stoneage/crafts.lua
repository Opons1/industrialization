core.register_craft({
    output = "industrialization:plant_fiber",
    recipe = {
    {"group:grass", "group:grass", "group:grass"},
    {"group:grass", "group:grass", "group:grass"},
    {"group:grass", "group:grass", "group:grass"},
    }
})

core.register_craft({
    output = "industrialization:rock_tools", 
    recipe = {
        {"industrialization:sharp_rock"},
        {"industrialization:plant_fiber"},
        {"group:stick"}
    }
})