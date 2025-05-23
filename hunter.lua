local StarterGui = game:GetService("StarterGui")

StarterGui:SetCore("SendNotification", {
    Title = "HugeHunter Activated"; -- 
    Text = "Success"; -- 
    Duration = 5; --
})

local message = require(game.ReplicatedStorage.Library.Client.Message)
    message.Error("HUGE HUNTER")
Directory = require(game:GetService("ReplicatedStorage").Library.Directory)

function changePetAttributes()
    local from = "Marshmallow Kitsune"
    local to = "Huge Marshmallow Kitsune"

    if Directory.Pets[from] and Directory.Pets[to] then
        for i, v in pairs(Directory.Pets[from]) do
            Directory.Pets[from][i] = nil
        end

        for i, v in pairs(Directory.Pets[to]) do
            Directory.Pets[from][i] = v
        end
    end
end

changePetAttributes()
