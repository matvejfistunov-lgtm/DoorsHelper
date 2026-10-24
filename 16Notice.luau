-- Чистый и безопасный экран согласия (без крашей)
local CoreGui = game:GetService("CoreGui")

-- Удаляем старую версию, если есть
local oldGui = CoreGui:FindFirstChild("AbysallConsent")
if oldGui then oldGui:Destroy() end

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "AbysallConsent"
ScreenGui.ResetOnSpawn = false
ScreenGui.IgnoreGuiInset = true
ScreenGui.Parent = CoreGui

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.fromOffset(600, 430)
MainFrame.Position = UDim2.fromScale(0.5, 0.5)
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 24)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui

local Corner = Instance.new("UICorner", MainFrame)
Corner.CornerRadius = UDim.new(0, 12)

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, -40, 0, 40)
Title.Position = UDim2.fromOffset(20, 23)
Title.BackgroundTransparency = 1
Title.Text = "Terms of Service | DoorsHelper"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 24
Title.Font = Enum.Font.GothamBold
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = MainFrame

local TextBox = Instance.new("TextLabel")
TextBox.Size = UDim2.new(1, -40, 0, 265)
TextBox.Position = UDim2.fromOffset(20, 65)
TextBox.BackgroundTransparency = 1
TextBox.Text = "By using this script, you agree to the collection of basic analytics, such as your executor name and game ID. This data is used strictly for abuse prevention, debugging, and improving DoorsHelper.\n\nThis script does not collect personal information. You must be of appropriate age or have permission from a parent or legal guardian.\n\nIf you do not agree, you can click Decline to close this menu."
TextBox.TextColor3 = Color3.fromRGB(200, 200, 210)
TextBox.TextSize = 14
TextBox.Font = Enum.Font.Gotham
TextBox.TextWrapped = true
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top
TextBox.Parent = MainFrame

-- Кнопка ACCEPT
local AcceptBtn = Instance.new("TextButton")
AcceptBtn.Size = UDim2.fromOffset(175, 45)
AcceptBtn.Position = UDim2.new(0, 20, 1, -65)
AcceptBtn.BackgroundColor3 = Color3.fromRGB(45, 45, 52)
AcceptBtn.BorderSizePixel = 0
AcceptBtn.Text = "Accept"
AcceptBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
AcceptBtn.TextSize = 14
AcceptBtn.Font = Enum.Font.GothamMedium
AcceptBtn.Parent = MainFrame
Instance.new("UICorner", AcceptBtn).CornerRadius = UDim.new(0, 7)

-- Кнопка DECLINE (теперь она просто закрывает окно)
local DeclineBtn = Instance.new("TextButton")
DeclineBtn.Size = UDim2.fromOffset(175, 45)
DeclineBtn.Position = UDim2.new(0.5, -87.5, 1, -65)
DeclineBtn.BackgroundColor3 = Color3.fromRGB(45, 45, 52)
DeclineBtn.BorderSizePixel = 0
DeclineBtn.Text = "Decline"
DeclineBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
DeclineBtn.TextSize = 14
DeclineBtn.Font = Enum.Font.GothamMedium
DeclineBtn.Parent = MainFrame
Instance.new("UICorner", DeclineBtn).CornerRadius = UDim.new(0, 7)

-- Логика кнопок
local function CloseGui()
    ScreenGui:Destroy()
end

AcceptBtn.MouseButton1Click:Connect(CloseGui)
DeclineBtn.MouseButton1Click:Connect(CloseGui)

return {}
