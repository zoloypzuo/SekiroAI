RegisterTableGoal(GOAL_COMMON_LeaveTarget_LifeSuccess, "LeaveTargetLifeSuccess")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_COMMON_LeaveTarget_LifeSuccess, true)
Goal.Activate = function (arg0, arg1, arg2)
    arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, arg2:GetLife(), arg2:GetParam(0), arg2:GetParam(1), arg2:GetParam(2), arg2:GetParam(3), arg2:GetParam(4), arg2:GetParam(5), arg2:GetParam(6))
    
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    end
    if arg2:GetLife() <= 0 then
        return GOAL_RESULT_Success
    end
    return GOAL_RESULT_Continue
    
end


