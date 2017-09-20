local globals = require "src.globals"

ImageLoader = {}
local dict = {}

function ImageLoader:init()
    -- Should be called when game is first loaded.
    -- This function read necessary game assets to memory.

    worldImages = love.graphics.newImage("assets/overworld.png")
    caveImages = love.graphics.newImage("assets/cave.png")
    innerImages = love.graphics.newImage("assets/inner.png")
    characterImages = love.graphics.newImage("assets/character.png")

    playerFrame = {
        front = {
            love.graphics.newQuad(0, 0, 16, 32, characterImages:getDimensions()),
            love.graphics.newQuad(16, 0, 16, 32, characterImages:getDimensions()),
            love.graphics.newQuad(32, 0, 16, 32, characterImages:getDimensions()),
            love.graphics.newQuad(48, 0, 16, 32, characterImages:getDimensions()),
            length = 4,
        },
        right = {
            love.graphics.newQuad(0, 32, 16, 32, characterImages:getDimensions()),
            love.graphics.newQuad(16, 32, 16, 32, characterImages:getDimensions()),
            love.graphics.newQuad(32, 32, 16, 32, characterImages:getDimensions()),
            love.graphics.newQuad(48, 32, 16, 32, characterImages:getDimensions()),
            length = 4,
        },
        back = {
            love.graphics.newQuad(0, 64, 16, 32, characterImages:getDimensions()),
            love.graphics.newQuad(16, 64, 16, 32, characterImages:getDimensions()),
            love.graphics.newQuad(32, 64, 16, 32, characterImages:getDimensions()),
            love.graphics.newQuad(48, 64, 16, 32, characterImages:getDimensions()),
            length = 4,
        },
        left = {
            love.graphics.newQuad(0, 96, 16, 32, characterImages:getDimensions()),
            love.graphics.newQuad(16, 96, 16, 32, characterImages:getDimensions()),
            love.graphics.newQuad(32, 96, 16, 32, characterImages:getDimensions()),
            love.graphics.newQuad(48, 96, 16, 32, characterImages:getDimensions()),
            length = 4,
        },
    }
    floorFrame = love.graphics.newQuad(0, 0, 16, 16, worldImages:getDimensions())
    wallFrame = love.graphics.newQuad(0, 0, 16, 16, caveImages:getDimensions())
    innerFloorFrame = love.graphics.newQuad(0, 0, 16, 16, innerImages:getDimensions())
    chairLeftFrame = love.graphics.newQuad(208, 64, 16, 16, innerImages:getDimensions())
end

function ImageLoader:getFrame(tile_type)
    if (tile_type == globals.floor) then
        return worldImages, floorFrame
    elseif (tile_type == globals.wall) then
        return caveImages, wallFrame
    elseif (tile_type == globals.inner_floor) then
        return innerImages, innerFloorFrame
    elseif (tile_type == globals.chair_left) then
        return innerImages, chairLeftFrame
    else
        return caveImages, wallFrame
    end
end

function ImageLoader:getObjectAnimatedFrame(obj)
    if(obj.object_id == globals.player) then
        return characterImages, playerFrame[obj.state][obj.frame_index]
    end
end

function ImageLoader:updateAnimatedFrame(obj, dt)
    obj.elapsed_time = obj.elapsed_time + dt
    if (obj.elapsed_time < obj.time_per_frame) then return end
    if(obj.object_id == globals.player) then
        obj.frame_index = obj.frame_index + 1
        if (obj.frame_index > playerFrame[obj.state].length) then
            obj.frame_index = 1
        end
    end
    obj.elapsed_time = 0
end

return ImageLoader