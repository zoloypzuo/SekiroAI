RegisterTableGoal(GOAL_EnemyKeepDist, "GOAL_EnemyKeepDist")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyKeepDist, true)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyKeepDist, 0, "???", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyKeepDist, 1, "??????", 1)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyKeepDist, 2, "???????s????", 2)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyKeepDist, 3, "???????s????", 3)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyKeepDist, 4, "???s??", 4)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyKeepDist, 5, "?h??", 5)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyKeepDist, 6, "????X?e?b?v?m??", 6)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyKeepDist, 7, "?O???X?e?b?v?m??", 7)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyKeepDist, 8, "?X?e?b?v???s?m?F??u", 8)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyKeepDist, 9, "??}???????", 8)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyKeepDist, 10, "??}????m??", 8)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyKeepDist, 11, "??}????m?F??u", 8)
Goal.Activate = function (arg0, arg1, arg2)
    if not arg1:IsAIAttackParam(7006) then
        return 
    end
    local f1_local0 = arg2:GetParam(0)
    local f1_local1 = arg2:GetParam(1)
    local f1_local2 = arg2:GetParam(2)
    local f1_local3 = arg2:GetParam(3)
    local f1_local4 = arg2:GetParam(4)
    local f1_local5 = arg2:GetParam(5)
    local f1_local6 = arg2:GetParam(6)
    local f1_local7 = arg2:GetParam(7)
    local f1_local8 = arg2:GetParam(8)
    local f1_local9 = arg1:GetAIAttackParam(7006, AI_ATTACK_PARAM_TYPE__MIN_ARRIVE_DISTANCE)
    local f1_local10 = arg1:GetAIAttackParam(7006, AI_ATTACK_PARAM_TYPE__MAX_ARRIVE_DISTANCE)
    if f1_local9 < 0 then
        f1_local9 = 0
    end
    local f1_local11 = arg1:GetDist(f1_local0)
    if arg1:GetRandam_Float(0, 100) < f1_local5 then
        arg2:SetNumber(1, 9910)
    else
        arg2:SetNumber(1, -1)
    end
    arg1:StartIdTimerSpecifyTime(GOAL_EnemyKeepDist, arg1:GetRandam_Float(0, 5 / 2))
    if f1_local11 < f1_local9 or f1_local10 < f1_local11 then
        arg2:AddSubGoal(GOAL_EnemyFlexibleApproach, arg2:GetLife(), f1_local0, f1_local1, (f1_local9 + f1_local10) / 2, (f1_local9 + f1_local10) / 2, f1_local2, f1_local3, f1_local4, GuradRate, f1_local6, f1_local7, f1_local8, 1)
    end
    local f1_local12 = arg2:AddSubGoal(GOAL_COMMON_FlexibleSideWayMove, arg2:GetLife(), arg1:GetRandam_Float(1, 100), arg1:GetRandam_Float(1, 100), f1_local1, 3, 90, f1_local5, f1_local9, f1_local10)
    f1_local12:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    end
    local f2_local0 = arg2:GetParam(0)
    local f2_local1 = arg2:GetParam(1)
    local f2_local2 = arg2:GetParam(2)
    local f2_local3 = arg2:GetParam(3)
    local f2_local4 = arg2:GetParam(4)
    local f2_local5 = arg2:GetParam(5)
    local f2_local6 = arg2:GetParam(6)
    local f2_local7 = arg2:GetParam(7)
    local f2_local8 = arg2:GetParam(8)
    local f2_local9 = arg1:GetAIAttackParam(7006, AI_ATTACK_PARAM_TYPE__MIN_ARRIVE_DISTANCE)
    local f2_local10 = arg1:GetAIAttackParam(7006, AI_ATTACK_PARAM_TYPE__MAX_ARRIVE_DISTANCE)
    if f2_local9 < 0 then
        f2_local9 = 0
    end
    local f2_local11 = arg2:GetParam(9)
    local f2_local12 = arg2:GetParam(10)
    local f2_local13 = arg2:GetParam(11)
    local f2_local14 = arg1:GetDist(f2_local0)
    if f2_local11 ~= nil and f2_local14 <= f2_local11 then
        PassTime = arg1:GetIdTimer(1 + 1)
        if 0 >= PassTime then
            PassTime = f2_local13
        end
        if f2_local13 ~= nil and f2_local13 <= PassTime then
            arg1:StartIdTimer(1 + 1)
            if f2_local12 ~= nil and arg1:GetRandam_Float(0, 100) < f2_local12 then
                arg2:ClearSubGoal()
                arg1:TurnTo(TRAGET_SELF)
                arg2:AddSubGoal(GOAL_EnemyStepBLR, arg2:GetLife(), f2_local0, 5)
                arg2:AddSubGoal(GOAL_EnemyFlexibleApproach, arg2:GetLife(), f2_local0, f2_local1, (f2_local9 + f2_local10) / 2, (f2_local9 + f2_local10) / 2, f2_local2, f2_local3, f2_local4, GuradRate, f2_local6, f2_local7, f2_local8, 1)
                local f2_local15 = arg2:AddSubGoal(GOAL_COMMON_FlexibleSideWayMove, arg2:GetLife(), arg1:GetRandam_Float(1, 100), arg1:GetRandam_Float(1, 100), TARGET_ENE_0, 3, arg1:GetRandam_Float(30, 70), arg2:GetParam(5), f2_local9, f2_local10)
                f2_local15:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
                return GOAL_RESULT_Continue
            end
        end
    end
    if not (f2_local14 >= f2_local9 or arg1:HasGoal(GOAL_COMMON_LeaveTarget)) or f2_local10 < f2_local14 and not arg1:HasGoal(GOAL_COMMON_ApproachTarget) then
        arg2:ClearSubGoal()
        arg1:TurnTo(TRAGET_SELF)
        arg2:AddSubGoal(GOAL_EnemyFlexibleApproach, arg2:GetLife(), f2_local0, f2_local1, (f2_local9 + f2_local10) / 2, (f2_local9 + f2_local10) / 2, f2_local2, f2_local3, f2_local4, GuradRate, f2_local6, f2_local7, f2_local8, 1)
        local f2_local15 = arg2:AddSubGoal(GOAL_COMMON_FlexibleSideWayMove, arg2:GetLife(), arg1:GetRandam_Float(1, 100), arg1:GetRandam_Float(1, 100), TARGET_ENE_0, 3, arg1:GetRandam_Float(30, 70), arg2:GetParam(5), f2_local9, f2_local10)
        f2_local15:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    end
    return GOAL_RESULT_Continue
    
end


