function BackToHomeOnFailedPath_Activate(arg0, arg1)
    local f1_local0 = arg1:GetParam(0)
    arg1:SetTimer(0, f1_local0)
    local f1_local1 = arg1:GetParam(1)
    arg1:AddSubGoal(GOAL_COMMON_BackToHome, 100, f1_local1)
    
end

function BackToHomeOnFailedPath_Update(arg0, arg1)
    local f2_local0 = GOAL_RESULT_Continue
    if true == arg1:IsFinishTimer(0) then
        local f2_local1 = false
        if true == arg0:IsLookToTarget(TARGET_ENE_0, 40) then
            f2_local1 = arg0:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_L, 0.5, 0)
        end
        if true == f2_local1 then
            f2_local0 = GOAL_RESULT_Success
        else
            local f2_local2 = arg1:GetParam(0)
            arg1:SetTimer(0, f2_local2)
        end
    end
    if arg1:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    end
    return f2_local0
    
end

function BackToHomeOnFailedPath_Terminate(arg0, arg1)
    
end

function BackToHomeOnFailedPath_Interupt(arg0, arg1)
    if arg0:IsInterupt(INTERUPT_MovedEnd_OnFailedPath) then
        return true
    end
    return false
    
end


