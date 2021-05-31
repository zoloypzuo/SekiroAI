REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_Fall, 0.1, 0.2)
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_Fall, true)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_Fall, 0, "?^?[?Q?b?g?yType?z", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_Fall, 1, "?????J?nEzState???", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_Fall, 2, "??????~EzState???", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_Fall, 3, "??????~?}?[?W??[m]", 0)
function Fall_Activate(arg0, arg1)
    local f1_local0 = arg1:GetParam(0)
    local f1_local1 = arg1:GetParam(1)
    local f1_local2 = arg0:GetDistYSigned(f1_local0)
    if f1_local2 <= 0 then
        arg0:SetAttackRequest(f1_local1)
    end
    
end

function Fall_Update(arg0, arg1)
    local f2_local0 = arg1:GetParam(0)
    local f2_local1 = arg1:GetParam(1)
    local f2_local2 = arg1:GetParam(3)
    local f2_local3 = arg0:GetDistYSigned(f2_local0)
    if f2_local2 < f2_local3 then
        return GOAL_RESULT_Success
    else
        arg0:SetAttackRequest(f2_local1)
    end
    return GOAL_RESULT_Continue
    
end

function Fall_Terminate(arg0, arg1)
    local f3_local0 = arg1:GetParam(2)
    arg0:SetAttackRequest(f3_local0)
    
end

function Fall_Interupt(arg0, arg1)
    return false
    
end


