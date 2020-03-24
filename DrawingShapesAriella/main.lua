-- Title: Drawing Shapes
-- Name: Ariella
-- Course: ICS2O/3C
-- This program displays four differnt types of polygons on the screen.

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- create local variables
local verticesStar ={0, -79, 19, -30, 99, -20, 21, 20, 40, 100, -17, 40, -59, 80, -38, 20, -82, 40, -20, -31}

-- display the shape unto the screen with the content width and height
local Star =display.newPolygon(display.contentWidth/2, display.contentHeight/2 , verticesStar)

-- set background
--display


-- anchor the star in the bottom left corner of the screen and set it's (x,y) position
Star.anchorX = 768
Star.anchorY = 576
Star.x = 256
Star.y = 183
Star.width = 220
Star.height =160

-- Name the shape
textObjectStar = display.newText("Star", 800, 750, nil, 50)

-- set the star width border 
Star.strokeWidth = 1

paint = {
	type = "gradient",
	color1 = {29/255, 34/255, 191/255}, color2 = {208/255, 74/255, 192/255},
	directions = "up",
}
Star.fill = paint
-----------------------------------------------------------------------------------------------------------
-- create local variables
local verticesPentagon ={0, -100, 42, -60, 40, 40, -20, 20, -40, -40}

-- display the shape unto the screen with the content width and height
local Pentagon =display.newPolygon(display.contentWidth/1, display.contentHeight/4 , verticesPentagon)

-- anchor the pentagon in the top right corner of the screen and set it's (x,y) position
Pentagon.anchorX = 256
Pentagon.anchorY = 384
Pentagon.x = 256
Pentagon.y = 339
Pentagon.width = 210
Pentagon.height =150

-- Name the shape
textObjectPentagon = display.newText("Pentagon", 800, 750, nil, 50)

-- set the pentagon width border 
Pentagon.strokeWidth = 1

local paint = {
	type = "gradient",
	color1 = {225/255, 75/255, 10/255}, color2 = {60/255, 231/255, 14/255},
	directions = "up",
}
Pentagon.fill = paint
-- =======
-- display a triangle on the screen
display.newPolygon(768, 192, 0, -60, 60, 80, -80, 60)
local verticesTri ={0, -60, 60, 80, -80, 60}
local Triangle = display.newPolygon(768, 192, verticesTri)
display.contentWidth/4 = {0, -60, 60, 80, -80, 60}
display.contentHeight/4 = {0, -60, 60, 80, -80, 60}

