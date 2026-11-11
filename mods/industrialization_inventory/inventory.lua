local ind = industrialization

local prepend = "listcolors[#394a5c;#1f2730;#5f9e88;#6c7a75;#220929]listimages[slotbg.png;slotbg_pressed.png]"
    .."bgcolor[#334f45]background9[0,0;40,40;formspecbg7.png;true;0]"

local formspec =
    "formspec_version[6]" ..
    "size[10.5,11]" ..
    "label[1,1;Industrialization Inventory]" ..
    "list[current_player;main;0.4,6;8,4;]"

local craft_
local function get_inventory(player, page)
    if not page then
        return formspec
    else
        return ind.inv.pages[i]
    end
end
core.register_on_joinplayer(function(player)
    player:set_formspec_prepend(prepend)
    player:set_inventory_formspec(get_inventory(player))
end)