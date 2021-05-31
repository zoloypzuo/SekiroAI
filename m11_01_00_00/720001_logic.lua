RegisterTableLogic(720001)
Logic.Main = function (arg0, arg1)
    local f1_local0 = arg1:GetEventRequest(0)
    local f1_local1 = arg1:GetDist(POINT_INIT_POSE)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, COMMON_SP_EFFECT_QUICK_TURN_TO_PC)
    if f1_local0 == 100 then
        if f1_local1 > 0.5 then
            arg1:AddTopGoal(GOAL_COMMON_BackToHome, 30, 0, false, 0, 0, TARGET_SELF)
        else
            arg1:AddTopGoal(GOAL_COMMON_Turn, 5, POINT_INIT_POSE, 30, -1)
            arg1:AddTopGoal(GOAL_COMMON_Wait, 5, TARGET_NONE)
        end
    else
        arg1:AddTopGoal(GOAL_COMMON_Wait, 10, TARGET_NONE, 0, 0, 0)
    end
    
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


