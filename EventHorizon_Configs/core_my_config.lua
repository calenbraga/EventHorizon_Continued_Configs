--
-- core_my_config.lua
--
-- this file replaces the use of the myconfig.lua for addon-wide customizations as described below
--     https://www.wowinterface.com/downloads/fileinfo.php?id=14878#info
--     https://www.curseforge.com/wow/addons/eventhorizon
--
-- the class_my_config.lua replaces the use of the EventHorizon_class/EventHorizon_class.lua
-- for class-specific customizations.
--



local config = EventHorizon.config

--
-- Event Horizon - Base Config
--

-- Past and future determine the number of seconds displayed before and after the current time.
config.showTrinketBars = true			-- Show bars for your equipped trinkets? Default = true
config.past = -3
-- default: config.future = 12
config.future = 17

-- Width and height of a single bar.
config.width = 170
config.height = 12

-- Create the backdrop frame and border.
-- config.backdrop = true
-- Set it to nil to remove it, like so:
config.backdrop = nil
config.edgesize = 0
	
-- Use the default Blizzard icon border.
config.iconborder = nil


--
-- Color of individual bar segments. 
--
-- Format is {R,G,B,Alpha} with a max of 1 and a minimum of 0. 
-- ie:  Yellow = {1,1,0,0.3}; Red = {1,0,0,0.3}
-- Math and other references may be done within these tables for finer control.
-- Example:     {125/255,125/255,240/255,1} or {0.15*1.38, 3/16, 0.1+c.debuff[3], 0.5}
-- Class coloring has two options, burn (darkness) and alpha (opacity). 
-- Burn has no max, but be careful how high the value is or you'll end up with white. 
-- Alpha is 0 to 1.
-- To color a bar or indicator by class, use {true, <burn>, <alpha>}. Note that the 
-- alpha portion is affected by config.texturealphamultiplier as with manual coloring.

local c = EventHorizon.colors
-- Sent Marker - line when a spellcast is sent to the server. 
--    Default = {true,1,1} (class colored, bright and opaque)
c.sent = {true,Priest and 0.7 or 1,1}
-- Tick markers. Default = {true,1,1} (class colored, bright and opaque)
c.tick = {true,Priest and 0.7 or 1,1}
-- Casting bars. Default = {0,1,0,0.3} (green, 0.3 unmodified alpha)
c.casting = {0,1,0,0.3}
-- Cooldown bars. Default = {1,1,1,0.3} (white, 0.3 unmodified alpha)
c.cooldown = {1,1,1,0.3}
-- YOUR Debuff bars. Default = {true,1,0.3} (class colored, bright, 0.3 unmodified alpha)
-- c.debuffmine = {true,Priest and 0.7 or 1,0.3}
c.debuffmine = {1,0,0,0.3}
-- OTHER PLAYERS' debuff bars. Default = {true,0.5,0.3} (class colored, darkened by 50%, 0.3 unmodified alpha)
c.debuff = {true,0.5,0.3}			
-- Buff bars. Default = {true,1,0.3} (class colored, bright, 0.3 unmodified alpha)			
-- c.playerbuff = {true,Priest and 0.7 or 1,0.3}
c.playerbuff = {1,1,0,0.3}
-- Set the color of the GCD indicator.
c.gcdColor = {0.4,0.4,0.4,0.3}
-- Individual bar background color.
-- config.barbgcolor = {0.3,0.3,0.3,0.5}
c.barbgcolor = {0.3,0.3,0.3,0.1}
-- Frame background color.
-- config.bgcolor = {0.3,0.3,0.3,0.5}
c.bgcolor = {0,0,0,0.6}
-- Border color.
c.bordercolor = {1,1,1,0.1}



--
-- Event Horizon - Lines Config
--

-- Seconds at which to place the lines. This can be in any order.
config.lines = {1.5,3,4.5,6,7.5,9,10.5,15} 
-- Color of the lines (r,g,b,alpha). 
config.linesColor = {0,0,0,0.3} 



--
-- Event Horizon - Vitals Config
--

-- should inherit the useful stuff.. hopefully

