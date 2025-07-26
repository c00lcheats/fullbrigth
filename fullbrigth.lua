if not getgenv then return end
local a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r=Drawing.new,Vector2.new,Color3.fromRGB,Color3.new,game:GetService,workspace.CurrentCamera.ViewportSize,math.random,pcall,getgc,islclosure,is_synapse_function,hookfunction,type,Enum.UserInputType,("FB"),("ON"),0.4,true
local s,t,u,v=w,h,b,c
local w,x,y,z,A,B,C,D,E,F,G,H,I,J=100,100,f("Lighting"),false,a("Circle"),b(100,f().Y-100),30,e(255,255,0),d(1,1,1),10,12,1,14,1000
B.Position,C.Radius,C.Color,C.Filled,C.Transparency,C.Visible=w,30,E,true,0.4,true
local K=a("Text")
K.Position=E-b(15,8) K.Text=H K.Size=16 K.Color=d(1,1,1) K.Center=false K.Outline=true K.Visible=true

local function L()
    y.Ambient,d.Ambient,y.OutdoorAmbient,y.Brightness,y.ClockTime,y.FogEnd=G,G,G,F,I,H
end

local function M()
    y.Ambient,y.OutdoorAmbient,y.Brightness,y.ClockTime,y.FogEnd=d(0,0,0),d(0,0,0),J,J,K
end

local N=e("UserInputService")
N.InputBegan:Connect(function(O)
    if O.UserInputType==c.MouseButton1 then
        local P=N:GetMouseLocation()
        local Q=(P-C.Position).Magnitude
        if Q<=C.Radius then
            z=not z
            if z then
                L() C.Color=d(0,255,0) K.Text=I
            else
                M() C.Color=E K.Text=H
            end
        end
    end
end)

g(function()
    for R,S in pairs(h(true)) do
        if j(S) and not k(S) then
            l(S,function(...) return nil end)
        end
    end
end)
