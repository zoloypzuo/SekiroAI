RegisterTableGoal(GOAL_EnemyBeforeAttack, "GOAL_EnemyBeforeAttack")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyBeforeAttack, true)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyBeforeAttack, 0, "???", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyBeforeAttack, 1, "??????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyBeforeAttack, 2, "?õT?A?N?V???????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyBeforeAttack, 3, "???????s????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyBeforeAttack, 4, "???????s????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyBeforeAttack, 5, "???s?m??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyBeforeAttack, 6, "?h??m??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyBeforeAttack, 7, "??X?e?b?v?m??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyBeforeAttack, 8, "?O?X?e?b?v?m??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyBeforeAttack, 9, "?X?e?b?v??u", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyBeforeAttack, 10, "??????", 0)
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
    if f1_local10 == true then
        f1_local10 = 1
    else
        f1_local10 = 0
    end
    arg1:TurnTo(TARGET_SELF)
    local f1_local11 = arg1:GetAIAttackParam(f1_local2, AI_ATTACK_PARAM_TYPE__MIN_ARRIVE_DISTANCE)
    local f1_local12 = arg1:GetAIAttackParam(f1_local2, AI_ATTACK_PARAM_TYPE__MAX_ARRIVE_DISTANCE)
    arg2:AddSubGoal(GOAL_EnemyFlexibleApproach, arg2:GetLife(), f1_local0, f1_local1, f1_local11, f1_local12, f1_local3, f1_local4, f1_local5, f1_local6, f1_local7, f1_local8, f1_local9, f1_local10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    end
    return GOAL_RESULT_Continue
    
end

RegisterTableGoal(GOAL_EnemyAfterAttack, "GOAL_EnemyAfterAttack")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyAfterAttack, true)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyAfterAttack, 0, "???", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyAfterAttack, 1, "??????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyAfterAttack, 2, "???s?m??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyAfterAttack, 3, "?h??m??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyAfterAttack, 4, "???S????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyAfterAttack, 5, "???????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyAfterAttack, 6, "????m??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyAfterAttack, 7, "?????u", 0)
Goal.Activate = function (arg0, arg1, arg2)
    local f3_local0 = arg2:GetParam(0)
    local f3_local1 = arg2:GetParam(1)
    local f3_local2 = arg1:GetDist(f3_local0)
    local f3_local3 = arg2:GetParam(2)
    local f3_local4 = arg2:GetParam(3)
    local f3_local5 = 1
    local f3_local6 = -1
    local f3_local7 = arg2:GetParam(4)
    local f3_local8 = arg2:GetParam(5)
    local f3_local9 = arg2:GetParam(6)
    local f3_local10 = arg2:GetParam(7)
    local f3_local11 = 0
    local f3_local12 = {}
    if arg1:GetRandam_Float(0, 100) < f3_local3 then
        f3_local5 = 0
    end
    if arg1:GetRandam_Float(0, 100) < f3_local4 then
        f3_local6 = 9910
    end
    for f3_local13 = 7000, 7008, 1 do
        f3_local12[f3_local13] = 0
        if arg1:IsAIAttackParam(f3_local13) then
            if arg1:GetAIAttackParam(f3_local13, AI_ATTACK_PARAM_TYPE__INTERVAL_EXEC) <= arg1:GetIdTimer(f3_local13 + 7100000) or arg1:GetNumber(60) == 1 then
                if not (arg1:GetAIAttackParam(f3_local13, AI_ATTACK_PARAM_TYPE__DOES_SELECT_ON_OUT_RANGE) ~= 1 or arg1:GetAIAttackParam(f3_local13, AI_ATTACK_PARAM_TYPE__DOES_SELECT_ON_INNER_RANGE) ~= 1) or arg1:GetAIAttackParam(f3_local13, AI_ATTACK_PARAM_TYPE__MIN_OPTIMAL_DISTANCE) <= f3_local2 and f3_local2 <= arg1:GetAIAttackParam(f3_local13, AI_ATTACK_PARAM_TYPE__MAX_OPTIMAL_DISTANCE) then
                    if arg1:IsOptimalAttackRangeH(f3_local0, f3_local13) then
                        local f3_local16 = arg1:GetIdTimer(f3_local13 + 7100000) - arg1:GetAIAttackParam(f3_local13, AI_ATTACK_PARAM_TYPE__INTERVAL_EXEC)
                        if f3_local16 < 0 then
                            f3_local16 = 1
                        end
                        print("?yAfter Action?z" .. "?I???m??[" .. f3_local13 .. "]?@" .. arg1:GetAIAttackParam(f3_local13, AI_ATTACK_PARAM_TYPE__SELECTION_TENDENCY) .. "?@?@" .. arg1:GetAIAttackParam(f3_local13, AI_ATTACK_PARAM_TYPE__MAX_OPTIMAL_DISTANCE))
                        f3_local12[f3_local13] = f3_local16 * arg1:GetAIAttackParam(f3_local13, AI_ATTACK_PARAM_TYPE__SELECTION_TENDENCY) * GetAttackRateByDist(arg0, arg1, arg2, f3_local13, GetDistPos(arg0, arg1, arg2, f3_local2))
                    else
                        print("?yAfter Action?z" .. "?p?x?O[" .. f3_local13 .. "]")
                    end
                else
                    print("?yAfter Action?z" .. "???O[" .. f3_local13 .. "]")
                end
            else
                print("?yAfter Action?z" .. "????O[" .. f3_local13 .. "]")
            end
        end
        f3_local11 = f3_local11 + f3_local12[f3_local13]
    end
    if f3_local11 <= 0 then
        local f3_local13 = print
        local f3_local14 = "?yAfter Action?z"
        f3_local14 = f3_local14 .. "????ç·????"
        f3_local13(f3_local14)
        return 
    end
    f3_local13 = arg1:GetRandam_Float(0.001, f3_local11)
    f3_local14 = 9999999
    local f3_local15 = 0
    for f3_local16 = 7000, 7008, 1 do
        f3_local15 = f3_local15 + f3_local12[f3_local16]
        if f3_local13 <= f3_local15 then
            f3_local14 = f3_local16
            arg2:SetNumber(0, f3_local16)
            arg1:StartIdTimer(f3_local16 + 7100000)
            break
        end
    end
    if f3_local14 == 7000 then
        f3_local16 = print
        f3_local17 = "?yAfter Action?z"
        f3_local17 = f3_local17 .. "?K?[?h??@"
        f3_local16(f3_local17)
        arg2:AddSubGoal(GOAL_COMMON_Guard, arg2:GetLife(), 9910, f3_local0, true, 0)
    elseif f3_local14 == 7001 then
        f3_local16 = print
        f3_local17 = "?yAfter Action?z"
        f3_local17 = f3_local17 .. "???E???"
        f3_local16(f3_local17)
        arg2:AddSubGoal(GOAL_COMMON_FlexibleSideWayMove, arg2:GetLife(), arg1:GetRandam_Float(1, 100), arg1:GetRandam_Float(1, 100), f3_local0, f3_local7, arg1:GetRandam_Float(45, 240), f3_local4, arg1:GetAIAttackParam(7001, AI_ATTACK_PARAM_TYPE__MIN_OPTIMAL_DISTANCE), arg1:GetAIAttackParam(7001, AI_ATTACK_PARAM_TYPE__MAX_OPTIMAL_DISTANCE))
    elseif f3_local14 == 7002 then
        f3_local16 = print
        f3_local17 = "?yAfter Action?z"
        f3_local17 = f3_local17 .. "???"
        f3_local16(f3_local17)
        f3_local16 = arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, arg2:GetLife(), f3_local0, arg1:GetAIAttackParam(7002, AI_ATTACK_PARAM_TYPE__MAX_OPTIMAL_DISTANCE), f3_local0, f3_local5, GuardID, 1, true)
        f3_local16:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    elseif f3_local14 == 7003 then
        f3_local16 = print
        f3_local17 = "?yAfter Action?z"
        f3_local17 = f3_local17 .. "???X?e?b?v"
        f3_local16(f3_local17)
        arg2:AddSubGoal(GOAL_EnemyStepLR, arg2:GetLife(), f3_local0, f3_local7)
    elseif f3_local14 == 7004 then
        f3_local16 = print
        f3_local17 = "?yAfter Action?z"
        f3_local17 = f3_local17 .. "??X?e?b?v"
        f3_local16(f3_local17)
        arg2:AddSubGoal(GOAL_EnemyStepBack, arg2:GetLife(), f3_local0, f3_local7)
    elseif f3_local14 == 7006 then
        f3_local16 = print
        f3_local17 = "?yAfter Action?z"
        f3_local17 = f3_local17 .. "???????"
        f3_local16(f3_local17)
        f3_local16 = arg2:AddSubGoal(GOAL_EnemyKeepDist, arg2:GetLife(), f3_local0, f3_local1, arg1:GetAIAttackParam(7006, AI_ATTACK_PARAM_TYPE__MIN_OPTIMAL_DISTANCE), arg1:GetAIAttackParam(7006, AI_ATTACK_PARAM_TYPE__MAX_OPTIMAL_DISTANCE), f3_local3, f3_local4, f3_local9, 0, f3_local8, f3_local9, f3_local10, f3_local7)
        f3_local16:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    elseif f3_local14 == 7007 then
        f3_local16 = print
        f3_local17 = "?yAfter Action?z"
        f3_local17 = f3_local17 .. "?O?????"
        f3_local16(f3_local17)
        f3_local16 = arg1:GetAIAttackParam(7007, AI_ATTACK_PARAM_TYPE__MIN_ARRIVE_DISTANCE)
        if f3_local16 < 0 then
            f3_local16 = 0
        end
        f3_local17 = arg1:GetAIAttackParam(7007, AI_ATTACK_PARAM_TYPE__MAX_ARRIVE_DISTANCE)
        f3_local17 = f3_local16 + f3_local17
        f3_local17 = f3_local17 / 2
        if f3_local17 < 0 then
            f3_local17 = 0
        end
        arg2:AddSubGoal(GOAL_EnemyFlexibleApproach, arg2:GetLife(), f3_local0, f3_local1, f3_local17, f3_local17, 0, 999, f3_local3, f3_local4, 0, 0, 0, 0)
    elseif f3_local14 == 7008 then
        f3_local16 = print
        f3_local17 = "?yAfter Action?z"
        f3_local17 = f3_local17 .. "?O???X?e?b?v"
        f3_local16(f3_local17)
        arg2:AddSubGoal(GOAL_EnemyStepFront, arg2:GetLife(), f3_local0, f3_local7)
    else
        local f3_local16 = print
        local f3_local17 = "?yAfter Action?z"
        f3_local17 = f3_local17 .. "?????????"
        f3_local16(f3_local17)
        arg2:AddSubGoal(GOAL_COMMON_Turn, arg2:GetLife(), f3_local0, 45, 0, 0)
    end
    
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        arg1:TurnTo(TARGET_SELF)
        return GOAL_RESULT_Success
    end
    local f4_local0 = arg2:GetParam(0)
    local f4_local1 = arg2:GetParam(1)
    local f4_local2 = arg1:GetDist(f4_local0)
    local f4_local3 = arg2:GetNumber(0)
    if f4_local3 == 7000 then
        local f4_local4
        if arg1:GetAIAttackParam(f4_local3, AI_ATTACK_PARAM_TYPE__DOES_SELECT_ON_OUT_RANGE) ~= 1 or arg1:GetAIAttackParam(f4_local3, AI_ATTACK_PARAM_TYPE__DOES_SELECT_ON_INNER_RANGE) ~= 1 then
            f4_local4 = false
        else
            f4_local4 = true
        end
        if f4_local4 == 0 and (f4_local2 < arg1:GetAIAttackParam(f4_local3, AI_ATTACK_PARAM_TYPE__MIN_OPTIMAL_DISTANCE) or arg1:GetAIAttackParam(f4_local3, AI_ATTACK_PARAM_TYPE__MAX_OPTIMAL_DISTANCE) < f4_local2) then
            return GOAL_RESULT_Success
        end
    elseif f4_local3 == 7002 then

    elseif f4_local3 == 7003 then

    elseif f4_local3 == 7004 then

    elseif f4_local3 == 7001 then

    elseif f4_local3 == 7006 then

    elseif f4_local3 == 7007 then

    elseif f4_local3 == 7008 then

    else

    end
    return GOAL_RESULT_Continue
    
end

RegisterTableGoal(GOAL_EnemyAfterAction, "GOAL_EnemyAfterAction")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyAfterAction, true)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyAfterAction, 0, "???", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyAfterAction, 1, "??????", 1)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyAfterAction, 2, "?h?????m??", 2)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyAfterAction, 3, "??@", 3)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyAfterAction, 4, "?h???@", 4)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyAfterAction, 5, "?????", 5)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyAfterAction, 6, "???", 6)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyAfterAction, 7, "???X?e?b?v", 7)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyAfterAction, 8, "??X?e?b?v", 8)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyAfterAction, 9, "???????", 9)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyAfterAction, 10, "?????????", 10)
Goal.Activate = function (arg0, arg1, arg2)
    local f5_local0 = arg2:GetParam(0)
    local f5_local1 = arg2:GetParam(1)
    local f5_local2 = arg1:GetDist(f5_local0)
    local f5_local3 = arg2:GetParam(2)
    local f5_local4 = arg2:GetParam(3)
    local f5_local5 = arg2:GetParam(4)
    local f5_local6 = arg2:GetParam(5)
    local f5_local7 = arg2:GetParam(6)
    local f5_local8 = arg2:GetParam(7)
    local f5_local9 = arg2:GetParam(8)
    local f5_local10 = arg2:GetParam(9)
    local f5_local11 = arg2:GetParam(10)
    local f5_local12 = arg2:GetParam(11)
    local f5_local13 = arg2:GetParam(12)
    local f5_local14 = 0
    local f5_local15 = {f5_local5, f5_local6, f5_local7, f5_local8, f5_local9, f5_local11, f5_local10}
    for f5_local16 = 7000, 7006, 1 do
        if arg1:GetAIAttackParam(f5_local16, AI_ATTACK_PARAM_TYPE__MIN_OPTIMAL_DISTANCE) <= f5_local2 and f5_local2 <= arg1:GetAIAttackParam(f5_local16, AI_ATTACK_PARAM_TYPE__MAX_OPTIMAL_DISTANCE) then

        else
            f5_local15[f5_local16 - 7000 + 1] = 0
        end
        f5_local14 = f5_local14 + f5_local15[f5_local16 - 7000 + 1]
    end
    local f5_local16 = arg1:GetRandam_Float(0, f5_local14)
    local f5_local17 = 9999999
    local f5_local18 = 0
    for f5_local19 = 7000, 7006, 1 do
        f5_local18 = f5_local18 + f5_local15[f5_local19 - 7000 + 1]
        if f5_local16 <= f5_local18 then
            f5_local17 = f5_local19
            break
        end
    end
    if f5_local14 == 0 then

    elseif f5_local17 == 7002 then
        f5_local19 = arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, arg2:GetLife(), f5_local0, arg1:GetAIAttackParam(7002, AI_ATTACK_PARAM_TYPE__MAX_OPTIMAL_DISTANCE), f5_local1, IsWalk, GuardID, 1, true)
        f5_local19:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
        return 
    elseif f5_local17 == 7003 then
        arg2:AddSubGoal(GOAL_EnemyStepLR, arg2:GetLife(), f5_local0, 5)
        return 
    elseif f5_local17 == 7004 then
        f5_local19 = print
        local f5_local20 = "??X?e?b?v"
        f5_local19(f5_local20)
        arg2:AddSubGoal(GOAL_EnemyStepBack, arg2:GetLife(), f5_local0, 5)
        return 
    elseif f5_local17 == 7001 then
        arg2:SetNumber(1, 2)
        arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg2:GetLife(), f5_local0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Float(30, 60), true, true, GuardID, 1)
        return 
    elseif f5_local17 == 7000 then
        arg2:SetNumber(1, 1)
        arg2:AddSubGoal(GOAL_COMMON_Guard, arg2:GetLife(), 9910, f5_local0, true, 1)
    elseif f5_local17 == 7006 then
        local f5_local19 = arg2:AddSubGoal(GOAL_EnemyKeepDist, arg2:GetLife(), f5_local0, f5_local1, f5_local12, f5_local13, 50, f5_local3, 30, 0, arg0.EmergencyDist, arg0.EmergencyEscapeRate, arg0.EmergencyEscapeInterval, arg0.EmergencyCheckDist)
        f5_local19:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    else
        arg2:AddSubGoal(GOAL_COMMON_Turn, arg2:GetLife(), f5_local0, 90, 0, 0)
        return 
    end
    
end

Goal.Update = function (arg0, arg1, arg2)
    local f6_local0 = arg2:GetParam(0)
    local f6_local1 = arg1:GetDist(f6_local0)
    if arg2:GetNumber(1) ~= 0 then
        local f6_local2 = -1
        if arg2:GetNumber(1) == 1 then
            f6_local2 = 7000
        elseif arg2:GetNumber(1) == 2 then
            f6_local2 = 7001
        end
        if f6_local1 < arg1:GetAIAttackParam(f6_local2, AI_ATTACK_PARAM_TYPE__MIN_OPTIMAL_DISTANCE) or arg1:GetAIAttackParam(f6_local2, AI_ATTACK_PARAM_TYPE__MAX_OPTIMAL_DISTANCE) < f6_local1 then
            arg1:TurnTo(TARGET_SELF)
            return GOAL_RESULT_Success
        end
    end
    if arg2:GetSubGoalNum() <= 0 then
        arg1:TurnTo(TARGET_SELF)
        return GOAL_RESULT_Success
    end
    return GOAL_RESULT_Continue
    
end

RegisterTableGoal(GOAL_EnemyApproachForAttack, "GOAL_EnemyApproachForAttack")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyApproachForAttack, true)
Goal.Update = Update_FinishOnNoSubGoal
Goal.Activate = function (arg0, arg1, arg2)
    local f7_local0 = arg2
    local f7_local1 = arg2.AddSubGoal
    local f7_local2 = GOAL_EnemyBeforeAttack
    local f7_local3 = arg2:GetLife()
    local f7_local4 = arg2:GetParam(0)
    local f7_local5 = arg2:GetParam(1)
    local f7_local6 = arg2:GetParam(2)
    local f7_local7 = arg2:GetParam(3)
    local f7_local8 = arg2:GetParam(4)
    local f7_local9 = arg2:GetParam(5)
    local f7_local10, f7_local11, f7_local12 = nil
    f7_local1(f7_local0, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7, f7_local8, f7_local9, f7_local10, f7_local11, f7_local12)
    
end

RegisterTableGoal(GOAL_EnemyStepRight, "GOAL_EnemyStepRight")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyStepRight, true)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyStepRight, 0, "", 0)
Goal.Activate = function (arg0, arg1, arg2)
    local f8_local0 = arg2:GetParam(0)
    local f8_local1 = arg2:GetParam(1)
    arg1:StartIdTimer(7110004)
    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, f8_local0, f8_local1, 0, true)
    
end

RegisterTableGoal(GOAL_EnemyStepLeft, "GOAL_EnemyStepLeft")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyStepLeft, true)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyStepLeft, 0, "", 0)
Goal.Activate = function (arg0, arg1, arg2)
    local f9_local0 = arg2:GetParam(0)
    local f9_local1 = arg2:GetParam(1)
    arg2:AddSubGoal(GOAL_COMMON_StepSafety, arg2:GetLife(), -1, -1, 1, -1, f9_local0, f9_local1, 0, true)
    
end

RegisterTableGoal(GOAL_EnemyStepBack, "GOAL_EnemyStepBack")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyStepBack, true)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyStepBack, 0, "", 0)
Goal.Activate = function (arg0, arg1, arg2)
    local f10_local0 = arg2:GetParam(0)
    local f10_local1 = arg2:GetParam(1)
    arg1:StartIdTimer(7110004)
    arg2:AddSubGoal(GOAL_COMMON_StepSafety, arg2:GetLife(), -1, 1, -1, -1, f10_local0, f10_local1, 0, true)
    
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        arg1:TurnTo(TARGET_SELF)
        return GOAL_RESULT_Success
    end
    return GOAL_RESULT_Continue
    
end

RegisterTableGoal(GOAL_EnemyStepLR, "GOAL_EnemyStepLR")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyStepLR, true)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyStepLR, 0, "", 0)
Goal.Activate = function (arg0, arg1, arg2)
    local f12_local0 = arg2:GetParam(0)
    local f12_local1 = arg2:GetParam(1)
    arg1:StartIdTimer(7110004)
    arg2:AddSubGoal(GOAL_COMMON_StepSafety, arg2:GetLife(), -1, -1, arg1:GetRandam_Float(1, 100), arg1:GetRandam_Float(1, 100), f12_local0, f12_local1, 0, true)
    
end

RegisterTableGoal(GOAL_EnemyStepBLR, "GOAL_EnemyStepBLR")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyStepBLR, true)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyStepBLR, 0, "", 0)
Goal.Activate = function (arg0, arg1, arg2)
    local f13_local0 = arg2:GetParam(0)
    local f13_local1 = arg2:GetParam(1)
    arg2:AddSubGoal(GOAL_COMMON_StepSafety, arg2:GetLife(), -1, arg1:GetRandam_Float(1, 100), arg1:GetRandam_Float(1, 100), arg1:GetRandam_Float(1, 100), f13_local0, f13_local1, 0, true)
    
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        arg1:TurnTo(TARGET_SELF)
        return GOAL_RESULT_Success
    end
    return GOAL_RESULT_Continue
    
end

RegisterTableGoal(GOAL_EnemyStepFront, "GOAL_EnemyStepFront")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyStepFront, true)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyStepFront, 0, "", 0)
Goal.Activate = function (arg0, arg1, arg2)
    local f15_local0 = arg2:GetParam(0)
    local f15_local1 = arg2:GetParam(1)
    arg1:StartIdTimer(7110004)
    arg2:AddSubGoal(GOAL_COMMON_StepSafety, arg2:GetLife(), 1, -1, -1, -1, f15_local0, f15_local1, 0, true)
    
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        arg1:TurnTo(TARGET_SELF)
        return GOAL_RESULT_Success
    end
    return GOAL_RESULT_Continue
    
end

RegisterTableGoal(GOAL_EnemyMoveToPoint, "GOAL_EnemyMoveToPoint")
ENABLE_COMBO_ATK_CANCEL(GOAL_EnemyMoveToPoint)
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyMoveToPoint, true)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyMoveToPoint, 0, "??W", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyMoveToPoint, 1, "??????", 1)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyMoveToPoint, 2, "???B???•c??", 2)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyMoveToPoint, 3, "??????", 3)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyMoveToPoint, 4, "?K?[?h???", 4)
Goal.Activate = function (arg0, arg1, arg2)
    local f17_local0 = arg2:GetParam(0)
    local f17_local1 = arg2:GetParam(1)
    local f17_local2 = arg2:GetParam(2)
    local f17_local3 = arg2:GetParam(3)
    local f17_local4 = arg2:GetParam(4)
    arg1:SetEventMoveTarget(f17_local0)
    arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, arg2:GetLife(), POINT_EVENT, f17_local2, f17_local1, f17_local3, f17_local4)
    
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        arg1:TurnTo(TARGET_SELF)
        return GOAL_RESULT_Success
    end
    return GOAL_RESULT_Continue
    
end

RegisterTableGoal(GOAL_EnemyFlexisbleMove, "GOAL_EnemyFlexisbleMove")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyFlexisbleMove, true)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyFlexisbleMove, 0, "", 0)
Goal.Activate = function (arg0, arg1, arg2)
    local f19_local0 = arg2:GetParam(0)
    local f19_local1 = arg2:GetParam(1)
    local f19_local2 = arg2:GetParam(2)
    local f19_local3 = arg2:GetParam(3)
    
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        arg1:TurnTo(TARGET_SELF)
        return GOAL_RESULT_Success
    end
    return GOAL_RESULT_Continue
    
end


