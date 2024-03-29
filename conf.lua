-- Electrolyte/src/conf.lua
-- Configuration file for game window

function love.conf(t)
    t.title = "Electrolyte"        -- The title of the window the game is in (string)
    t.author = "Josh Douglass-Molloy"        -- The author of the game (string)
    t.identity = nil            -- The name of the save directory (string)
    t.version = "7.0.2"               -- The L�VE version this game was made for (number)
    t.console = true           -- Attach a console (boolean, Windows only)
    t.screen.width = 768        -- The window width (number)
    t.screen.height = 768       -- The window height (number)
    t.screen.fullscreen = false -- Enable fullscreen (boolean)
    t.screen.vsync = true       -- Enable vertical sync (boolean)
    t.screen.fsaa = 0           -- The number of FSAA-buffers (number)
    t.modules.joystick = false   -- Enable the joystick module (boolean)
    t.modules.audio = true      -- Enable the audio module (boolean)
    t.modules.keyboard = true   -- Enable the keyboard module (boolean)
    t.modules.event = true      -- Enable the event module (boolean)
    t.modules.image = true      -- Enable the image module (boolean)
    t.modules.graphics = true   -- Enable the graphics module (boolean)
    t.modules.timer = true      -- Enable the timer module (boolean)
    t.modules.mouse = false      -- Enable the mouse module (boolean)
    t.modules.sound = true      -- Enable the sound module (boolean)
    t.modules.physics = false    -- Enable the physics module (boolean)
end

