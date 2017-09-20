local g = require "src.globals"
local maps = {}

maps.home = {
    {g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.wall, g.wall, g.floor, g.floor, g.floor, g.floor, g.floor,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor},
    {g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.wall, g.wall, g.wall, g.wall, g.wall, g.wall, g.wall,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.wall, g.wall},
    {g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.wall, g.wall, g.floor, g.floor, g.floor, g.floor, g.floor,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor},
    {g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.wall, g.wall, g.floor, g.floor, g.floor, g.floor, g.floor,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor},
    {g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor},
    {g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.wall, g.wall, g.floor, g.floor, g.floor, g.floor, g.floor,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor},
    {g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.wall, g.wall, g.floor, g.floor, g.floor, g.floor, g.floor,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor},
    {g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor},
    {g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor},
    {g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor},
    {g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor},
    {g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor},
    {g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor},
    {g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor},
    {g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor},
    {g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor},
    {g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor},
    {g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor},
    {g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor},
    {g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor},
    {g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor,
    g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor, g.floor},
    height = 21,
    width = 39
}

maps.moveable = {}

maps.moveable[g.floor] = true
maps.moveable[g.wall] = false

return maps