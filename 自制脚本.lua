-- 缝合脚本（OrionLib 版本）
-- 作者：yxgh165
-- 日期：2025-07-19

-- 加载 OrionLib UI 框架
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/wsomoQaz/lua-/main/Xcccc"))()

-- 创建主窗口
local Window = OrionLib:MakeWindow({
    IntroText = "自制脚本", -- 加载动画
    Name = "自制脚本 - " .. identifyexecutor(), -- 脚本名字
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "StitchConfig"
})

-- 创建 Tab 页面
local Tab = Window:MakeTab({
    Name = "功能",
    Icon = "rbxassetid://7733779610",
    PremiumOnly = false
})

-- 示例按钮
Tab:AddButton({
    Name = "打印 QQ号",
    Callback = function()
        print("913348285")
    end
})

-- 示例 Toggle
Tab:AddToggle({
    Name = "自动跳跃",
    Default = false,
    Callback = function(Value)
        _G.AutoJump = Value
        while _G.AutoJump do
            local char = game.Players.LocalPlayer.Character
            if char and char:FindFirstChild("Humanoid") then
                char.Humanoid.Jump = true
            end
            wait(1)
        end
    end
})

-- 示例 Slider
Tab:AddSlider({
    Name = "移动速度",
    Min = 16,
    Max = 100,
    Default = 16,
    Increment = 1,
    Callback = function(Value)
        local char = game.Players.LocalPlayer.Character
        if char and char:FindFirstChild("Humanoid") then
            char.Humanoid.WalkSpeed = Value
        end
    end
})

-- 示例 Textbox
Tab:AddTextbox({
    Name = "输入名字",
    Default = "Player1",
    TextDisappear = true,
    Callback = function(Value)
        print("你输入的名字是:", Value)
    end
})

-- 示例 Dropdown
Tab:AddDropdown({
    Name = "选择地图",
    Default = "地图1",
    Options = {"地图1", "地图2", "地图3"},
    Callback = function(Value)
        print("选择了地图:", Value)
    end
})

-- 示例 Label
Tab:AddLabel("这是注释说明文字")

-- 创建第二个 Tab
local Tab2 = Window:MakeTab({
    Name = "XA脚本",
    Icon = "rbxassetid://7733779610",
    PremiumOnly = false
})

-- 修复后的按钮
Tab2:AddButton({
    Name = "script name",
    Callback = function()
        loadstring(game:HttpGet("https://xingtaiduan.pythonanywhere.com/Loader"))()
    end
})

-- 保持窗口打开
OrionLib:Init()
