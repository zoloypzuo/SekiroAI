function Waraningyou_504000_Logic(arg0)
    if COMMON_HiPrioritySetup(arg0, COMMON_FLAG_BOSS) then
        return true
    end
    local f1_local0 = arg0:SetEventMoveTarget(9622490)
    local f1_local1 = arg0:GetDist_Point(POINT_EVENT)
    local f1_local2 = arg0:GetEventRequest()
    if f1_local2 == 10 and f1_local1 > 3 then
        arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 10, POINT_EVENT, 0, TARGET_SELF, false, -1)
    else

    end
    COMMON_EasySetup3(arg0, COMMON_FLAG_BOSS)
    
end

function Waraningyou_504000_Interupt(arg0, arg1)
    return false
    
end


