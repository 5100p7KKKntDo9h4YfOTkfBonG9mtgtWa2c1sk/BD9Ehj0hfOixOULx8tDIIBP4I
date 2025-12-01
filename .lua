local ui_options = {
	main_color = Color3.fromRGB(88, 101, 242), -- Discord blurple color
	accent_color = Color3.fromRGB(114, 137, 218),
	background_color = Color3.fromRGB(32, 34, 37),
	secondary_background = Color3.fromRGB(47, 49, 54),
	min_size = Vector2.new(500, 400),
	toggle_key = Enum.KeyCode.RightShift,
	can_resize = true,
	transparency = 0.15, -- Modern semi-transparent effect
}

do
	local imgui = game:GetService("CoreGui"):FindFirstChild("imgui")
	if imgui then imgui:Destroy() end
end

local imgui = Instance.new("ScreenGui")
local Prefabs = Instance.new("Frame")
local Label = Instance.new("TextLabel")
local Window = Instance.new("ImageLabel")
local Resizer = Instance.new("Frame")
local Bar = Instance.new("Frame")
local BarGradient = Instance.new("UIGradient")
local Toggle = Instance.new("ImageButton")
local Base = Instance.new("ImageLabel")
local Top = Instance.new("ImageLabel")
local Tabs = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local TabSelection = Instance.new("ImageLabel")
local TabButtons = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local Frame = Instance.new("Frame")
local Tab = Instance.new("Frame")
local UIListLayout_2 = Instance.new("UIListLayout")
local TextBox = Instance.new("TextBox")
local TextBox_Roundify_4px = Instance.new("ImageLabel")
local Slider = Instance.new("ImageLabel")
local Title_2 = Instance.new("TextLabel")
local Indicator = Instance.new("ImageLabel")
local Value = Instance.new("TextLabel")
local Circle = Instance.new("ImageLabel")
local UIListLayout_3 = Instance.new("UIListLayout")
local Dropdown = Instance.new("TextButton")
local Indicator_2 = Instance.new("ImageLabel")
local Box = Instance.new("ImageButton")
local Objects = Instance.new("ScrollingFrame")
local UIListLayout_4 = Instance.new("UIListLayout")
local TextButton_Roundify_4px = Instance.new("ImageLabel")
local TabButton = Instance.new("TextButton")
local TextButton_Roundify_4px_2 = Instance.new("ImageLabel")
local Folder = Instance.new("ImageLabel")
local Button = Instance.new("TextButton")
local TextButton_Roundify_4px_3 = Instance.new("ImageLabel")
local Toggle_2 = Instance.new("ImageLabel")
local Objects_2 = Instance.new("Frame")
local UIListLayout_5 = Instance.new("UIListLayout")
local HorizontalAlignment = Instance.new("Frame")
local UIListLayout_6 = Instance.new("UIListLayout")
local Switch = Instance.new("TextButton")
local TextButton_Roundify_4px_4 = Instance.new("ImageLabel")
local Title_3 = Instance.new("TextLabel")
local Button_2 = Instance.new("TextButton")
local TextButton_Roundify_4px_5 = Instance.new("ImageLabel")
local DropdownButton = Instance.new("TextButton")
local Checkbox = Instance.new("ImageLabel")
local Windows = Instance.new("Frame")
local Keybind = Instance.new("ImageLabel")
local Title_4 = Instance.new("TextLabel")
local Input = Instance.new("TextButton")
local Input_Roundify_4px = Instance.new("ImageLabel")

imgui.Name = "imgui"
imgui.Parent = game:GetService("CoreGui") or gethui()
imgui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Prefabs.Name = "Prefabs"
Prefabs.Parent = imgui
Prefabs.BackgroundColor3 = Color3.new(1, 1, 1)
Prefabs.Size = UDim2.new(0, 100, 0, 100)
Prefabs.Visible = false

Label.Name = "Label"
Label.Parent = Prefabs
Label.BackgroundColor3 = Color3.new(1, 1, 1)
Label.BackgroundTransparency = 1
Label.Size = UDim2.new(0, 200, 0, 25)
Label.Font = Enum.Font.GothamMedium
Label.Text = "Label Text"
Label.TextColor3 = Color3.fromRGB(220, 221, 222)
Label.TextSize = 14
Label.TextXAlignment = Enum.TextXAlignment.Left

Window.Name = "Window"
Window.Parent = Prefabs
Window.Active = true
Window.BackgroundColor3 = Color3.new(1, 1, 1)
Window.BackgroundTransparency = ui_options.transparency
Window.ClipsDescendants = true
Window.Position = UDim2.new(0, 20, 0, 20)
Window.Selectable = true
Window.Size = UDim2.new(0, 500, 0, 400)
Window.Image = "rbxassetid://2851926732"
Window.ImageColor3 = ui_options.background_color
Window.ImageTransparency = ui_options.transparency
Window.ScaleType = Enum.ScaleType.Slice
Window.SliceCenter = Rect.new(12, 12, 12, 12)

-- Add blur effect
local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 8)
UICorner.Parent = Window

Resizer.Name = "Resizer"
Resizer.Parent = Window
Resizer.Active = true
Resizer.BackgroundColor3 = Color3.new(1, 1, 1)
Resizer.BackgroundTransparency = 1
Resizer.BorderSizePixel = 0
Resizer.Position = UDim2.new(1, -20, 1, -20)
Resizer.Size = UDim2.new(0, 20, 0, 20)

Bar.Name = "Bar"
Bar.Parent = Window
Bar.BackgroundColor3 = ui_options.main_color
Bar.BackgroundTransparency = 0.3
Bar.BorderSizePixel = 0
Bar.Position = UDim2.new(0, 0, 0, 0)
Bar.Size = UDim2.new(1, 0, 0, 40)

local BarCorner = Instance.new("UICorner")
BarCorner.CornerRadius = UDim.new(0, 8)
BarCorner.Parent = Bar

BarGradient.Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(88, 101, 242)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(114, 137, 218))
}
BarGradient.Rotation = 45
BarGradient.Parent = Bar

Toggle.Name = "Toggle"
Toggle.Parent = Bar
Toggle.BackgroundColor3 = Color3.new(1, 1, 1)
Toggle.BackgroundTransparency = 1
Toggle.Position = UDim2.new(0, 10, 0.5, -10)
Toggle.Size = UDim2.new(0, 20, 0, 20)
Toggle.ZIndex = 2
Toggle.Image = "rbxassetid://7734053495"
Toggle.ImageColor3 = Color3.fromRGB(255, 255, 255)

Base.Name = "Base"
Base.Parent = Bar
Base.BackgroundTransparency = 1
Base.Position = UDim2.new(0, 0, 1, 0)
Base.Size = UDim2.new(1, 0, 0, 2)
Base.Image = "rbxassetid://2851926732"
Base.ImageColor3 = ui_options.main_color
Base.ScaleType = Enum.ScaleType.Slice
Base.SliceCenter = Rect.new(12, 12, 12, 12)

Tabs.Name = "Tabs"
Tabs.Parent = Window
Tabs.BackgroundColor3 = Color3.new(1, 1, 1)
Tabs.BackgroundTransparency = 1
Tabs.Position = UDim2.new(0, 20, 0, 90)
Tabs.Size = UDim2.new(1, -40, 1, -110)

Title.Name = "Title"
Title.Parent = Window
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 40, 0, 0)
Title.Size = UDim2.new(0, 200, 0, 40)
Title.Font = Enum.Font.GothamBold
Title.Text = "Modern GUI"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 16
Title.TextXAlignment = Enum.TextXAlignment.Left

TabSelection.Name = "TabSelection"
TabSelection.Parent = Window
TabSelection.BackgroundColor3 = Color3.new(1, 1, 1)
TabSelection.BackgroundTransparency = 1
TabSelection.Position = UDim2.new(0, 20, 0, 50)
TabSelection.Size = UDim2.new(1, -40, 0, 35)
TabSelection.Visible = false
TabSelection.Image = "rbxassetid://2851929490"
TabSelection.ImageColor3 = ui_options.secondary_background
TabSelection.ImageTransparency = 0.2
TabSelection.ScaleType = Enum.ScaleType.Slice
TabSelection.SliceCenter = Rect.new(4, 4, 4, 4)

local TabSelectionCorner = Instance.new("UICorner")
TabSelectionCorner.CornerRadius = UDim.new(0, 6)
TabSelectionCorner.Parent = TabSelection

TabButtons.Name = "TabButtons"
TabButtons.Parent = TabSelection
TabButtons.BackgroundColor3 = Color3.new(1, 1, 1)
TabButtons.BackgroundTransparency = 1
TabButtons.Size = UDim2.new(1, 0, 1, 0)

UIListLayout.Parent = TabButtons
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)

Frame.Parent = TabSelection
Frame.BackgroundColor3 = ui_options.main_color
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, 0, 1, -2)
Frame.Size = UDim2.new(1, 0, 0, 2)

Tab.Name = "Tab"
Tab.Parent = Prefabs
Tab.BackgroundColor3 = Color3.new(1, 1, 1)
Tab.BackgroundTransparency = 1
Tab.Size = UDim2.new(1, 0, 1, 0)
Tab.Visible = false

UIListLayout_2.Parent = Tab
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0, 8)

TextBox.Parent = Prefabs
TextBox.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox.BackgroundTransparency = 1
TextBox.BorderSizePixel = 0
TextBox.Size = UDim2.new(0, 275, 0, 35)
TextBox.ZIndex = 2
TextBox.Font = Enum.Font.Gotham
TextBox.PlaceholderColor3 = Color3.fromRGB(142, 146, 151)
TextBox.PlaceholderText = "Input Text"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(220, 221, 222)
TextBox.TextSize = 14

TextBox_Roundify_4px.Name = "TextBox_Roundify_4px"
TextBox_Roundify_4px.Parent = TextBox
TextBox_Roundify_4px.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox_Roundify_4px.BackgroundTransparency = 1
TextBox_Roundify_4px.Size = UDim2.new(1, 0, 1, 0)
TextBox_Roundify_4px.Image = "rbxassetid://2851929490"
TextBox_Roundify_4px.ImageColor3 = ui_options.secondary_background
TextBox_Roundify_4px.ImageTransparency = 0.2
TextBox_Roundify_4px.ScaleType = Enum.ScaleType.Slice
TextBox_Roundify_4px.SliceCenter = Rect.new(4, 4, 4, 4)

local TextBoxCorner = Instance.new("UICorner")
TextBoxCorner.CornerRadius = UDim.new(0, 6)
TextBoxCorner.Parent = TextBox_Roundify_4px

Slider.Name = "Slider"
Slider.Parent = Prefabs
Slider.BackgroundColor3 = Color3.new(1, 1, 1)
Slider.BackgroundTransparency = 1
Slider.Size = UDim2.new(1, 0, 0, 40)
Slider.Image = "rbxassetid://2851929490"
Slider.ImageColor3 = ui_options.secondary_background
Slider.ImageTransparency = 0.2
Slider.ScaleType = Enum.ScaleType.Slice
Slider.SliceCenter = Rect.new(4, 4, 4, 4)

local SliderCorner = Instance.new("UICorner")
SliderCorner.CornerRadius = UDim.new(0, 6)
SliderCorner.Parent = Slider

Title_2.Name = "Title"
Title_2.Parent = Slider
Title_2.BackgroundColor3 = Color3.new(1, 1, 1)
Title_2.BackgroundTransparency = 1
Title_2.Position = UDim2.new(0, 10, 0, 5)
Title_2.Size = UDim2.new(0, 200, 0, 15)
Title_2.ZIndex = 2
Title_2.Font = Enum.Font.GothamMedium
Title_2.Text = "Slider"
Title_2.TextColor3 = Color3.fromRGB(220, 221, 222)
Title_2.TextSize = 13
Title_2.TextXAlignment = Enum.TextXAlignment.Left

Indicator.Name = "Indicator"
Indicator.Parent = Slider
Indicator.BackgroundColor3 = Color3.new(1, 1, 1)
Indicator.BackgroundTransparency = 1
Indicator.Position = UDim2.new(0, 10, 0, 22)
Indicator.Size = UDim2.new(0, 0, 0, 4)
Indicator.Image = "rbxassetid://2851929490"
Indicator.ImageColor3 = ui_options.main_color
Indicator.ScaleType = Enum.ScaleType.Slice
Indicator.SliceCenter = Rect.new(4, 4, 4, 4)

local IndicatorCorner = Instance.new("UICorner")
IndicatorCorner.CornerRadius = UDim.new(0, 2)
IndicatorCorner.Parent = Indicator

Value.Name = "Value"
Value.Parent = Slider
Value.BackgroundColor3 = Color3.new(1, 1, 1)
Value.BackgroundTransparency = 1
Value.Position = UDim2.new(1, -60, 0, 5)
Value.Size = UDim2.new(0, 50, 0, 15)
Value.Font = Enum.Font.GothamBold
Value.Text = "0"
Value.TextColor3 = ui_options.main_color
Value.TextSize = 13
Value.TextXAlignment = Enum.TextXAlignment.Right

Circle.Name = "Circle"
Circle.Parent = Prefabs
Circle.BackgroundColor3 = Color3.new(1, 1, 1)
Circle.BackgroundTransparency = 1
Circle.Image = "rbxassetid://266543268"
Circle.ImageTransparency = 0.5

UIListLayout_3.Parent = Prefabs
UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_3.Padding = UDim.new(0, 10)

-- Enhanced Dropdown with Multi-Select
Dropdown.Name = "Dropdown"
Dropdown.Parent = Prefabs
Dropdown.BackgroundColor3 = Color3.new(1, 1, 1)
Dropdown.BackgroundTransparency = 1
Dropdown.BorderSizePixel = 0
Dropdown.Size = UDim2.new(0, 275, 0, 35)
Dropdown.ZIndex = 2
Dropdown.Font = Enum.Font.GothamMedium
Dropdown.Text = "  Dropdown"
Dropdown.TextColor3 = Color3.fromRGB(220, 221, 222)
Dropdown.TextSize = 14
Dropdown.TextXAlignment = Enum.TextXAlignment.Left

Indicator_2.Name = "Indicator"
Indicator_2.Parent = Dropdown
Indicator_2.BackgroundColor3 = Color3.new(1, 1, 1)
Indicator_2.BackgroundTransparency = 1
Indicator_2.Position = UDim2.new(1, -25, 0.5, -7)
Indicator_2.Size = UDim2.new(0, 14, 0, 14)
Indicator_2.ZIndex = 3
Indicator_2.Image = "rbxassetid://7734053495"
Indicator_2.ImageColor3 = Color3.fromRGB(142, 146, 151)
Indicator_2.Rotation = 90

Box.Name = "Box"
Box.Parent = Dropdown
Box.BackgroundColor3 = Color3.new(1, 1, 1)
Box.BackgroundTransparency = 1
Box.Position = UDim2.new(0, 0, 0, 40)
Box.Size = UDim2.new(1, 0, 0, 0)
Box.ZIndex = 5
Box.Image = "rbxassetid://2851929490"
Box.ImageColor3 = ui_options.secondary_background
Box.ImageTransparency = 0.1
Box.ScaleType = Enum.ScaleType.Slice
Box.SliceCenter = Rect.new(4, 4, 4, 4)

local BoxCorner = Instance.new("UICorner")
BoxCorner.CornerRadius = UDim.new(0, 6)
BoxCorner.Parent = Box

Objects.Name = "Objects"
Objects.Parent = Box
Objects.BackgroundColor3 = Color3.new(1, 1, 1)
Objects.BackgroundTransparency = 1
Objects.BorderSizePixel = 0
Objects.Size = UDim2.new(1, 0, 1, 0)
Objects.ZIndex = 5
Objects.CanvasSize = UDim2.new(0, 0, 0, 0)
Objects.ScrollBarThickness = 4
Objects.ScrollBarImageColor3 = ui_options.main_color

UIListLayout_4.Parent = Objects
UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_4.Padding = UDim.new(0, 2)

TextButton_Roundify_4px.Name = "TextButton_Roundify_4px"
TextButton_Roundify_4px.Parent = Dropdown
TextButton_Roundify_4px.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_Roundify_4px.BackgroundTransparency = 1
TextButton_Roundify_4px.Size = UDim2.new(1, 0, 1, 0)
TextButton_Roundify_4px.Image = "rbxassetid://2851929490"
TextButton_Roundify_4px.ImageColor3 = ui_options.secondary_background
TextButton_Roundify_4px.ImageTransparency = 0.2
TextButton_Roundify_4px.ScaleType = Enum.ScaleType.Slice
TextButton_Roundify_4px.SliceCenter = Rect.new(4, 4, 4, 4)

local DropdownCorner = Instance.new("UICorner")
DropdownCorner.CornerRadius = UDim.new(0, 6)
DropdownCorner.Parent = TextButton_Roundify_4px

TabButton.Name = "TabButton"
TabButton.Parent = Prefabs
TabButton.BackgroundTransparency = 1
TabButton.BorderSizePixel = 0
TabButton.Size = UDim2.new(0, 80, 0, 30)
TabButton.ZIndex = 2
TabButton.Font = Enum.Font.GothamMedium
TabButton.Text = "Tab"
TabButton.TextColor3 = Color3.fromRGB(185, 187, 190)
TabButton.TextSize = 13

TextButton_Roundify_4px_2.Name = "TextButton_Roundify_4px"
TextButton_Roundify_4px_2.Parent = TabButton
TextButton_Roundify_4px_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_Roundify_4px_2.BackgroundTransparency = 1
TextButton_Roundify_4px_2.Size = UDim2.new(1, 0, 1, 0)
TextButton_Roundify_4px_2.Image = "rbxassetid://2851929490"
TextButton_Roundify_4px_2.ImageColor3 = ui_options.secondary_background
TextButton_Roundify_4px_2.ImageTransparency = 0.5
TextButton_Roundify_4px_2.ScaleType = Enum.ScaleType.Slice
TextButton_Roundify_4px_2.SliceCenter = Rect.new(4, 4, 4, 4)

local TabButtonCorner = Instance.new("UICorner")
TabButtonCorner.CornerRadius = UDim.new(0, 5)
TabButtonCorner.Parent = TextButton_Roundify_4px_2

Folder.Name = "Folder"
Folder.Parent = Prefabs
Folder.BackgroundColor3 = Color3.new(1, 1, 1)
Folder.BackgroundTransparency = 1
Folder.Size = UDim2.new(1, 0, 0, 35)
Folder.Image = "rbxassetid://2851929490"
Folder.ImageColor3 = ui_options.secondary_background
Folder.ImageTransparency = 0.3
Folder.ScaleType = Enum.ScaleType.Slice
Folder.SliceCenter = Rect.new(4, 4, 4, 4)

local FolderCorner = Instance.new("UICorner")
FolderCorner.CornerRadius = UDim.new(0, 6)
FolderCorner.Parent = Folder

Button.Name = "Button"
Button.Parent = Folder
Button.BackgroundTransparency = 1
Button.BorderSizePixel = 0
Button.Size = UDim2.new(1, 0, 0, 35)
Button.ZIndex = 2
Button.Font = Enum.Font.GothamMedium
Button.Text = "  Folder"
Button.TextColor3 = Color3.fromRGB(220, 221, 222)
Button.TextSize = 14
Button.TextXAlignment = Enum.TextXAlignment.Left

TextButton_Roundify_4px_3.Name = "TextButton_Roundify_4px"
TextButton_Roundify_4px_3.Parent = Button
TextButton_Roundify_4px_3.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_Roundify_4px_3.BackgroundTransparency = 1
TextButton_Roundify_4px_3.Size = UDim2.new(1, 0, 1, 0)
TextButton_Roundify_4px_3.Image = "rbxassetid://2851929490"
TextButton_Roundify_4px_3.ImageColor3 = ui_options.main_color
TextButton_Roundify_4px_3.ImageTransparency = 0.7
TextButton_Roundify_4px_3.ScaleType = Enum.ScaleType.Slice
TextButton_Roundify_4px_3.SliceCenter = Rect.new(4, 4, 4, 4)

Toggle_2.Name = "Toggle"
Toggle_2.Parent = Button
Toggle_2.BackgroundColor3 = Color3.new(1, 1, 1)
Toggle_2.BackgroundTransparency = 1
Toggle_2.Position = UDim2.new(1, -25, 0.5, -7)
Toggle_2.Size = UDim2.new(0, 14, 0, 14)
Toggle_2.Image = "rbxassetid://7734053495"
Toggle_2.ImageColor3 = Color3.fromRGB(185, 187, 190)

Objects_2.Name = "Objects"
Objects_2.Parent = Folder
Objects_2.BackgroundColor3 = Color3.new(1, 1, 1)
Objects_2.BackgroundTransparency = 1
Objects_2.Position = UDim2.new(0, 10, 0, 40)
Objects_2.Size = UDim2.new(1, -10, 1, -40)
Objects_2.Visible = false

UIListLayout_5.Parent = Objects_2
UIListLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_5.Padding = UDim.new(0, 8)

HorizontalAlignment.Name = "HorizontalAlignment"
HorizontalAlignment.Parent = Prefabs
HorizontalAlignment.BackgroundColor3 = Color3.new(1, 1, 1)
HorizontalAlignment.BackgroundTransparency = 1
HorizontalAlignment.Size = UDim2.new(1, 0, 0, 35)

UIListLayout_6.Parent = HorizontalAlignment
UIListLayout_6.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_6.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_6.Padding = UDim.new(0, 8)

Switch.Name = "Switch"
Switch.Parent = Prefabs
Switch.BackgroundColor3 = Color3.new(1, 1, 1)
Switch.BackgroundTransparency = 1
Switch.BorderSizePixel = 0
Switch.Size = UDim2.new(0, 40, 0, 20)
Switch.ZIndex = 2
Switch.Font = Enum.Font.Gotham
Switch.Text = ""
Switch.TextColor3 = Color3.new(1, 1, 1)
Switch.TextSize = 14

TextButton_Roundify_4px_4.Name = "TextButton_Roundify_4px"
TextButton_Roundify_4px_4.Parent = Switch
TextButton_Roundify_4px_4.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_Roundify_4px_4.BackgroundTransparency = 1
TextButton_Roundify_4px_4.Size = UDim2.new(1, 0, 1, 0)
TextButton_Roundify_4px_4.Image = "rbxassetid://2851929490"
TextButton_Roundify_4px_4.ImageColor3 = ui_options.secondary_background
TextButton_Roundify_4px_4.ImageTransparency = 0.2
TextButton_Roundify_4px_4.ScaleType = Enum.ScaleType.Slice
TextButton_Roundify_4px_4.SliceCenter = Rect.new(4, 4, 4, 4)

local SwitchCorner = Instance.new("UICorner")
SwitchCorner.CornerRadius = UDim.new(1, 0)
SwitchCorner.Parent = TextButton_Roundify_4px_4

-- Switch Circle Indicator
local SwitchCircle = Instance.new("Frame")
SwitchCircle.Name = "Circle"
SwitchCircle.Parent = Switch
SwitchCircle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SwitchCircle.Position = UDim2.new(0, 2, 0.5, -8)
SwitchCircle.Size = UDim2.new(0, 16, 0, 16)
SwitchCircle.ZIndex = 3

local SwitchCircleCorner = Instance.new("UICorner")
SwitchCircleCorner.CornerRadius = UDim.new(1, 0)
SwitchCircleCorner.Parent = SwitchCircle

Title_3.Name = "Title"
Title_3.Parent = Switch
Title_3.BackgroundColor3 = Color3.new(1, 1, 1)
Title_3.BackgroundTransparency = 1
Title_3.Position = UDim2.new(1, 10, 0, 0)
Title_3.Size = UDim2.new(0, 100, 0, 20)
Title_3.Font = Enum.Font.GothamMedium
Title_3.Text = "Switch"
Title_3.TextColor3 = Color3.fromRGB(220, 221, 222)
Title_3.TextSize = 13
Title_3.TextXAlignment = Enum.TextXAlignment.Left

Button_2.Name = "Button"
Button_2.Parent = Prefabs
Button_2.BackgroundTransparency = 1
Button_2.BorderSizePixel = 0
Button_2.Size = UDim2.new(0, 120, 0, 35)
Button_2.ZIndex = 2
Button_2.Font = Enum.Font.GothamMedium
Button_2.Text = "Button"
Button_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Button_2.TextSize = 14

TextButton_Roundify_4px_5.Name = "TextButton_Roundify_4px"
TextButton_Roundify_4px_5.Parent = Button_2
TextButton_Roundify_4px_5.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_Roundify_4px_5.BackgroundTransparency = 1
TextButton_Roundify_4px_5.Size = UDim2.new(1, 0, 1, 0)
TextButton_Roundify_4px_5.Image = "rbxassetid://2851929490"
TextButton_Roundify_4px_5.ImageColor3 = ui_options.main_color
TextButton_Roundify_4px_5.ScaleType = Enum.ScaleType.Slice
TextButton_Roundify_4px_5.SliceCenter = Rect.new(4, 4, 4, 4)

local Button2Corner = Instance.new("UICorner")
Button2Corner.CornerRadius = UDim.new(0, 6)
Button2Corner.Parent = TextButton_Roundify_4px_5

DropdownButton.Name = "DropdownButton"
DropdownButton.Parent = Prefabs
DropdownButton.BackgroundColor3 = ui_options.secondary_background
DropdownButton.BackgroundTransparency = 0.3
DropdownButton.BorderSizePixel = 0
DropdownButton.Size = UDim2.new(1, 0, 0, 30)
DropdownButton.ZIndex = 5
DropdownButton.Font = Enum.Font.Gotham
DropdownButton.Text = "  Option"
DropdownButton.TextColor3 = Color3.fromRGB(220, 221, 222)
DropdownButton.TextSize = 13
DropdownButton.TextXAlignment = Enum.TextXAlignment.Left

local DropdownButtonCorner = Instance.new("UICorner")
DropdownButtonCorner.CornerRadius = UDim.new(0, 4)
DropdownButtonCorner.Parent = DropdownButton

-- Checkbox for multi-select
Checkbox.Name = "Checkbox"
Checkbox.Parent = DropdownButton
Checkbox.BackgroundColor3 = Color3.new(1, 1, 1)
Checkbox.BackgroundTransparency = 1
Checkbox.Position = UDim2.new(1, -25, 0.5, -8)
Checkbox.Size = UDim2.new(0, 16, 0, 16)
Checkbox.ZIndex = 6
Checkbox.Image = "rbxassetid://2851929490"
Checkbox.ImageColor3 = ui_options.secondary_background
Checkbox.ScaleType = Enum.ScaleType.Slice
Checkbox.SliceCenter = Rect.new(4, 4, 4, 4)

local CheckboxCorner = Instance.new("UICorner")
CheckboxCorner.CornerRadius = UDim.new(0, 3)
CheckboxCorner.Parent = Checkbox

-- Checkmark
local Checkmark = Instance.new("ImageLabel")
Checkmark.Name = "Checkmark"
Checkmark.Parent = Checkbox
Checkmark.BackgroundTransparency = 1
Checkmark.Size = UDim2.new(1, 0, 1, 0)
Checkmark.Image = "rbxassetid://7733964370"
Checkmark.ImageColor3 = ui_options.main_color
Checkmark.Visible = false
Checkmark.ZIndex = 7

Keybind.Name = "Keybind"
Keybind.Parent = Prefabs
Keybind.BackgroundColor3 = Color3.new(1, 1, 1)
Keybind.BackgroundTransparency = 1
Keybind.Size = UDim2.new(0, 250, 0, 35)
Keybind.Image = "rbxassetid://2851929490"
Keybind.ImageColor3 = ui_options.secondary_background
Keybind.ImageTransparency = 0.2
Keybind.ScaleType = Enum.ScaleType.Slice
Keybind.SliceCenter = Rect.new(4, 4, 4, 4)

local KeybindCorner = Instance.new("UICorner")
KeybindCorner.CornerRadius = UDim.new(0, 6)
KeybindCorner.Parent = Keybind

Title_4.Name = "Title"
Title_4.Parent = Keybind
Title_4.BackgroundColor3 = Color3.new(1, 1, 1)
Title_4.BackgroundTransparency = 1
Title_4.Position = UDim2.new(0, 10, 0, 0)
Title_4.Size = UDim2.new(0, 150, 1, 0)
Title_4.Font = Enum.Font.GothamMedium
Title_4.Text = "Keybind"
Title_4.TextColor3 = Color3.fromRGB(220, 221, 222)
Title_4.TextSize = 13
Title_4.TextXAlignment = Enum.TextXAlignment.Left

Input.Name = "Input"
Input.Parent = Keybind
Input.BackgroundColor3 = Color3.new(1, 1, 1)
Input.BackgroundTransparency = 1
Input.BorderSizePixel = 0
Input.Position = UDim2.new(1, -90, 0, 7.5)
Input.Size = UDim2.new(0, 80, 1, -15)
Input.ZIndex = 2
Input.Font = Enum.Font.GothamBold
Input.Text = "None"
Input.TextColor3 = ui_options.main_color
Input.TextSize = 12

Input_Roundify_4px.Name = "Input_Roundify_4px"
Input_Roundify_4px.Parent = Input
Input_Roundify_4px.BackgroundColor3 = Color3.new(1, 1, 1)
Input_Roundify_4px.BackgroundTransparency = 1
Input_Roundify_4px.Size = UDim2.new(1, 0, 1, 0)
Input_Roundify_4px.Image = "rbxassetid://2851929490"
Input_Roundify_4px.ImageColor3 = ui_options.background_color
Input_Roundify_4px.ImageTransparency = 0.3
Input_Roundify_4px.ScaleType = Enum.ScaleType.Slice
Input_Roundify_4px.SliceCenter = Rect.new(4, 4, 4, 4)

local InputCorner = Instance.new("UICorner")
InputCorner.CornerRadius = UDim.new(0, 4)
InputCorner.Parent = Input_Roundify_4px

Windows.Name = "Windows"
Windows.Parent = imgui
Windows.BackgroundColor3 = Color3.new(1, 1, 1)
Windows.BackgroundTransparency = 1
Windows.Position = UDim2.new(0, 20, 0, 20)
Windows.Size = UDim2.new(1, -40, 1, -40)

script.Parent = imgui

local UIS = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local RS = game:GetService("RunService")
local ps = game:GetService("Players")

local p = ps.LocalPlayer
local mouse = p:GetMouse()

local Prefabs = script.Parent:WaitForChild("Prefabs")
local Windows = script.Parent:FindFirstChild("Windows")

local checks = {["binding"] = false}

UIS.InputBegan:Connect(function(input, gameProcessed)
	if input.KeyCode == ui_options.toggle_key then
		if script.Parent and not checks.binding then
			script.Parent.Enabled = not script.Parent.Enabled
		end
	end
end)

local function Resize(part, new, _delay)
	_delay = _delay or 0.15
	local tweenInfo = TweenInfo.new(_delay, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
	local tween = TweenService:Create(part, tweenInfo, new)
	tween:Play()
end

local function gNameLen(obj)
	return obj.TextBounds.X + 20
end

local function gMouse()
	return Vector2.new(UIS:GetMouseLocation().X, UIS:GetMouseLocation().Y - 36)
end

local function ripple(button, x, y)
	spawn(function()
		button.ClipsDescendants = true
		local circle = Prefabs:FindFirstChild("Circle"):Clone()
		circle.Parent = button
		circle.ZIndex = 1000
		local new_x = x - circle.AbsolutePosition.X
		local new_y = y - circle.AbsolutePosition.Y
		circle.Position = UDim2.new(0, new_x, 0, new_y)
		local size = math.max(button.AbsoluteSize.X, button.AbsoluteSize.Y) * 1.5
		circle:TweenSizeAndPosition(UDim2.new(0, size, 0, size), UDim2.new(0.5, -size/2, 0.5, -size/2), "Out", "Quad", 0.3, false, nil)
		Resize(circle, {ImageTransparency = 1}, 0.3)
		wait(0.3)
		circle:Destroy()
	end)
end

local windows = 0
local library = {}

function library:AddWindow(title, options)
	windows = windows + 1
	local dropdown_open = false
	title = tostring(title or "Modern GUI")
	options = (typeof(options) == "table") and options or ui_options
	options.tween_time = 0.15

	local Window = Prefabs:FindFirstChild("Window"):Clone()
	Window.Parent = Windows
	Window:FindFirstChild("Title").Text = title
	Window.Size = UDim2.new(0, options.min_size.X, 0, options.min_size.Y)
	Window.ZIndex = Window.ZIndex + (windows * 10)

	local Resizer = Window:WaitForChild("Resizer")
	local window_data = {}
	Window.Draggable = true

	do -- Resize
		local Entered = false
		Resizer.MouseEnter:Connect(function()
			Window.Draggable = false
			Entered = true
		end)
		Resizer.MouseLeave:Connect(function()
			Entered = false
			Window.Draggable = true
		end)

		local Held = false
		UIS.InputBegan:Connect(function(inputObject)
			if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
				Held = true
				spawn(function()
					if Entered and Resizer.Active and options.can_resize then
						while Held and Resizer.Active do
							local mouse_location = gMouse()
							local x = mouse_location.X - Window.AbsolutePosition.X
							local y = mouse_location.Y - Window.AbsolutePosition.Y
							if x >= options.min_size.X and y >= options.min_size.Y then
								Resize(Window, {Size = UDim2.new(0, x, 0, y)}, options.tween_time)
							end
							RS.Heartbeat:Wait()
						end
					end
				end)
			end
		end)
		UIS.InputEnded:Connect(function(inputObject)
			if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
				Held = false
			end
		end)
	end

	do -- Toggle Window
		local open_close = Window:FindFirstChild("Bar"):FindFirstChild("Toggle")
		local open = true
		local canopen = true
		local oldwindowdata = {}
		local oldy = Window.AbsoluteSize.Y

		open_close.MouseButton1Click:Connect(function()
			if canopen then
				canopen = false
				if open then
					oldwindowdata = {}
					for i,v in next, Window:FindFirstChild("Tabs"):GetChildren() do
						oldwindowdata[v] = v.Visible
						v.Visible = false
					end
					Resizer.Active = false
					oldy = Window.AbsoluteSize.Y
					Resize(open_close, {Rotation = 180}, options.tween_time)
					Resize(Window, {Size = UDim2.new(0, Window.AbsoluteSize.X, 0, 40)}, options.tween_time)
				else
					for i,v in next, oldwindowdata do
						i.Visible = v
					end
					Resizer.Active = true
					Resize(open_close, {Rotation = 0}, options.tween_time)
					Resize(Window, {Size = UDim2.new(0, Window.AbsoluteSize.X, 0, oldy)}, options.tween_time)
				end
				open = not open
				wait(options.tween_time)
				canopen = true
			end
		end)
	end

	do -- UI Elements
		local tabs = Window:FindFirstChild("Tabs")
		local tab_selection = Window:FindFirstChild("TabSelection")
		local tab_buttons = tab_selection:FindFirstChild("TabButtons")

		function window_data:AddTab(tab_name)
			local tab_data = {}
			tab_name = tostring(tab_name or "Tab")
			tab_selection.Visible = true

			local new_button = Prefabs:FindFirstChild("TabButton"):Clone()
			new_button.Parent = tab_buttons
			new_button.Text = tab_name
			new_button.Size = UDim2.new(0, gNameLen(new_button), 0, 30)
			new_button.ZIndex = new_button.ZIndex + (windows * 10)
			new_button:GetChildren()[1].ZIndex = new_button:GetChildren()[1].ZIndex + (windows * 10)

			local new_tab = Prefabs:FindFirstChild("Tab"):Clone()
			new_tab.Parent = tabs
			new_tab.ZIndex = new_tab.ZIndex + (windows * 10)

			local function show()
				if dropdown_open then return end
				for i, v in next, tab_buttons:GetChildren() do
					if not v:IsA("UIListLayout") then
						v.TextColor3 = Color3.fromRGB(185, 187, 190)
						v:GetChildren()[1].ImageTransparency = 0.5
					end
				end
				for i, v in next, tabs:GetChildren() do
					v.Visible = false
				end
				new_button.TextColor3 = Color3.fromRGB(255, 255, 255)
				new_button:GetChildren()[1].ImageTransparency = 0
				new_tab.Visible = true
			end

			new_button.MouseButton1Click:Connect(show)
			function tab_data:Show() show() end

			-- Tab Elements
			function tab_data:AddLabel(label_text)
				label_text = tostring(label_text or "Label")
				local label = Prefabs:FindFirstChild("Label"):Clone()
				label.Parent = new_tab
				label.Text = label_text
				label.ZIndex = label.ZIndex + (windows * 10)
				return label
			end

			function tab_data:AddButton(button_text, callback)
				button_text = tostring(button_text or "Button")
				callback = typeof(callback) == "function" and callback or function()end
				local button = Prefabs:FindFirstChild("Button"):Clone()
				button.Parent = new_tab
				button.Text = button_text
				button.Size = UDim2.new(0, gNameLen(button) + 20, 0, 35)
				button.ZIndex = button.ZIndex + (windows * 10)
				button:GetChildren()[1].ZIndex = button:GetChildren()[1].ZIndex + (windows * 10)
				
				button.MouseEnter:Connect(function()
					Resize(button:GetChildren()[1], {ImageColor3 = ui_options.accent_color}, 0.15)
				end)
				button.MouseLeave:Connect(function()
					Resize(button:GetChildren()[1], {ImageColor3 = ui_options.main_color}, 0.15)
				end)
				
				button.MouseButton1Click:Connect(function()
					ripple(button, mouse.X, mouse.Y)
					pcall(callback)
				end)
				return button
			end

			function tab_data:AddSwitch(switch_text, callback)
				local switch_data = {}
				switch_text = tostring(switch_text or "Switch")
				callback = typeof(callback) == "function" and callback or function()end
				
				local switch = Prefabs:FindFirstChild("Switch"):Clone()
				switch.Parent = new_tab
				switch:FindFirstChild("Title").Text = switch_text
				switch.ZIndex = switch.ZIndex + (windows * 10)
				
				local circle = switch:FindFirstChild("Circle")
				local toggled = false
				
				switch.MouseButton1Click:Connect(function()
					toggled = not toggled
					if toggled then
						Resize(circle, {Position = UDim2.new(1, -18, 0.5, -8)}, 0.15)
						Resize(switch:GetChildren()[1], {ImageColor3 = ui_options.main_color}, 0.15)
					else
						Resize(circle, {Position = UDim2.new(0, 2, 0.5, -8)}, 0.15)
						Resize(switch:GetChildren()[1], {ImageColor3 = ui_options.secondary_background}, 0.15)
					end
					pcall(callback, toggled)
				end)
				
				function switch_data:Set(bool)
					toggled = (typeof(bool) == "boolean") and bool or false
					if toggled then
						Resize(circle, {Position = UDim2.new(1, -18, 0.5, -8)}, 0.15)
						Resize(switch:GetChildren()[1], {ImageColor3 = ui_options.main_color}, 0.15)
					else
						Resize(circle, {Position = UDim2.new(0, 2, 0.5, -8)}, 0.15)
						Resize(switch:GetChildren()[1], {ImageColor3 = ui_options.secondary_background}, 0.15)
					end
					pcall(callback, toggled)
				end
				return switch_data, switch
			end

			function tab_data:AddTextBox(textbox_text, callback, textbox_options)
				textbox_text = tostring(textbox_text or "Input")
				callback = typeof(callback) == "function" and callback or function()end
				textbox_options = typeof(textbox_options) == "table" and textbox_options or {["clear"] = true}
				
				local textbox = Prefabs:FindFirstChild("TextBox"):Clone()
				textbox.Parent = new_tab
				textbox.PlaceholderText = textbox_text
				textbox.ZIndex = textbox.ZIndex + (windows * 10)
				
				textbox.FocusLost:Connect(function(ep)
					if ep and #textbox.Text > 0 then
						pcall(callback, textbox.Text)
						if textbox_options.clear then
							textbox.Text = ""
						end
					end
				end)
				return textbox
			end

			function tab_data:AddSlider(slider_text, callback, slider_options)
				local slider_data = {}
				slider_text = tostring(slider_text or "Slider")
				callback = typeof(callback) == "function" and callback or function()end
				slider_options = typeof(slider_options) == "table" and slider_options or {}
				slider_options = {
					["min"] = slider_options.min or 0,
					["max"] = slider_options.max or 100,
					["default"] = slider_options.default or 0,
				}

				local slider = Prefabs:FindFirstChild("Slider"):Clone()
				slider.Parent = new_tab
				slider.ZIndex = slider.ZIndex + (windows * 10)
				
				local title = slider:FindFirstChild("Title")
				local indicator = slider:FindFirstChild("Indicator")
				local value = slider:FindFirstChild("Value")
				title.Text = slider_text

				local function updateSlider(percent)
					percent = math.clamp(percent, 0, 1)
					Resize(indicator, {Size = UDim2.new(percent, -20, 0, 4)}, 0.1)
					local sel_value = math.floor(((slider_options.max - slider_options.min) * percent) + slider_options.min)
					value.Text = tostring(sel_value)
					pcall(callback, sel_value)
				end

				local Entered = false
				slider.MouseEnter:Connect(function()
					Entered = true
					Window.Draggable = false
				end)
				slider.MouseLeave:Connect(function()
					Entered = false
					Window.Draggable = true
				end)

				local Held = false
				UIS.InputBegan:Connect(function(inputObject)
					if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
						Held = true
						spawn(function()
							if Entered then
								while Held do
									local mouse_location = gMouse()
									local x = math.clamp((mouse_location.X - slider.AbsolutePosition.X) / slider.AbsoluteSize.X, 0, 1)
									updateSlider(x)
									RS.Heartbeat:Wait()
								end
							end
						end)
					end
				end)
				UIS.InputEnded:Connect(function(inputObject)
					if inputObject.UserInputType == Enum.UserInputType.MouseButton1 then
						Held = false
					end
				end)

				function slider_data:Set(new_value)
					local percent = (new_value - slider_options.min) / (slider_options.max - slider_options.min)
					updateSlider(percent)
				end

				slider_data:Set(slider_options.default)
				return slider_data, slider
			end

			function tab_data:AddDropdown(dropdown_name, callback, dropdown_options)
				local dropdown_data = {}
				dropdown_name = tostring(dropdown_name or "Dropdown")
				callback = typeof(callback) == "function" and callback or function()end
				dropdown_options = typeof(dropdown_options) == "table" and dropdown_options or {}
				dropdown_options = {
					["multi"] = dropdown_options.multi or false
				}

				local dropdown = Prefabs:FindFirstChild("Dropdown"):Clone()
				local box = dropdown:FindFirstChild("Box")
				local objects = box:FindFirstChild("Objects")
				local indicator = dropdown:FindFirstChild("Indicator")
				
				dropdown.Parent = new_tab
				dropdown.Text = "  " .. dropdown_name
				dropdown.ZIndex = dropdown.ZIndex + (windows * 10)
				box.Size = UDim2.new(1, 0, 0, 0)

				local selected = dropdown_options.multi and {} or nil
				local open = false

				dropdown.MouseButton1Click:Connect(function()
					open = not open
					local len = math.min(#objects:GetChildren() - 1, 5) * 32
					
					if open then
						if dropdown_open then return end
						dropdown_open = true
						Resize(box, {Size = UDim2.new(1, 0, 0, len)}, 0.15)
						Resize(indicator, {Rotation = 270}, 0.15)
						objects.CanvasSize = UDim2.new(0, 0, 0, (#objects:GetChildren() - 1) * 32)
					else
						dropdown_open = false
						Resize(box, {Size = UDim2.new(1, 0, 0, 0)}, 0.15)
						Resize(indicator, {Rotation = 90}, 0.15)
					end
				end)

				function dropdown_data:Add(option_name)
					local object_data = {}
					option_name = tostring(option_name or "Option")

					local object = Prefabs:FindFirstChild("DropdownButton"):Clone()
					object.Parent = objects
					object.Text = "  " .. option_name
					object.ZIndex = object.ZIndex + (windows * 10)

					local checkbox = dropdown_options.multi and object:FindFirstChild("Checkbox") or nil
					if checkbox then
						checkbox.Visible = true
					end

					object.MouseEnter:Connect(function()
						object.BackgroundColor3 = Color3.fromRGB(47, 49, 54)
					end)
					object.MouseLeave:Connect(function()
						object.BackgroundColor3 = ui_options.secondary_background
					end)

					object.MouseButton1Click:Connect(function()
						if dropdown_options.multi then
							-- Multi-select
							if selected[option_name] then
								selected[option_name] = nil
								checkbox:FindFirstChild("Checkmark").Visible = false
								Resize(checkbox, {ImageColor3 = ui_options.secondary_background}, 0.1)
							else
								selected[option_name] = true
								checkbox:FindFirstChild("Checkmark").Visible = true
								Resize(checkbox, {ImageColor3 = ui_options.main_color}, 0.1)
							end
							
							local selected_list = {}
							for k,v in pairs(selected) do
								table.insert(selected_list, k)
							end
							pcall(callback, selected_list)
						else
							-- Single select
							selected = option_name
							dropdown.Text = "  " .. option_name
							dropdown_open = false
							open = false
							Resize(box, {Size = UDim2.new(1, 0, 0, 0)}, 0.15)
							Resize(indicator, {Rotation = 90}, 0.15)
							pcall(callback, option_name)
						end
					end)

					function object_data:Remove()
						object:Destroy()
					end

					return object, object_data
				end

				function dropdown_data:Clear()
					for i,v in pairs(objects:GetChildren()) do
						if not v:IsA("UIListLayout") then
							v:Destroy()
						end
					end
					selected = dropdown_options.multi and {} or nil
				end

				return dropdown_data, dropdown
			end

			function tab_data:AddKeybind(keybind_name, callback, keybind_options)
				local keybind_data = {}
				keybind_name = tostring(keybind_name or "Keybind")
				callback = typeof(callback) == "function" and callback or function()end
				keybind_options = typeof(keybind_options) == "table" and keybind_options or {}
				keybind_options = {
					["default"] = keybind_options.default or Enum.KeyCode.E
				}

				local keybind = Prefabs:FindFirstChild("Keybind"):Clone()
				local input = keybind:FindFirstChild("Input")
				local title = keybind:FindFirstChild("Title")
				
				keybind.Parent = new_tab
				title.Text = "  " .. keybind_name
				keybind.ZIndex = keybind.ZIndex + (windows * 10)

				local shortkeys = {
					RightControl = 'RCtrl', LeftControl = 'LCtrl',
					LeftShift = 'LShift', RightShift = 'RShift',
					MouseButton1 = "M1", MouseButton2 = "M2"
				}

				local current_key = keybind_options.default

				function keybind_data:SetKeybind(key)
					local key_name = shortkeys[key.Name] or key.Name
					input.Text = key_name
					current_key = key
				end

				UIS.InputBegan:Connect(function(inp, gpe)
					if checks.binding then
						spawn(function() wait() checks.binding = false end)
						return
					end
					if inp.KeyCode == current_key and not gpe then
						pcall(callback, current_key)
					end
				end)

				keybind_data:SetKeybind(keybind_options.default)

				input.MouseButton1Click:Connect(function()
					if checks.binding then return end
					input.Text = "..."
					checks.binding = true
					local inp = UIS.InputBegan:Wait()
					keybind_data:SetKeybind(inp.KeyCode)
				end)

				return keybind_data, keybind
			end

			function tab_data:AddFolder(folder_name)
				local folder_data = {}
				folder_name = tostring(folder_name or "Folder")

				local folder = Prefabs:FindFirstChild("Folder"):Clone()
				local button = folder:FindFirstChild("Button")
				local objects = folder:FindFirstChild("Objects")
				local toggle = button:FindFirstChild("Toggle")
				
				folder.Parent = new_tab
				button.Text = "  " .. folder_name
				folder.ZIndex = folder.ZIndex + (windows * 10)

				local open = false
				button.MouseButton1Click:Connect(function()
					open = not open
					if open then
						Resize(toggle, {Rotation = 90}, 0.15)
						objects.Visible = true
					else
						Resize(toggle, {Rotation = 0}, 0.15)
						objects.Visible = false
					end
				end)

				for i,v in pairs(tab_data) do
					folder_data[i] = function(...)
						local ret = {v(...)}
						if typeof(ret[1]) == "table" then
							ret[2].Parent = objects
							return ret[1], ret[2]
						else
							ret[1].Parent = objects
							return ret[1]
						end
					end
				end

				return folder_data, folder
			end

			return tab_data, new_tab
		end
	end

	for i, v in pairs(Window:GetDescendants()) do
		if v:IsA("GuiObject") then
			v.ZIndex = v.ZIndex + (windows * 10)
		end
	end

	return window_data, Window
end

return library
