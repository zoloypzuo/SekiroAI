REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ContinueAttack, 0, "EzState???", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ContinueAttack, 1, "?U?????yType?z", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ContinueAttack, 2, "?????????y???z", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ContinueAttack, 3, "?????????????H", 0)
function ContinueAttack_Activate(arg0, arg1)
    local f1_local0 = arg1:GetParam(0)
    local f1_local1 = arg1:GetParam(1)
    arg0:TurnTo(f1_local1)
    arg0:SetAttackRequest(f1_local0)
    arg1:AddGoalScopedTeamRecord(COORDINATE_TYPE_Attack, f1_local1, 0)
    
end

function ContinueAttack_Update(arg0, arg1)
    local f2_local0 = arg1:GetParam(0)
    local f2_local1 = arg1:GetParam(1)
    local f2_local2 = arg1:GetParam(2)
    local f2_local3 = arg1:GetParam(3)
    local f2_local4 = arg0:GetDist(f2_local1)
    if f2_local2 <= f2_local4 then
        return GOAL_RESULT_Failed
    elseif arg1:GetLife() <= 0 then
        return GOAL_RESULT_Success
    elseif f2_local3 == true and arg0:IsHitAttack() == true then
        return GOAL_RESULT_Success
    end
    arg0:TurnTo(f2_local1)
    arg0:SetAttackRequest(f2_local0)
    return GOAL_RESULT_Continue
    
end

function ContinueAttack_Terminate(arg0, arg1)
    
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_ContinueAttack, true)
function ContinueAttack_Interupt(arg0, arg1)
    return false
    
end


