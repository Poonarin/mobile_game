local composer = require( "composer" )
 local widget = require( "widget" )
local scene = composer.newScene()
 
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
 
 
 
 
-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------

 local button
 local bg
 local info
 local you
 local not_you
local function changeScenes()
	composer.gotoScene("startScreen", {effect = "fade", time=500})
end
-- create()
function scene:create( event )
 
    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen]

	  bg = display.newImage("bg.jpg",650,570)
	bg.x=display.contentCenterX
	bg.y=display.contentCenterY
	sceneGroup:insert(bg)
	
	local info = display.newText( "THIS IS YOU: ", display.contentCenterY-60, display.contentCenterX-180, "KuramoRegular", 55)
    info:setFillColor(0,0,0)
    sceneGroup:insert(info)

    local info = display.newText( "THIS IS NOT YOU: ", display.contentCenterY-25, display.contentCenterX-120, "KuramoRegular", 55)
    info:setFillColor(0,0,0)
    sceneGroup:insert(info)

    local info = display.newText( "OBJECTIVE: SURVIVE ", display.contentCenterY, display.contentCenterX-60, "KuramoRegular", 55)
    info:setFillColor(0,0,0)
    sceneGroup:insert(info)

    local info = display.newText( "Click on the screen to move ", display.contentCenterY, display.contentCenterX-20, "KuramoRegular", 35)
    info:setFillColor(0,0,0)
    sceneGroup:insert(info) 
	
    local you = display.newImage("youInfo.png", display.contentCenterY+65, display.contentCenterX-180)
	sceneGroup:insert(you)

	local not_you = display.newImage("noutYouInfo.png", display.contentCenterY+135, display.contentCenterX-120)
	sceneGroup:insert(not_you)

 	local function handleButtonEvent( event )
 
	    if ( "ended" == event.phase ) then
	 
	    end
	end

	local button = widget.newButton(
	    {
		    width = 90,
	        height = 30,
	        defaultFile = "back.png",
	        overFile = "backPressed.png",
	      
	        onEvent = handleButtonEvent
	    }
	)
	button.x = display.contentCenterX
	button.y = display.contentCenterY+95
	sceneGroup:insert(button)

	button:addEventListener("tap", changeScenes)


end 
 
 
-- show()
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
 
    end
end
 
 
-- hide()
function scene:hide( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is on screen (but is about to go off screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs immediately after the scene goes entirely off screen
 
    end
end
 
 
-- destroy()
function scene:destroy( event )
 
    local sceneGroup = self.view
    -- Code here runs prior to the removal of scene's view
 
end
 
 
-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------
 
return scene