
-- Logging a message
volt.log = function (msg)
    if type(msg) == "table" then
        msg = minetest.serialize(msg)
    end
    local modname = minetest.get_current_modname()
    minetest.log("action", "["..modname.."] "..tostring(msg))
end

-- Terminates execution with an error
--
-- Useful for critcal errors (unrecoverable-errors)
volt.error = function (msg)
    volt.log("Version: "..volt.VERSION)
    volt.log("Gamemode: "..volt.gamemode)
    volt.log(msg)
    if type(msg) == "table" then
        msg = minetest.serialize(msg)
    end
    local errmsg = "An error occured within Volt Tech, Please contact ApolloX with your logs and a list of mods installed."
    volt.log(errmsg)
    error(errmsg)
end

-- Dofile with dir optional
volt.dofile = function (dir, filename)
    local modpath = minetest.get_modpath(minetest.get_current_modname())
    if filename == nil then
        dofile(modpath .. DIR_DELIM .. dir .. ".lua")
    else
        dofile(modpath .. DIR_DELIM .. dir .. DIR_DELIM .. filename .. ".lua")
    end
end
