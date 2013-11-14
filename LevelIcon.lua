local LevelIcon = {}

function LevelIcon:new( _p, info )
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
        Set the player animations. This sets the sprite sheet that the players characer will
		use. 
        
        @image image name of this spritesheet
        @data dataset for animations
        ]]
function LevelIcon:Animations( image, data, level )
    
    -- Remove the current spritesheet and delete it.
    if self.levelImages ~= nil then
    end
    
    -- Set the new images for this level
    self.backgroundImage = display.newSprite( image, data )
	self.iconImage = display.newSprite( image, data )
	self.animation = display.newSprite(image, data )
	
	self.backgroundImage.setSequence(level.."_background")
	self.iconImage.setSequence(level.."_icon")
	self.animation:setSequence(level.."_animation")
	
	self.icon = display.newGroup()
	
	self.icon:insert(self.backgroundImage)
	self.icon:insert( self.iconImage	)
	self.icon:insert( self.animation )
end

--[[
       adjustScore
       Add or subtract the amount from the score
       
       @amount The amount to add or subtract to/from the score
       @penalty true if this is a score subtraction
]]
function LevelIcon:adjustScore( amount, penalty )
	if penalty == true then
		self.score = self.score - amount
	else
		self.score = self.score + amount
	end
end

return LevelIcon




