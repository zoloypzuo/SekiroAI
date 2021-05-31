RegisterTableLogic(507300)
Logic.Main = function (arg0, arg1)
    local f1_local0 = arg1:GetEventRequest()
    if arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
        _COMMON_SetBattleGoal(arg1)
    elseif f1_local0 == 30 then
        arg1:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3030, TARGET_ENE_0, 9999, 0, 0, 0, 0)
        arg1:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 20000, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    else
        arg1:AddTopGoal(GOAL_COMMON_Wait, 10, TARGET_SELF, 0, 0, 0)
    end
    
end

Logic.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_EventRequest) then
        arg1:Replanning()
        return true
    end
    return false
    
end


