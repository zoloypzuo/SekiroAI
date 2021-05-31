function Platoon000150_Activate(arg0)
    arg0:SetEnablePlatoonMove(true)
    arg0:SetFormationType(0, 2)
    arg0:SetFormationParam(0, 0, 0)
    arg0:SetFormationParam(1, 0, 1.5)
    arg0:SetFormationParam(2, 0, -1.5)
    arg0:SetFormationParam(3, 0, -4.5)
    arg0:SetFormationParam(4, 0, -7.5)
    arg0:SetFormationParam(5, 0, -10.5)
    arg0:SetBaseMoveRate(0, 1.5)
    
end

function Platoon000150_Deactivate(arg0)
    
end

function Platoon000150_Update(arg0)
    local f3_local0 = arg0:GetMemberAI(0)
    if f3_local0:GetMovePointNumber() == -1 then
        arg0:SetEnablePlatoonMove(false)
        for f3_local1 = arg0:GetMemberNum() - 1, 0, -1 do
            arg0:SendCommand(f3_local1, 0)
        end
    else
        Platoon_Common_Act(arg0)
    end
    
end


