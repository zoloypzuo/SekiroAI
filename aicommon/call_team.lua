function CallTeam_Activate(arg0, arg1)
    local f1_local0 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__callHelp_CallActionId)
    local f1_local1 = arg1:GetParam(1)
    arg0:SetNumber(2, 1)
    arg0:TeamHelp_ReserveCall()
    arg0:TeamHelp_ValidateCall()
    arg0:TurnTo(f1_local1)
    if arg0:IsLookToTarget() == true then
        arg0:SetAttackRequest(f1_local0)
    end
    
end

function CallTeam_Update(arg0, arg1)
    local f2_local0 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__callHelp_CallActionId)
    local f2_local1 = arg1:GetParam(1)
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

function CallTeam_Terminate(arg0, arg1)
    local f3_local0 = arg0:GetNumber(2)
    if f3_local0 == 1 then
        arg0:SetNumber(2, 9)
        arg0:TeamHelp_Call()
    else
        arg0:SetNumber(2, 1)
    end
    
end

function CallTeam_Interupt(arg0, arg1)
    local f4_local0 = arg1:GetLife()
    if arg0:IsInterupt(INTERUPT_Damaged) then
        arg0:SetNumber(2, 4)
        return true
    end
    return false
    
end


