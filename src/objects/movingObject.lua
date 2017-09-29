local class = require "lib.class"
local AnimatedObject = require "src.objects.animatedObject"
local globals = require "src.globals"

-- MovingObject is inherited from AnimatedObject,
-- It has a boolean trigger, indicate if the object is
-- a bloking object. And number value x and y is the object's coordinate.
-- Moving Object has a function move(dx, dy),
-- returns true if object move succussfully or false if fails.

local MovingObject = class(AnimatedObject, function(this, gm, object_id, object_size,
        state, time_per_frame, trigger, x, y)
    -- Object Id refers to src.globals
    AnimatedObject.init(this, gm, object_id, object_size, state, time_per_frame)
    this.coordinate = {
        x = x,
        y = y,
    }
    this.trigger = trigger
end)

function MovingObject:move(dx, dy)
    local dest_x = self.coordinate.x + dx
    local dest_y = self.coordinate.y + dy
    if (self.game_manager:checkCollision(self, dest_x, dest_y) ~= nil) then
        return false
    end
    if (not self.game_manager:checkMoveable(self, dest_x, dest_y)) then
        return false
    end
    self.coordinate.x, self.coordinate.y = dest_x, dest_y
    return true
end

return MovingObject