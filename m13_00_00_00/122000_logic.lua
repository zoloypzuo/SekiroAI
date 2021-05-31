RegisterTableLogic(122000)
Logic.Main = function (arg0, arg1)
    if COMMON_HiPrioritySetup(arg1) then
        return true
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 220020) then
        if arg0.KugutsuAct(arg1, goal) then
            return true
        end
    elseif arg1:IsFinishTimer(AI_TIMER_TEKIMAWASHI_REACTION) == false then
        JuzuReaction(arg1, goal, 0, 20105)
        return true
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 3122510) and (arg1:IsFindState() == true or arg1:IsBattleState() == true) and arg1:GetNumber(9) == 0 then
        local f1_local0 = arg1:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 200, TARGET_ENE_0, 9999, 0, 0, 0, 0)
        f1_local0:TimingSetNumber(9, 1, AI_TIMING_SET__ACTIVATE)
        return true
    end
    COMMON_EzSetup(arg1)
    
end

Logic.Interrupt = function (arg0, arg1, arg2)
    local f2_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
    local f2_local1 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInterupt(INTERUPT_ParryTiming) and arg1:HasSpecialEffectId(TARGET_SELF, 3122110) then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 109012) then
                if arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 90, PC_ATTACK_DIST_CROUCH) then
                    arg2:ClearSubGoal()
                    arg2:AddTopGoal(GOAL_COMMON_EndureAttack, 0.1, 3101, TARGET_ENE_0, 9999, 0)
                    return true
                end
            elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 109970) then
                if arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 90, PC_ATTACK_DIST_THRUST) then
                    if arg1:IsTargetGuard(TARGET_SELF) then
                        return false
                    else
                        arg2:ClearSubGoal()
                        arg1:AddTopGoal(GOAL_COMMON_EndureAttack, 0.1, 3100, TARGET_ENE_0, 9999, 0)
                        return true
                    end
                end
            elseif arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 90, PC_ATTACK_DIST_STAND) then
                if f2_local1 <= Get_ConsecutiveGuardCount(arg1) * 50 then
                    arg2:ClearSubGoal()
                    arg1:AddTopGoal(GOAL_COMMON_EndureAttack, 0.1, 3101, TARGET_ENE_0, 9999, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg1:AddTopGoal(GOAL_COMMON_EndureAttack, 0.1, 3100, TARGET_ENE_0, 9999, 0)
                    return true
                end
            elseif arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 90, 5) then

            else

            end
        end
        return false
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


