RegisterTableGoal(GOAL_COMMON_ContinueKeepDist, "GOAL_COMMON_ContinueKeepDist")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_COMMON_ContinueKeepDist, true)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ContinueKeepDist, 0, "?^?[?Q?b?g", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ContinueKeepDist, 1, "?????", 1)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ContinueKeepDist, 2, "??™¦??", 2)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ContinueKeepDist, 3, "???????s????", 3)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ContinueKeepDist, 4, "???K?[?h?m??", 4)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ContinueKeepDist, 5, "??????K?[?h?m??", 5)
Goal.Activate = function (arg0, arg1, arg2)
    arg0:ContinueKeepDist(arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    local f2_local0 = arg2:GetParam(1)
    local f2_local1 = arg2:GetParam(2)
    local f2_local2 = arg1:GetDist(Target)
    if arg2:GetLife() <= 0 then
        return GOAL_RESULT_Success
    end
    if arg2:GetSubGoalNum() <= 0 then
        arg0:ContinueKeepDist(arg1, arg2)
        return GOAL_RESULT_Continue
    end
    if arg1:IsActiveGoal(GOAL_COMMON_SidewayMove) and (f2_local1 <= f2_local2 or f2_local0 <= f2_local2) then
        arg2:ClearSubGoal()
        arg0:ContinueKeepDist(arg1, arg2)
        return GOAL_RESULT_Continue
    end
    return GOAL_RESULT_Continue
    
end

Goal.ContinueKeepDist = function (arg0, arg1, arg2)
    local f3_local0 = arg2:GetParam(0)
    local f3_local1 = arg2:GetParam(1)
    local f3_local2 = arg2:GetParam(2)
    local f3_local3 = arg2:GetParam(3)
    local f3_local4 = arg2:GetParam(4)
    local f3_local5 = arg2:GetParam(5)
    local f3_local6 = arg1:GetDist(f3_local0)
    if f3_local2 <= f3_local6 then
        local f3_local7 = -1
        if arg1:GetRandam_Int(1, 100) <= f3_local4 then
            f3_local7 = 9910
        end
        if f3_local2 <= f3_local0 then
            local f3_local8 = arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, arg2:GetLife(), TARGET_ENE_0, (f3_local2 + f3_local1) / 2, TARGET_SELF, false, f3_local7)
            f3_local8:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        else
            local f3_local8 = arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, arg2:GetLife(), TARGET_ENE_0, (f3_local2 + f3_local1) / 2, TARGET_SELF, true, f3_local7)
            f3_local8:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        end
    elseif f3_local6 <= f3_local1 then
        local f3_local7 = -1
        if arg1:GetRandam_Int(1, 100) <= f3_local5 then
            f3_local7 = 9910
        end
        local f3_local8 = arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, arg2:GetLife(), TARGET_ENE_0, (f3_local2 + f3_local1) / 2, TARGET_ENE_0, true, f3_local7)
        f3_local8:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    end
    arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(3, 5), TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, Guard)
    
end


