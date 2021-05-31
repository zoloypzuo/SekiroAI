RegisterTableGoal(GOAL_EnemyHandyAttack, "GOAL_EnemyHandyAttack")
ENABLE_COMBO_ATK_CANCEL(GOAL_EnemyHandyAttack)
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyHandyAttack, true)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyHandyAttack, 0, "???", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyHandyAttack, 1, "?`?F?C????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyHandyAttack, 2, "?U??1", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyHandyAttack, 3, "?U??2", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyHandyAttack, 4, "?U??3", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyHandyAttack, 5, "?U??4", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyHandyAttack, 6, "?U??5", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyHandyAttack, 7, "?U??6", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyHandyAttack, 8, "?m??1", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyHandyAttack, 9, "?m??2", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyHandyAttack, 10, "?m??3", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyHandyAttack, 11, "?m??4", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_EnemyHandyAttack, 12, "?m??5", 0)
Goal.Activate = function (arg0, arg1, arg2)
    local f1_local0 = arg2:GetParam(2)
    if f1_local0 == nil or f1_local0 <= 0 then
        print("[HANDY ATTACK]" .. "?I??")
        return 
    end
    local f1_local1 = arg2:GetParam(3)
    local f1_local2 = arg2:GetParam(8)
    local f1_local3 = arg2:GetParam(0)
    local f1_local4 = arg1:GetDist(f1_local3)
    local f1_local5 = 0
    if arg1:GetRandam_Float(0.1, 100) < f1_local2 then
        f1_local5 = 1
    else
        print("[HANDY ATTACK]" .. f1_local0 .. "?F???I????????U?????q?????")
    end
    if f1_local0 == 7008 then
        arg2:AddSubGoal(GOAL_EnemyStepFront, arg2:GetLife(), f1_local3, arg1:GetAIAttackParam(7008, AI_ATTACK_PARAM_TYPE__MIN_ARRIVE_DISTANCE))
    elseif f1_local0 == 7003 then
        arg2:AddSubGoal(GOAL_EnemyStepLR, arg2:GetLife(), f1_local3, arg1:GetAIAttackParam(7003, AI_ATTACK_PARAM_TYPE__MIN_ARRIVE_DISTANCE))
    elseif f1_local0 == 7004 then
        arg2:AddSubGoal(GOAL_EnemyStepBack, arg2:GetLife(), f1_local3, arg1:GetAIAttackParam(7004, AI_ATTACK_PARAM_TYPE__MIN_ARRIVE_DISTANCE))
    elseif arg1:GetAIAttackParam(f1_local0, AI_ATTACK_PARAM_TYPE__IS_FIRST_ATTACK) == 1 then
        if f1_local1 == nil or f1_local1 <= 0 or f1_local5 == 0 then
            arg2:AddSubGoal(GOAL_EnemyTunableAttack, arg2:GetLife(), f1_local3, f1_local0)
        else
            arg2:AddSubGoal(GOAL_EnemyTunableComboAttack, arg2:GetLife(), f1_local3, f1_local0)
        end
    elseif f1_local1 == nil or f1_local1 <= 0 or f1_local5 == 0 then
        arg2:AddSubGoal(GOAL_EnemyComboFinal, arg2:GetLife(), f1_local3, f1_local0)
    else
        arg2:AddSubGoal(GOAL_EnemyComboRepeat, arg2:GetLife(), f1_local3, f1_local0)
    end
    arg2:SetNumber(1, 0)
    if f1_local1 ~= nil and f1_local1 > 0 and f1_local5 == 1 then
        arg2:SetNumber(1, 1)
    end
    
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    end
    if arg2:GetNumber(1) == 1 then
        local f2_local0 = arg2:GetParam(1)
        if arg1:IsEnableComboAttack() then
            arg2:SetNumber(1, 0)
            if arg1:IsHitAttack() then
                local f2_local1 = arg2:GetParam(0)
                local f2_local2 = arg2:GetParam(3)
                arg2:AddSubGoal(GOAL_EnemyHandyAttack, arg2:GetLife(), f2_local1, arg2:GetParam(1), arg2:GetParam(3), arg2:GetParam(4), arg2:GetParam(5), arg2:GetParam(6), arg2:GetParam(7), nil, arg2:GetParam(8), arg2:GetParam(9), arg2:GetParam(10), arg2:GetParam(11), nil)
            elseif f2_local0 == 0 then
                local f2_local1 = arg2:GetParam(0)
                local f2_local2 = arg1:GetDist(f2_local1)
                local f2_local3 = arg2:GetParam(3)
                local f2_local4 = arg1:GetAIAttackParam(f2_local3, AI_ATTACK_PARAM_TYPE__COMBO_EXEC_DISTANCE)
                local f2_local5 = arg1:GetAIAttackParam(f2_local3, AI_ATTACK_PARAM_TYPE__COMBO_EXEC_RANGE)
                if arg1:IsFinishAttackCoolTime(f2_local3) and f2_local2 <= f2_local4 and arg1:IsInsideTarget(f2_local1, AI_DIR_CENTER, f2_local5) then
                    arg2:AddSubGoal(GOAL_EnemyHandyAttack, arg2:GetLife(), f2_local1, arg2:GetParam(1), arg2:GetParam(3), arg2:GetParam(4), arg2:GetParam(5), arg2:GetParam(6), arg2:GetParam(7), nil, arg2:GetParam(8), arg2:GetParam(9), arg2:GetParam(10), arg2:GetParam(11), nil)
                end
            end
        end
    end
    return GOAL_RESULT_Continue
    
end


