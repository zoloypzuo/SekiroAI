REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_Step, 0, "EzState???", 0)
REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_Step, 0, 0)
function Step_Activate(arg0, arg1)
    local f1_local0 = arg1:GetParam(0)
    arg0:SetAttackRequest(f1_local0)
    
end

function Step_Update(arg0, arg1)
    local f2_local0 = arg1:GetParam(0)
    local f2_local1 = false
    if arg0:IsEnableComboAttack() == true then
        f2_local1 = true
    end
    if arg0:IsFinishAttack() == true then
        f2_local1 = true
    end
    if f2_local1 == true then
        return GOAL_RESULT_Success
    end
    if arg0:IsStartAttack() == false then
        arg0:SetAttackRequest(f2_local0)
    end
    return GOAL_RESULT_Continue
    
end

function Step_Terminate(arg0, arg1)
    
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_Step, true)
function Step_Interupt(arg0, arg1)
    return false
    
end


