
volt = {}

volt.VERSION = "0.1-dev"
volt.modpath = minetest.get_modpath("volt_core")
volt.gamemode = "???"
volt.store = minetest.get_mod_storage()

if minetest.get_modpath("default") then
    volt.gamemode = "MTG"
elseif minetest.get_modpath("mcl_core") then
    volt.gamemode = "MCL"
elseif minetest.get_modpath("nc_terrain") then
    volt.gamemode = "NC"
end

dofile(volt.modpath .. DIR_DELIM .. "utilbelt.lua")

volt.log("Version: "..volt.VERSION)
volt.log("Gamemode: "..volt.gamemode)
