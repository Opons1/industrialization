--registers a grass

function industrialization.register_grass(count, tilestart, data)
    local grasses = {}
    for i = 1, count do
        table.insert(grasses, "industrialization:grass_" .. i)
    end

    local function get_random_grass()
        return grasses[math.random(1, #grasses)]
    end
    data.groups = data.groups or {}
    data.groups.attached_node = 3
    data.groups[data.name] = 1
    for i = 1, count do
        core.register_node(":" .. data.name .. "_" .. i, {
            name = data.description,
            tiles = {tilestart .. i .. ".png"},
            groups = data.groups,
            drawtype = "plantlike",
            inventory_image = data.inventory_image or tilestart .. "1.png",
            paramtype = "light",
            walkable = false,
            light_propagates = true,
            drop = data.name .. "_1",
            selection_box = {
	            type = "fixed",
	                fixed = {
		            {-0.5000, -0.5000, -0.5000, 0.5000, -0.2500, 0.5000}
	            }
            },
            waving = data.waving or 1,
            buildable_to = true,
            on_place = function(pos, placer, pointed_thing)
                if not core.registered_nodes[core.get_node(pointed_thing.under).name].groups[data.name] then
                    return core.item_place(pos, placer, pointed_thing)
                end
                core.item_place(pos, placer, pointed_thing)
            end,
            on_construct = function(pos)
                core.swap_node(pos, {name = get_random_grass()})
            end,
        })
    end
end
--sapling is a registered node
--growth_time_min and max are both numbers to be used with math.random to get growth time
--growth_func can be a string(schem), a table(schem), or a function
industrialization.saplings = {}

function industrialization.register_sapling(sapling, growth_time_min, growth_time_max, growth_func, data)
    if not core.registered_nodes[sapling] then
        error("[industrialization_mapgen] sapling must be registered before using register_sapling")
    end

    local on_construct = function(pos)
        local timer = core.get_node_timer(pos)
        timer:start(math.random(growth_time_min, growth_time_max))
    end

    local required_light = data and data.light or 13

    local growth_function
    if type(growth_func) == "function" then
        growth_function = growth_func
    elseif type(growth_func) == "table" then
        growth_function = function(pos)
            core.place_schematic(pos, growth_func[math.random(1, #growth_func)], "random", {}, false, "place_center_x, place_center_z")
        end
    elseif type(growth_func) == "string" then
        growth_function = function(pos)
            core.place_schematic(pos, growth_func, "random", {}, false, "place_center_x, place_center_z")
        end
    end

    local on_timer = function(pos)
        local light = core.get_node_light(pos)
        if light >= required_light then
            growth_function(pos)
        end
    end

    core.override_item(sapling, {
        on_timer = on_timer,
        on_construct = on_construct
    })

end