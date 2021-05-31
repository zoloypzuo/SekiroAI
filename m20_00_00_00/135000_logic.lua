RegisterTableLogic(135000)
Logic.Main = function (arg0, arg1)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 230541)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    if COMMON_HiPrioritySetup(arg1) then
        return true
    end
    COMMON_EzSetup(arg1)
    
end

Logic.Interrupt = function (arg0, arg1, arg2)
    local f2_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and f2_local0 == 230541 then
        if arg1:GetNumber(2) >= 3 - 1 then
            arg2:ClearSubGoal()
            arg1:AddTopGoal(GOAL_COMMON_EndureAttack, 0.1, 20006, TARGET_ENE_0, 9999, 0)
            return true
        end
        arg1:SetNumber(2, arg1:GetNumber(2) + 1)
    end
    return false
    
end


