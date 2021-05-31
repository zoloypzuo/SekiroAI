RegisterTableLogic(506300)
Logic.Main = function (arg0, arg1)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 107710)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 110060)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 110015)
    if COMMON_HiPrioritySetup(arg1, COMMON_FLAG_BOSS) then
        return true
    end
    COMMON_EzSetup(arg1, COMMON_FLAG_BOSS)
    
end

Logic.Interrupt = function (arg0, arg1, arg2)
    local f2_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if f2_local0 == 107710 then
            arg1:Replanning()
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 110060 then
            arg1:SetStringIndexedNumber("targetDeadFlag", 1)
            arg1:Replanning()
            retval = false
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 110015 then
            arg1:SetStringIndexedNumber("targetDeadFlag", 0)
            arg1:Replanning()
            retval = false
        end
    end
    return false
    
end


