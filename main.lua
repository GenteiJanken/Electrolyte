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



--variables
local screentext



function love.load()
electrolyte_sprite = love.graphics.newImage("/data/img/charsprite.png")

tileset_batch = love.graphics.newSpriteBatch( tileset_image, tiles_visible)

game_init()

end








function love.update()


end




function love.draw()

end



function love.keypressed( key, unicode )

	if key == 'w' then --up

	elseif key == 'a' then --left

	elseif key == 's' then --down

	elseif key == 'd' then --right

	elseif key == 'r' then --reload
	game_init()

	end

end


function love.keyreleased( key, unicode )

	if key == 'w' then

	elseif key == 'a' then

	elseif key == 's' then

	elseif key == 'd' then

	end


end


function game_init()
	player_init()
	player_hit()
	player_hit()
end



