local class = require "lib.class"
local MovingObject = require "src.objects.movingObject"
local globals = require "src.globals"

local Player = class(MovingObject, function(this, gm, x, y)
    -- Object Id refers to src.globals
    object_size = 2
    x = x or (gm and math.random(1, gm.map.height)) or 1
    y = y or (gm and math.random(1, gm.map.width)) or 1
    MovingObject.init(this, gm, globals.player, 2, 'front', 0.3, false, x, y)
    this.level = 1
    this.attribute = {
        hp = 100,
        move_speed = 10,
        attack_speed = 1,
        attack_power = 10,
    }
end)

return Player