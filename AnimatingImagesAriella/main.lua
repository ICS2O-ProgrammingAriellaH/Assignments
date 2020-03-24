-- Title: Animating Images 
-- Name: Ariella Harlequin
-- Course: ICS2O
-- This program three images moving in different 
-- directions across the screen, along with text
-------------------------------------------------------------------------------------
-- VARIABLES
-------------------------------------------------------------------------------------
local programText
-----------------------------------------------------------------------------------------------
-- set the background 
local backgroundImage = display.newImageRect("Images/background.jpg",2048, 1536)

-- global variables
scrollSpeed = 4

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)
-----------------------------------------------------------------------------------------
-- create first image and, set its position and make it visible
local Azula = display.newImageRect("Images/Azula.png.png",198, 100)

-- set the image to be transparent
Azula.alpha = 0

-- set the intial x and y position of Azula
Azula.x = 0
Azula.y = display.contentHeight/3

-- create second image, set its position and make it visible
local Sokka = display.newImageRect("Images/Sokka.png.png",198, 100)

Sokka.x = 0
Sokka.y = display.contentHeight/3

-- set the image to be transparent
Sokka.alpha = 0

-- create the third image, set its position and make it visible
local Zuko = display.newImageRect("Images/Zuko.png.png",198, 100)

Zuko.x = 0
Zuko.y = display.contentHeight/3

---- set the transparency
Zuko.alpha = 0

-- write the title of the program on the screen
local programText = display.newText("Avatar: The Final Battle", 0, 0, Arial, 57)
----------------------------------------------------------------------------------------------
-- FUNCTIONS
-----------------------------------------------------------------------------------------------

-- Function: MoveAzula
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to the x-value of the ship
local function MoveAzula(event)
	-- add the scroll speed to the value of the ship
	Azula.x = Azula.x + scrollSpeed
	-- change the transparency of Azula every time it move so that it fades out 
	Azula.alpha = Azula.alpha + 0.01
end

-- MoveSokka will be called over and over again
Runtime:addEventListener("enterFrame", MoveAzula)
------------------------------------------------------------------------------------------------
-- Function: MoveSokka
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to the x-value of the ship
local function MoveSokka(event)
	-- add the scroll speed to the value of the ship
	Sokka.x = Sokka.x - scrollSpeed
	-- change the transparency of Sokka every time it move so that it fades out 
	Sokka.alpha = Sokka.alpha + 0.01
end

-- MoveSokka will be called over and over again
Runtime:addEventListener("enterFrame", MoveSokka)
-------------------------------------------------------------------------------------------------
-- Function: MoveZuko
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to the x-value of the ship
local function MoveZuko(event)
	-- add the scroll speed to the value of the ship
	Zuko.x = Zuko.x + scrollSpeed
	-- change the transparency of Zuko every time it move so that it fades out 
	Zuko.alpha = Zuko.alpha - 0.01
end

-- MoveZuko will be called over and over again
Runtime:addEventListener("enterFrame", MoveZuko)
