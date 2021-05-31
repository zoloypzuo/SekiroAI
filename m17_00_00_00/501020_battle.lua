RegisterTableGoal(GOAL_Orochi_hebidani_501020_Battle, "GOAL_Orochi_hebidani_501020_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Orochi_hebidani_501020_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    arg1:AddObserveRegion(0, TARGET_ENE_0, 1702616)
    arg1:AddObserveRegion(1, TARGET_ENE_0, 1702618)
    arg1:AddObserveRegion(2, TARGET_ENE_0, 1702619)
    arg1:AddObserveRegion(3, TARGET_ENE_0, 1702601)
    arg1:AddObserveRegion(4, TARGET_ENE_0, 1702605)
    arg1:AddObserveRegion(5, TARGET_ENE_0, 1702608)
    arg1:AddObserveRegion(6, TARGET_ENE_0, 1702603)
    arg1:AddObserveRegion(7, TARGET_ENE_0, 1702500)
    arg1:AddObserveRegion(8, TARGET_ENE_0, 1702501)
    if arg1:IsInsideTargetRegion(TARGET_ENE_0, 1702500) then
        arg1:SetNumber(4, 1)
    else
        arg1:SetNumber(4, 0)
    end
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5023) then
        if arg1:IsFinishTimer(1) == false then
            f2_local0[27] = 100
        elseif not not arg1:IsInsideTargetRegion(TARGET_LOCALPLAYER, 1702605) or arg1:HasSpecialEffectId(TARGET_SELF, 5034) then
            if arg1:IsEventFlag(11700602) then
                f2_local0[15] = 100
            else
                f2_local0[27] = 100
            end
        else
            f2_local0[27] = 100
        end
    elseif arg1:IsEventFlag(11700603) then
        f2_local0[27] = 100
    elseif not not arg1:IsInsideTargetRegion(TARGET_LOCALPLAYER, 1702605) or arg1:HasSpecialEffectId(TARGET_SELF, 5034) then
        if arg1:IsEventFlag(11700602) then
            f2_local0[5] = 100
        else
            f2_local0[6] = 100
        end
    elseif (not not arg1:HasSpecialEffectId(TARGET_SELF, 5038) or arg1:HasSpecialEffectId(TARGET_SELF, 5037)) and arg1:GetNumber(2) == 1 then
        f2_local0[7] = 100
    elseif arg1:IsEventFlag(11700601) then
        f2_local0[6] = 100
    elseif arg1:IsEventFlag(11700100) == false and arg1:IsInsideTargetRegion(TARGET_LOCALPLAYER, 1702632) then
        f2_local0[4] = 100
    elseif not not arg1:HasSpecialEffectId(TARGET_LOCALPLAYER, 110060) or arg1:HasSpecialEffectId(TARGET_LOCALPLAYER, 110010) then
        f2_local0[26] = 100
    elseif arg1:IsInsideTargetRegion(TARGET_LOCALPLAYER, 1702600) then
        if arg1:IsInsideTargetRegion(TARGET_LOCALPLAYER, 1702602) then
            f2_local0[11] = 100
        else
            f2_local0[1] = 100
        end
    elseif arg1:IsInsideTargetRegion(TARGET_LOCALPLAYER, 1702610) then
        if arg1:IsInsideTargetRegion(TARGET_LOCALPLAYER, 1702618) then
            f2_local0[1] = 100
        elseif arg1:IsInsideTargetRegion(TARGET_LOCALPLAYER, 1702619) then
            if arg1:IsInsideTargetRegion(TARGET_LOCALPLAYER, 1702616) then
                f2_local0[3] = 100
            else
                f2_local0[2] = 100
            end
        else
            f2_local0[2] = 100
        end
    elseif not not arg1:IsInsideTargetRegion(TARGET_LOCALPLAYER, 1702635) or not not arg1:IsInsideTargetRegion(TARGET_LOCALPLAYER, 1702636) or arg1:IsInsideTargetRegion(TARGET_LOCALPLAYER, 1702637) then
        f2_local0[8] = 100
    else
        f2_local0[26] = 100
    end
    f2_local1[1] = REGIST_FUNC(arg1, arg2, arg0.Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, arg0.Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, arg0.Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, arg0.Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, arg0.Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, arg0.Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, arg0.Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, arg0.Act08)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, arg0.Act15)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, arg0.Act11)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, arg0.Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, arg0.Act27)
    local f2_local5 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local5, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5035) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20010, TARGET_ENE_0, 999, 0, 0, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5036) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20010, TARGET_ENE_0, 999, 0, 0, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5038) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20021, TARGET_ENE_0, 999, 0, 0, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5039) then
        if arg0:IsInsideTargetRegion(TARGET_ENE_0, 1702615) then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20007, TARGET_ENE_0, 999, 0, 0, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20004, TARGET_ENE_0, 999, 0, 0, 0, 0)
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5037) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20011, TARGET_ENE_0, 999, 0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 10, TARGET_SELF, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5035) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20010, TARGET_ENE_0, 999, 0, 0, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5036) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20010, TARGET_ENE_0, 999, 0, 0, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5037) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20020, TARGET_ENE_0, 999, 0, 0, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5039) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20009, TARGET_ENE_0, 999, 0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20021, TARGET_ENE_0, 999, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5035) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20010, TARGET_ENE_0, 999, 0, 0, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5036) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20010, TARGET_ENE_0, 999, 0, 0, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5037) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20020, TARGET_ENE_0, 999, 0, 0, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5039) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20009, TARGET_ENE_0, 999, 0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20021, TARGET_ENE_0, 999, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act04 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20000, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act05 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 10, TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act15 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 10, TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act06 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 10, TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act07 = function (arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5037) then
        arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 20, 20014, TARGET_ENE_0, 9999, 0)
        arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 20, 20030, TARGET_ENE_0, 9999, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 20, 20030, TARGET_ENE_0, 9999, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act08 = function (arg0, arg1, arg2)
    if arg0:IsInsideTargetRegion(TARGET_LOCALPLAYER, 1702635) then
        if arg0:HasSpecialEffectId(TARGET_SELF, 5035) then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20001, TARGET_ENE_0, 999, 0, 0, 0, 0)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 5036) then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20010, TARGET_ENE_0, 999, 0, 0, 0, 0)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 5037) then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20011, TARGET_ENE_0, 999, 0, 0, 0, 0)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 5039) then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20004, TARGET_ENE_0, 999, 0, 0, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20021, TARGET_ENE_0, 999, 0, 0, 0, 0)
        end
    elseif arg0:IsInsideTargetRegion(TARGET_LOCALPLAYER, 1702636) then
        if arg0:HasSpecialEffectId(TARGET_SELF, 5035) then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20001, TARGET_ENE_0, 999, 0, 0, 0, 0)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 5036) then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20010, TARGET_ENE_0, 999, 0, 0, 0, 0)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 5037) then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20011, TARGET_ENE_0, 999, 0, 0, 0, 0)
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 5039) then
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20009, TARGET_ENE_0, 999, 0, 0, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20021, TARGET_ENE_0, 999, 0, 0, 0, 0)
        end
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5035) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20001, TARGET_ENE_0, 999, 0, 0, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5036) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20010, TARGET_ENE_0, 999, 0, 0, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5037) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20018, TARGET_ENE_0, 999, 0, 0, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5039) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20009, TARGET_ENE_0, 999, 0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20021, TARGET_ENE_0, 999, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act11 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20006, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act26 = function (arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5037) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20011, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5038) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20021, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 5034) then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 10, TARGET_SELF, 0, 0, 0)
    elseif arg0:IsInsideTargetRegion(TARGET_ENE_0, 1702605) then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 10, TARGET_SELF, 0, 0, 0)
    elseif arg0:IsEventFlag(11700100) == false then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20000, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20004, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act27 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 10, TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f15_local0 = 0
    if arg1:HasSpecialEffectId(TARGET_SELF, 5022) then
        local f15_local1 = arg1:GetSpecialEffectActivateInterruptType(0)
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_LOCALPLAYER, 110060) == false and arg1:HasSpecialEffectId(TARGET_LOCALPLAYER, 110010) == false then
            if f15_local1 == 5025 then
                if arg1:IsInsideTargetRegion(TARGET_ENE_0, 1702611) then
                    arg2:ClearSubGoal()
                    if arg1:GetNumber(1) == 0 then
                        local f15_local2 = arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 20016, TARGET_ENE_0, 9999, 0)
                        f15_local2:TimingSetNumber(1, 1, AI_TIMING_SET__ACTIVATE)
                    else
                        local f15_local2 = arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 20036, TARGET_ENE_0, 9999, 0)
                        f15_local2:TimingSetNumber(1, 0, AI_TIMING_SET__ACTIVATE)
                    end
                    return true
                elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 1702612) then
                    arg2:ClearSubGoal()
                    if arg1:GetNumber(1) == 0 then
                        local f15_local2 = arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 20015, TARGET_ENE_0, 9999, 0)
                        f15_local2:TimingSetNumber(1, 1, AI_TIMING_SET__ACTIVATE)
                    else
                        local f15_local2 = arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 20035, TARGET_ENE_0, 9999, 0)
                        f15_local2:TimingSetNumber(1, 0, AI_TIMING_SET__ACTIVATE)
                    end
                    return true
                elseif not not arg1:IsInsideTargetRegion(TARGET_ENE_0, 1702609) or not not arg1:IsInsideTargetRegion(TARGET_ENE_0, 1702613) or arg1:IsInsideTargetRegion(TARGET_ENE_0, 1702614) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 20018, TARGET_ENE_0, 9999, 0)
                    return true
                end
            elseif f15_local1 == 5026 then
                if arg1:IsInsideTargetRegion(TARGET_ENE_0, 1702613) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 20026, TARGET_ENE_0, 9999, 0)
                    return true
                elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 1702608) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 20030, TARGET_ENE_0, 9999, 0)
                    return true
                end
            elseif f15_local1 == 5027 then

            elseif f15_local1 == 5028 then
                if arg1:IsInsideTargetRegion(TARGET_ENE_0, 1702617) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 20007, TARGET_ENE_0, 9999, 0)
                    return true
                elseif not not arg1:IsInsideTargetRegion(TARGET_ENE_0, 1702611) or not not arg1:IsInsideTargetRegion(TARGET_ENE_0, 1702612) or not not arg1:IsInsideTargetRegion(TARGET_ENE_0, 1702613) or arg1:IsInsideTargetRegion(TARGET_ENE_0, 1702614) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 20007, TARGET_ENE_0, 9999, 0)
                    return true
                end
            elseif f15_local1 == 5030 and (not not arg1:IsInsideTargetRegion(TARGET_ENE_0, 1702611) or not not arg1:IsInsideTargetRegion(TARGET_ENE_0, 1702612) or not not arg1:IsInsideTargetRegion(TARGET_ENE_0, 1702613) or arg1:IsInsideTargetRegion(TARGET_ENE_0, 1702614)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 20009, TARGET_ENE_0, 9999, 0)
                return true
            end
            if f15_local1 == 5029 then
                if arg1:IsInsideTargetRegion(TARGET_ENE_0, 1702619) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 20014, TARGET_ENE_0, 9999, 0)
                    return true
                end
            elseif f15_local1 == 5032 then
                if arg1:IsInsideTargetRegion(TARGET_ENE_0, 1702619) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 20013, TARGET_ENE_0, 9999, 0)
                    return true
                end
            elseif f15_local1 == 5031 and arg1:IsInsideTargetRegion(TARGET_ENE_0, 1702610) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 20008, TARGET_ENE_0, 9999, 0)
                return true
            end
        end
        if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) then
            if not not arg1:IsInsideObserve(0) or not not arg1:IsInsideObserve(1) or not not arg1:IsInsideObserve(2) or not not arg1:IsInsideObserve(4) or arg1:IsInsideObserve(8) then
                arg1:Replanning()
                return true
            elseif arg1:IsInsideObserve(3) then
                if arg1:IsEventFlag(11700603) == false then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 20005, TARGET_ENE_0, 9999, 0)
                    return true
                end
            elseif arg1:IsInsideObserve(5) then
                arg1:SetNumber(2, 1)
                arg1:Replanning()
                return true
            elseif arg1:IsInsideObserve(6) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 5035) and arg1:IsEventFlag(11700602) == false then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 20001, TARGET_ENE_0, 9999, 0)
                    return true
                end
            elseif arg1:IsInsideObserve(7) then
                arg1:SetNumber(4, 1)
                return false
            end
        end
        if arg1:IsInterupt(INTERUPT_Outside_ObserveArea) and arg1:IsInsideObserve(7) == false and arg1:GetNumber(4) == 1 then
            arg1:SetTimer(1, 10)
            arg1:SetNumber(4, 0)
            return false
        end
        if arg1:IsInterupt(INTERUPT_Damaged) then
            return arg0.Damaged(arg1, arg2)
        end
    elseif arg1:IsInterupt(INTERUPT_Inside_ObserveArea) and arg1:IsInsideObserve(4) then
        arg1:Replanning()
        return true
    end
    return false
    
end

Goal.Damaged = function (arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 205026) then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 20037, TARGET_ENE_0, 9999, 0)
        return true
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 205025) then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 20017, TARGET_ENE_0, 9999, 0)
        return true
    end
    return false
    
end

Goal.ActAfter_AdjustSpace = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end


