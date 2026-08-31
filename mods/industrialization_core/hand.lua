core.override_item("", {
	tool_capabilities = {
		full_punch_interval = 0.6,
		max_drop_level = 0,
		groupcaps = {
			crumbly = {times={[1] = 5}, maxlevel = 1, uses = 0},
			snappy = {times={[1] = 3}, maxlevel = 1, uses = 0},
			oddly_breakable_by_hand = {times={ [1] = 0,[2] = 0.5, [3] = 1, [4] = 2, [5] = 4, [6] = 8}, uses=0}
		},
		damage_groups = {fleshy=1},
	}
})