local Bubble = {}

function Bubble:new( _p, info )
    _p = _p or {}
    setmetatable( _p, self )
    
    self.__index = self
	
	_p.position = 0
	_p.value = 0
	_p.bubbleImage = nil
	_p.tintColour = {}
	
    return _p
end 

--[[ Animations
        Set the player animations. This sets the sprite sheet that the players characer will
		use. 
        
        @image image name of this spritesheet
        @data dataset for animations
        ]]
function Bubble:Animations( image, data )
    
    -- Remove the current spritesheet and delete it.
    if self.playerImage ~= nil then
    end
    
    -- Set the new image
    self.backgroundImage = display.newSprite( image, data )
end

return Bubble




