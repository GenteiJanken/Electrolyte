-- Electrolyte/src/audiosources.lua
-- initialises Source objects for game audio
--SFX
damage_src = love.audio.newSource( "data/snd/fx/damagecry.ogg", static)
death_src = love.audio.newSource( "data/snd/fx/deathcry.ogg", static)
--shock_src


--MUSIC
backing = love.audio.newSource( "data/snd/music/backing.ogg")
backing:setLooping( true )

music = {
	love.audio.newSource( "data/snd/music/chord1.ogg" ),
	love.audio.newSource( "data/snd/music/chord2.ogg" ),
	love.audio.newSource( "data/snd/music/chord3.ogg" ),
	love.audio.newSource( "data/snd/music/riff1.ogg" ),
	love.audio.newSource( "data/snd/music/lick1.ogg" ),
	love.audio.newSource( "data/snd/music/lick2.ogg" ),
	love.audio.newSource( "data/snd/music/lick3.ogg" ),
	love.audio.newSource( "data/snd/music/lick4.ogg" ),
	love.audio.newSource( "data/snd/music/lick5.ogg" ),
	love.audio.newSource( "data/snd/music/lick6.ogg" ),
	love.audio.newSource( "data/snd/music/lick7.ogg" ),
	love.audio.newSource( "data/snd/music/lick8.ogg" ),
	love.audio.newSource( "data/snd/music/lick9.ogg" ),
	love.audio.newSource( "data/snd/music/lick10.ogg" )

	}
