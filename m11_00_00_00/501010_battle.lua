RegisterTableGoal(GOAL_Orochi_jouka_501010_Battle, "GOAL_Orochi_jouka_501010_Battle")
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 0)
    arg1:SetStringIndexedNumber("Dist_BackStep", 0)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    arg1:SetStringIndexedNumber("Orochi_SightDist", 5)
    arg1:SetStringIndexedNumber("Orochi_SightPos", 15)
    arg1:SetEventFlag(19625480, false)
    arg1:SetEventFlag(19625481, false)
    arg1:SetEventFlag(19625482, false)
    arg1:SetEventFlag(19625483, false)
    arg1:SetEventFlag(19625484, false)
    arg1:SetEventFlag(19625485, false)
    arg1:AddObserveRegion(4, TARGET_ENE_0, 1102861)
    arg1:AddObserveRegion(5, TARGET_ENE_0, 1102862)
    if arg1:HasSpecialEffectId(TARGET_SELF, 3501010) then
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
        arg1:AddObserveRegion(1, TARGET_ENE_0, 1102865)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 3501011) then
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
        arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 3501021)
        arg1:AddObserveRegion(2, TARGET_ENE_0, 1102895)
        arg1:AddObserveRegion(3, TARGET_ENE_0, 1102897)
        arg1:AddObserveRegion(6, TARGET_ENE_0, 1102879)
    end
    arg1:DeleteObserve(0)
    local f2_local3 = arg1:GetHpRate(TARGET_SELF)
    local f2_local4 = arg1:GetSp(TARGET_SELF)
    local f2_local5 = arg1:GetDist(TARGET_ENE_0)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local8 = arg1:GetEventRequest()
    if not not arg1:IsEventFlag(11100850) or arg1:GetNumber(3) == 1 then
        f2_local0[30] = 100
    elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 1102865) and arg1:GetNumber(0) == 0 then
        f2_local0[8] = 100
    elseif (not not arg1:IsInsideTargetRegion(TARGET_ENE_0, 1102861) or arg1:IsInsideTargetRegion(TARGET_ENE_0, 1102862)) and arg1:HasSpecialEffectId(TARGET_SELF, 3501033) == false and arg1:GetNumber(0) == 0 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 3501010) == false then
            f2_local0[1] = 100
        elseif arg1:GetNumber(1) == 0 then
            f2_local0[2] = 100
        elseif arg1:GetNumber(1) == 1 then
            f2_local0[4] = 100
        elseif arg1:GetNumber(1) == 2 then
            f2_local0[7] = 100
        else
            f2_local0[5] = 100
        end
    elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 1102865) then
        f2_local0[30] = 100
    elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 1102881) and arg1:HasSpecialEffectId(TARGET_SELF, 3501013) == false and arg1:HasSpecialEffectId(TARGET_SELF, 3501010) == false then
        if arg1:HasSpecialEffectId(TARGET_SELF, 3501011) == false then
            f2_local0[11] = 100
        elseif not arg1:HasSpecialEffectId(TARGET_SELF, 3501013) and arg1:IsInsideTargetRegion(TARGET_ENE_0, 1102897) then
            f2_local0[25] = 100
        elseif not arg1:HasSpecialEffectId(TARGET_SELF, 3501013) and arg1:IsInsideTargetRegion(TARGET_ENE_0, 1102879) then
            f2_local0[26] = 100
        elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 109940) and not arg1:HasSpecialEffectId(TARGET_SELF, 3501030) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 110010) then
                f2_local0[18] = 100
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 3501012) == false then
                f2_local0[21] = 100
            else
                f2_local0[22] = 100
            end
        elseif not not arg1:IsInsideTargetRegion(TARGET_ENE_0, 1102886) or arg1:IsInsideTargetRegion(TARGET_ENE_0, 1102889) then
            f2_local0[18] = 50
        elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 1102882) then
            f2_local0[14] = 50
            f2_local0[15] = 30
        elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 1102883) then
            f2_local0[13] = 70
            f2_local0[16] = 30
        elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 1102885) then
            f2_local0[18] = 50
        elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 1102884) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 110010) then
                f2_local0[13] = 10
            else
                f2_local0[12] = 20
                f2_local0[16] = 60
            end
        else
            f2_local0[12] = 100
            f2_local0[13] = 100
        end
    elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 1102895) and arg1:HasSpecialEffectId(TARGET_SELF, 3501013) == false then
        f2_local0[24] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 3501013) then
        if arg1:IsInsideTargetRegion(TARGET_ENE_0, 1102895) == false then
            f2_local0[23] = 100
        else
            f2_local0[24] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 3501010) then
        f2_local0[10] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 3501011) then
        f2_local0[20] = 100
    else
        f2_local0[30] = 100
    end
    if arg1:IsFinishTimer(0) == false then
        f2_local0[7] = f2_local0[7] * 3
    end
    if arg1:IsFinishTimer(1) == false then

    else

    end
    if arg1:IsFinishTimer(2) == false then
        f2_local0[6] = f2_local0[6] * 2
    end
    f2_local0[2] = SetCoolTime(arg1, arg2, 20011, 30, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 20012, 45, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 20013, 20, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 20014, 10, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 20015, 20, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 20016, 20, f2_local0[7], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 20021, 10, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 20022, 30, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 20023, 20, f2_local0[14], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 20024, 20, f2_local0[15], 1)
    f2_local0[16] = SetCoolTime(arg1, arg2, 20025, 20, f2_local0[16], 1)
    f2_local0[17] = SetCoolTime(arg1, arg2, 20026, 20, f2_local0[17], 1)
    f2_local0[18] = SetCoolTime(arg1, arg2, 20027, 30, f2_local0[18], 1)
    f2_local0[19] = SetCoolTime(arg1, arg2, 20028, 25, f2_local0[19], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, arg0.Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, arg0.Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, arg0.Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, arg0.Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, arg0.Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, arg0.Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, arg0.Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, arg0.Act08)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, arg0.Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, arg0.Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, arg0.Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, arg0.Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, arg0.Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, arg0.Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, arg0.Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, arg0.Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, arg0.Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, arg0.Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, arg0.Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, arg0.Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, arg0.Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, arg0.Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, arg0.Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, arg0.Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, arg0.Act26)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, arg0.Act30)
    local f2_local9 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local9, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20010, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    arg0:SetEventFlag(19625480, true)
    arg0:SetEventFlag(19625481, true)
    local f4_local0 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 30, 20011, TARGET_ENE_0, 999, 0, 0, 0, 0)
    f4_local0:TimingSetNumber(1, 1, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    arg0:SetEventFlag(19625480, true)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20012, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act04 = function (arg0, arg1, arg2)
    local f6_local0 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20013, TARGET_ENE_0, 999, 0, 0, 0, 0)
    f6_local0:TimingSetNumber(1, 2, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act05 = function (arg0, arg1, arg2)
    arg0:SetEventFlag(19625480, true)
    arg0:SetEventFlag(19625481, true)
    local f7_local0 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20014, TARGET_ENE_0, 999, 0, 0, 0, 0)
    f7_local0:TimingSetNumber(1, 0, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act06 = function (arg0, arg1, arg2)
    arg0:SetEventFlag(19625481, true)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20015, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act07 = function (arg0, arg1, arg2)
    arg0:SetEventFlag(19625481, true)
    local f9_local0 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20016, TARGET_ENE_0, 999, 0, 0, 0, 0)
    f9_local0:TimingSetNumber(1, 3, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act08 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, 20031, TARGET_ENE_0, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 20019, TARGET_ENE_0, 999, 0, 0, 0, 0)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act10 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20019, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act11 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20020, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act12 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20021, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act13 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20022, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act14 = function (arg0, arg1, arg2)
    arg0:SetEventFlag(19625482, true)
    arg0:SetEventFlag(19625483, true)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20023, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act15 = function (arg0, arg1, arg2)
    arg0:SetEventFlag(19625482, true)
    arg0:SetEventFlag(19625483, true)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20024, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act16 = function (arg0, arg1, arg2)
    arg0:SetEventFlag(19625483, true)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20025, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act17 = function (arg0, arg1, arg2)
    arg0:SetEventFlag(19625484, true)
    arg0:AddObserveChrDmySphere(0, TARGET_ENE_0, arg0:GetStringIndexedNumber("Orochi_SightPos"), arg0:GetStringIndexedNumber("Orochi_SightDist") + 3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20026, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act18 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20027, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act19 = function (arg0, arg1, arg2)
    arg0:SetEventFlag(19625484, true)
    arg0:AddObserveChrDmySphere(0, TARGET_ENE_0, arg0:GetStringIndexedNumber("Orochi_SightPos"), arg0:GetStringIndexedNumber("Orochi_SightDist"))
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20028, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act20 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20029, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act21 = function (arg0, arg1, arg2)
    arg0:SetEventFlag(19625485, true)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20002, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act22 = function (arg0, arg1, arg2)
    arg0:SetEventFlag(19625485, true)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 10, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act23 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 10, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act24 = function (arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    if arg0:HasSpecialEffectId(TARGET_SELF, 3501013) then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 2.5, TARGET_NONE, 0, 0, 0)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, 20004, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act25 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20037, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act26 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20026, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act30 = function (arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 3501013) then
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 3501010) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20019, TARGET_ENE_0, 999, 0, 0, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 3501011) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20029, TARGET_ENE_0, 999, 0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.ActAfter_AdjustSpace = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f32_local0 = arg1:GetDist(TARGET_ENE_0)
    local f32_local1 = arg1:GetSp(TARGET_SELF)
    local f32_local2 = arg1:GetRandam_Int(1, 100)
    local f32_local3 = arg1:GetRandam_Int(1, 100)
    local f32_local4 = arg1:GetEventRequest()
    if arg1:GetNumber(3) == 1 then
        if not not arg1:IsInsideObserve(2) or arg1:IsInsideObserve(3) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 1, 20020, TARGET_ENE_0, 999, 0)
            arg1:SetNumber(3, 2)
            return true
        else
            return false
        end
    end
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) then
        if arg1:IsInsideObserve(1) then
            if arg1:GetNumber(0) == 0 then
                arg1:SetTimer(1, 10)
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
                arg2:ClearSubGoal()
                if arg1:HasSpecialEffectId(TARGET_SELF, 3501016) then
                    local f32_local5 = arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 1, 20001, TARGET_ENE_0, 999, 0)
                    f32_local5:TimingSetNumber(0, 1, AI_TIMING_SET__ACTIVATE)
                else
                    local f32_local5 = arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 1, 20031, TARGET_ENE_0, 999, 0)
                    f32_local5:TimingSetNumber(0, 1, AI_TIMING_SET__ACTIVATE)
                end
                return true
            end
        elseif arg1:IsInsideObserve(2) then
            if arg1:IsEventFlag(11100850) == false then
                if not arg1:HasSpecialEffectId(TARGET_SELF, 3501013) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 3, 20004, TARGET_ENE_0, 999, 0)
                else
                    arg1:Replanning()
                end
                return true
            end
        elseif arg1:IsInsideObserve(3) then
            if not arg1:IsEventFlag(11100850) then
                if not arg1:HasSpecialEffectId(TARGET_SELF, 3501011) then

                elseif not arg1:HasSpecialEffectId(TARGET_SELF, 3501013) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 1, 20037, TARGET_ENE_0, 999, 0)
                    return true
                end
            end
        elseif not not arg1:IsInsideObserve(4) or arg1:IsInsideObserve(5) then
            if arg1:IsEventFlag(11100850) == false and arg1:GetNumber(0) ~= 1 and arg1:HasSpecialEffectId(TARGET_SELF, 3501010) == false then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 1, 20010, TARGET_ENE_0, 999, 0)
                arg1:SetNumber(1, 0)
                return true
            end
        elseif arg1:IsInsideObserve(6) and not arg1:IsEventFlag(11100850) and not arg1:HasSpecialEffectId(TARGET_SELF, 3501013) then
            if not arg1:HasSpecialEffectId(TARGET_SELF, 3501011) then

            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 1, 20026, TARGET_ENE_0, 999, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5029 then
            if arg1:IsInsideTargetRegion(TARGET_ENE_0, 1102865) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 20039, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            end
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5036 then
            if arg1:IsInsideTargetRegion(TARGET_ENE_0, 1102896) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5036)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 20006, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 1102895) and arg1:HasSpecialEffectId(TARGET_ENE_0, 110010) == false and arg1:IsEventFlag(11100850) == false then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 20005, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            else
                if arg1:IsInsideTargetRegion(TARGET_ENE_0, 1102895) and arg1:HasSpecialEffectId(TARGET_ENE_0, 110010) then
                    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5036)
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 20020, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                end
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5036)
                return false
            end
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 3501021 and not arg1:HasSpecialEffectId(TARGET_SELF, 3501030) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 20002, TARGET_ENE_0, 9999, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_InactivateSpecialEffect) and arg1:GetSpecialEffectInactivateInterruptType(0) == 3501021 and (not not arg1:HasSpecialEffectId(TARGET_SELF, 3501012) or arg1:HasSpecialEffectId(TARGET_SELF, 3501017)) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 1, 20038, TARGET_ENE_0, 999, 0)
        return true
    end
    if not arg1:HasSpecialEffectId(TARGET_ENE_0, 110010) and f32_local4 == 10 then
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
            if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and (not not arg1:IsInsideTargetRegion(TARGET_ENE_0, 1102866) or arg1:IsInsideTargetRegion(TARGET_ENE_0, 1102864)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 20031, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            end
            if arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and arg1:IsInsideTargetRegion(TARGET_ENE_0, 1102870) then
                arg1:SetTimer(0, 10)
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 20030, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            end
            if arg1:GetSpecialEffectActivateInterruptType(0) == 5027 and arg1:IsInsideTargetRegion(TARGET_ENE_0, 9622455) then
                arg1:SetTimer(1, 10)
                arg1:SetNumber(0, 1)
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, 20031, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            end
            if arg1:GetSpecialEffectActivateInterruptType(0) == 5028 and arg1:IsInsideTargetRegion(TARGET_ENE_0, 1102871) then
                arg1:SetTimer(2, 10)
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 20032, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            end
            if arg1:GetSpecialEffectActivateInterruptType(0) == 5031 and arg1:IsInsideTargetRegion(TARGET_ENE_0, 1102890) then
                arg1:SetTimer(4, 10)
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5031)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 20034, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            end
            if arg1:GetSpecialEffectActivateInterruptType(0) == 5030 and arg1:IsInsideTargetRegion(TARGET_ENE_0, 1102891) then
                arg1:SetTimer(3, 10)
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 20033, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            end
            if arg1:GetSpecialEffectActivateInterruptType(0) == 5032 and arg1:IsInsideTargetRegion(TARGET_ENE_0, 9622465) and arg1:IsInsideTargetRegion(TARGET_ENE_0, 9622473) == false and arg1:IsInsideTargetRegion(TARGET_ENE_0, 1102883) == false then
                arg1:SetTimer(5, 10)
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5032)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 20035, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            end
            if arg1:GetSpecialEffectActivateInterruptType(0) == 5034 and arg1:IsInsideTargetRegion(TARGET_ENE_0, 1102894) and arg1:HasSpecialEffectId(TARGET_ENE_0, 109940) == false then
                arg1:SetTimer(6, 10)
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5034)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 20037, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            end
            if arg1:GetSpecialEffectActivateInterruptType(0) == 5035 and arg1:HasSpecialEffectId(TARGET_SELF, 3501012) == false and arg1:IsInsideTargetRegion(TARGET_ENE_0, 1102894) and arg1:HasSpecialEffectId(TARGET_ENE_0, 109940) == false then
                arg1:SetTimer(6, 10)
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5035)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 20037, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            end
            if arg1:GetSpecialEffectActivateInterruptType(0) == 5036 and arg1:IsInsideTargetRegion(TARGET_ENE_0, 9622472) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5036)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 20006, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            end
            if arg1:GetSpecialEffectActivateInterruptType(0) == 5037 and arg1:HasSpecialEffectId(TARGET_ENE_0, 109203) == false and arg1:HasSpecialEffectId(TARGET_ENE_0, 109306) == false and arg1:IsInsideTargetRegion(TARGET_ENE_0, 1102883) == false and arg1:IsInsideTargetRegion(TARGET_ENE_0, 1102884) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5036)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 20035, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            end
            if arg1:GetSpecialEffectActivateInterruptType(0) == 5038 and arg1:HasSpecialEffectId(TARGET_SELF, 3501013) then
                if arg1:IsInsideTargetRegion(TARGET_ENE_0, 1102892) then
                    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5038)
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 20035, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    arg1:SetNumber(3, 1)
                    return true
                else
                    return false
                end
            end
            if arg1:GetSpecialEffectActivateInterruptType(0) == 5038 then
                if arg1:IsInsideTargetRegion(TARGET_ENE_0, 1102888) then
                    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5039)
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 20028, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 109027) == false and arg1:HasSpecialEffectId(TARGET_ENE_0, 109203) == false and arg1:HasSpecialEffectId(TARGET_ENE_0, 109306) == false then
                    if arg1:IsInsideTargetRegion(TARGET_ENE_0, 1102893) then
                        arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5038)
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 20036, TARGET_ENE_0, 999, 0, 0, 0, 0)
                        return true
                    elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 1102892) then
                        arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5038)
                        arg2:ClearSubGoal()
                        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 20035, TARGET_ENE_0, 999, 0, 0, 0, 0)
                        return true
                    end
                end
            end
        end
        if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) and arg1:IsInsideObserve(0) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5033) then
                local f32_local5 = arg1:HasSpecialEffectId(TARGET_ENE_0, 109013)
                if f32_local5 then
                    f32_local5 = arg1:IsInsideTargetRegion(TARGET_ENE_0, 9622468)
                    if not f32_local5 then
                        f32_local5 = arg1:IsInsideTargetRegion(TARGET_ENE_0, 9622469)
                    end
                end
                if f32_local5 == false and arg1:HasSpecialEffectId(TARGET_ENE_0, 109203) == false then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 20036, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    arg1:SetTimer(7, 10)
                    arg1:DeleteObserve(0)
                    return true
                else
                    arg1:DeleteObserve(0)
                    arg1:AddObserveChrDmySphere(0, TARGET_ENE_0, arg1:GetStringIndexedNumber("Orochi_SightPos"), arg1:GetStringIndexedNumber("Orochi_SightDist"))
                end
            end
            arg1:DeleteObserve(0)
            arg1:AddObserveChrDmySphere(0, TARGET_ENE_0, arg1:GetStringIndexedNumber("Orochi_SightPos"), arg1:GetStringIndexedNumber("Orochi_SightDist"))
        end
    end
    return false
    
end


