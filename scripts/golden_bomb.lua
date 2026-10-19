-- Golden Bomb Script for MMV game

local bomb = script.Parent

-- Auto-jump functionality
local function autoJump()
    local humanoid = bomb.Parent:FindFirstChildOfClass("Humanoid")
    if humanoid then
        humanoid.Jump = true
    end
end

-- Detect when the bomb is touched
local function onTouched(otherPart)
    local character = otherPart.Parent
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    
    if humanoid then
        autoJump()
    end
end

-- Connect the touched event
bomb.Touched:Connect(onTouched)