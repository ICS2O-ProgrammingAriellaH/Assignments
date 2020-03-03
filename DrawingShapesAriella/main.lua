-- Title: Drawing Shapes
-- Name: Ariella
-- Course: ICS2O/3C
-- This program displays four differnt types of polygons on the screen.

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- display a triangle on the screen
display.newPolygon(768, 192, 0, -60, 60, 80, -80, 60)
local verticesTri ={0, -60, 60, 80, -80, 60}
local Triangle =display.newPolygon(768, 192, verticesTri)
display.contentWidth/4 ={0, -60, 60, 80, -80, 60}
display.contentHeight/4 ={0, -60, 60, 80, -80, 60}