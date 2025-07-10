--// Anti-detection & getgenv
if not getgenv then return end
local fullbrightOn = false
local lighting = game:GetService("Lighting")

--// Setup Drawing GUI Bulat
local button = Drawing.new("Circle")
button.Position = Vector2.new(100, workspace.CurrentCamera.ViewportSize.Y - 100)
button.Radius = 30
button.Color = Color3.fromRGB(255, 255, 0)
button.Filled = true
button.Transparency = 0.4
button.Visible = true

local buttonText = Drawing.new("Text")
buttonText.Position = button.Position - Vector2.new(15, 8)
buttonText.Text = "FB"
buttonText.Size = 16
buttonText.Color = Color3.new(1,1,1)
buttonText.Center = false
buttonText.Outline = true
buttonText.Visible = true

--// FullBright Function
local function applyFullbright()
    lighting.Ambient = Color3.new(1,1,1)
    lighting.OutdoorAmbient = Color3.new(1,1,1)
    lighting.Brightness = 10
    lighting.ClockTime = 12
    lighting.FogEnd = 1000000
end

local function resetFullbright()
    lighting.Ambient = Color3.new(0,0,0)
    lighting.OutdoorAmbient = Color3.new(0,0,0)
    lighting.Brightness = 1
    lighting.ClockTime = 14
    lighting.FogEnd = 1000
end

--// Toggle Handler
local uis = game:GetService("UserInputService")
uis.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        local mousePos = uis:GetMouseLocation()
        local dist = (mousePos - button.Position).Magnitude
        if dist <= button.Radius then
            fullbrightOn = not fullbrightOn
            if fullbrightOn then
                applyFullbright()
                button.Color = Color3.fromRGB(0, 255, 0)
                buttonText.Text = "ON"
            else
                resetFullbright()
                button.Color = Color3.fromRGB(255, 255, 0)
                buttonText.Text = "FB"
            end
        end
    end
end)

--// Anti-Detection Hide Technique
pcall(function()
    for _,v in pairs(getgc(true)) do
        if type(v) == "function" and islclosure(v) and not is_synapse_function(v) then
            -- prevent anticheat functions from seeing this
            hookfunction(v, function(...) return nil end)
        end
    end
end)
