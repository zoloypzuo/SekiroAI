g_LogicTable = {}
g_GoalTable = {}
Logic = nil
Goal = nil
function RegisterTableLogic(arg0)
    REGISTER_LOGIC_FUNC(arg0, "TableLogic_" .. arg0, "TableLogic_" .. arg0 .. "_Interrupt")
    Logic = {}
    g_LogicTable[arg0] = Logic
    
end

function RegisterTableGoal(arg0, arg1)
    REGISTER_GOAL(arg0, arg1)
    Goal = {}
    g_GoalTable[arg0] = Goal
    
end

function SetupScriptLogicInfo(arg0, arg1)
    local f3_local0 = g_LogicTable[arg0]
    if f3_local0 ~= nil then
        local f3_local1 = _CreateInterruptTypeInfoTable(f3_local0)
        local f3_local2 = f3_local0.Update ~= nil
        local f3_local3 = _IsInterruptFuncExist(f3_local1, f3_local0)
        f3_local0.InterruptInfoTable = f3_local1
        arg1:SetTableLogic(f3_local2, f3_local3)
    else
        arg1:SetNormalLogic()
    end
    
end

function SetupScriptGoalInfo(arg0, arg1)
    local f4_local0 = g_GoalTable[arg0]
    if f4_local0 ~= nil then
        local f4_local1 = _CreateInterruptTypeInfoTable(f4_local0)
        local f4_local2 = f4_local0.Update ~= nil
        local f4_local3 = f4_local0.Terminate ~= nil
        local f4_local4 = _IsInterruptFuncExist(f4_local1, f4_local0)
        local f4_local5 = f4_local0.Initialize ~= nil
        f4_local0.InterruptInfoTable = f4_local1
        arg1:SetTableGoal(f4_local2, f4_local3, f4_local4, f4_local5)
    else
        arg1:SetNormalGoal()
    end
    
end

function ExecTableLogic(arg0, arg1)
    local f5_local0 = g_LogicTable[arg1]
    if f5_local0 ~= nil then
        local f5_local1 = f5_local0.Main
        if f5_local1 ~= nil then
            f5_local1(f5_local0, arg0)
        end
    end
    
end

function UpdateTableLogic(arg0, arg1)
    local f6_local0 = g_LogicTable[arg1]
    if f6_local0 ~= nil then
        local f6_local1 = f6_local0.Update
        if f6_local1 ~= nil then
            f6_local1(f6_local0, arg0)
        end
    end
    
end

function InitializeTableGoal(arg0, arg1, arg2)
    local f7_local0 = false
    local f7_local1 = g_GoalTable[arg2]
    if f7_local1 ~= nil then
        local f7_local2 = f7_local1.Initialize
        if f7_local2 ~= nil then
            f7_local2(f7_local1, arg0, arg1, arg0:GetChangeBattleStateCount())
            f7_local0 = true
        end
    end
    return f7_local0
    
end

function ActivateTableGoal(arg0, arg1, arg2)
    local f8_local0 = false
    local f8_local1 = g_GoalTable[arg2]
    if f8_local1 ~= nil then
        local f8_local2 = f8_local1.Activate
        if f8_local2 ~= nil then
            f8_local0 = f8_local2(f8_local1, arg0, arg1)
        end
    end
    return f8_local0
    
end

function UpdateTableGoal(arg0, arg1, arg2)
    local f9_local0 = GOAL_RESULT_Continue
    local f9_local1 = g_GoalTable[arg2]
    if f9_local1 ~= nil then
        local f9_local2 = f9_local1.Update
        if f9_local2 ~= nil then
            f9_local0 = f9_local2(f9_local1, arg0, arg1)
        end
    end
    return f9_local0
    
end

function TerminateTableGoal(arg0, arg1, arg2)
    local f10_local0 = false
    local f10_local1 = g_GoalTable[arg2]
    if f10_local1 ~= nil then
        local f10_local2 = f10_local1.Terminate
        if f10_local2 ~= nil then
            f10_local0 = f10_local2(f10_local1, arg0, arg1)
        end
    end
    return f10_local0
    
end

function InterruptTableLogic(arg0, arg1, arg2, arg3)
    local f11_local0 = false
    local f11_local1 = g_LogicTable[arg2]
    if f11_local1 ~= nil then
        f11_local0 = _InterruptTableGoal_TypeCall(arg0, arg1, f11_local1, arg3)
    end
    return f11_local0
    
end

function InterruptTableLogic_Common(arg0, arg1, arg2)
    local f12_local0 = false
    local f12_local1 = g_LogicTable[arg2]
    if f12_local1 ~= nil and f12_local1.Interrupt ~= nil and f12_local1:Interrupt(arg0, arg1) then
        f12_local0 = true
    end
    if arg0:IsInterupt(INTERUPT_MovedEnd_OnFailedPath) then
        arg0:DecideWalkAroundPos()
        local f12_local2 = arg0:GetActTypeOnFailedPathEnd()
        if f12_local2 == 0 then
            f12_local0 = true
        elseif f12_local2 == 1 then
            arg1:ClearSubGoal()
            arg0:AddTopGoal(GOAL_COMMON_Wait_On_FailedPath, -1, 0.1)
            f12_local0 = true
        elseif f12_local2 == 2 then
            arg1:ClearSubGoal()
            arg0:AddTopGoal(GOAL_COMMON_Wait_On_FailedPath, 0.5, 0.1)
            f12_local0 = true
        elseif f12_local2 == 3 then
            arg1:ClearSubGoal()
            arg0:AddTopGoal(GOAL_COMMON_WalkAround_On_FailedPath, -1, 0.1)
            f12_local0 = true
        elseif f12_local2 == 4 then
            arg1:ClearSubGoal()
            arg0:AddTopGoal(GOAL_COMMON_BackToHome_On_FailedPath, 100, 1, 2)
            f12_local0 = true
        end
        arg0:SetStringIndexedNumber("Reach_EndOnFailedPath", 1)
        return f12_local0
    end
    if not not arg0:HasSpecialEffectId(TARGET_SELF, 205050) or arg0:HasSpecialEffectId(TARGET_SELF, 205051) then
        return false
    end
    if arg0:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        local f12_local2 = arg0:GetSpecialEffectActivateInterruptType(0)
        if f12_local2 == COMMON_SP_EFFECT_PC_RETURN then
            arg0:Replanning()
            return true
        elseif f12_local2 == COMMON_SP_EFFECT_PC_DEAD then
            arg0:SetStringIndexedNumber("targetDeadFlag", 1)
            arg0:Replanning()
            return false
        elseif f12_local2 == COMMON_SP_EFFECT_PC_REVIVAL_AFTER_2 and arg0:HasSpecialEffectId(TARGET_SELF, 200000) then
            if arg0:HasSpecialEffectId(TARGET_SELF, COMMON_SP_EFFECT_BOSS) then
                arg0:Replanning()
                return true
            else
                arg1:ClearSubGoal()
                arg0:AddTopGoal(GOAL_COMMON_EndureAttack, 10, 1040, TARGET_ENE_0, 9999, 0, 0, 0, 0)
                return true
            end
        elseif f12_local2 == COMMON_SP_EFFECT_PC_REVIVAL_AFTER_2 and arg0:HasSpecialEffectId(TARGET_SELF, 200004) then
            if arg0:HasSpecialEffectId(TARGET_SELF, COMMON_SP_EFFECT_BOSS) then
                arg0:Replanning()
                return true
            else
                arg1:ClearSubGoal()
                arg0:AddTopGoal(GOAL_COMMON_EndureAttack, 10, 401040, TARGET_ENE_0, 9999, 0, 0, 0, 0)
                return true
            end
        elseif f12_local2 == COMMON_SP_EFFECT_PC_REVIVAL_AFTER_3 then
            arg0:Replanning()
            return true
        elseif f12_local2 == COMMON_SP_EFFECT_QUICK_TURN_TO_PC then
            arg1:ClearSubGoal()
            local f12_local3 = arg0:AddTopGoal(GOAL_COMMON_Turn, 3, TARGET_LOCALPLAYER, 20, -1, GOAL_RESULT_Success, true)
            f12_local3:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
            arg0:AddTopGoal(GOAL_COMMON_Wait, 0.5, TARGET_LOCALPLAYER, 0, 0, 0)
            return true
        elseif f12_local2 == COMMON_SP_EFFECT_ENEMY_TURN then
            if arg0:HasSpecialEffectId(TARGET_SELF, 240100) == false then
                arg0:ClearEnemyTarget()
            end
            arg0:SetTimer(AI_TIMER_TEKIMAWASHI_REACTION, 3)
            arg0:Replanning()
            return true
        elseif f12_local2 == COMMON_SP_EFFECT_BLOOD_SMOKE then
            if not not arg0:IsBattleState() or arg0:IsFindState() then
                if not not arg0:HasSpecialEffectId(TARGET_SELF, COMMON_SP_EFFECT_ZAKO_REACTION) or arg0:HasSpecialEffectId(TARGET_SELF, COMMON_SP_EFFECT_ZAKO_NOREACTION) then
                    arg0:ClearEnemyTarget()
                    return true
                elseif arg0:HasSpecialEffectId(TARGET_SELF, COMMON_SP_EFFECT_CHUBOSS_REACTION) then
                    arg0:SetNumber(AI_NUMBER_BLOOD_SMOKE_BLINDNESS, 1)
                end
            end
        elseif f12_local2 == COMMON_SP_EFFECT_HIDE_IN_BLOOD then
            if (not not arg0:IsBattleState() or arg0:IsFindState()) and (not not arg0:HasSpecialEffectId(TARGET_SELF, COMMON_SP_EFFECT_ZAKO_REACTION) or arg0:HasSpecialEffectId(TARGET_SELF, COMMON_SP_EFFECT_ZAKO_NOREACTION)) then
                arg0:ClearEnemyTarget()
                return true
            end
        elseif f12_local2 == 200250 then
            if arg0:IsFinishTimer(13) then
                arg0:SetStringIndexedNumber("ConsecutiveGuardCount", 1)
            else
                arg0:SetStringIndexedNumber("ConsecutiveGuardCount", arg0:GetStringIndexedNumber("ConsecutiveGuardCount") + 1)
            end
            arg0:SetTimer(13, 1)
        elseif f12_local2 == 200210 or f12_local2 == 200211 then
            arg0:SetStringIndexedNumber("ConsecutiveGuardCount", 0)
            arg0:SetTimer(13, 0)
        elseif f12_local2 == COMMON_SP_EFFECT_CONFUSE or f12_local2 == COMMON_SP_EFFECT_CONFUSE_GHOST then
            arg0:Replanning()
            return true
        end
    end
    if arg0:IsInterupt(INTERUPT_InactivateSpecialEffect) then
        local f12_local2 = arg0:GetSpecialEffectInactivateInterruptType(0)
        if f12_local2 == COMMON_SP_EFFECT_PC_NINSATSU then
            arg0:Replanning()
            return true
        end
    end
    if arg0:IsInterupt(INTERUPT_ChangeSoundTarget) and arg0:HasSpecialEffectId(TARGET_SELF, 205060) == false and arg0:HasSpecialEffectId(TARGET_SELF, 205061) == false and arg0:GetLatestSoundTargetID() ~= 7700 and (not not arg0:HasSpecialEffectId(TARGET_SELF, COMMON_SP_EFFECT_ZAKO_REACTION) or arg0:HasSpecialEffectId(TARGET_SELF, COMMON_SP_EFFECT_CHUBOSS_REACTION)) then
        local f12_local2 = arg0:GetLatestSoundTargetRank()
        if f12_local2 == AI_SOUND_RANK__IMPORTANT then
            if arg0:IsFinishTimer(11) and arg0:GetLatestSoundTargetID() ~= arg0:GetNumber(AI_NUMBER_LATEST_SOUND_ID) then
                arg1:ClearSubGoal()
                local f12_local3 = arg0:AddTopGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0, 0.3), TARGET_SELF, 0, 0, 0)
                f12_local3:TimingSetTimer(11, 5, AI_TIMING_SET__ACTIVATE)
                arg0:AddTopGoal(GOAL_COMMON_EndureAttack, 1, 710, TARGET_SELF, 9999, 0)
                arg0:SetNumber(AI_NUMBER_LATEST_SOUND_ID, arg0:GetLatestSoundTargetID())
                return true
            else
                arg0:Replanning()
            end
        elseif arg0:IsFinishTimer(12) and arg0:GetLatestSoundTargetID() ~= arg0:GetNumber(AI_NUMBER_LATEST_SOUND_ID) then
            arg1:ClearSubGoal()
            local f12_local3 = arg0:AddTopGoal(GOAL_COMMON_Wait, arg0:GetRandam_Float(0, 0.3), TARGET_SELF, 0, 0, 0)
            f12_local3:TimingSetTimer(12, 5, AI_TIMING_SET__ACTIVATE)
            arg0:AddTopGoal(GOAL_COMMON_EndureAttack, 1, 700, TARGET_SELF, 9999, 0)
            arg0:SetNumber(AI_NUMBER_LATEST_SOUND_ID, arg0:GetLatestSoundTargetID())
            return true
        else
            arg0:Replanning()
        end
    end
    if arg0:IsInterupt(INTERUPT_FindCorpseTarget) then
        arg1:ClearSubGoal()
        arg0:AddTopGoal(GOAL_COMMON_EndureAttack, 1, 710, TARGET_ENE_0, 9999, 0)
        return true
    end
    if arg0:IsInterupt(INTERUPT_Inside_ObserveArea) and arg0:IsBattleState() and arg0:IsInsideObserve(COMMON_OBSERVE_SLOT_BATTLE_STEALTH) then
        if arg0:IsVisibleCurrTarget() then
            arg0:DeleteObserve(COMMON_OBSERVE_SLOT_BATTLE_STEALTH)
            arg1:ClearSubGoal()
            arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 1, 401040, TARGET_ENE_0, 9999, 0, 0, 0, 0)
            return true
        else
            arg0:DeleteObserve(COMMON_OBSERVE_SLOT_BATTLE_STEALTH)
            arg0:AddObserveChrDmyArea(COMMON_OBSERVE_SLOT_BATTLE_STEALTH, TARGET_ENE_0, 7, 90, 120, 30, 4)
            return false
        end
    end
    if arg0:IsInterupt(INTERUPT_InvadeTriggerRegion) and arg0:IsCautionState() then
        local f12_local2 = arg0:GetLatestSoundTargetInstanceID()
        local f12_local3 = arg0:GetInvadeTriggerRegionInfoNum()
        local f12_local4 = 600
        if arg0:HasSpecialEffectId(TARGET_SELF, 200001) then
            if arg0:GetRandam_Int(1, 100) <= 50 then
                f12_local4 = 610
            end
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 200002) then
            if arg0:GetRandam_Int(1, 100) <= 50 then
                f12_local4 = 400600
            else
                f12_local4 = 400610
            end
        end
        for f12_local5 = 0, f12_local3 - 1, 1 do
            local f12_local8 = arg0:GetInvadeTriggerRegionCategory(f12_local5)
            local f12_local9 = arg0:GetInvadeTriggerRegionUnitID(f12_local5)
            if f12_local8 == 1000 and f12_local9 == f12_local2 then
                arg0:RemoveTriggerRegionObserver(1000)
                arg1:ClearSubGoal()
                arg0:AddTopGoal(GOAL_COMMON_ConfirmCautionTarget, 30, f12_local4, TARGET_SELF, arg0:GetRandam_Float(3, 4), TARGET_SELF)
                return true
            end
        end
    end
    if arg0:IsInterupt(INTERUPT_Inside_ObserveArea) and arg0:IsInsideObserve(30) then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_SELF, 0, 0, 0)
    end
    return f12_local0
    
end

function InterruptTableGoal(arg0, arg1, arg2, arg3)
    local f13_local0 = false
    local f13_local1 = g_GoalTable[arg2]
    if f13_local1 ~= nil then
        f13_local0 = _InterruptTableGoal_TypeCall(arg0, arg1, f13_local1, arg3)
    end
    return f13_local0
    
end

function InterruptTableGoal_Common(arg0, arg1, arg2)
    local f14_local0 = false
    local f14_local1 = g_GoalTable[arg2]
    if f14_local1 ~= nil and f14_local1.Interrupt ~= nil then
        if f14_local1:Interrupt(arg0, arg1) then
            f14_local0 = true
        end
        if arg1:IsInterruptSubGoalChanged() then
            f14_local0 = true
        end
    end
    return f14_local0
    
end

function _IsInterruptFuncExist(arg0, arg1)
    for f15_local0 = INTERUPT_First, INTERUPT_Last, 1 do
        if not arg0[f15_local0].bEmpty then
            return true
        end
    end
    local f15_local0 = false
    return f15_local0
    
end

function _InterruptTableGoal_TypeCall(arg0, arg1, arg2, arg3)
    if arg2.InterruptInfoTable[arg3].func(arg0, arg1, arg2) then
        return true
    end
    return false
    
end

function _CreateInterruptTypeInfoTable(arg0)
    local f17_local0 = {}
    local f17_local1 = INTERUPT_FindEnemy
    local f17_local2 = {func = function (arg0, arg1, arg2)
        local f29_local0 = _GetInterruptFunc(arg2.Interrupt_FindEnemy)
        if f29_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_FindEnemy == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_FindAttack
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f30_local0 = _GetInterruptFunc(arg2.Interrupt_FindAttack)
        if f30_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_FindAttack == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_Damaged
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f31_local0 = _GetInterruptFunc(arg2.Interrupt_Damaged)
        if f31_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_Damaged == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_Damaged_Stranger
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f32_local0 = _GetInterruptFunc(arg2.Interrupt_Damaged_Stranger)
        if f32_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_Damaged_Stranger == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_FindMissile
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f33_local0 = _GetInterruptFunc(arg2.Interrupt_FindMissile)
        if f33_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_FindMissile == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_SuccessGuard
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f34_local0 = _GetInterruptFunc(arg2.Interrupt_SuccessGuard)
        if f34_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_SuccessGuard == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_MissSwing
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f35_local0 = _GetInterruptFunc(arg2.Interrupt_MissSwing)
        if f35_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_MissSwing == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_GuardBegin
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f36_local0 = _GetInterruptFunc(arg2.Interrupt_GuardBegin)
        if f36_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_GuardBegin == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_GuardFinish
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f37_local0 = _GetInterruptFunc(arg2.Interrupt_GuardFinish)
        if f37_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_GuardFinish == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_GuardBreak
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f38_local0 = _GetInterruptFunc(arg2.Interrupt_GuardBreak)
        if f38_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_GuardBreak == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_Shoot
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f39_local0 = _GetInterruptFunc(arg2.Interrupt_Shoot)
        if f39_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_Shoot == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_ShootImpact
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f40_local0 = _GetInterruptFunc(arg2.Interrupt_ShootImpact)
        if f40_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_ShootImpact == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_UseItem
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f41_local0 = _GetInterruptFunc(arg2.Interrupt_UseItem)
        if f41_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_UseItem == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_EnterBattleArea
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f42_local0 = _GetInterruptFunc(arg2.Interrupt_EnterBattleArea)
        if f42_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_EnterBattleArea == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_LeaveBattleArea
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f43_local0 = _GetInterruptFunc(arg2.Interrupt_LeaveBattleArea)
        if f43_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_LeaveBattleArea == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_CANNOT_MOVE
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f44_local0 = _GetInterruptFunc(arg2.Interrupt_CANNOT_MOVE)
        if f44_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_CANNOT_MOVE == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_Inside_ObserveArea
    f17_local2 = {func = function (arg0, arg1, arg2)
        if _InterruptTableGoal_Inside_ObserveArea(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_Inside_ObserveArea == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_ReboundByOpponentGuard
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f46_local0 = _GetInterruptFunc(arg2.Interrupt_ReboundByOpponentGuard)
        if f46_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_ReboundByOpponentGuard == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_ForgetTarget
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f47_local0 = _GetInterruptFunc(arg2.Interrupt_ForgetTarget)
        if f47_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_ForgetTarget == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_FriendRequestSupport
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f48_local0 = _GetInterruptFunc(arg2.Interrupt_FriendRequestSupport)
        if f48_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_FriendRequestSupport == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_TargetIsGuard
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f49_local0 = _GetInterruptFunc(arg2.Interrupt_TargetIsGuard)
        if f49_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_TargetIsGuard == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_HitEnemyWall
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f50_local0 = _GetInterruptFunc(arg2.Interrupt_HitEnemyWall)
        if f50_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_HitEnemyWall == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_SuccessParry
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f51_local0 = _GetInterruptFunc(arg2.Interrupt_SuccessParry)
        if f51_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_SuccessParry == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_CANNOT_MOVE_DisableInterupt
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f52_local0 = _GetInterruptFunc(arg2.Interrupt_CANNOT_MOVE_DisableInterupt)
        if f52_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_CANNOT_MOVE_DisableInterupt == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_ParryTiming
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f53_local0 = _GetInterruptFunc(arg2.Interrupt_ParryTiming)
        if f53_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_ParryTiming == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_RideNode_LadderBottom
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f54_local0 = _GetInterruptFunc(arg2.Interrupt_RideNode_LadderBottom)
        if f54_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_RideNode_LadderBottom == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_FLAG_RideNode_Door
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f55_local0 = _GetInterruptFunc(arg2.Interrupt_FLAG_RideNode_Door)
        if f55_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_FLAG_RideNode_Door == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_StraightByPath
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f56_local0 = _GetInterruptFunc(arg2.Interrupt_StraightByPath)
        if f56_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_StraightByPath == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_ChangedAnimIdOffset
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f57_local0 = _GetInterruptFunc(arg2.Interrupt_ChangedAnimIdOffset)
        if f57_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_ChangedAnimIdOffset == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_SuccessThrow
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f58_local0 = _GetInterruptFunc(arg2.Interrupt_SuccessThrow)
        if f58_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_SuccessThrow == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_LookedTarget
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f59_local0 = _GetInterruptFunc(arg2.Interrupt_LookedTarget)
        if f59_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_LookedTarget == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_LoseSightTarget
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f60_local0 = _GetInterruptFunc(arg2.Interrupt_LoseSightTarget)
        if f60_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_LoseSightTarget == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_RideNode_InsideWall
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f61_local0 = _GetInterruptFunc(arg2.Interrupt_RideNode_InsideWall)
        if f61_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_RideNode_InsideWall == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_MissSwingSelf
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f62_local0 = _GetInterruptFunc(arg2.Interrupt_MissSwingSelf)
        if f62_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_MissSwingSelf == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_GuardBreakBlow
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f63_local0 = _GetInterruptFunc(arg2.Interrupt_GuardBreakBlow)
        if f63_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_GuardBreakBlow == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_TargetOutOfRange
    f17_local2 = {func = function (arg0, arg1, arg2)
        if _InterruptTableGoal_TargetOutOfRange(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_TargetOutOfRange == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_UnstableFloor
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f65_local0 = _GetInterruptFunc(arg2.Interrupt_UnstableFloor)
        if f65_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_UnstableFloor == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_BreakFloor
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f66_local0 = _GetInterruptFunc(arg2.Interrupt_BreakFloor)
        if f66_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_BreakFloor == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_BreakObserveObj
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f67_local0 = _GetInterruptFunc(arg2.Interrupt_BreakObserveObj)
        if f67_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_BreakObserveObj == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_EventRequest
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f68_local0 = _GetInterruptFunc(arg2.Interrupt_EventRequest)
        if f68_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_EventRequest == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_Outside_ObserveArea
    f17_local2 = {func = function (arg0, arg1, arg2)
        if _InterruptTableGoal_Outside_ObserveArea(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_Outside_ObserveArea == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_TargetOutOfAngle
    f17_local2 = {func = function (arg0, arg1, arg2)
        if _InterruptTableGoal_TargetOutOfAngle(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_TargetOutOfAngle == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_PlatoonAiOrder
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f71_local0 = _GetInterruptFunc(arg2.Interrupt_PlatoonAiOrder)
        if f71_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_PlatoonAiOrder == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_ActivateSpecialEffect
    f17_local2 = {func = function (arg0, arg1, arg2)
        if _InterruptTableGoal_ActivateSpecialEffect(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_ActivateSpecialEffect == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_InactivateSpecialEffect
    f17_local2 = {func = function (arg0, arg1, arg2)
        if _InterruptTableGoal_InactivateSpecialEffect(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_InactivateSpecialEffect == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_MovedEnd_OnFailedPath
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f74_local0 = _GetInterruptFunc(arg2.Interrupt_MovedEnd_OnFailedPath)
        if f74_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_MovedEnd_OnFailedPath == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_ChangeSoundTarget
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f75_local0 = _GetInterruptFunc(arg2.Interrupt_ChangeSoundTarget)
        if f75_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_ChangeSoundTarget == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_OnCreateDamage
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f76_local0 = _GetInterruptFunc(arg2.Interrupt_OnCreateDamage)
        if f76_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_OnCreateDamage == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_InvadeTriggerRegion
    f17_local2 = {func = function (arg0, arg1, arg2)
        if _InterruptTableGoal_InvadeTriggerRegion(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_InvadeTriggerRegion == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_LeaveTriggerRegion
    f17_local2 = {func = function (arg0, arg1, arg2)
        if _InterruptTableGoal_LeaveTriggerRegion(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_LeaveTriggerRegion == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_AIGuardBroken
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f79_local0 = _GetInterruptFunc(arg2.Interrupt_AIGuardBroken)
        if f79_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_AIGuardBroken == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_AIReboundByOpponentGuard
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f80_local0 = _GetInterruptFunc(arg2.Interrupt_AIReboundByOpponentGuard)
        if f80_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_AIReboundByOpponentGuard == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_BackstabRisk
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f81_local0 = _GetInterruptFunc(arg2.Interrupt_BackstabRisk)
        if f81_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_BackstabRisk == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_FindIndicationTarget
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f82_local0 = _GetInterruptFunc(arg2.Interrupt_FindIndicationTarget)
        if f82_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_FindIndicationTarget == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_FindCorpseTarget
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f83_local0 = _GetInterruptFunc(arg2.Interrupt_FindCorpseTarget)
        if f83_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_FindCorpseTarget == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_FindFailedPath
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f84_local0 = _GetInterruptFunc(arg2.Interrupt_FindFailedPath)
        if f84_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_FindFailedPath == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_GuardedMyAttack
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f85_local0 = _GetInterruptFunc(arg2.Interrupt_GuardedMyAttack)
        if f85_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_GuardedMyAttack == nil}
    f17_local0[f17_local1] = f17_local2
    f17_local1 = INTERUPT_WanderedOffPathRepath
    f17_local2 = {func = function (arg0, arg1, arg2)
        local f86_local0 = _GetInterruptFunc(arg2.Interrupt_WanderedOffPathRepath)
        if f86_local0(arg2, arg0, arg1) then
            return true
        end
        if arg1:IsInterruptSubGoalChanged() then
            return true
        end
        return false
        
    end
, bEmpty = arg0.Interrupt_WanderedOffPathRepath == nil}
    f17_local0[f17_local1] = f17_local2
    return f17_local0
    
end

function _GetInterruptFunc(arg0)
    if arg0 ~= nil then
        return arg0
    end
    return _InterruptTableGoal_TypeCall_Dummy
    
end

function _InterruptTableGoal_TypeCall_Dummy()
    return false
    
end

function _InterruptTableGoal_TargetOutOfRange_Common(arg0, arg1, arg2, arg3, arg4)
    local f20_local0 = false
    for f20_local1 = 0, 31, 1 do
        if arg3(f20_local1) then
            f20_local0 = true
            if arg4(arg0, arg1, arg2, f20_local1) then
                return true
            end
        end
    end
    local f20_local1 = bSlotEnable
    if f20_local1 then
        f20_local1 = false
        return f20_local1
    end
    f20_local1 = arg4
    local f20_local2 = arg0
    return f20_local1(f20_local2, arg1, arg2, -1)
    
end

function _InterruptTableGoal_TargetOutOfRange(arg0, arg1, arg2)
    local f21_local0 = _InterruptTableGoal_TargetOutOfRange_Common
    local f21_local1 = arg0
    local f21_local2 = REG1_0
    local f21_local3 = arg2
    local f21_local4 = function (arg0)
        local f87_local0 = arg1
        return f87_local0:IsTargetOutOfRangeInterruptSlot(arg0)
        
    end

    local f21_local5 = _GetInterruptFunc(arg0.Interrupt_TargetOutOfRange)
    return f21_local0()
    
end

function _InterruptTableGoal_TargetOutOfAngle(arg0, arg1, arg2)
    local f22_local0 = _InterruptTableGoal_TargetOutOfRange_Common
    local f22_local1 = arg0
    local f22_local2 = REG1_0
    local f22_local3 = arg2
    local f22_local4 = function (arg0)
        local f88_local0 = arg1
        return f88_local0:IsTargetOutOfAngleInterruptSlot(arg0)
        
    end

    local f22_local5 = _GetInterruptFunc(arg0.Interrupt_TargetOutOfAngle)
    return f22_local0()
    
end

function _InterruptTableGoal_Inside_ObserveArea(arg0, arg1, arg2)
    local f23_local0 = arg1:GetAreaObserveSlotNum(AI_AREAOBSERVE_INTERRUPT__INSIDE)
    for f23_local1 = 0, f23_local0 - 1, 1 do
        local f23_local4 = _GetInterruptFunc(arg0.Interrupt_Inside_ObserveArea)
        if f23_local4(arg0, arg1, arg2, arg1:GetAreaObserveSlot(AI_AREAOBSERVE_INTERRUPT__INSIDE, f23_local1)) then
            return true
        end
    end
    
end

function _InterruptTableGoal_Outside_ObserveArea(arg0, arg1, arg2)
    local f24_local0 = arg1:GetAreaObserveSlotNum(AI_AREAOBSERVE_INTERRUPT__OUTSIDE)
    for f24_local1 = 0, f24_local0 - 1, 1 do
        local f24_local4 = _GetInterruptFunc(arg0.Interrupt_Outside_ObserveArea)
        if f24_local4(arg0, arg1, arg2, arg1:GetAreaObserveSlot(AI_AREAOBSERVE_INTERRUPT__OUTSIDE, f24_local1)) then
            return true
        end
    end
    
end

function _InterruptTableGoal_ActivateSpecialEffect(arg0, arg1, arg2)
    local f25_local0 = arg1:GetSpecialEffectActivateInterruptNum()
    for f25_local1 = 0, f25_local0 - 1, 1 do
        local f25_local4 = _GetInterruptFunc(arg0.Interrupt_ActivateSpecialEffect)
        if f25_local4(arg0, arg1, arg2, arg1:GetSpecialEffectActivateInterruptType(f25_local1)) then
            return true
        end
    end
    
end

function _InterruptTableGoal_InactivateSpecialEffect(arg0, arg1, arg2)
    local f26_local0 = arg1:GetSpecialEffectInactivateInterruptNum()
    for f26_local1 = 0, f26_local0 - 1, 1 do
        local f26_local4 = _GetInterruptFunc(arg0.Interrupt_InactivateSpecialEffect)
        if f26_local4(arg0, arg1, arg2, arg1:GetSpecialEffectInactivateInterruptType(f26_local1)) then
            return true
        end
    end
    
end

function _InterruptTableGoal_InvadeTriggerRegion(arg0, arg1, arg2)
    local f27_local0 = arg1:GetInvadeTriggerRegionInfoNum()
    for f27_local1 = 0, f27_local0 - 1, 1 do
        local f27_local4 = _GetInterruptFunc(arg0.Interrupt_InvadeTriggerRegion)
        if f27_local4(arg0, arg1, arg2, arg1:GetInvadeTriggerRegionCategory(f27_local1)) then
            return true
        end
    end
    
end

function _InterruptTableGoal_LeaveTriggerRegion(arg0, arg1, arg2)
    local f28_local0 = arg1:GetLeaveTriggerRegionInfoNum()
    for f28_local1 = 0, f28_local0 - 1, 1 do
        local f28_local4 = _GetInterruptFunc(arg0.Interrupt_LeaveTriggerRegion)
        if f28_local4(arg0, arg1, arg2, arg1:GetLeaveTriggerRegionCategory(f28_local1)) then
            return true
        end
    end
    
end


