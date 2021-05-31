function ApproachOnFailedPath_Activate(arg0, arg1)
    local f1_local0 = arg1:GetParam(0)
    arg1:SetTimer(0, f1_local0)
    local f1_local1 = arg1:GetParam(1)
    local f1_local2 = arg1:GetParam(2)
    local f1_local3 = arg1:GetParam(3)
    local f1_local4 = arg1:GetParam(4)
    local f1_local5 = arg1:GetParam(5)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, -1, f1_local1, f1_local2, f1_local3, f1_local4, f1_local5)
    
end

function ApproachOnFailedPath_Update(arg0, arg1)
    local f2_local0 = GOAL_RESULT_Continue
    if true == arg1:IsFinishTimer(0) then
        local f2_local1 = arg0:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_L, 0.5, 0)
        if true == f2_local1 then
            f2_local0 = GOAL_RESULT_Success
        else
            local f2_local2 = arg1:GetParam(0)
            arg1:SetTimer(0, f2_local2)
        end
    end
    if arg1:GetSubGoalNum() <= 0 then
        local f2_local1 = arg1:GetParam(1)
        local f2_local2 = arg1:GetParam(2)
        local f2_local3 = arg1:GetParam(3)
        local f2_local4 = arg1:GetParam(4)
        local f2_local5 = arg1:GetParam(5)
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, -1, f2_local1, f2_local2, f2_local3, f2_local4, f2_local5)
    end
    return f2_local0
    
end

function ApproachOnFailedPath_Terminate(arg0, arg1)
    
end

function ApproachOnFailedPath_Interupt(arg0, arg1)
    if arg0:IsInterupt(INTERUPT_MovedEnd_OnFailedPath) then
        return true
    end
    return false
    
end


