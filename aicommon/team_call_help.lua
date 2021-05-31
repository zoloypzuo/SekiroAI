function TeamCallHelp_Activate(arg0, arg1)
    local f1_local0 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__callHelp_CallActionId)
    local f1_local1 = arg1:GetParam(0)
    arg0:TeamHelp_ReserveCall()
    arg0:TurnTo(f1_local1)
    if arg0:IsLookToTarget() == true then
        arg0:SetAttackRequest(f1_local0)
    end
    
end

function TeamCallHelp_Update(arg0, arg1)
    local f2_local0 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__callHelp_CallActionId)
    local f2_local1 = arg1:GetParam(0)
    if arg1:GetLife() <= 0 then
        return GOAL_RESULT_Success
    end
    if arg0:IsFinishAttack() then
        return GOAL_RESULT_Success
    end
    if arg0:IsLookToTarget() == true then
        if arg0:IsStartAttack() == false then
            arg0:SetAttackRequest(f2_local0)
        end
    else
        arg0:TurnTo(f2_local1)
    end
    return GOAL_RESULT_Continue
    
end

function TeamCallHelp_Terminate(arg0, arg1)
    arg0:TeamHelp_Call()
    
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_TeamCallHelp, true)
function TeamCallHelp_Interupt(arg0, arg1)
    return false
    
end


