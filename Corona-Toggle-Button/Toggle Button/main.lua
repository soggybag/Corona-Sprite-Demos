-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local toggle_sheet = graphics.newImageSheet( "Toggle.png", {width=128, height=41, numFrames=2} )
local t2_sheet = graphics.newImageSheet("Toggle-2.png", {width=128, height=32, numFrames=2})
local t3_sheet = graphics.newImageSheet("Toggle-3.png", {width=128, height=32, numFrames=2})

local t3 = display.newSprite( t3_sheet, {start=1, count=2, time=500} )

t3.x = 160
t3.y = 160

local function tap_t3( event )
	if t3.frame == 1 then
		t3:setFrame(2)
	else
		t3:setFrame(1)
	end
end
t3:addEventListener("tap", tap_t3)

local t2 = display.newSprite( t2_sheet, {start=1, count=2} )
t2.x = 160
t2.y = 200

local function toggle_t2( event )
	if t2.frame == 1 then 
		t2:setFrame( 2 )
	else 
		t2:setFrame( 1 )
	end 
end 

t2:addEventListener( "tap", toggle_t2 )




local toggle = display.newSprite( toggle_sheet, {start=1, count=2} )


toggle.x = 160
toggle.y = 240

local function tap_toggle()
	if toggle.frame == 1 then 
		toggle:setFrame( 2 )
	else 
		toggle:setFrame( 1 )
	end 
end 

toggle:addEventListener( "tap", tap_toggle )


