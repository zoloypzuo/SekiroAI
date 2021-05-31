RegisterTableLogic(530000)
Logic.Main = function (arg0, arg1)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 110060)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 110015)
    if arg1:IsBattleState() then
        _COMMON_SetBattleGoal(arg1)
    else
        arg1:AddTopGoal(GOAL_COMMON_Wait, 1.5, TARGET_SELF, 0, 0, 0)
    end
    
end

Logic.Interrupt = function (arg0, arg1, arg2)
    local f2_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptType(0) == 110060 then
            arg1:SetStringIndexedNumber("targetDeadFlag", 1)
            arg2:ClearSubGoal()
            arg1:AddTopGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, 9999, TARGET_SELF, true, -1)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 110015 then
            arg1:SetStringIndexedNumber("TargetDeadFlag", 0)
            arg2:ClearSubGoal()
            arg1:AddTopGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
            return true
        end
    end
    return false
    
end


