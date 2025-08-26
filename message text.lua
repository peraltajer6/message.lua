loadstring([[
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "MobileMessageUI"
screenGui.IgnoreGuiInset = true
screenGui.Parent = Player:WaitForChild("PlayerGui")

local messageLabel = Instance.new("TextLabel")
messageLabel.Size = UDim2.new(0.8, 0, 0.2, 0)
messageLabel.Position = UDim2.new(0.1, 0, 0.4, 0)
messageLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
messageLabel.BackgroundTransparency = 0.5
messageLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
messageLabel.Font = Enum.Font.SourceSansBold
messageLabel.TextScaled = true
messageLabel.Visible = true
messageLabel.Parent = screenGui

-- GitHub raw link to your message.txt
local url = "https://raw.githubusercontent.com/peraltajer6/message.lua/refs/heads/main/message.txt"

-- Function to fetch the message from GitHub
local function fetchMessage()
    local success, response = pcall(function()
        return game:HttpGet(url)
    end)
    if success and response then
        messageLabel.Text = response
    else
        messageLabel.Text = "Failed to load message!"
    end
end

-- Fetch immediately and every 5 seconds
fetchMessage()
while true do
    wait(5)
    fetchMessage()
end
]])()
