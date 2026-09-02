core.register_tool(":industrialization:rock_tool", {
    description = "Primitive Tool",
	tool_capabilities = {
		full_punch_interval = 2,
		max_drop_level = 1,
		groupcaps = {
			crumbly = {{[2] = 6}, maxlevel = 1, uses = 10},
            cracky = {times = {[1] = 4}, maxlevel = 1, uses = 10},
            choppy = {times = {[1] = 5}, maxlevel = 1, uses = 10},
		},
		damage_groups = {fleshy = 3},
	},
    inventory_image = "industrialization_stone_tool.png"
})