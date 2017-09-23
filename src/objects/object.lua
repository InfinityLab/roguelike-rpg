local class = require "lib.class"
-- Object class is the basic class for all objects on map.
-- Need object_id indicate the type of this object,
-- and object_size is the width of this object on map.


local Object = class(function(this, gm, object_id, object_size)
    this.object_id = object_id
    this.object_size = object_size
    this.game_manager = gm
    gm:addObjectToList(this)
end)

return Object