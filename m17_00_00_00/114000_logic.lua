RegisterTableLogic(114000)
Logic.Main = function (arg0, arg1)
    if COMMON_HiPrioritySetup(arg1) then
        return true
    end
    local f1_local0 = arg1:GetEventRequest()
    local f1_local1 = arg1:GetDist(TARGET_ENE_0)
    if arg1:HasSpecialEffectId(TARGET_SELF, 3114010) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 3114002) then
            arg1:AddTopGoal(GOAL_COMMON_Wait, 10, TARGET_SELF, 0, 0, 0)
        else
            arg1:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 20000, TARGET_ENE_0, 9999, 0, 0, 0, 0)
        end
    elseif arg1:IsBattleState() and not arg1:HasSpecialEffectId(TARGET_SELF, 3114010) then
        _COMMON_SetBattleGoal(arg1)
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
        arg1:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    else
        arg1:AddTopGoal(GOAL_COMMON_Wait, 0.1, TARGET_SELF, 0, 0, 0)
    end
    
end

Logic.Interrupt = function (arg0, arg1, arg2)
    return false
    
end


