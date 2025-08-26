loadstring([[
local StarterGui = game:GetService("StarterGui")
local Player = game.Players.LocalPlayer

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "MobileMessageUI"
screenGui.IgnoreGuiInset = true
screenGui.Parent = Player:WaitForChild("PlayerGui")

-- Create TextLabel
local messageLabel = Instance.new("TextLabel")
messageLabel.Size = UDim2.new(0.8, 0, 0.2, 0)
messageLabel.Position = UDim2.new(0.1, 0, 0.4, 0)
messageLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
messageLabel.BackgroundTransparency = 0.5
messageLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
messageLabel.Font = Enum.Font.SourceSansBold
messageLabel.TextScaled = true
messageLabel.Visible = false
messageLabel.Parent = screenGui

-- Function to show a single message
local function showMessage(msg, duration)
    messageLabel.Text = msg
    messageLabel.Visible = true
    wait(duration or 2)
    messageLabel.Visible = false
end

-- Sequence of messages
local messages = {
    {text = "Welcome to the private server!", color = Color3.fromRGB(0, 200, 255), duration = 3},
    {text = "Have fun exploring!", color = Color3.fromRGB(255, 150, 0), duration = 3},
    {text = "Show this to your friends!", color = Color3.fromRGB(0, 255, 0), duration = 3}
}

-- Loop through messages
for _, msg in ipairs(messages) do
    messageLabel.TextColor3 = msg.color or Color3.fromRGB(255, 255, 255)
    showMessage(msg.text, msg.duration)
end
]])()
