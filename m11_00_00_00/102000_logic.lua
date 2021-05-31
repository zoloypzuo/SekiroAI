RegisterTableLogic(102000)
Logic.Main = function (arg0, arg1)
    arg1:AddObserveRegion(30, TARGET_SELF, COMMON_REGION_FORCE_WALK_M11_0)
    if COMMON_HiPrioritySetup(arg1) then
        return true
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 220020) then
        if arg0.KugutsuAct(arg1, goal) then
            return true
        end
    elseif arg1:IsFinishTimer(AI_TIMER_TEKIMAWASHI_REACTION) == false then
        JuzuReaction(arg1, goal, 1, 20105)
        return true
    end
    if arg1:GetStringIndexedNumber("firstSpRead") == 0 then
        arg1:SetStringIndexedNumber("maxSp", arg1:GetSp(TARGET_SELF))
        arg1:SetStringIndexedNumber("firstSpRead", 1)
    end
    local f1_local0 = arg1:GetRandam_Int(1, 100)
    local f1_local1 = arg1:GetHpLastTarget()
    local f1_local2 = arg1:GetEventRequest()
    if f1_local2 == 10 then
        if not arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
            arg1:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 1, 1040, TARGET_ENE_0, 9999, 0, 0, 0, 0)
        end
        arg1:SetEventMoveTarget(9622492)
        arg1:AddTopGoal(GOAL_COMMON_ApproachTarget, 0.5, POINT_EVENT, 0, TARGET_SELF, true, -1)
        arg1:SetStringIndexedNumber("findFlag", 1)
    else
        COMMON_EzSetup(arg1)
    end
    
end

Logic.Interrupt = function (arg0, arg1, arg2)
    local f2_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
    if arg1:IsInterupt(INTERUPT_EventRequest) then
        local f2_local1 = arg1:GetEventRequest()
        if f2_local1 == 10 then
            arg1:Replanning()
        end
    end
    return false
    
end

Logic.KugutsuAct = function (arg0, arg1)
    if arg0:IsBattleState() == false and arg0:IsFindState() == false then
        arg0:AddTopGoal(GOAL_KugutsuAct_20000_Battle, -1)
        return true
    end
    return false
    
end


