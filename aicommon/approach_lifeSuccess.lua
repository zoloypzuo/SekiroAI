REGISTER_GOAL_NO_SUB_GOAL(GOAL_COMMON_ApproachTarget_LifeSuccess, true)
function ApproachTargetLifeSuccess_Activate(arg0, arg1)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, -1, arg1:GetParam(0), arg1:GetParam(1), arg1:GetParam(2), arg1:GetParam(3), arg1:GetParam(4), arg1:GetParam(5), arg1:GetParam(6))
    
end

function ApproachTargetLifeSuccess_Update(arg0, arg1)
    if arg1:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    end
    if arg1:GetLife() <= 0 then
        return GOAL_RESULT_Success
    end
    return GOAL_RESULT_Continue
    
end

function ApproachTargetLifeSuccess_Terminate(arg0, arg1)
    
end

function ApproachTargetLifeSuccess_Interupt(arg0, arg1)
    return false
    
end


