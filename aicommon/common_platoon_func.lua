function Platoon_Common_Act(arg0)
    local f1_local0 = 5
    local f1_local1 = 10
    local f1_local2 = 5
    local f1_local3 = 5
    local f1_local4 = 1.5
    local f1_local5 = 0.7
    local f1_local6 = 4
    local f1_local7 = 0
    local f1_local8 = 0
    for f1_local9 = arg0:GetMemberNum() - 1, 0, -1 do
        local f1_local12 = arg0:GetMemberAI(f1_local9)
        if f1_local12 ~= nill then
            if f1_local9 == 0 then
                if f1_local8 == f1_local7 then
                    arg0:SetMoveRate(f1_local9, 0.01)
                elseif f1_local7 == 0 then
                    arg0:SetMoveRate(f1_local9, 0.01)
                else
                    arg0:SetMoveRate(f1_local9, 1)
                end
                arg0:SendCommand(f1_local9, f1_local0)
            else
                local f1_local13 = f1_local12:GetDist(TARGET_TEAM_FORMATION)
                local f1_local14 = 0
                f1_local7 = f1_local7 + 1
                if f1_local6 < f1_local13 then
                    f1_local8 = f1_local8 + 1
                end
                if f1_local12:HasSpecialEffectId(TARGET_SELF, 5002) then
                    arg0:SetMoveRate(f1_local9, 1)
                elseif f1_local1 < f1_local13 then
                    arg0:SetMoveRate(f1_local9, f1_local4)
                elseif f1_local2 < f1_local13 then
                    f1_local14 = 1 + (f1_local13 - f1_local2) / (f1_local1 - f1_local2) * (f1_local4 - 1)
                    arg0:SetMoveRate(f1_local9, f1_local14)
                elseif f1_local13 < f1_local3 then
                    f1_local14 = 1 + (f1_local3 - f1_local13) / f1_local3 * (f1_local5 - 1)
                    arg0:SetMoveRate(f1_local9, f1_local14)
                else
                    arg0:SetMoveRate(f1_local9, 1)
                end
                arg0:SendCommand(f1_local9, f1_local0)
            end
        end
    end
    
end


