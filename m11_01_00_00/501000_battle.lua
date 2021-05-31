RegisterTableGoal(GOAL_Orochi501000_Battle, "GOAL_Orochi501000_Battle")
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
    if arg1:HasSpecialEffectId(TARGET_SELF, 3501010) then
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
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
    end
    arg1:DeleteObserve(0)
    local f2_local3 = arg1:GetHpRate(TARGET_SELF)
    local f2_local4 = arg1:GetSp(TARGET_SELF)
    local f2_local5 = arg1:GetDist(TARGET_ENE_0)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local8 = arg1:GetEventRequest()
    if not not arg1:IsInsideTargetRegion(TARGET_ENE_0, 9622450) or arg1:IsInsideTargetRegion(TARGET_ENE_0, 9622451) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 3501010) == false then
            f2_local0[1] = 100
        elseif not not arg1:IsInsideTargetRegion(TARGET_ENE_0, 9622450) or arg1:IsInsideTargetRegion(TARGET_ENE_0, 9622452) then
            f2_local0[2] = 80
            f2_local0[4] = 50
            f2_local0[5] = 50
        elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 9622454) then
            f2_local0[2] = 50
            f2_local0[7] = 80
        else
            f2_local0[5] = 100
        end
    elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 9622457) and arg1:GetNumber(0) == 0 then
        f2_local0[8] = 100
    elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 9622460) and arg1:HasSpecialEffectId(TARGET_SELF, 3501013) == false then
        if arg1:HasSpecialEffectId(TARGET_SELF, 3501011) == false then
            f2_local0[11] = 100
        elseif not not arg1:HasSpecialEffectId(TARGET_ENE_0, 109940) or arg1:IsInsideTargetRegion(TARGET_ENE_0, 9622471) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 110010) then
                f2_local0[18] = 100
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 3501012) == false then
                f2_local0[21] = 100
            else
                f2_local0[22] = 100
            end
        elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 9622476) then
            f2_local0[13] = 70
            f2_local0[16] = 30
        elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 9622461) then
            f2_local0[14] = 50
            f2_local0[15] = 30
        elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 9622464) then
            if arg1:HasSpecialEffectId(TARGET_ENE_0, 110010) then
                f2_local0[13] = 10
            else
                f2_local0[12] = 20
                f2_local0[16] = 60
            end
        elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 9622466) then
            f2_local0[18] = 50
        else
            f2_local0[12] = 100
            f2_local0[13] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 3501013) then
        if arg1:IsInsideTargetRegion(TARGET_ENE_0, 9622460) then
            f2_local0[23] = 100
        else
            f2_local0[24] = 100
        end
    elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 9622480) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 3501014) == false then
            f2_local0[25] = 100
        else
            f2_local0[26] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 3501010) then
        f2_local0[10] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 3501011) then
        f2_local0[20] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 3501014) then
        f2_local0[27] = 100
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
    f2_local1[27] = REGIST_FUNC(arg1, arg2, arg0.Act27)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, arg0.Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, arg0.Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, arg0.Act32)
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
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20011, TARGET_ENE_0, 999, 0, 0, 0, 0)
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
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20013, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act05 = function (arg0, arg1, arg2)
    arg0:SetEventFlag(19625480, true)
    arg0:SetEventFlag(19625481, true)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20014, TARGET_ENE_0, 999, 0, 0, 0, 0)
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
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20016, TARGET_ENE_0, 999, 0, 0, 0, 0)
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
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 21002, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act23 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 21003, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act24 = function (arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 20, 20004, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act25 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20005, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act26 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 21004, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act27 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 20006, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act30 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_NONE, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act31 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 21002, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act32 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 21004, TARGET_ENE_0, 999, 0, 0, 0, 0)
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
    local f35_local0 = arg1:GetDist(TARGET_ENE_0)
    local f35_local1 = arg1:GetSp(TARGET_SELF)
    local f35_local2 = arg1:GetRandam_Int(1, 100)
    local f35_local3 = arg1:GetRandam_Int(1, 100)
    local f35_local4 = arg1:GetEventRequest()
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5036 and arg1:IsInsideTargetRegion(TARGET_ENE_0, 9622472) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5036)
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 20006, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 3501012) and arg1:IsInsideTargetRegion(TARGET_ENE_0, 9622471) and arg1:GetSpecialEffectActivateInterruptType(0) == 5035 then
            arg1:SetTimer(6, 10)
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5035)
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 20038, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        end
    end
    if not arg1:HasSpecialEffectId(TARGET_ENE_0, 110010) and f35_local4 == 10 then
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
            if arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and arg1:IsInsideTargetRegion(TARGET_ENE_0, 9622453) then
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
            if arg1:GetSpecialEffectActivateInterruptType(0) == 5028 and arg1:IsInsideTargetRegion(TARGET_ENE_0, 9622456) and arg1:HasSpecialEffectId(TARGET_ENE_0, 109203) == false then
                arg1:SetTimer(2, 10)
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 20032, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            end
            if arg1:GetSpecialEffectActivateInterruptType(0) == 5029 and arg1:IsInsideTargetRegion(TARGET_ENE_0, 9622457) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 20039, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            end
            if arg1:GetSpecialEffectActivateInterruptType(0) == 5030 and (not not arg1:IsInsideTargetRegion(TARGET_ENE_0, 9622463) or arg1:IsInsideTargetRegion(TARGET_ENE_0, 9622462)) then
                arg1:SetTimer(3, 10)
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 20033, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            end
            if arg1:GetSpecialEffectActivateInterruptType(0) == 5031 and arg1:IsInsideTargetRegion(TARGET_ENE_0, 9622462) then
                arg1:SetTimer(4, 10)
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5031)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 20034, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            end
            if arg1:GetSpecialEffectActivateInterruptType(0) == 5032 and arg1:IsInsideTargetRegion(TARGET_ENE_0, 9622465) and arg1:IsInsideTargetRegion(TARGET_ENE_0, 9622473) == false and arg1:IsInsideTargetRegion(TARGET_ENE_0, 9622476) == false and arg1:HasSpecialEffectId(TARGET_ENE_0, 109203) == false and arg1:HasSpecialEffectId(TARGET_ENE_0, 109306) == false then
                arg1:SetTimer(5, 10)
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5032)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 20035, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            end
            if arg1:GetSpecialEffectActivateInterruptType(0) == 5034 and arg1:IsInsideTargetRegion(TARGET_ENE_0, 9622471) and arg1:HasSpecialEffectId(TARGET_ENE_0, 109940) == false then
                arg1:SetTimer(6, 10)
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5034)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 20037, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            end
            if arg1:GetSpecialEffectActivateInterruptType(0) == 5035 and arg1:HasSpecialEffectId(TARGET_SELF, 3501012) == false and arg1:IsInsideTargetRegion(TARGET_ENE_0, 9622471) and arg1:HasSpecialEffectId(TARGET_ENE_0, 109940) == false then
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
            if arg1:GetSpecialEffectActivateInterruptType(0) == 5037 and arg1:HasSpecialEffectId(TARGET_ENE_0, 109203) == false and arg1:HasSpecialEffectId(TARGET_ENE_0, 109306) == false and arg1:IsInsideTargetRegion(TARGET_ENE_0, 9622476) == false and arg1:IsInsideTargetRegion(TARGET_ENE_0, 9622464) then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5036)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 20035, TARGET_ENE_0, 999, 0, 0, 0, 0)
                return true
            end
            if arg1:GetSpecialEffectActivateInterruptType(0) == 5038 and arg1:HasSpecialEffectId(TARGET_ENE_0, 109027) == false and arg1:HasSpecialEffectId(TARGET_ENE_0, 109203) == false and arg1:HasSpecialEffectId(TARGET_ENE_0, 109306) == false then
                if arg1:IsInsideTargetRegion(TARGET_ENE_0, 9622475) then
                    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5038)
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 20036, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                elseif arg1:IsInsideTargetRegion(TARGET_ENE_0, 9622474) then
                    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5038)
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 20035, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    return true
                end
            end
        end
        if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) and arg1:IsInsideObserve(0) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5033) then
                local f35_local5 = arg1:HasSpecialEffectId(TARGET_ENE_0, 109013)
                if f35_local5 then
                    f35_local5 = arg1:IsInsideTargetRegion(TARGET_ENE_0, 9622468)
                    if not f35_local5 then
                        f35_local5 = arg1:IsInsideTargetRegion(TARGET_ENE_0, 9622469)
                    end
                end
                if f35_local5 == false and arg1:HasSpecialEffectId(TARGET_ENE_0, 109203) == false then
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


