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
   map_display_w = map_w
   map_display_h = map_h
   tile_w = 64
   tile_h = 64
   ref_w = 512
   ref_h = 512
   map_display_w = map_w / tile_w
   map_display_h = map_h / tile_h
   tiles_visible = map_display_w * map_display_h

	--music helpers
   has_rocked = false
   is_rocking = false


--variables
local screentext



function love.load()
--level
	currlevel = 1

	love.audio.play(backing)

	electrolyte_sprite = love.graphics.newImage("/data/img/charsprite.png")
	love.keyboard.setKeyRepeat( 0, 0 )

	speed = tile_w


	game_init()

end



function love.update(dt)

--keyboard/movement
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

	player_x = clamp(0, map_w - tile_w, player_x)
	player_y = clamp(0, map_h - tile_h, player_y)




--music
	if has_rocked == true then

		if lasttrack:isStopped() then
			is_rocking = false
			lasttrack:rewind()
		end
	end

end




function love.draw()
	draw_map()
	love.graphics.draw(electrolyte_sprite, player_x, player_y)
end





function game_init()
	currlevel = 1
	player_init(currlevel)


end


function draw_map()

	for i = 1, map_display_h do
		for j = 1, map_display_w do
		currtileno = levels[currlevel].data[(i-1) * 12 + j]
		currtilequad = love.graphics.newQuad(math.mod((currtileno - 1) * tile_w, 512), math.floor(currtileno/12) * tile_h, tile_w, tile_h, ref_w, ref_h)

		love.graphics.drawq(tileset_image, currtilequad, (j-1) * tile_w, (i - 1) * tile_h)
		end
	end

end


function rock_out()


	if is_rocking == false then
		lasttrack = music[math.random(table.getn(music))]
		lasttrack:play() --ROCK OUT
		is_rocking = true

		if has_rocked == false then has_rocked = true end

	end


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
