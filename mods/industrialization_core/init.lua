local mp = core.get_modpath(core.get_current_modname())
industrialization = {}
industrialization.version = 0.1

dofile(mp .. "/hand.lua")
--just contains all the functions
--functions related to globalsteps
dofile(mp .. "/globalstep.lua")
--functions related to randomness
dofile(mp .. "/random.lua")
--functions related to version control
dofile(mp .. "/versions.lua")

