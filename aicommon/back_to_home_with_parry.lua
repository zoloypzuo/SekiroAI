RegisterTableGoal(GOAL_COMMON_BackToHome_With_Parry, "BackToHomeWithParry")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_COMMON_BackToHome_With_Parry, true)
Goal.Initialize = function (arg0, arg1, arg2)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    arg2:AddSubGoal(GOAL_COMMON_BackToHome, arg2:GetLife(), 0, false, 0, 0, TARGET_ENE_0)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_ParryTiming) then
        return Common_Parry(arg1, arg2, 0, 0)
    end
    if arg1:IsInterupt(INTERUPT_ShootImpact) then
        local f5_local0 = -1
        if arg1:HasSpecialEffectId(TARGET_SELF, 221000) then
            f5_local0 = 0
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 221001) then
            f5_local0 = 1
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 221002) then
            f5_local0 = 2
        end
        if f5_local0 == -1 then
            return false
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3100, TARGET_ENE_0, 9999, 0)
            return true
        end
    end
    return false
    
end


