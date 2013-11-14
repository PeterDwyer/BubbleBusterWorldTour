local Tip = {}

function Tip:new( _p, info )
    _p = _p or {}
    setmetatable( _p, self )
    
    self.__index = self
	
	_p.position = 0
	_p.holding = {}
	_p.playerImage = nil
	_p.score = 0
	
    return _p
end 

--[[ Animations
        Set the tip animations. This sets the sprite sheet that the tip will
		use. 
        
        @image image name of this spritesheet
        @data dataset for animations
        ]]
function Tip:Animations( image, data )
    
    -- Remove the current spritesheet and delete it.
    if self.playerImage ~= nil then
    end
    
    -- Set the new image
    self.backgroundImage = display.newSprite( image, data )
end

--[[
       adjustScore
       Add or subtract the amount from the score
       
       @amount The amount to add or subtract to/from the score
       @penalty true if this is a score subtraction
]]
function Tip:adjustScore( amount, penalty )
	if penalty == true then
		self.score = self.score - amount
	else
		self.score = self.score + amount
	end
end

return Tip




