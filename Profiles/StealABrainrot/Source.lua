local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

function gradient(text, startColor, endColor)
    local result = ""
    local length = #text

    for i = 1, length do
        local t = (i - 1) / math.max(length - 1, 1)
        local r = math.floor((startColor.R + (endColor.R - startColor.R) * t) * 255)
        local g = math.floor((startColor.G + (endColor.G - startColor.G) * t) * 255)
        local b = math.floor((startColor.B + (endColor.B - startColor.B) * t) * 255)

        local char = text:sub(i, i)
        result = result .. "<font color=\"rgb(" .. r ..", " .. g .. ", " .. b .. ")\">" .. char .. "</font>"
    end

    return result
end

local Confirmed = false



local Window = WindUI:CreateWindow({
    Title = "Phantom Flux Hub",
    Icon = "rbxassetid://103541350088624",
    Author = "Phantom Flux Team.",
    Folder = "PhantomFluxHub",
    Size = UDim2.fromOffset(580, 340),
    Transparent = true,
    Theme = "Dark",
    SideBarWidth = 200,
    HasOutline = false,
})

local Tabs = {
	Info = Window:Tab({ Title = "Info", Icon = "info" }),
    Main = Window:Tab({ Title = "Main", Icon = "book" }),
     Esp = Window:Tab({ Title = "Esp", Icon = "clipboard" }),
     Visual = Window:Tab({ Title = "Visual", Icon = "compass" }),
      Misc = Window:Tab({ Title = "Misc", Icon = "settings" }),
}

Window:SelectTab(1)


Tabs.Info:Button({
    Title = "Copy Link Discord",
    Callback = function()
      setclipboard("discord.gg/yGEzGGNyeM")         
    end
})


Tabs.Main:Section({Title = "Tool"})


local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")
local RootPart = Character:WaitForChild("HumanoidRootPart")
local Humanoid = Character:WaitForChild("Humanoid")
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Player = Players.LocalPlayer
local highlights = {}
local espStorage = {}
local lteInstances = {}
local floatConn, timerConn, speedConn
local playerPlot = nil
local plotsFolder = workspace:FindFirstChild("Plots")


local selectedTool = nil


local toolOptions = {}
for _, item in pairs(ReplicatedStorage:WaitForChild("Items"):GetChildren()) do
    if item:IsA("Tool") then
        table.insert(toolOptions, item.Name)
    end
end

Tabs.Main:Dropdown({
    Title = "Select Tool",
    Values = toolOptions,
    Value = toolOptions[1],
    Callback = function(Value)
        selectedTool = Value
    end
})


Tabs.Main:Button({
    Title = "Get Select Tool",
    Callback = function()
        if selectedTool and Player.Character and Player.Character:FindFirstChildOfClass("Humanoid") then
            local tool = ReplicatedStorage.Items:FindFirstChild(selectedTool)
            if tool and tool:IsA("Tool") then
                local clonedTool = tool:Clone()
                clonedTool.Parent = Player.Backpack
            else
            end
        else
        end
    end
})


Tabs.Main:Button({
    Title = "Get All Tool",
    Callback = function()
        if Player.Character and Player.Character:FindFirstChildOfClass("Humanoid") then
            for _, item in pairs(game.ReplicatedStorage.Items:GetChildren()) do
                if item:IsA("Tool") then
                    local clonedTool = item:Clone()
                    clonedTool.Parent = Player.Backpack
                end
            end
        end
    end
})

Tabs.Main:Section({Title = "Speed"})




local speedBoostEnabled = false
local DEFAULT_SPEED = 16
local BOOSTED_SPEED = 50



Tabs.Main:Toggle({    
    Title = "Boost Speed",    
    Value = false,    
    Callback = function(Value)    
        speedBoostEnabled = Value
        if speedConn then
            speedConn:Disconnect()
            speedConn = nil
        end
        
        if Value then
            speedConn = RunService.Heartbeat:Connect(function()
                local character = LocalPlayer.Character
                if character then
                    local humanoid = character:FindFirstChildOfClass("Humanoid")
                    local rootPart = character:FindFirstChild("HumanoidRootPart")
                    
                    if humanoid and rootPart and humanoid.MoveDirection.Magnitude > 0 then
                        local moveDir = humanoid.MoveDirection
                        rootPart.Velocity = Vector3.new(
                            moveDir.X * BOOSTED_SPEED,
                            rootPart.Velocity.Y,
                            moveDir.Z * BOOSTED_SPEED
                        )
                    end
                end
            end)
        end
    end    
})

Tabs.Main:Section({Title = "Auto Steal"})

local autoSteal = false
local autoStealThread
local currentTargetPlot = nil
local unlockListenerConnection
local lastUnlockedNotify = 0
local isReturningToBase = false
local successfulSteals = 0

local function handleRagdoll(_, newState)
    if autoSteal and newState == Enum.HumanoidStateType.Physics then
        if autoStealThread then
            task.cancel(autoStealThread)
            autoStealThread = nil
        end
        isReturningToBase = false
        currentTargetPlot = nil

        WindUI:Notify({
            Title = "Auto Steal",
            Content = "Ragdolled! Resetting character to find a new target.",
            Duration = 3,
        })
        
        local char = LocalPlayer.Character
        if char then
            local hum = char:FindFirstChildOfClass("Humanoid")
            if hum then
                hum.Health = 0
            end
        end
    end
end

local function onCharacterAdded(character)
    local humanoid = character:WaitForChild("Humanoid")
    humanoid.StateChanged:Connect(handleRagdoll)

    if autoSteal then
        if autoStealThread then
            task.cancel(autoStealThread)
            autoStealThread = nil
        end
        currentTargetPlot = nil
        isReturningToBase = false
        WindUI:Notify({
            Title = "Auto Steal",
            Content = "Character respawned. Resuming auto-steal.",
            Duration = 3,
        })
        task.wait(1) 
        
        SetupUnlockListener()
        
        local targetPlot, podiums = FindUnlockedBase()
        if targetPlot and podiums then
            StartStealSequence(targetPlot, podiums)
        else
            WindUI:Notify({
                Title = "Auto Steal",
                Content = "No unlocked bases found. Monitoring for unlocks...",
                Duration = 3,
            })
        end
    end
end

onCharacterAdded(LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait())
LocalPlayer.CharacterAdded:Connect(onCharacterAdded)

function FindUnlockedBase()
    for _, plot in pairs(workspace.Plots:GetChildren()) do
        local yourBase = plot:FindFirstChild('YourBase', true)
        if yourBase and yourBase.Enabled then
            continue 
        end
        
        local time_label = plot:FindFirstChild('RemainingTime', true)
        if time_label and time_label:IsA('TextLabel') and time_label.Text == '0s' then
            local podiums = plot:FindFirstChild('AnimalPodiums')
            if podiums then
                
                local hasStealPrompt = false
                for _, descendant in pairs(podiums:GetDescendants()) do
                    if descendant:IsA('ProximityPrompt') and descendant.ActionText == "Steal" and descendant.Enabled then
                        hasStealPrompt = true
                        break
                    end
                end
                
                if hasStealPrompt then
                    return plot, podiums
                end
            end
        end
    end
    return nil, nil
end

function IsPlotUnlocked(plot)
    if not plot or not plot.Parent then return false end
    
    local time_label = plot:FindFirstChild("RemainingTime", true)
    if time_label and time_label:IsA("TextLabel") then
        return time_label.Text == "0s"
    end
    return false
end

function GetLocalPlayerBase()
    for _, plot in pairs(workspace.Plots:GetChildren()) do
        local yourBase = plot:FindFirstChild('YourBase', true)
        if yourBase and yourBase.Enabled then
            return plot
        end
    end
    return nil
end

function GoToMoney()
    local base = GetLocalPlayerBase()
    if not base then return false end
    local ev = ReplicatedStorage:FindFirstChild("Packages", true)
    if ev then
        ev = ev:FindFirstChild("Net", true)
        if ev then
            ev = ev:FindFirstChild("RE/PlotService/ClaimCoins", true)
        end
    end
    if not ev then return false end
    local animalPodiums = base:FindFirstChild("AnimalPodiums")
    if not animalPodiums then return false end
    local collected = false
    for _, podium in pairs(animalPodiums:GetChildren()) do
        local status = pcall(function()
            ev:FireServer(podium.Name)
        end)
        if status then collected = true end
        task.wait(0.2)
    end
    return collected
end

function LockBaseOnce()
    local base = GetLocalPlayerBase()
    if not base then return false end
    local label = base:FindFirstChild("RemainingTime", true)
    if not label or not label:IsA("TextLabel") then return false end
    if label.Text ~= "0s" then return true end
    local hitbox = base:FindFirstChild("Hitbox", true)
    if not hitbox then return false end
    MoveToPosition(hitbox.Position)
    local char = LocalPlayer.Character
    local hum = char and char:FindFirstChildOfClass("Humanoid")
    if not hum then return false end
    local t0 = tick()
    while label.Text == "0s" and tick() - t0 < 4 do
        hum.Jump = true
        task.wait(0.1)
    end
    return label.Text ~= "0s"
end

function TweenTo(position)
    local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local hrp = char:WaitForChild('HumanoidRootPart')
    local humanoid = char:WaitForChild('Humanoid')
    
    if not hrp or not humanoid then return false end
    
    local path = game:GetService("PathfindingService"):CreatePath({
        AgentRadius = 2,
        AgentHeight = 5,
        AgentCanJump = true,
        Costs = {
            Water = 20,
            Grass = 5,
            Mud = 15,
        }
    })
    
    local success, errorMsg = pcall(function()
        path:ComputeAsync(hrp.Position, position)
    end)
    
    if not success or path.Status ~= Enum.PathStatus.Success then
        return false
    end
    
    local waypoints = path:GetWaypoints()
    if #waypoints <= 1 then return false end
    
    local MAX_SPEED = 40 
    local success = true
    
    local optimizedWaypoints = {}
    local skipInterval = math.min(3, math.floor(#waypoints / 3)) 
    
    for i = 1, #waypoints do
        if i == 1 or i == #waypoints or i % skipInterval == 0 or waypoints[i].Action == Enum.PathWaypointAction.Jump then
            table.insert(optimizedWaypoints, waypoints[i])
        end
    end
    
    if #optimizedWaypoints > 0 and optimizedWaypoints[#optimizedWaypoints] ~= waypoints[#waypoints] then
        table.insert(optimizedWaypoints, waypoints[#waypoints])
    end
    
    waypoints = optimizedWaypoints
    
    for i, waypoint in ipairs(waypoints) do
        if not autoSteal then return false end
        
        if i == 1 then continue end
        
        local waypointPos = waypoint.Position + Vector3.new(0, humanoid.HipHeight, 0)
        local distance = (hrp.Position - waypointPos).Magnitude
        
        local duration = distance / MAX_SPEED
        duration = math.clamp(duration, 0.05, 1.5) 
        
        local tweenInfo = TweenInfo.new(
            duration,
            Enum.EasingStyle.Linear, 
            Enum.EasingDirection.Out,
            0,
            false,
            0
        )
        
        if waypoint.Action == Enum.PathWaypointAction.Jump then
            humanoid.Jump = true
            task.wait(0.05) 
        end
        
        local tween = TweenService:Create(hrp, tweenInfo, {
            CFrame = CFrame.new(waypointPos)
        })
        
        local completed = false
        local connection
        connection = tween.Completed:Connect(function()
            completed = true
            if connection then connection:Disconnect() end
        end)
        
        tween:Play()
        
        local startTime = tick()
        local maxWaitTime = duration * 1.2 
        
        while not completed and tick() - startTime < maxWaitTime and autoSteal do
            task.wait(0.05) 
            
            if not char.Parent or not hrp.Parent or humanoid.Health <= 0 then
                tween:Cancel()
                if connection then connection:Disconnect() end
                return false
            end
            
            if humanoid:GetState() == Enum.HumanoidStateType.Physics then
                tween:Cancel()
                if connection then connection:Disconnect() end
                humanoid.Jump = true
                task.wait(0.1) 
                break 
            end
        end
        
        if not completed then
            tween:Cancel()
            if connection then connection:Disconnect() end
            
            if tick() - startTime >= maxWaitTime then
                success = false
                break
            end
        end
        
        task.wait(0.02) 
    end
    
    return success
end

function MoveToPosition(position)
    local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local humanoid = char:WaitForChild('Humanoid')
    local hrp = char:WaitForChild('HumanoidRootPart')

    if not humanoid or not hrp then return false end

    local path = game:GetService("PathfindingService"):CreatePath({
        AgentRadius = 3,
        AgentHeight = 6,
        AgentCanJump = true,
        AgentCanClimb = true
    })

    local success, err = pcall(function()
        path:ComputeAsync(hrp.Position, position)
    end)

    if not success or path.Status ~= Enum.PathStatus.Success then
        return false 
    end

    local waypoints = path:GetWaypoints()

    for i, waypoint in ipairs(waypoints) do
        if not autoSteal then return false end
        
        if waypoint.Action == Enum.PathWaypointAction.Jump then
            humanoid.Jump = true
        end
        
        local bv = Instance.new("BodyVelocity")
        bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        bv.Velocity = (waypoint.Position - hrp.Position).Unit * 50
        bv.Parent = hrp
        
        local bg = Instance.new("BodyGyro")
        bg.MaxTorque = Vector3.new(0, math.huge, 0)
        bg.CFrame = CFrame.new(hrp.Position, waypoint.Position)
        bg.Parent = hrp

        local timeWaited = 0
        while (Vector2.new(hrp.Position.X, hrp.Position.Z) - Vector2.new(waypoint.Position.X, waypoint.Position.Z)).Magnitude > 3 and autoSteal and timeWaited < 5 do
            task.wait(0.1)
            timeWaited = timeWaited + 0.1
            bg.CFrame = CFrame.new(hrp.Position, waypoint.Position)
            bv.Velocity = (waypoint.Position - hrp.Position).Unit * 50
        end

        bv:Destroy()
        bg:Destroy()

        if not autoSteal then return false end

        if (Vector2.new(hrp.Position.X, hrp.Position.Z) - Vector2.new(waypoint.Position.X, waypoint.Position.Z)).Magnitude > 3 then
            return false
        end
    end

    return true
end

function WalkTo(position)
    local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local humanoid = char:WaitForChild('Humanoid')
    local hrp = char:WaitForChild('HumanoidRootPart')
    local path = game:GetService("PathfindingService"):CreatePath({AgentRadius = 2, AgentHeight = 5})
    local ok, result = pcall(function()
        path:ComputeAsync(hrp.Position, position)
    end)
    
    if ok and path.Status == Enum.PathStatus.Success then
        for _, waypoint in ipairs(path:GetWaypoints()) do
            if not autoSteal then return false end
            humanoid:MoveTo(waypoint.Position)
            if waypoint.Action == Enum.PathWaypointAction.Jump then
                humanoid.Jump = true
            end
            local moveTimeout = humanoid.MoveToFinished:Wait(5) 
            if not moveTimeout then
                return false
            end
        end
        return true
    else
        return false
    end
end

function TriggerStealPrompt(podiums)
    if not podiums then return false end

    local char = LocalPlayer.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    if not hrp then return false end

    for _, prompt in pairs(podiums:GetDescendants()) do
        if prompt:IsA('ProximityPrompt') and prompt.Enabled and prompt.ActionText == "Steal" then
            
            local origLine = prompt.RequiresLineOfSight
            local origDist = prompt.MaxActivationDistance
            prompt.RequiresLineOfSight = false
            prompt.MaxActivationDistance = 1000

            local startPos = hrp.Position
            local holdDuration = prompt.HoldDuration
            prompt:InputHoldBegin()

            local elapsed = 0
            local totalHold = math.max(holdDuration, 0.2) 
            while elapsed < totalHold do
                task.wait(0.05)
                elapsed += 0.05
                if (hrp.Position - startPos).Magnitude > 1 then
                    prompt:InputHoldEnd()
                    
                    prompt.RequiresLineOfSight = origLine
                    prompt.MaxActivationDistance = origDist
                    return false
                end
            end

            prompt:InputHoldEnd()
            
            prompt.RequiresLineOfSight = origLine
            prompt.MaxActivationDistance = origDist

            return true
        end
    end
    return false
end

function SetupUnlockListener()
    if unlockListenerConnection then
        unlockListenerConnection:Disconnect()
        unlockListenerConnection = nil
    end
    
    unlockListenerConnection = RunService.Heartbeat:Connect(function()
        if isReturningToBase then return end
        
        if not autoSteal then
            if unlockListenerConnection then
                unlockListenerConnection:Disconnect()
                unlockListenerConnection = nil
            end
            return
        end
        
        if currentTargetPlot and not IsPlotUnlocked(currentTargetPlot) then
            if autoStealThread then
                task.cancel(autoStealThread)
                autoStealThread = nil
            end
            currentTargetPlot = nil
            
            WindUI:Notify({
                Title = "Auto Steal",
                Content = "Target base locked. Resetting character...",
                Duration = 3,
            })

            local char = LocalPlayer.Character
            if char then
                local hum = char:FindFirstChildOfClass("Humanoid")
                if hum then
                    hum.Health = 0
                end
            end
        end
        
        if not currentTargetPlot then
            local targetPlot, podiums = FindUnlockedBase()
            if targetPlot and podiums and not isReturningToBase then
                if tick() - lastUnlockedNotify > 5 then
                    WindUI:Notify({
                        Title = "Auto Steal",
                        Content = "Found unlocked base. Starting steal sequence...",
                        Duration = 3,
                    })
                    lastUnlockedNotify = tick()
                end
                StartStealSequence(targetPlot, podiums)
            end
        end
    end)
end

function StartStealSequence(targetPlot, podiums)
    if autoStealThread then
        task.cancel(autoStealThread)
    end
    currentTargetPlot = targetPlot
    
    autoStealThread = task.spawn(function()
        local targetPosition
        
        for _, obj in pairs(podiums:GetDescendants()) do
            if obj:IsA('ProximityPrompt') and obj.ActionText == "Steal" then
                local parent = obj.Parent
                while parent and not parent:IsA("BasePart") do
                    parent = parent.Parent
                end
                if parent and parent:IsA("BasePart") then
                    targetPosition = parent.Position
                    break
                end
            end
        end
        
        if not targetPosition then
            local firstPart = podiums:FindFirstChildWhichIsA("BasePart", true)
            if firstPart then
                targetPosition = firstPart.Position
            else
                currentTargetPlot = nil
                return
            end
        end
        
        if MoveToPosition(targetPosition) then
            local char = LocalPlayer.Character
            local hrp = char and char:WaitForChild("HumanoidRootPart")

            if not hrp then
                currentTargetPlot = nil
                return
            end
            
            hrp.Anchored = true
            hrp.Velocity = Vector3.new(0,0,0)
            hrp.RotVelocity = Vector3.new(0,0,0)
            task.wait(0.2)
            
            if TriggerStealPrompt(podiums) then
                hrp.Anchored = false
                isReturningToBase = true

                WindUI:Notify({
                    Title = "Auto Steal",
                    Content = "Brainrot stolen! Returning to base...",
                    Duration = 2,
                })

                local playerBase = GetLocalPlayerBase()
                if playerBase then
                    local baseHitbox = playerBase:FindFirstChild("Hitbox", true)
                    if baseHitbox then
                        
                        if MoveToPosition(baseHitbox.Position + Vector3.new(0, 3, 0)) then
                            WindUI:Notify({
                                Title = "Auto Steal",
                                Content = "Successfully returned to base!",
                                Duration = 2,
                            })
                            successfulSteals = successfulSteals + 1
                            GoToMoney()
                            if LockBaseOnce() then
                                WindUI:Notify({ Title = "Auto Steal", Content = "Base locked.", Duration = 2 })
                            else
                                WindUI:Notify({ Title = "Auto Steal", Content = "Failed to lock base automatically.", Duration = 2 })
                            end
                        else
                            WindUI:Notify({
                                Title = "Auto Steal",
                                Content = "Failed to return to base, but item was stolen.",
                                Duration = 2,
                            })
                        end
                    end
                end
                
                isReturningToBase = false
                currentTargetPlot = nil
            else
                hrp.Anchored = false
                notify("failedSteal", "Auto Steal", "Failed to steal brainrot. Finding new target...", 2)
                currentTargetPlot = nil
            end
        else
             currentTargetPlot = nil
        end
    end)
end

Tabs.Main:Toggle({    
    Title = "Auto Steal",    
    Value = false,    
    Callback = function(state)    
        autoSteal = state
        if state then
            local targetPlot, podiums = FindUnlockedBase()
            if targetPlot and podiums then
                StartStealSequence(targetPlot, podiums)
            end
            
            SetupUnlockListener()
            
            if not targetPlot then
                WindUI:Notify({
                    Title = "Auto Steal",
                    Content = "No unlocked bases found. Monitoring for unlocks...",
                    Duration = 3,
                })
            end
        else
            if unlockListenerConnection then
                unlockListenerConnection:Disconnect()
                unlockListenerConnection = nil
            end
            if autoStealThread then
                task.cancel(autoStealThread)
                autoStealThread = nil
            end
            WindUI:Notify({
                Title = "Auto Steal",
                Content = "Auto Steal disabled",
                Duration = 3,
            })
        end
    end    
})

local stats = Tabs.Main:Section({
    Title = "Successful Steals: 0"
})

RunService.Heartbeat:Connect(function()
    stats:SetTitle("Successful Steals: " .. successfulSteals)
end)


Tabs.Main:Section({Title = "Local"})


local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")

local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

local baseLockEnabled = false
local onoffgui1 = false


local displayGui = Instance.new("ScreenGui")
displayGui.Name = "BaseLockDisplay"
displayGui.ResetOnSpawn = false
displayGui.Parent = PlayerGui

local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(0, 50, 0, 70)
textLabel.Position = UDim2.new(0.5, -100, 0.1, 0)
textLabel.BackgroundTransparency = 1
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel.TextScaled = true
textLabel.Font = Enum.Font.SourceSansBold
textLabel.Text = "Loading..."
textLabel.Active = true
textLabel.Draggable = true
textLabel.Visible = onoffgui1
textLabel.Parent = displayGui


local function findBaseTextLabel()
    local playerName = Player.Name
    local targetText = playerName .. "'s Base"

    for _, descendant in pairs(Workspace:GetDescendants()) do
        if descendant:IsA("TextLabel") and descendant.Text == targetText then
            return descendant
        end
    end
    return nil
end


local function updateBaseLockVisual()
    if onoffgui1 then
        local textLabelFound = findBaseTextLabel()
        if textLabelFound then
            local touchPart = textLabelFound.Parent.Parent.Parent.Parent:FindFirstChild("Purchases")
            if touchPart then
                touchPart = touchPart:FindFirstChild("PlotBlock")
                if touchPart then
                    touchPart = touchPart:FindFirstChild("Main")
                    if touchPart and touchPart:FindFirstChild("BillboardGui") then
                        local remainingTimeText = touchPart.BillboardGui:FindFirstChild("RemainingTime")
                        if remainingTimeText and remainingTimeText:IsA("TextLabel") then
                            textLabel.Text = "Locked: " .. remainingTimeText.Text
                        else
                            textLabel.Text = "Locked: No Remaining Time"
                        end
                    else
                        textLabel.Text = "Locked: No BillboardGui"
                    end
                else
                    textLabel.Text = "Locked: No PlotBlock"
                end
            else
                textLabel.Text = "Locked: No Purchases"
            end
        else
            textLabel.Text = "Locked: No Base Found"
        end
    end
end


RunService.RenderStepped:Connect(function()
    textLabel.Visible = onoffgui1
    if onoffgui1 then
        updateBaseLockVisual()
    end
end)




Tabs.Main:Button({
    Title = "Tween To Base",
    Callback = function()
        if Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") then
            local textLabel = findBaseTextLabel()
            if textLabel then
                local basePart = textLabel.Parent.Parent.Parent
                if basePart:IsA("BasePart") or basePart:IsA("Model") then
                    local targetCFrame = basePart:IsA("BasePart") and basePart.CFrame + Vector3.new(0, 5, 0) or basePart:GetPrimaryPartCFrame() + Vector3.new(0, 5, 0)
                    local tweenInfo = TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut)
                    local tween = TweenService:Create(Player.Character.HumanoidRootPart, tweenInfo, {CFrame = targetCFrame})
                    tween:Play()
                else
                end
            else
            end
        else
        end
    end
})




Tabs.Main:Toggle({    
    Title = "Show Base Lock",    
    Value = false,    
    Callback = function(state)    
    onoffgui1 = state
    end
   })


Tabs.Main:Section({Title = "Sell"})




local sellSlots = {}
for i = 1, 10 do
    table.insert(sellSlots, tostring(i))
end

local selectedSlot = 1 



Tabs.Main:Dropdown({
    Title = "Select Branrot Sell",
    Values = sellSlots,
    Value = "1",
    Callback = function(Value) 
selectedSlot = tonumber(Value)
    end
})






Tabs.Main:Button({
    Title = "Auto Sell Branrot Select",
    Callback = function()
        local args = { selectedSlot }
        game:GetService("ReplicatedStorage")
            :WaitForChild("Packages")
            :WaitForChild("Net")
            :WaitForChild("RE/PlotService/Sell")
            :FireServer(unpack(args))
    end
})




Tabs.Main:Section({Title = "Buy item"})




local selectedItem = "Slap"  
local itemList = {
"Slap",
"Speed Coil",
"Trap",
"Iron Slap",
"Gravity Coil",
"Bee Launcher",
"Gold Slap",
"Coil Combo",
"Rage Table",
"Diamond Slap",
"Grapple Hook",
"Taser Gun",
"Emerald Slap",
"Invisibility Cloak",
"Boogie Bomb",
"Ruby Slap",
"Medusa's Head",
"Dark Matter Slap",
"Web Slinger",
"Flame Slap",
"Quantum Cloner",
"All Seeing Sentry",
"Nuclear Slap",
"Rainbowrath Sword",
"Body Swap Potion",
"Splatter Slap",
"Paintball Gun"
}

Tabs.Main:Dropdown({
    Title = "Select Item Buy",
    Values = itemList,
    Value = selectedItem,
    Callback = function(Value)
        selectedItem = Value
    end
})


Tabs.Main:Button({
    Title = "Auto Buy Item Select",
    Callback = function()
        if selectedItem then
            local args = { selectedItem }
            game:GetService("ReplicatedStorage")
                :WaitForChild("Packages")
                :WaitForChild("Net")
                :WaitForChild("RF/CoinsShopService/RequestBuy")
                :InvokeServer(unpack(args))
        end
    end
})



Tabs.Esp:Section({Title = "Base"})


local function findPlayerPlot()
    if not plotsFolder then return nil end
    for _, plot in plotsFolder:GetChildren() do
        local yourBase = plot:FindFirstChild("YourBase", true)
        if yourBase and yourBase:IsA("BoolValue") and yourBase.Value then
            return plot.Name
        end
    end
    return nil
end

local function createBaseESP(plot, mainPart)
    if lteInstances[plot.Name] then
        lteInstances[plot.Name]:Destroy()
    end

    local billboard = Instance.new("BillboardGui")
    billboard.Name = "PlotESP_"..plot.Name
    billboard.Size = UDim2.new(0, 180, 0, 40)
    billboard.StudsOffset = Vector3.new(0, 5, 0)
    billboard.AlwaysOnTop = true
    billboard.Adornee = mainPart
    billboard.MaxDistance = 1000
    billboard.Parent = plot

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(1, 0, 1, 0)
    frame.BackgroundTransparency = 0.8
    frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    frame.BorderSizePixel = 0

    local label = Instance.new("TextLabel")
    label.Name = "Label"
    label.Size = UDim2.new(1, -10, 1, -10)
    label.Position = UDim2.new(0, 5, 0, 5)
    label.BackgroundTransparency = 1
    label.TextScaled = true
    label.Font = Enum.Font.GothamBold
    label.TextStrokeTransparency = 0.5
    label.TextStrokeColor3 = Color3.new(0, 0, 0)
    label.Parent = frame

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 6)
    corner.Parent = frame

    frame.Parent = billboard
    lteInstances[plot.Name] = billboard

    return billboard
end

local espThread = nil


Tabs.Esp:Toggle({    
    Title = "Esp Base",    
    Value = false,    
    Callback = function(Value)    
                if Value then
            playerPlot = findPlayerPlot()
            if espThread then
                espThread:Disconnect()
            end
            espThread = RunService.RenderStepped:Connect(function()
                if not plotsFolder then return end
                
                for _, plot in plotsFolder:GetChildren() do
                    local purchases = plot:FindFirstChild("Purchases")
                    local plotBlock = purchases and purchases:FindFirstChild("PlotBlock")
                    local mainPart = plotBlock and plotBlock:FindFirstChild("Main")
                    local billboardGui = mainPart and mainPart:FindFirstChild("BillboardGui")
                    local timeLabel = billboardGui and billboardGui:FindFirstChild("RemainingTime")

                    if timeLabel and mainPart then
                        local billboard = lteInstances[plot.Name] or createBaseESP(plot, mainPart)
                        local frame = billboard:FindFirstChild("Frame")
                        local label = frame and frame:FindFirstChild("Label")
                        local isUnlocked = (timeLabel.Text == "0s")
                        
                        if label then
                            label.Text = isUnlocked and "Unlocked" or ("Locked: "..timeLabel.Text)
                            if plot.Name == playerPlot then
                                label.TextColor3 = Color3.fromRGB(0, 255, 0)
                            elseif isUnlocked then
                                label.TextColor3 = Color3.fromRGB(255, 50, 50)
                            else
                                label.TextColor3 = Color3.fromRGB(255, 255, 0)
                            end
                        end
                    elseif lteInstances[plot.Name] then
                        lteInstances[plot.Name]:Destroy()
                        lteInstances[plot.Name] = nil
                    end
                end
            end)
        else
            if espThread then
                espThread:Disconnect()
                espThread = nil
            end
            for _, instance in pairs(lteInstances) do
                instance:Destroy()
            end
            lteInstances = {}
        end
    end    
})

Tabs.Esp:Section({Title = "Player"})


local function createPlayerESP(player)
    if not player.Character then return end

    local highlight = Instance.new("Highlight")
    highlight.Parent = player.Character
    highlight.FillTransparency = 1
    highlight.OutlineColor = Color3.new(1, 1, 1)
    highlight.OutlineTransparency = 0
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop

    highlights[player] = highlight

    player.CharacterAdded:Connect(function(character)
        if highlights[player] then
            local newHighlight = highlight:Clone()
            newHighlight.Parent = character
            highlights[player] = newHighlight
        end
    end)
end


Tabs.Esp:Toggle({    
    Title = "Esp Highlight",    
    Value = false,    
    Callback = function(Value)    
            if Value then
            for _, player in ipairs(Players:GetPlayers()) do
                if player ~= LocalPlayer then
                    createPlayerESP(player)
                end
            end
        else
            for player, highlight in pairs(highlights) do
                highlight:Destroy()
            end
            highlights = {}
        end
    end
   })
   
   local function createNameTag(targetPlayer)
    if not targetPlayer.Character then return end

    local character = targetPlayer.Character
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    local billboardGui = Instance.new("BillboardGui")
    local textLabel = Instance.new("TextLabel")

    billboardGui.Name = "PlayerESP"
    billboardGui.Adornee = humanoidRootPart
    billboardGui.Size = UDim2.new(0, 200, 0, 50)
    billboardGui.StudsOffset = Vector3.new(0, 2.5, 0)
    billboardGui.AlwaysOnTop = true
    billboardGui.LightInfluence = 0
    billboardGui.MaxDistance = 1000

    textLabel.Name = "NameTag"
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.Text = targetPlayer.Name
    textLabel.TextColor3 = Color3.new(1, 1, 1)
    textLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
    textLabel.TextStrokeTransparency = 0.5
    textLabel.Font = Enum.Font.Gotham
    textLabel.TextSize = 18

    textLabel.Parent = billboardGui
    billboardGui.Parent = character

    espStorage[targetPlayer] = billboardGui

    targetPlayer.CharacterAdded:Connect(function(newChar)
        if espStorage[targetPlayer] then
            billboardGui:Destroy()
            createNameTag(targetPlayer)
        end
    end)
end

   
   Tabs.Esp:Toggle({    
    Title = "Esp Name",    
    Value = false,    
    Callback = function(Value)    
            if Value then
            for _, targetPlayer in ipairs(Players:GetPlayers()) do
                if targetPlayer ~= LocalPlayer then
                    createNameTag(targetPlayer)
                end
            end
        else
            for _, esp in pairs(espStorage) do
                esp:Destroy()
            end
            espStorage = {}
        end
    end
   })
   
   
   
   local infJumpEnabled = false
local lastJumpTime = 0
local COOLDOWN = 0.5
local JUMP_FORCE = 50
local JUMP_DURATION = 0.2

local function safeAirJump()
    if not infJumpEnabled then return end
    local now = os.clock()
    if now - lastJumpTime < COOLDOWN then return end

    local character = LocalPlayer.Character
    if not character then return end

    local humanoid = character:FindFirstChildOfClass("Humanoid")
    local rootPart = character:FindFirstChild("HumanoidRootPart")
    if not humanoid or not rootPart then return end

    lastJumpTime = now

    if rootPart:CanSetNetworkOwnership() then
        rootPart:SetNetworkOwner(LocalPlayer)
    end

    local bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.MaxForce = Vector3.new(0, math.huge, 0)
    bodyVelocity.Velocity = Vector3.new(0, JUMP_FORCE, 0)
    bodyVelocity.Parent = rootPart

    local connection
    connection = RunService.Heartbeat:Connect(function()
        if os.clock() - lastJumpTime >= JUMP_DURATION then
            bodyVelocity:Destroy()
            if rootPart:CanSetNetworkOwnership() then
                rootPart:SetNetworkOwner(nil)
            end
            connection:Disconnect()
        end
    end)
end

local noclipConnection = nil
local function noclip()
    local player = Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    for _, part in pairs(character:GetDescendants()) do
        if part:IsA("BasePart") and part.CanCollide == true then
            part.CanCollide = false
        end
    end
end
local function toggleNoclip(Value)
    getgenv().NoclipEnabled = Value
    if Value then
        if not noclipConnection then
            noclipConnection = RunService.Stepped:Connect(noclip)
        end
    else
        if noclipConnection then
            noclipConnection:Disconnect()
            noclipConnection = nil
        end
    end
end

   
   
Tabs.Visual:Toggle({
    Title = "Inf Jump",
    Value = false, 
    Callback = function(Value)
infJumpEnabled = Value
        if Value then
            UserInputService.JumpRequest:Connect(safeAirJump)
        end
    end
})


Tabs.Visual:Toggle({
    Title = "No Clip",
    Value = false, 
    Callback = toggleNoclip
})




Tabs.Visual:Button({
    Title = "Teleport To Sky",
    Callback = function()
        local character = Players.LocalPlayer.Character
        if character then
            local root = character:FindFirstChild("HumanoidRootPart")
            if root then
                root.CFrame = root.CFrame + Vector3.new(0, 150, 0)
            end
        end
    end
})

Tabs.Visual:Button({
    Title = "Teleport Down",
    Callback = function()
        local character = Players.LocalPlayer.Character
        if character then
            local root = character:FindFirstChild("HumanoidRootPart")
            if root then
                root.CFrame = root.CFrame - Vector3.new(0, 189, 0)
            end
        end
    end
})

Tabs.Visual:Button({
	 Title = "Tween Steal",
    Callback = function()
    local base = nil
    for _, v in pairs(workspace:WaitForChild("Plots"):GetChildren()) do
        local yourBase = v:FindFirstChild("YourBase", true)
        if yourBase and yourBase.Enabled then
            base = v:FindFirstChild("DeliveryHitbox", true)
            break
        end
    end

    if base and LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and LocalPlayer.Character:FindFirstChild("Humanoid") then
        local hrp = LocalPlayer.Character.HumanoidRootPart
        local humanoid = LocalPlayer.Character.Humanoid
        local tppos = Vector3.new(base.Position.X, hrp.Position.Y, base.Position.Z)

        local tweenInfo = TweenInfo.new(
            (tppos - hrp.Position).Magnitude / humanoid.WalkSpeed,
            Enum.EasingStyle.Linear,
            Enum.EasingDirection.Out
        )

        local tween = TweenService:Create(hrp, tweenInfo, {
            CFrame = CFrame.new(tppos),
            Velocity = Vector3.new(0, 0, 0)
        })

        tween:Play()
    end
end
})





Tabs.Visual:Section({Title = "Gui"})







Tabs.Visual:Button({
    Title = "Steal",
    Callback = function()
    local TweenService = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer


local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "DeliveryTPGui"
ScreenGui.Parent = Player:WaitForChild("PlayerGui")

local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.8, -120, 0.1, 0) 
MainFrame.Size = UDim2.new(0, 120, 0, 60) -- Kích thước nhỏ hơn
MainFrame.Active = true 
MainFrame.Draggable = true 

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = MainFrame


local TitleBar = Instance.new("Frame")
TitleBar.Name = "TitleBar"
TitleBar.Parent = MainFrame
TitleBar.BackgroundColor3 = Color3.fromRGB(40, 40, 50)
TitleBar.BorderSizePixel = 0
TitleBar.Size = UDim2.new(1, 0, 0, 15)
TitleBar.ZIndex = 2

local TitleCorner = Instance.new("UICorner")
TitleCorner.CornerRadius = UDim.new(0, 6)
TitleCorner.Parent = TitleBar

local TitleLabel = Instance.new("TextLabel")
TitleLabel.Name = "TitleLabel"
TitleLabel.Parent = TitleBar
TitleLabel.BackgroundTransparency = 1
TitleLabel.Size = UDim2.new(1, 0, 1, 0)
TitleLabel.Font = Enum.Font.Gotham
TitleLabel.Text = "DELIVERY TP"
TitleLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
TitleLabel.TextSize = 12
TitleLabel.TextXAlignment = Enum.TextXAlignment.Center

local TPButton = Instance.new("TextButton")
TPButton.Name = "TPButton"
TPButton.Parent = MainFrame
TPButton.BackgroundColor3 = Color3.fromRGB(0, 120, 255)
TPButton.Position = UDim2.new(0.1, 0, 0.3, 0)
TPButton.Size = UDim2.new(0.8, 0, 0, 25) -- Nút nhỏ hơn
TPButton.Font = Enum.Font.Gotham
TPButton.Text = "Steal"
TPButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TPButton.TextSize = 12
TPButton.AutoButtonColor = false

local UICorner_Button = Instance.new("UICorner")
UICorner_Button.CornerRadius = UDim.new(0, 4)
UICorner_Button.Parent = TPButton

local StatusLabel = Instance.new("TextLabel")
StatusLabel.Name = "StatusLabel"
StatusLabel.Parent = MainFrame
StatusLabel.BackgroundTransparency = 1
StatusLabel.Position = UDim2.new(0, 0, 0.8, -10)
StatusLabel.Size = UDim2.new(1, 0, 0, 12)
StatusLabel.Font = Enum.Font.Gotham
StatusLabel.Text = ""
StatusLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
StatusLabel.TextSize = 10
StatusLabel.TextTransparency = 1


TPButton.MouseEnter:Connect(function()
    TweenService:Create(TPButton, TweenInfo.new(0.15), {
        BackgroundColor3 = Color3.fromRGB(0, 140, 255)
    }):Play()
end)

TPButton.MouseLeave:Connect(function()
    TweenService:Create(TPButton, TweenInfo.new(0.15), {
        BackgroundColor3 = Color3.fromRGB(0, 120, 255)
    }):Play()
end)


MainFrame.Size = UDim2.new(0, 0, 0, 0)
MainFrame.Visible = false
task.wait(0.5)

MainFrame.Visible = true
TweenService:Create(MainFrame, TweenInfo.new(0.25), {
    Size = UDim2.new(0, 120, 0, 60)
}):Play()

local random = Random.new()
local tpAmt = 70
local void = CFrame.new(0, -3.4028234663852886e+38, 0)
local teleporting = false

local char, humanoid, hrp

local function GetCharacter()
    return Player.Character or Player.CharacterAdded:Wait()
end

local function SetupCharacter()
    char = GetCharacter()
    humanoid = char:WaitForChild("Humanoid")
    hrp = char:WaitForChild("HumanoidRootPart")
end

SetupCharacter()

Player.CharacterAdded:Connect(SetupCharacter)

local function TP(position)
    if not teleporting and hrp then
        teleporting = true
        if typeof(position) == "CFrame" then
            hrp.CFrame = position + Vector3.new(
                random:NextNumber(-0.0001, 0.0001),
                random:NextNumber(-0.0001, 0.0001),
                random:NextNumber(-0.0001, 0.0001)
            )
            RunService.Heartbeat:Wait()
            teleporting = false
        end
    end
end

local function FindDelivery()
    local plots = workspace:FindFirstChild("Plots")
    if not plots then return nil end
    
    for _, plot in pairs(plots:GetChildren()) do
        local sign = plot:FindFirstChild("PlotSign")
        if sign then
            local yourBase = sign:FindFirstChild("YourBase")
            if yourBase and yourBase.Enabled then
                local hitbox = plot:FindFirstChild("DeliveryHitbox")
                if hitbox then return hitbox end
            end
        end
    end
    return nil
end

local function TeleportToDelivery()
    
    if not char or not hrp then
        StatusLabel.Text = "No character"
        StatusLabel.TextColor3 = Color3.fromRGB(255, 80, 80)
        TweenService:Create(StatusLabel, TweenInfo.new(0.2), {TextTransparency = 0}):Play()
        task.wait(1.5)
        TweenService:Create(StatusLabel, TweenInfo.new(0.2), {TextTransparency = 1}):Play()
        return
    end


    local hitbox = FindDelivery()
    if not hitbox then
        StatusLabel.Text = "No delivery box"
        StatusLabel.TextColor3 = Color3.fromRGB(255, 80, 80)
        TweenService:Create(StatusLabel, TweenInfo.new(0.2), {TextTransparency = 0}):Play()
        task.wait(1.5)
        TweenService:Create(StatusLabel, TweenInfo.new(0.2), {TextTransparency = 1}):Play()
        return
    end

    
    local target = hitbox.CFrame * CFrame.new(0, -3, 0)
    
   
    StatusLabel.Text = "Teleporting..."
    StatusLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TweenService:Create(StatusLabel, TweenInfo.new(0.2), {TextTransparency = 0}):Play()
    
    
    local i = 0
    while i < tpAmt do
        TP(target)
        i += 1
    end
    
    
    for _ = 1, 2 do
        TP(void)
    end
    
   
    i = 0
    while i < (tpAmt / 16) do
        TP(target)
        i += 1
    end
    
    
    task.wait(1)
    local distance = (hrp.Position - target.Position).Magnitude
    if distance <= 30 then
        StatusLabel.Text = "Success!"
        StatusLabel.TextColor3 = Color3.fromRGB(0, 255, 100)
    else
        StatusLabel.Text = "Failed (" .. math.floor(distance) .. ")"
        StatusLabel.TextColor3 = Color3.fromRGB(255, 80, 80)
    end
    
    
    task.wait(1.5)
    TweenService:Create(StatusLabel, TweenInfo.new(0.2), {TextTransparency = 1}):Play()
end

TPButton.MouseButton1Click:Connect(TeleportToDelivery)


local guiVisible = true
UIS.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed and input.KeyCode == Enum.KeyCode.RightShift then
        guiVisible = not guiVisible
        MainFrame.Visible = guiVisible
    end
end)

local dragging
local dragInput
local dragStart
local startPos

local function updateInput(input)
    local delta = input.Position - dragStart
    MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

TitleBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = MainFrame.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

TitleBar.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)

UIS.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        updateInput(input)
    end
end)
    end
})



Tabs.Visual:Button({
    Title = "Float",
    Callback = function()
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")


local player = Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "Float gui"
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling 
gui.Parent = player:WaitForChild("PlayerGui") 


local mainFrame = Instance.new("Frame")
mainFrame.Name = "FloatFrame"
mainFrame.Size = UDim2.new(0, 180, 0, 80)
mainFrame.Position = UDim2.new(0.5, -90, 0.7, -40)
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 40)
mainFrame.BorderSizePixel = 0
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Parent = gui


local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 8)
corner.Parent = mainFrame


local floatBtn = Instance.new("TextButton")
floatBtn.Name = "FloatButton"
floatBtn.Size = UDim2.new(0.9, 0, 0.6, 0)
floatBtn.Position = UDim2.new(0.05, 0, 0.2, 0)
floatBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 80)
floatBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
floatBtn.Text = "ENABLE FLOAT"
floatBtn.Font = Enum.Font.Gotham
floatBtn.TextSize = 14
floatBtn.Parent = mainFrame


local btnCorner = Instance.new("UICorner")
btnCorner.CornerRadius = UDim.new(0, 6)
btnCorner.Parent = floatBtn


local statusLabel = Instance.new("TextLabel")
statusLabel.Name = "StatusLabel"
statusLabel.Size = UDim2.new(0.9, 0, 0.2, 0)
statusLabel.Position = UDim2.new(0.05, 0, 0.8, 0)
statusLabel.BackgroundTransparency = 1
statusLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
statusLabel.Text = "Status: Ready"
statusLabel.Font = Enum.Font.Gotham
statusLabel.TextSize = 12
statusLabel.Parent = mainFrame


local isFloating = false
local floatConnection = nil
local startY = nil


local FLOAT_SPEED = 40
local FLOAT_HEIGHT = 3.5


local function toggleFloat()
    local character = player.Character
    if not character then 
        statusLabel.Text = "Status: No character"
        return 
    end
    
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    local rootPart = character:FindFirstChild("HumanoidRootPart")
    
    if not humanoid or not rootPart then 
        statusLabel.Text = "Status: Missing parts"
        return 
    end
    
    isFloating = not isFloating
    
    if isFloating then
        
        startY = rootPart.Position.Y
        floatBtn.Text = "DISABLE FLOAT"
        floatBtn.BackgroundColor3 = Color3.fromRGB(80, 120, 80)
        statusLabel.Text = "Status: Floating"
        
        floatConnection = RunService.Heartbeat:Connect(function(dt)
            if not isFloating or not character or not character:IsDescendantOf(workspace) then 
                toggleFloat()
                return
            end
            
            humanoid:ChangeState(Enum.HumanoidStateType.Flying)
            
            local currentPos = rootPart.Position
            local maxY = startY + FLOAT_HEIGHT
            
            
            if currentPos.Y < maxY then
                local riseSpeed = math.min(FLOAT_SPEED, (maxY - currentPos.Y) * 10)
                rootPart.AssemblyLinearVelocity = Vector3.new(rootPart.AssemblyLinearVelocity.X, riseSpeed, rootPart.AssemblyLinearVelocity.Z)
            else
                
                rootPart.AssemblyLinearVelocity = Vector3.new(rootPart.AssemblyLinearVelocity.X, 0, rootPart.AssemblyLinearVelocity.Z)
                if math.abs(currentPos.Y - maxY) > 0.1 then
                    rootPart.CFrame = CFrame.new(
                        currentPos.X, 
                        math.min(currentPos.Y, maxY), 
                        currentPos.Z,
                        rootPart.CFrame.RightVector,
                        Vector3.new(0, 1, 0),
                        rootPart.CFrame.LookVector
                    )
                end
            end
            
            
            if UserInputService:GetFocusedTextBox() == nil then
                local moveDir = humanoid.MoveDirection
                rootPart.AssemblyLinearVelocity = Vector3.new(
                    moveDir.X * FLOAT_SPEED,
                    rootPart.AssemblyLinearVelocity.Y,
                    moveDir.Z * FLOAT_SPEED
                )
            end
        end)
    else
        
        if floatConnection then
            floatConnection:Disconnect()
            floatConnection = nil
        end
        
        floatBtn.Text = "ENABLE FLOAT"
        floatBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 80)
        statusLabel.Text = "Status: Ready"
        
        if humanoid then
            humanoid:ChangeState(Enum.HumanoidStateType.Landed)
           
            if rootPart then
                rootPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
            end
        end
    end
end


floatBtn.MouseButton1Click:Connect(function()
    pcall(toggleFloat) 
end)


player.CharacterAdded:Connect(function(character)
    local humanoid = character:WaitForChild("Humanoid")
    humanoid.Died:Connect(function()
        if isFloating then
            pcall(toggleFloat)
        end
    end)
end)


gui.AncestryChanged:Connect(function()
    if not gui:IsDescendantOf(game) and isFloating then
        pcall(toggleFloat)
    end
end)
    end
})


   
   
   Tabs.Misc:Button({
    Title = "Rejoin",
    Callback = function()
local ts = game:GetService("TeleportService")
local p = game:GetService("Players").LocalPlayer
ts:Teleport(game.PlaceId, p)
    end
})


Tabs.Misc:Button({
    Title = "Server Hop",
    Callback = function()
local Http = game:GetService("HttpService")
local TPS = game:GetService("TeleportService")
local Api = "https://games.roblox.com/v1/games/"
local _place = game.PlaceId
local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
function ListServers(cursor)
   local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
   return Http:JSONDecode(Raw)
end
local Server, Next; repeat
   local Servers = ListServers(Next)
   Server = Servers.data[1]
   Next = Servers.nextPageCursor
until Server
TPS:TeleportToPlaceInstance(_place,Server.id,game.Players.LocalPlayer)
    end
})



   
   
   Tabs.Misc:Section({Title = "Server"})


 Tabs.Misc:Paragraph({
	Title = "Copy Id",
	Desc = game.JobId,
	Buttons = {
		{
			Title = "Copy",
			Callback = function()
				setclipboard(game.JobId);
			end
		}
	}
})

 Tabs.Misc:Input({
	Title = "Enter Job Id",
	Callback = function(value)
		_G.JobId = value;
	end
})


Tabs.Misc:Button({
	Title = "Join Job Id",
	Callback = function()
		(game:GetService("TeleportService")):TeleportToPlaceInstance(game.PlaceId, _G.JobId);
	end
})
