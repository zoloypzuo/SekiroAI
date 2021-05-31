RegisterTableLogic(LOGIC_ID_Syokusyu_531001)
Logic.Main = function (arg0, arg1)
    arg1:AddTopGoal(GOAL_COMMON_Wait, 10, TARGET_SELF, 0, 0, 0)
    
end

Logic.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_EventRequest) then
        local f2_local0 = arg1:GetEventRequest()
        if f2_local0 == 10 then
            local f2_local1 = arg1:GetRandam_Int(1, 100)
            if f2_local1 <= 33 then
                arg2:ClearSubGoal()
                arg1:AddTopGoal(GOAL_COMMON_AttackImmediateAction, 0.1, 20000, TARGET_SELF, 9999, 0, 0, 0, 0)
                return true
            elseif f2_local1 <= 66 then
                arg2:ClearSubGoal()
                arg1:AddTopGoal(GOAL_COMMON_AttackImmediateAction, 0.1, 20002, TARGET_SELF, 9999, 0, 0, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg1:AddTopGoal(GOAL_COMMON_AttackImmediateAction, 0.1, 20004, TARGET_SELF, 9999, 0, 0, 0, 0)
                return true
            end
        elseif f2_local0 == 20 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
                arg2:ClearSubGoal()
                arg1:AddTopGoal(GOAL_COMMON_AttackImmediateAction, 0.1, 20001, TARGET_SELF, 9999, 0, 0, 0, 0)
                return true
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
                arg2:ClearSubGoal()
                arg1:AddTopGoal(GOAL_COMMON_AttackImmediateAction, 0.1, 20003, TARGET_SELF, 9999, 0, 0, 0, 0)
                return true
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
                arg2:ClearSubGoal()
                arg1:AddTopGoal(GOAL_COMMON_AttackImmediateAction, 0.1, 20005, TARGET_SELF, 9999, 0, 0, 0, 0)
                return true
            end
        elseif f2_local0 == 30 then
            arg2:ClearSubGoal()
            arg1:AddTopGoal(GOAL_COMMON_AttackImmediateAction, 0.1, 20000, TARGET_SELF, 9999, 0, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        local f2_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
    end
    return false
    
end


