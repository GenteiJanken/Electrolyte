-- Electrolyte/src/main.lua
-- Main game file

require( "audiosources.lua" )
require( "player.lua" )

--constants

	--tileset
	tileset_image = love.graphics.newImage( "/data/img/tileset.png" )

	--map constants (pixels)

   map_w = 768
   map_h = 768
   map_x = 0
   map_y = 0
 --  map_offset_x = 30
  -- map_offset_y = 30
	map_display_w = map_w
	map_display_h = map_h
   tile_w = 64
   tile_h = 64
   tiles_visible = ( map_display_w / tile_w ) * ( map_display_h / tile_h )


   is_rocking = false

--variables
local screentext



function love.load()
--level
	currlevel = 1


	electrolyte_sprite = love.graphics.newImage("/data/img/charsprite.png")
	tileset_batch = love.graphics.newSpriteBatch( tileset_image, tiles_visible)

	love.keyboard.setKeyRepeat( 0, 0 )

	speed = tile_w


	game_init()

end








function love.update(dt)

   if love.keyboard.isDown("right") then
		player_x = player_x + (speed * dt)
   elseif love.keyboard.isDown("left") then
		player_x = player_x - (speed * dt)
   elseif love.keyboard.isDown("down") then
		player_y = player_y + (speed * dt)
   elseif love.keyboard.isDown("up") then
		player_y = player_y - (speed * dt)
   elseif love.keyboard.isDown("f5") then
		game_init()
   elseif love.keyboard.isDown("r") then
		rock_out()
   elseif love.keyboard.isDown("e") then
	--DO SOMETHING
   elseif love.keyboard.isDown("escape") then
		love.event.push("q"); --QUIT
   end

	player_x = clamp(0, map_w, player_x)
	player_y = clamp(0, map_h, player_y)

end




function love.draw()
	love.graphics.draw(electrolyte_sprite, player_x, player_y)
end





function game_init()
	currlevel = 1
	player_init()

	love.audio.play(backing)

end


function rock_out()


	if is_rocking == false then {
		love.audio.play(music[math.random(table.getn(music))]) --ROCK OUT
		is_rocking = true
		}
	end


function clamp(min, max, param)
		if param < min then
			return min
		elseif param > max then
			return max
		else
			return param
		end

end




