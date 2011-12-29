require("audiosources.lua")
require("data/lvl/levels.lua")

player_max_health = 2
--player_resistance


function player_init(start)
	player_health = player_max_health

	player_x = (levels[start].spawn[1] - 1) * 64
	player_y = (levels[start].spawn[2] - 1) * 64


end

function player_hit()
	player_health = player_health - 1

	if player_health <= 0 then
		love.audio.play(death_src)
	else
		love.audio.play(damage_src)

	end

end
