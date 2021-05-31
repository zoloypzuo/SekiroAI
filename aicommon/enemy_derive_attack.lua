RegisterTableGoal(GOAL_EnemyDeriveAttack, "GOAL_EnemyDeriveAttack")
ENABLE_COMBO_ATK_CANCEL(GOAL_EnemyDeriveAttack)
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyDeriveAttack, true)
Goal.Update = Update_FinishOnNoSubGoal
Goal.Activate = function (arg0, arg1, arg2)
    local f1_local0 = arg2:GetParam(4)
    for f1_local1 = 0, 15, 1 do
        arg1:SetStringIndexedArray("DeriveAttackMemory", f1_local1, 9999999)
    end
    arg2:AddSubGoal(GOAL_EnemyDeriveAttackMain, arg2:GetLife(), arg2:GetParam(0), arg2:GetParam(1), arg2:GetParam(2), arg2:GetParam(3), 1, f1_local0)
    
end

RegisterTableGoal(GOAL_EnemyDeriveAttackMain, "GOAL_EnemyDeriveAttackMain")
ENABLE_COMBO_ATK_CANCEL(GOAL_EnemyDeriveAttackMain)
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyDeriveAttackMain, true)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyDeriveAttackMain, 0, "???", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyDeriveAttackMain, 1, "?U??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyDeriveAttackMain, 2, "?h???m??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyDeriveAttackMain, 3, "???i??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyDeriveAttackMain, 4, "????i??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyDeriveAttackMain, 5, "?????U?????o???????", 0)
Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = arg2:GetParam(0)
    local f2_local1 = arg2:GetParam(1)
    local f2_local2 = arg2:GetParam(2)
    local f2_local3 = arg2:GetParam(3)
    local f2_local4 = arg2:GetParam(4)
    if f2_local3 <= 0 or f2_local4 > 16 then
        return 
    end
    local f2_local5 = arg2:GetParam(5)
    if f2_local5 == false then
        arg1:SetStringIndexedArray("DeriveAttackMemory", 0 + f2_local4 - 1, f2_local1)
    end
    local f2_local6 = arg1:GetDist(f2_local0)
    if f2_local1 <= 0 then
        return 
    end
    if f2_local6 < arg1:GetAIAttackParam(f2_local1, AI_ATTACK_PARAM_TYPE__MIN_OPTIMAL_DISTANCE) or arg1:GetAIAttackParam(f2_local1, AI_ATTACK_PARAM_TYPE__MAX_OPTIMAL_DISTANCE) < f2_local6 then
        return 
    end
    local f2_local7 = 0
    arg2:SetNumber(2, 0)
    if arg1:GetRandam_Float(0, 100) < f2_local2 then
        f2_local7 = 1
        arg2:SetNumber(2, 1)
    end
    if f2_local1 == 7008 then
        arg2:AddSubGoal(GOAL_EnemyStepFront, arg2:GetLife(), f2_local0, 6.5)
    elseif arg1:GetAIAttackParam(f2_local1, AI_ATTACK_PARAM_TYPE__IS_FIRST_ATTACK) == 1 then
        if f2_local7 == 1 then
            arg2:AddSubGoal(GOAL_EnemyTunableComboAttack, arg2:GetLife(), f2_local0, f2_local1)
        else
            arg2:AddSubGoal(GOAL_EnemyTunableAttack, arg2:GetLife(), f2_local0, f2_local1)
        end
    elseif f2_local7 == 1 then
        arg2:AddSubGoal(GOAL_EnemyComboRepeat, arg2:GetLife(), f2_local0, f2_local1)
    else
        arg2:AddSubGoal(GOAL_EnemyComboFinal, arg2:GetLife(), f2_local0, f2_local1)
    end
    arg2:SetNumber(0, 0)
    
end

Goal.Update = function (arg0, arg1, arg2)
    local f3_local0 = nil
    if arg2:GetNumber(2) == 1 then
        if arg2:GetNumber(0) == 0 and arg1:IsEnableComboAttack() then
            arg2:SetNumber(0, 1)
            arg2:SetNumber(1, 1)
            f3_local0 = SelectDeriveAttack(arg0, arg1, arg2, arg2:GetParam(1), arg2:GetParam(0), 0)
            if f3_local0 ~= 9999999 and arg1:GetAIAttackParam(f3_local0, AI_ATTACK_PARAM_TYPE__IS_FIRST_ATTACK) == 0 then
                arg2:AddSubGoal(GOAL_EnemyDeriveAttackMain, arg2:GetLife(), arg2:GetParam(0), f3_local0, arg2:GetParam(2), arg2:GetParam(3) - 1, arg2:GetParam(4) + 1)
            else
                arg2:AddSubGoal(GOAL_EnemyDeriveAttackSub, arg2:GetLife(), arg2:GetParam(0), arg2:GetParam(1), arg2:GetParam(2), arg2:GetParam(3) - 1, arg2:GetParam(4) + 1)
            end
        end
        if arg2:GetNumber(1) == 0 and arg1:IsEnableCancelAttack() then
            arg2:SetNumber(1, 1)
            arg2:SetNumber(0, 1)
            arg2:AddSubGoal(GOAL_EnemyDeriveAttackSub, arg2:GetLife(), arg2:GetParam(0), arg2:GetParam(1), arg2:GetParam(2), arg2:GetParam(3) - 1, arg2:GetParam(4) + 1)
        end
    end
    if arg2:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    end
    return GOAL_RESULT_Continue
    
end

RegisterTableGoal(GOAL_EnemyDeriveAttackSub, "GOAL_EnemyDeriveAttackSub")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyDeriveAttackSub, true)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyDeriveAttackSub, 0, "???", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyDeriveAttackSub, 1, "?U??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyDeriveAttackSub, 2, "?h???m??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyDeriveAttackSub, 3, "???i??", 0)
Goal.Activate = function (arg0, arg1, arg2)
    local f4_local0 = SelectDeriveAttack(arg0, arg1, arg2, arg2:GetParam(1), arg2:GetParam(0), 1)
    if f4_local0 ~= 9999999 then
        arg2:AddSubGoal(GOAL_EnemyDeriveAttackMain, arg2:GetLife(), arg2:GetParam(0), f4_local0, arg2:GetParam(2), arg2:GetParam(3), arg2:GetParam(4))
    end
    
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        arg1:TurnTo(TARGET_SELF)
        return GOAL_RESULT_Success
    end
    return GOAL_RESULT_Continue
    
end

RegisterTableGoal(GOAL_EnemyDeriveAttackDummy, "GOAL_EnemyDeriveAttackDummy")
Goal.Update = GOAL_EnemyDeriveAttackDummy
Goal.Activate = function (arg0, arg1, arg2)
    
end


