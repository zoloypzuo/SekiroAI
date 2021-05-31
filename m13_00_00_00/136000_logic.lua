RegisterTableLogic(136000)
Logic.Main = function (arg0, arg1)
    if COMMON_HiPrioritySetup(arg1) then
        return true
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 220020) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 3136200) then
            arg1:SetEventMoveTarget(2002241)
            if arg1:GetDist(POINT_EVENT) >= 1 then
                arg1:AddTopGoal(GOAL_COMMON_ApproachTarget, 10, POINT_EVENT, 1, TARGET_SELF, false, -1)
            else
                arg1:AddTopGoal(GOAL_COMMON_Turn, 0.5, POINT_EVENT, 0, 0, 0)
                arg1:AddTopGoal(GOAL_COMMON_Wait, 3, TARGET_SELF, 0, 0, 0)
            end
        elseif arg0.KugutsuAct(arg1, goal) then
            return true
        end
    elseif arg1:IsFinishTimer(AI_TIMER_TEKIMAWASHI_REACTION) == false then
        JuzuReaction(arg1, goal, 0, 20100)
        return true
    end
    COMMON_EzSetup(arg1)
    
end

Logic.Interrupt = function (arg0, arg1, arg2)
    return false
    
end

Logic.KugutsuAct = function (arg0, arg1)
    if arg0:IsBattleState() == false and arg0:IsFindState() == false then
        arg0:AddTopGoal(GOAL_KugutsuAct_20000_Battle, -1)
        return true
    end
    return false
    
end


