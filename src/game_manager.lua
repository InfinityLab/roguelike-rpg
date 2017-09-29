local globals = require "src.globals"
local ImageLoader = require "src.image_loader"
local maps = require "src.maps"
local GameManager = {}

GameManager.__index = GameManager

function GameManager:init()
    -- Should be called when game is first loaded.
    ImageLoader:init()
end

function GameManager:create(map)
    gm = {
        map = map,
        tile_height = love.graphics.getHeight() / globals.VISIBLE_TILES_PER_VERT,
        tile_width = love.graphics.getWidth() / globals.VISIBLE_TILES_PER_HORI,
        objects = {}
    }
    setmetatable(gm, GameManager)
    return gm
end

function GameManager:addObjectToList(obj)
    table.insert(self.objects, obj)
end

function GameManager:draw()
    for i = 1, self.map.height do
        for j = 1, self.map.width do
            image, frame = ImageLoader:getFrame(self.map[i][j])
            frame_x, frame_y, frame_width, frame_height = frame.getViewport(frame)
            love.graphics.draw(image, frame,
                    j * self.tile_width,
                    i * self.tile_height,
                    math.rad(0),
                    self.tile_width / frame_width,
                    self.tile_height / frame_height)
        end
    end
    for i, obj in ipairs(self.objects) do
        image, frame = ImageLoader:getObjectAnimatedFrame(obj)
        frame_x, frame_y, frame_width, frame_height = frame.getViewport(frame)
        love.graphics.draw(image, frame,
                obj.coordinate.x * self.tile_width,
                obj.coordinate.y * self.tile_height,
                math.rad(0),
                self.tile_width / frame_width * obj.object_size,
                self.tile_width / frame_width * obj.object_size,
                frame_width / 2,
                frame_height / 2)
    end
end

function GameManager:update(dt)
    for i, obj in ipairs(self.objects) do
        if (obj.animated) then
            ImageLoader:updateAnimatedFrame(obj, dt)
        end
    end
end

function GameManager:checkCollision(obj, dest_x, dest_y)
    -- First Loop object list to check if there is any collision
    for i, map_obj in ipairs(self.objects) do
        if (obj ~= map_obj) then
            if ((dest_x - obj.object_size <= map_obj.coordinate.x + map_obj.object_size)
                and (map_obj.coordinate.x - map_obj.object_size <= dest_x + obj.object_size)
                and (dest_y - obj.object_size <= map_obj.coordinate.y + map_obj.object_size)
                and (y1 <= map_obj.coordinate.y - map_obj.object_size + obj.object_size)) then
                return map_obj
            end
        end
    end
    return nil
end

function GameManager:checkMoveable(obj, dest_x, dest_y)
    -- First Loop object list to check if there is any collision
    for i = math.ceil(dest_y - obj.object_size / 2), math.floor(dest_y + obj.object_size / 2) do
        for j = math.floor(dest_x - obj.object_size / 2), math.floor(dest_x + obj.object_size / 2) do
            if (i <= 0 or i > self.map.height or j <= 0 or j > self.map.width) then
                return false
            end
            if (not maps.moveable[self.map[i][j]]) then
                return false
            end
        end
    end
    return true
end

return GameManager