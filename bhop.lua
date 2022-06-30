//BunnyHop by Mr Ibizza for Garry's Mod 13+
//Feel free to do whatever you want with this script , but giving me credit is much appreciated too! :3
//BunnyHop Version: v1

local bhop = false
hook.Add("Think", "bhop", function()
if bhop then
     if (input.IsKeyDown( KEY_SPACE ) ) then
        if LocalPlayer():IsOnGround() then
            RunConsoleCommand("+jump")
            HasJumped = 1
        else
            RunConsoleCommand("-jump")
            HasJumped = 0
        end
    elseif bhop and LocalPlayer():IsOnGround() then
        if HasJumped == 1 then
            RunConsoleCommand("-jump")
            HasJumped = 0
        end
    end
end
end)

concommand.Add("bhop_toggle", function()
if bhop then
    bhop = !bhop
    LocalPlayer():ChatPrint("BunnyHop ON [OFF]")
else
    bhop = !bhop
    LocalPlayer():ChatPrint("BunnyHop [ON] OFF")
end
end)
print("BunnyHop by Mr Ibizza successfully started!")