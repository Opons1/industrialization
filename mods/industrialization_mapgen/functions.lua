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