RegisterTableLogic(LOGIC_ID_Nanimosinai11001)
Logic.Main = function (arg0, arg1)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, COMMON_SP_EFFECT_QUICK_TURN_TO_PC)
    arg1:AddTopGoal(GOAL_COMMON_Wait, 10, TARGET_NONE, 0, 0, 0)
    
end

Logic.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        local f2_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
        if f2_local0 == COMMON_SP_EFFECT_QUICK_TURN_TO_PC then
            arg2:ClearSubGoal()
            arg1:AddTopGoal(GOAL_COMMON_Turn, 3, TARGET_LOCALPLAYER, 20, -1, GOAL_RESULT_Success, true)
            arg1:AddTopGoal(GOAL_COMMON_Wait, 0.5, TARGET_LOCALPLAYER, 0, 0, 0)
            return true
        end
    end
    return false
    
end


