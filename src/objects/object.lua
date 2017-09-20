local class = require "lib.class"

local Object = class(function(this, gm, object_id, object_size)
    this.object_id = object_id
    this.object_size = object_size
    this.game_manager = gm
    gm:addObjectToList(this)
end)

return Object