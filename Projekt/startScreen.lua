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
 local bg
 local title
 local button
 local button1
local function changeScenes()
	composer.gotoScene("game", {effect = "fade", time=500})
	
end

local function changeScenesInfo()
    composer.gotoScene("info", {effect = "fade", time=500})
    
end

-- create()
function scene:create( event )
 
    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen]

    bg = display.newImage("bg.jpg",650,570)
	bg.x=display.contentCenterX
	bg.y=display.contentCenterY
	sceneGroup:insert(bg)

	--title = display.newText("GAME", display.contentCenterX, display.contentCenterY-70, "KuramoRegular",90)
 	--title:setFillColor(0, 0, 0)

 	local title = display.newText( "GAME", display.contentCenterY+80, display.contentCenterX-150, "KuramoRegular", 70)
    title:setFillColor(0,0,0)
    sceneGroup:insert(title)

   



 	local function handleButtonEvent( event )
 
	    if ( "ended" == event.phase ) then
	 
	    end
	end

	local button = widget.newButton(
	    {
		    width = 100,
	        height = 40,
	        defaultFile = "play.png",
	        overFile = "playPressed.png",
	      
	        onEvent = handleButtonEvent
	    }
	)
	button.x = display.contentCenterX
	button.y = display.contentCenterY+5
	sceneGroup:insert(button)

	button:addEventListener("tap", changeScenes)



    local function handleButtonEvent( event )
 
        if ( "ended" == event.phase ) then
     
        end
    end

    local buttonInfo = widget.newButton(
        {
            width = 100,
            height = 40,
            defaultFile = "info.png",
            overFile = "infoPressed.png",
          
            onEvent = handleButtonEvent
        }
    )
    buttonInfo.x = display.contentCenterX
    buttonInfo.y = display.contentCenterY+50
    sceneGroup:insert(buttonInfo)

    buttonInfo:addEventListener("tap", changeScenesInfo)




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