-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
local composer = require("composer")
local widget = require("widget")
local scene = composer.newScene()
local physics = require "physics"

physics.start()
physics.setGravity(0,0)






local background
local myButton
local button
local function exitApp()
	native.requestExit()
end


local function changeScenes()
	 composer.removeScene( "game")
	 
    composer.gotoScene( "game" , {time=1000, effect="fade"} )
	
end



function scene:create( event )
 
    local sceneGroup = self.view
	
 	background = display.newImage("bg.jpg",650,570)
	background.x=display.contentCenterX
	background.y=display.contentCenterY
	sceneGroup:insert(background)


local secondsLeft = 0  -- 10 minutes * 60 seconds
 
local clockText = display.newText( "00:00", display.contentCenterX+260,display.contentCenterY-150, native.systemFont, 20 )
clockText:setFillColor( 0, 0, 0 )
sceneGroup:insert(clockText)

local function updateTime( event )
 
    -- Decrement the number of seconds
    secondsLeft = secondsLeft + 1
 
    -- Time is tracked in seconds; convert it to minutes and seconds
    local minutes = math.floor( secondsLeft / 60 )
    local seconds = secondsLeft % 60
 
    -- Make it a formatted string
    local timeDisplay = string.format( "%02d:%02d", minutes, seconds )
     
    -- Update the text object
    clockText.text = timeDisplay
end
local countDownTimer = timer.performWithDelay( 1000, updateTime, secondsLeft )




local function handleButtonEvent( event )
 
	    if ( "ended" == event.phase ) then
	 
	    end
	end

	local ExBtn = widget.newButton(
	    {
		    width = 60,
	        height = 20,
	        defaultFile = "exit.png",
	        overFile = "exitPressed.png",
	      
	        onEvent = handleButtonEvent
	    }
	)
	ExBtn.x = display.contentCenterX+254
	ExBtn.y = display.contentCenterY+150
	sceneGroup:insert(ExBtn)

	ExBtn:addEventListener("tap", exitApp)

   



	
 local function handleButtonEvent( event )
 
	    if ( "ended" == event.phase ) then
	 
	    end
	end

	local button = widget.newButton(
	    {
		    width = 80,
	        height = 20,
	        defaultFile = "restart.png",
	        overFile = "restartPressed.png",
	      
	        onEvent = handleButtonEvent
	    }
	)
	button.x = display.contentCenterX-245
	button.y = display.contentCenterY-150
	sceneGroup:insert(button)

	button:addEventListener("tap", changeScenes)
	
	
	

-- create()

-----------------------------------------------------
local you = display.newImageRect("you.png",20,20)
you.x = display.contentCenterX -100
you.y = display.contentCenterY -100
physics.addBody(you, "dynamic")


local notYou = display.newImageRect("not_you.png",30,30)
notYou.x = display.contentCenterX +500
notYou.y = display.contentCenterY 
physics.addBody(notYou, "static")

local notYou2 = display.newImageRect("not_you.png",35,35)
notYou2.x = display.contentCenterX +500
notYou2.y = display.contentCenterY
physics.addBody(notYou2, "static")

local notYou3 = display.newImageRect("not_you.png",40,40)
notYou3.x = display.contentCenterX 
notYou3.y = display.contentCenterY+500
physics.addBody(notYou3, "static")

local notYou4 = display.newImageRect("not_you.png",45,45)
notYou4.x = display.contentCenterX +500
notYou4.y = display.contentCenterY
physics.addBody(notYou4, "static")

local notYou5 = display.newImageRect("not_you.png",50,50)
notYou5.x = display.contentCenterX 
notYou5.y = display.contentCenterY+600
physics.addBody(notYou5, "static")

local notYou6 = display.newImageRect("not_you.png",45,45)
notYou6.x = display.contentCenterX +600
notYou6.y = display.contentCenterY
physics.addBody(notYou6, "static")

local notYou7 = display.newImageRect("not_you.png",40,40)
notYou7.x = display.contentCenterX +600
notYou7.y = display.contentCenterY
physics.addBody(notYou7, "static")

local notYou8 = display.newImageRect("not_you.png",35,35)
notYou8.x = display.contentCenterX 
notYou8.y = display.contentCenterY+600
physics.addBody(notYou8, "static")

local notYou9 = display.newImageRect("not_you.png",30,30)
notYou9.x = display.contentCenterX 
notYou9.y = display.contentCenterY+600
physics.addBody(notYou9, "static")

local notYou10 = display.newImageRect("not_you.png",20,20)
notYou10.x = display.contentCenterX +600
notYou10.y = display.contentCenterY
physics.addBody(notYou10, "static")
-----------------------------------------------------

function touchScreen(event)
	if event.phase == "ended" then
		transition.to(you,{time=1000, x=event.x, y=event.y})
	end
end

Runtime:addEventListener("touch", touchScreen)
-----------------------------------------------------

function moveNotYou()
	transition.to(notYou,{time=1000, delay=1500, x=math.random(1,550), y=math.random(60,270), onComplete=moveNotYou})
	transition.to(notYou2,{time=1500,delay=10000, x=math.random(1,550), y=math.random(60,270),})
	transition.to(notYou3,{time=2000, delay=20000, x=math.random(1,550), y=math.random(60,270),})
	transition.to(notYou4,{time=2500, delay=30000, x=math.random(1,550), y=math.random(60,270),})
	transition.to(notYou5,{time=3000, delay=35000, x=math.random(1,550), y=math.random(60,270),})
	transition.to(notYou6,{time=2500, delay=40000, x=math.random(1,550), y=math.random(60,270),})
	transition.to(notYou7,{time=2000, delay=45000, x=math.random(1,550), y=math.random(60,270),})
	transition.to(notYou8,{time=1500, delay=50000, x=math.random(1,550), y=math.random(60,270),})
	transition.to(notYou9,{time=1000, delay=55000, x=math.random(1,550), y=math.random(60,270),})
	transition.to(notYou10,{time=3000, delay=60000, x=math.random(1,550), y=math.random(60,270),})
	
end

moveNotYou()
-----------------------------------------------------
function onCollision(event)
	
	display.remove( you )
	you = nil
	display.remove(notYou)
	notYou=nil
	display.remove(notYou2)
	notYou2=nil
	display.remove(notYou3)
	notYou3=nil
	display.remove(notYou4)
	notYou4=nil
	display.remove(notYou5)
	notYou5=nil
	display.remove(notYou6)
	notYou6=nil
	display.remove(notYou7)
	notYou7=nil
	display.remove(notYou8)
	notYou8=nil
	display.remove(notYou9)
	notYou9=nil
	display.remove(notYou10)
	notYou10=nil
	timer.pause(countDownTimer)
	
end

Runtime:addEventListener("collision", onCollision)


end

scene:addEventListener( "create", scene )
scene:addEventListener( "destroy", scene )
return scene





