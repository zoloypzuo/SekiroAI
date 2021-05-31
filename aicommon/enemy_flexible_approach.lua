RegisterTableGoal(GOAL_EnemyFlexibleApproach, "GOAL_EnemyFlexibleApproach")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyFlexibleApproach, true)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyFlexibleApproach, 0, "???", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyFlexibleApproach, 1, "??????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyFlexibleApproach, 2, "???B???????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyFlexibleApproach, 3, "???B??™¦??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyFlexibleApproach, 4, "???????s????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyFlexibleApproach, 5, "???????s????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyFlexibleApproach, 6, "???s?m??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyFlexibleApproach, 7, "?h??m??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyFlexibleApproach, 8, "??X?e?b?v?m??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyFlexibleApproach, 9, "?O?X?e?b?v?m??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyFlexibleApproach, 10, "?X?e?b?v??u", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyFlexibleApproach, 11, "??????", 0)
Goal.Activate = function (arg0, arg1, arg2)
    local f1_local0 = arg2:GetParam(0)
    local f1_local1 = arg2:GetParam(1)
    local f1_local2 = arg2:GetParam(2)
    local f1_local3 = arg2:GetParam(3)
    local f1_local4 = arg2:GetParam(4)
    local f1_local5 = arg2:GetParam(5)
    local f1_local6 = arg2:GetParam(6)
    local f1_local7 = arg2:GetParam(7)
    local f1_local8 = arg2:GetParam(8)
    local f1_local9 = arg2:GetParam(9)
    local f1_local10 = arg2:GetParam(10)
    local f1_local11 = arg2:GetParam(11)
    if f1_local11 == nil then
        f1_local11 = 0
    end
    if f1_local2 < 0 then
        f1_local2 = 0
    end
    local f1_local12 = arg1:GetDist(f1_local0)
    local f1_local13 = -1
    local f1_local14 = true
    if arg1:GetIdTimer(7110005) <= 0 then
        arg1:StartIdTimerSpecifyTime(7110005, f1_local10)
    end
    if arg1:GetRandam_Float(0.1, 100) < f1_local7 then
        f1_local13 = 9910
    end
    local f1_local15 = (f1_local3 + f1_local2) / 2 + 1
    if f1_local12 < f1_local2 then
        if f1_local11 == 0 then
            return 
        else
            if arg1:IsAIAttackParam(7004) and IsValidEnemySelect(arg0, arg1, arg2, 7004, f1_local0) and arg1:GetAIAttackParam(7004, AI_ATTACK_PARAM_TYPE__INTERVAL_EXEC) < arg1:GetIdTimer(7100000 + 7004) and f1_local10 < arg1:GetIdTimer(7110005) and f1_local12 + f1_local3 < 8 then
                arg1:StartIdTimer(7110005)
                if arg1:GetRandam_Float(0.1, 100) < f1_local8 then
                    arg1:StartIdTimer(7100000 + 7004)
                    arg2:AddSubGoal(GOAL_EnemyStepBack, arg2:GetLife(), f1_local0, 8)
                end
            end
            local f1_local16 = arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, arg2:GetLife(), f1_local0, f1_local2, TARGET_ENE_0, f1_local14, f1_local13)
            f1_local16:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
            return 
        end
    end
    if f1_local3 < f1_local12 then
        if f1_local5 < f1_local12 or f1_local4 < f1_local12 and arg1:GetRandam_Float(0.1, 100) < f1_local6 then
            f1_local14 = false
        end
        if arg1:GetRandam_Float(0.1, 100) < f1_local9 and arg1:IsAIAttackParam(7008) then
            local f1_local16 = arg1:GetAIAttackParam(7008, AI_ATTACK_PARAM_TYPE__MIN_OPTIMAL_DISTANCE)
            if f1_local2 < f1_local12 - f1_local16 and arg1:GetAIAttackParam(7008, AI_ATTACK_PARAM_TYPE__INTERVAL_EXEC) < arg1:GetIdTimer(7100000 + 7008) and f1_local10 < arg1:GetIdTimer(7110005) then
                arg1:StartIdTimer(7110005)
                arg1:StartIdTimer(7100000 + 7008)
                arg2:AddSubGoal(GOAL_EnemyStepFront, arg2:GetLife(), f1_local0, f1_local16)
            end
        end
        arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, arg2:GetLife(), f1_local0, f1_local3, TARGET_SELF, f1_local14, f1_local13)
        if f1_local14 then
            arg2:SetNumber(4, 1)
        end
    end
    
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    end
    local f2_local0 = arg2:GetParam(0)
    local f2_local1 = arg2:GetParam(1)
    local f2_local2 = arg2:GetParam(2)
    local f2_local3 = arg2:GetParam(3)
    local f2_local4 = arg2:GetParam(5)
    local f2_local5 = arg2:GetParam(7)
    local f2_local6 = arg2:GetParam(8)
    local f2_local7 = arg2:GetParam(9)
    local f2_local8 = arg2:GetParam(10)
    local f2_local9 = arg1:GetDist(f2_local0)
    local f2_local10 = -1
    local f2_local11 = false
    if arg1:GetRandam_Float(0.1, 100) < f2_local5 then
        f2_local10 = 9910
    end
    if arg1:IsActiveGoal(GOAL_COMMON_ApproachTarget) and arg1:IsAIAttackParam(7008) and f2_local8 < arg1:GetIdTimer(7110005) then
        arg1:StartIdTimer(7110005)
        if arg1:GetAIAttackParam(7008, AI_ATTACK_PARAM_TYPE__INTERVAL_EXEC) < arg1:GetIdTimer(7100000 + 7008) and f2_local2 < f2_local9 - arg1:GetAIAttackParam(7008, AI_ATTACK_PARAM_TYPE__MIN_OPTIMAL_DISTANCE) and arg1:GetRandam_Float(0.1, 100) < f2_local7 then
            arg1:StartIdTimer(7100000 + 7008)
            arg2:AddSubGoal(GOAL_EnemyStepFront, arg2:GetLife(), f2_local0, 5)
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, arg2:GetLife(), f2_local0, f2_local3, TARGET_SELF, f2_local11, f2_local10)
            return GOAL_RESULT_Continue
        end
    end
    if arg1:IsActiveGoal(GOAL_COMMON_LeaveTarget) and arg1:IsAIAttackParam(7004) and f2_local8 < arg1:GetIdTimer(7110005) then
        arg1:StartIdTimer(7110005)
        if IsValidEnemySelect(arg0, arg1, arg2, 7004, f2_local0) and arg1:GetAIAttackParam(7004, AI_ATTACK_PARAM_TYPE__INTERVAL_EXEC) < arg1:GetIdTimer(7100000 + 7004) and arg1:GetRandam_Float(0, 100) < f2_local6 then
            arg1:StartIdTimer(7100000 + 7004)
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_EnemyStepBack, arg2:GetLife(), f2_local0, 5)
            local f2_local12 = arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, arg2:GetLife(), f2_local0, f2_local2, TARGET_ENE_0, f2_local11, f2_local10)
            f2_local12:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        end
    end
    return GOAL_RESULT_Continue
    
end


