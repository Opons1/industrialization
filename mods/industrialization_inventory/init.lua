local mp = core.get_modpath(core.get_current_modname())

local prepend = "listcolors[#394a5c;#1f2730;#5f9e88;#6c7a75;#220929]"
    .."listimages[slotbg.png;slotbg_pressed.png]"
    .."bgcolor[#334f45]background9[0,0;40,40;formspecbg.png;true;0]"

core.register_on_joinplayer(function(player)
    player:set_formspec_prepend(prepend)
end)


unified_inventory.standard_background = prepend