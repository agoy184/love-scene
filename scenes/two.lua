--[[
Scene usage example
]]
require "scene"

local s = {}

function s.load ()
    print "scene loaded"
end

function s.unload()
    print "scene unloaded"
end

function s.draw()
    love.graphics.print("SCENE TWO",0,0)
end

function s.keypressed(key)
    if key == "return" then
        Scene.Load("main")
    elseif key == "2" then
        Scene.Load("two")
    elseif key == "escape" then
        love.event.quit()
    end
end

--[[function s.quit()
    print "exiting..."
end]]

return s