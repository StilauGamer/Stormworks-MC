-- Author: StilauGamer
-- GitHub: https://github.com/profiles/stilaugamer
-- Workshop: <WorkshopLink>
--
--- Developed using LifeBoatAPI - Stormworks Lua plugin for VSCode - https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--- If you have any issues, please report them here: https://github.com/nameouschangey/STORMWORKS_VSCodeExtension/issues - by Nameous Changey

require("_build._simulator_config") -- LifeBoatAPI allows you to use lua's "require" keyword. see the /build/_simulator_config.lua file for how to configure the simulator
require("LifeBoatAPI") -- Type 'LifeBoatAPI.' and use intellisense to checkout the new LifeBoatAPI library functions; such as the LBVec vector maths library
require("RezisableScript") -- For the resizable API

startButton = LifeBoatAPI.LBTouchScreen:lbtouchscreen_newButton(2, 1, 27, 8)

function onTick()
  LifeBoatAPI.LBTouchScreen:lbtouchscreen_onTick()
  temp = input.getNumber(1)
  rps = input.getNumber(2)

  if startButton:lbbutton_isClicked() then
    startButtonClicked = not startButtonClicked
  end
end

function onDraw()
  screen.setColor(250, 250, 255)

  if startButtonClicked then
    screen.setColor(255,0,0)
  else
    screen.setColor(250, 250, 255)
  end

  dst(6, 3, "Start")
  boxes()

end

function boxes()
    screen.drawRect(2, 1, 27, 8)     -- Top box

    screen.drawRect(2, 11, 27, 8)    -- Middle box

    screen.drawRect(2, 21, 27, 8)    -- Bottom box
end