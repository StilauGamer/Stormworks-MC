-- Author: StilauGamer
-- GitHub: https://github.com/StilauGamer
-- Workshop: <WorkshopLink>
--
--- Developed using LifeBoatAPI - Stormworks Lua plugin for VSCode - https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--- If you have any issues, please report them here: https://github.com/nameouschangey/STORMWORKS_VSCodeExtension/issues - by Nameous Changey

--- Note: code wrapped in ---@section <Identifier> <number> <Name> ... ---@endsection <Name>
---  Is only included in the final output if <Identifier> is seen <number> of times or more
---  This means the code below will not be included in the final, minimized version
---  And you can do the same to wrap library code; so that it's there if you use it, and deleted if you don't!
---  No more manual cutting/pasting code out!

---@section __SIMULATORONLY__ 1 _MAIN_SIMSECTION_INIT


-- When running the simulator, the global variable __simulator is created
-- Make sure to do any configuration before the the start of your main file
---@param simulator Simulator
---@param config SimulatorConfig
---@param helpers SimulatorInputHelpers
__simulator.config:configureScreen(1, "1x1", true, false)
__simulator.config:setProperty("Box 1", "Cabin Lights")
__simulator.config:setProperty("Text Color (Hex)", "FF0000")
__simulator.config:setProperty("Outline Color (Hex)", "FF0000")
__simulator.config:setProperty("Background Color (Hex)", "FFFFFF")
__simulator.config:setProperty("Default Button Color (Hex)", "0000FF")

-- handlers that automatically update the inputs each frame
-- useful for simple inputs (sweeps/wraps etc.)
__simulator.config:setProperty("Box 2", "Hello")

-- there's also a helpers library with a number of handling functions for you to try!
__simulator.config:addNumberHandler(10, LBSimulatorInputHelpers.constantNumber(5001))


--- runs every tick, prior to onTick and onDraw
--- Usually not needed, can allow you to do some custom manipulation
--- Or set breakpoints based on simulator state
---@param simulator Simulator
function onLBSimulatorTick(simulator)end

--- For easier debugging, called when an output value is changed
function onLBSimulatorOutputBoolChanged(index, oldValue, newValue)end
function onLBSimulatorOutputNumberChanged(index, oldValue, newValue)end

---@endsection _MAIN_SIMSECTION_INIT


