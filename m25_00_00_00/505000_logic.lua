RegisterTableLogic(505000)
Logic.Main = function (arg0, arg1)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 220010)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 110060)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 110015)
    if COMMON_HiPrioritySetup(arg1) then
        return true
    end
    local f1_local0 = arg1:GetRandam_Int(1, 100)
    local f1_local1 = arg1:GetHpLastTarget()
    local f1_local2 = arg1:GetRandam_Float(3.5, 4.5)
    if not not arg1:IsFindState() or arg1:IsBattleState() then
        arg1:DeleteObserve(0)
        if arg1:HasSpecialEffectId(TARGET_SELF, 200004) then

        elseif arg1:HasSpecialEffectId(TARGET_SELF, 200002) then

        else
            arg1:AddTopGoal(GOAL_COMMON_EndureAttack, 1, 1040, TARGET_ENE_0, 9999, 0, 0, 0, 0)
        end
        _COMMON_SetBattleGoal(arg1)
        arg1:SetStringIndexedNumber("findFlag", 1)
        return true
    elseif arg1:IsCautionState() then
        arg1:DeleteObserve(0)
        if arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
            arg1:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 1, 401000, TARGET_SELF, 9999, 0, 0, 0, 0)
            arg1:SetStringIndexedNumber("findFlag", 0)
        elseif not arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            arg1:AddTopGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 40, -1, GOAL_RESULT_Success, true)
            arg1:SetStringIndexedNumber("findFlag", 0)
        end
        return true
    else
        if arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
            arg1:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 1, 401000, TARGET_SELF, 9999, 0, 0, 0, 0)
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 3505040) == false then
            arg1:AddObserveArea(0, TARGET_SELF, TARGET_EVENT, AI_DIR_TYPE_FR, 120, 30)
        end
        arg1:SetStringIndexedNumber("findFlag", 0)
        _COMMON_AddNonBattleGoal(arg1, -1, -1, true)
        return true
    end
    
end

Logic.Interrupt = function (arg0, arg1, arg2)
    local f2_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) and arg1:IsInsideObserve(0) and arg1:IsCautionState() == false and arg1:IsBattleState() == false then
        arg1:DeleteObserve(0)
        if arg1:HasSpecialEffectId(TARGET_EVENT, 3505050) == false then

        else
            arg2:ClearSubGoal()
            arg1:AddTopGoal(GOAL_COMMON_Wait, 2.5, TARGET_NONE, 0, 0, 0)
            arg1:AddTopGoal(GOAL_COMMON_ComboAttackTunableSpin, 2.5, 20011, TARGET_EVENT, 9999, 0, 0)
        end
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if f2_local0 == 220010 then
            arg1:ClearEnemyTarget()
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 110060 then
            arg1:SetStringIndexedNumber("targetDeadFlag", 1)
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, 9999, TARGET_SELF, true, -1)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 110015 then
            arg1:SetStringIndexedNumber("TargetDeadFlag", 0)
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_Wait, 0, TARGET_ENE_0, 0, 0, 0)
            return true
        end
    end
    return false
    
end


