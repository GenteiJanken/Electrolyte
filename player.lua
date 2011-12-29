require("audiosources.lua")

player_max_health = 2



function player_init()
	player_health = player_max_health

end

function player_hit()
	player_health = player_health - 1

	if player_health <= 0 then
		love.audio.play(death_src)
	else
		love.audio.play(damage_src)

	end

end
