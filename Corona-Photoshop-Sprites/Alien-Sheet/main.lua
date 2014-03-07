-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local alien_sheet = graphics.newImageSheet( "Alien-Sheet.png", {width=64, height=64, numFrames=3} )

-- local alien = display.newSprite( alien_sheet, {start=1, count=3, time=800} )
local alien = display.newSprite( alien_sheet, {frames={1, 2, 3, 2, 1, 1, 1, 1}, time=1200} )
alien.x = 160
alien.y = 240

alien:play()