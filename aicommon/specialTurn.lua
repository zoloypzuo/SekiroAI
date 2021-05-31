REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_SpecialTurn, 0, "EzState???", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_SpecialTurn, 1, "?U?????yType?z", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_SpecialTurn, 2, "????p?x", 0)
REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_SpecialTurn, 0, 0)
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_SpecialTurn, true)
function SpecialTurn_Activate(arg0, arg1)
    local f1_local0 = arg1:GetParam(0)
    local f1_local1 = arg1:GetParam(1)
    local f1_local2 = arg1:GetParam(2)
    if arg0:IsLookToTarget(f1_local1, f1_local2) then
        arg1:SetNumber(0, 1)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, arg1:GetLife(), f1_local0, f1_local1, DIST_None, 0, -1)
    end
    
end

function SpecialTurn_Update(arg0, arg1)
    if arg1:GetNumber(0) == 1 then
        return GOAL_RESULT_Success
    end
    return GOAL_RESULT_Continue
    
end

function SpecialTurn_Terminate(arg0, arg1)
    
end

function SpecialTurn_Interupt(arg0, arg1)
    return false
    
end


