
local Camera = require "lib.hump.camera"
local globals = require "src.globals"
local GameManager = require "src.game_manager"
local Player = require "src.objects.player"
local maps = require "src.maps"
local gm

function love.load()
    -- Initialize map.
    GameManager:init()
    gm = GameManager:create(maps.home)
    -- Initialize user.
    player = Player(gm, 5, 5)
    camera = Camera(player.coordinate.x * gm.tile_height, player.coordinate.y * gm.tile_width)
end

function love.draw(dt)
    camera:attach()
    gm:draw(dt)
    camera:detach()
end

function love.update(dt)
    gm:update(dt)
    if love.keyboard.isDown('escape') then
        love.event.push('quit')
    end
    if love.keyboard.isDown('left','a') then
        if (player:move(-player.attribute.move_speed * dt, 0)) then
            camera:move(-player.attribute.move_speed * dt * gm.tile_width, 0)
        end
        player.state = "left"
    elseif love.keyboard.isDown('right','d') then
        if (player:move(player.attribute.move_speed * dt, 0)) then
            camera:move(player.attribute.move_speed * dt * gm.tile_width, 0)
        end
        player.state = "right"
    end
    if love.keyboard.isDown('up','w') then
        if (player:move(0, -player.attribute.move_speed * dt)) then
            camera:move(0, -player.attribute.move_speed * dt * gm.tile_height)
        end
        player.state = "back"
    elseif love.keyboard.isDown('down','s') then
        if (player:move(0, player.attribute.move_speed * dt)) then
            camera:move(0, player.attribute.move_speed * dt * gm.tile_height)
        end
        player.state = "front"
    end
end