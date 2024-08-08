name = "Clock settings [wanda]"
description = "The mod gives you the ability to change the clock rollback time"
author = "bezdar"
version = "1.0.1"

forumthread = ""

api_version = 10

icon_atlas = "modicon.xml"
icon = "modicon.tex"

dst_compatible = true

client_only_mod = false
all_clients_require_mod = false

local function Config(label, name, options, default, hover)
    return { label = label, name = name, options = options, default = default, hover = hover or "" }
end

local function Option(description, data)
    return { description = description,  data = data }
end

local function Title(title)
    return Config(title, "", { Option("", 0) }, 0)
end

local min = 60 -- sec

-- Health
local health_options = {}
for i = 3, 12 do health_options[i - 2] = Option(i * 25 .. " xp", i * 25) end

-- Ageless Watch settings
local ageless_watch_cooldown = {}
for i = 1, 4 do ageless_watch_cooldown[i] = Option(i .. " min", i * min) end

local ageless_watch_healing = {}
for i = 1, 10 do ageless_watch_healing[i] = Option(i * 10 .. " xp", i * 10) end

-- Second Chance Watch settings
local second_change_watch_cooldown = {}
for i = 1, 8 do second_change_watch_cooldown[i] = Option(i .. " min", i * min) end

-- Backstep settings
local backstep_watch_cooldown = {}
for i = 1, 4 do backstep_watch_cooldown[i] = Option(i .. " sec", i) end

-- Backtrek settings
local backtrek_watch_cooldown = {}
for i = 2, 10 do backtrek_watch_cooldown[i - 1] = Option(i .. " min", i * min) end


configuration_options = {
    Title("Health"),
    Config("Health", "health", health_options, 150),

    Title("Ageless Watch"),
    Config("Cooldown", "ageless_watch_cooldown", ageless_watch_cooldown, 2 * min),
    Config("Healing", "ageless_watch_healing", ageless_watch_healing, 20),

    Title("Second Chance Watch"),
    Config("Cooldown", "second_change_watch_cooldown", second_change_watch_cooldown, 4 * min),

    Title("Backstep Watch"),
    Config("Cooldown", "backstep_cooldown", backstep_watch_cooldown, 2),

    Title("Backtrek Watch"),
    Config("Cooldown", "backtrek_watch_cooldown", backtrek_watch_cooldown, 8 * min)
}
