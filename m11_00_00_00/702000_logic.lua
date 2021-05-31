RegisterTableLogic(702000)
Logic.Main = function (arg0, arg1)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 220010)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 107710)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 110060)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 110015)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 107900)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 230541)
    if COMMON_HiPrioritySetup(arg1) then
        return true
    end
    if arg1:GetStringIndexedNumber("firstSpRead") == 0 then
        arg1:SetStringIndexedNumber("maxSp", arg1:GetSp(TARGET_SELF))
        arg1:SetStringIndexedNumber("firstSpRead", 1)
    end
    COMMON_EzSetup(arg1, COMMON_FLAG_BOSS)
    
end

Logic.Interrupt = function (arg0, arg1, arg2)
    local f2_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if f2_local0 == 220010 then
            arg1:ClearEnemyTarget()
            return true
        elseif f2_local0 == 107710 then
            arg1:Replanning()
            return true
        elseif f2_local0 == 230541 then
            return arg0.YubibueInterruptTiming(arg1, arg2)
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

Logic.YubibueInterruptTiming = function (arg0, arg1, arg2)
    if arg0:GetNumber(9) >= 3 - 1 then
        arg1:ClearSubGoal()
        arg0:AddTopGoal(GOAL_COMMON_EndureAttack, 0.1, 20003, TARGET_ENE_0, 9999, 0)
        return true
    end
    arg0:SetNumber(9, arg0:GetNumber(9) + 1)
    
end


