local class = require "lib.class"
local AnimatedObject = require "src.objects.animatedObject"
local globals = require "src.globals"

local MovingObject = class(AnimatedObject, function(this, gm, object_id, object_size, state, time_per_frame, trigger)
    -- Object Id refers to src.globals
    AnimatedObject.init(this, gm, object_id, object_size, state, time_per_frame)
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