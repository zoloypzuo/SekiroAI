RegisterTableGoal(GOAL_EnemyTunableAttack, "GOAL_EnemyTunableAttack")
ENABLE_COMBO_ATK_CANCEL(GOAL_EnemyTunableAttack)
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyTunableAttack, true)
Goal.Activate = function (arg0, arg1, arg2)
    local f1_local0 = arg2:GetParam(0)
    local f1_local1 = arg2:GetParam(1)
    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, arg2:GetLife(), f1_local1, f1_local0, arg1:GetAIAttackParam(f1_local1, AI_ATTACK_PARAM_TYPE__SUCCESS_DISTANCE), arg1:GetAIAttackParam(f1_local1, AI_ATTACK_PARAM_TYPE__TURN_TIME_BEFORE_ATTACK), arg1:GetAIAttackParam(f1_local1, AI_ATTACK_PARAM_TYPE__FRONT_ANGLE_RANGE), arg1:GetAIAttackParam(f1_local1, AI_ATTACK_PARAM_TYPE__UP_ANGLE_THRESHOLD), arg1:GetAIAttackParam(f1_local1, AI_ATTACK_PARAM_TYPE__DOWN_ANGLE_THRESHOLD))
    
end

RegisterTableGoal(GOAL_EnemyTunableComboAttack, "GOAL_EnemyTunableComboAttack")
ENABLE_COMBO_ATK_CANCEL(GOAL_EnemyTunableComboAttack)
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyTunableComboAttack, true)
Goal.Activate = function (arg0, arg1, arg2)
    local f2_local0 = arg2:GetParam(0)
    local f2_local1 = arg2:GetParam(1)
    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, arg2:GetLife(), f2_local1, f2_local0, arg1:GetAIAttackParam(f2_local1, AI_ATTACK_PARAM_TYPE__SUCCESS_DISTANCE), arg1:GetAIAttackParam(f2_local1, AI_ATTACK_PARAM_TYPE__TURN_TIME_BEFORE_ATTACK), arg1:GetAIAttackParam(f2_local1, AI_ATTACK_PARAM_TYPE__FRONT_ANGLE_RANGE), arg1:GetAIAttackParam(f2_local1, AI_ATTACK_PARAM_TYPE__UP_ANGLE_THRESHOLD), arg1:GetAIAttackParam(f2_local1, AI_ATTACK_PARAM_TYPE__DOWN_ANGLE_THRESHOLD), arg1:GetAIAttackParam(f2_local1, AI_ATTACK_PARAM_TYPE__FRONT_ANGLE_RANGE))
    
end

RegisterTableGoal(GOAL_EnemyComboRepeat, "GOAL_EnemyComboRepeat")
ENABLE_COMBO_ATK_CANCEL(GOAL_EnemyComboRepeat)
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyComboRepeat, true)
Goal.Activate = function (arg0, arg1, arg2)
    local f3_local0 = arg2:GetParam(0)
    local f3_local1 = arg2:GetParam(1)
    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, arg2:GetLife(), f3_local1, f3_local0, arg1:GetAIAttackParam(f3_local1, AI_ATTACK_PARAM_TYPE__SUCCESS_DISTANCE), arg1:GetAIAttackParam(f3_local1, AI_ATTACK_PARAM_TYPE__UP_ANGLE_THRESHOLD), arg1:GetAIAttackParam(f3_local1, AI_ATTACK_PARAM_TYPE__DOWN_ANGLE_THRESHOLD))
    
end

RegisterTableGoal(GOAL_EnemyComboFinal, "GOAL_EnemyComboFinal")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_EnemyComboFinal, true)
Goal.Activate = function (arg0, arg1, arg2)
    local f4_local0 = arg2:GetParam(0)
    local f4_local1 = arg2:GetParam(1)
    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, arg2:GetLife(), f4_local1, f4_local0, arg1:GetAIAttackParam(f4_local1, AI_ATTACK_PARAM_TYPE__SUCCESS_DISTANCE), arg1:GetAIAttackParam(f4_local1, AI_ATTACK_PARAM_TYPE__UP_ANGLE_THRESHOLD), arg1:GetAIAttackParam(f4_local1, AI_ATTACK_PARAM_TYPE__DOWN_ANGLE_THRESHOLD))
    
end


