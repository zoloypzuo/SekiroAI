RegisterTableGoal(GOAL_Genpeimusya_kemari_131030_Battle, "GOAL_Genpeimusya_kemari_131030_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Genpeimusya_kemari_131030_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local5 = arg1:GetNpcThinkParamID()
    arg1:SetStringIndexedNumber("hassouDisable_Flg", 0)
    Set_ConsecutiveGuardCount_Interrupt(arg1)
    if Common_ActivateAct(arg1, arg2, 1) then

    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        f2_local0[21] = 100
    elseif f2_local5 == 13100301 then
        if f2_local3 >= 40 then
            if not not arg1:HasSpecialEffectId(TARGET_ENE_0, 110040) or arg1:HasSpecialEffectId(TARGET_ENE_0, 110041) then
                if arg1:IsInsideTargetRegion(TARGET_ENE_0, 2502630) then
                    f2_local0[26] = 1
                else
                    f2_local0[11] = 100000000000
                end
            else
                f2_local0[26] = 1
            end
        elseif f2_local3 >= 7 then
            f2_local0[1] = 100
            f2_local0[6] = 100
            f2_local0[23] = 100
        elseif f2_local3 >= 4.5 then
            f2_local0[1] = 20
            f2_local0[5] = 100
            f2_local0[10] = 50
            f2_local0[23] = 10
        else
            f2_local0[7] = 100
            f2_local0[10] = 100
        end
    elseif f2_local3 >= 15 then
        f2_local0[1] = 100
        f2_local0[6] = 100
        f2_local0[23] = 100
    elseif f2_local3 >= 10 then
        f2_local0[1] = 100
        f2_local0[6] = 100
        f2_local0[23] = 100
    elseif f2_local3 > 7 then
        f2_local0[1] = 100
        f2_local0[6] = 100
        f2_local0[23] = 100
    elseif f2_local3 > 4.5 then
        f2_local0[1] = 20
        f2_local0[5] = 100
        f2_local0[10] = 50
        f2_local0[23] = 10
    else
        f2_local0[7] = 100
        f2_local0[10] = 100
    end
    if SpaceCheck(arg1, arg2, 45, 2) == false and SpaceCheck(arg1, arg2, -45, 2) == false then
        f2_local0[22] = 0
    end
    if SpaceCheck(arg1, arg2, 90, 1) == false and SpaceCheck(arg1, arg2, -90, 1) == false then
        f2_local0[23] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 2) == false then
        f2_local0[24] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 1) == false then
        f2_local0[25] = 0
    end
    if SpaceCheck(arg1, arg2, 120, 3) == false or SpaceCheck(arg1, arg2, -120, 3) == false then
        arg1:SetStringIndexedNumber("hassouDisable_Flg", 1)
    else
        arg1:SetStringIndexedNumber("hassouDisable_Flg", 0)
    end
    if arg1:GetStringIndexedNumber("hassouDisable_Flg") == 1 and arg1:HasSpecialEffectId(TARGET_SELF, 200051) then
        f2_local0[10] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3003, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3001, 10, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3007, 10, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3004, 10, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3008, 10, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3020, 10, f2_local0[7], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3044, 10, f2_local0[10], 1)
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
    f2_local1[21] = REGIST_FUNC(arg1, arg2, arg0.Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, arg0.Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, arg0.Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, arg0.Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, arg0.Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, arg0.Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, arg0.Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, arg0.Act28)
    local f2_local6 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    local f3_local0 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 999 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local2 = 999 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 1.5
    local f3_local6 = 3
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 0
    local f3_local8 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 200051) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 9999, f3_local7, f3_local8, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 9999, f3_local7, f3_local8, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    local f4_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 99 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f4_local2 = 99 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 1.5
    local f4_local6 = 3
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 0
    local f4_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 9999, f4_local7, f4_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f5_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 99 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f5_local2 = 99 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 1.5
    local f5_local6 = 3
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 0
    local f5_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 9999, f5_local7, f5_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act04 = function (arg0, arg1, arg2)
    local f6_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 99 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f6_local2 = 99 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 1.5
    local f6_local6 = 3
    local f6_local7 = 0
    local f6_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 9999, f6_local7, f6_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act05 = function (arg0, arg1, arg2)
    local f7_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 99 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f7_local2 = 99 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 1.5
    local f7_local6 = 3
    local f7_local7 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local8 = 0
    local f7_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, f7_local7, f7_local8, f7_local9, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act06 = function (arg0, arg1, arg2)
    local f8_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = 99 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f8_local2 = 99 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 1.5
    local f8_local6 = 3
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 0
    local f8_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 9999, f8_local7, f8_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act07 = function (arg0, arg1, arg2)
    local f9_local0 = 2.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 2.9 - arg0:GetMapHitRadius(TARGET_SELF) + 99
    local f9_local2 = 2.9 - arg0:GetMapHitRadius(TARGET_SELF) + 100
    local f9_local3 = 0
    local f9_local4 = 0
    local f9_local5 = 1.5
    local f9_local6 = 3
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 0
    local f9_local8 = 0
    local f9_local9 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, 9999, f9_local7, f9_local8, 0, 0)
    if arg0:GetStringIndexedNumber("hassouDisable_Flg") == 0 or arg0:HasSpecialEffectId(TARGET_SELF, 200051) == false then
        if f9_local9 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3045, TARGET_ENE_0, 9999, f9_local7, f9_local8, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3044, TARGET_ENE_0, 9999, f9_local7, f9_local8, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3044, TARGET_ENE_0, 9999, f9_local7, f9_local8, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3045, TARGET_ENE_0, 9999, f9_local7, f9_local8, 0, 0)
        end
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 200050) then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 9999, f9_local7, f9_local8, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act08 = function (arg0, arg1, arg2)
    local f10_local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = 99 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f10_local2 = 99 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 1.5
    local f10_local6 = 3
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 0
    local f10_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 9999, f10_local7, f10_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act10 = function (arg0, arg1, arg2)
    local f11_local0 = arg0:GetRandam_Int(1, 100)
    local f11_local1 = 0
    local f11_local2 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 200051) then
        if f11_local0 <= 50 then
            if arg0:GetStringIndexedNumber("hassouDisable_Flg") == 0 then
                arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3044, TARGET_ENE_0, 9999, f11_local1, f11_local2, 0, 0)
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3045, TARGET_ENE_0, 9999, f11_local1, f11_local2, 0, 0)
            end
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 9999, f11_local1, f11_local2, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 9999, 0, 0)
        else
            if arg0:GetStringIndexedNumber("hassouDisable_Flg") == 0 then
                arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3045, TARGET_ENE_0, 9999, f11_local1, f11_local2, 0, 0)
                arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3044, TARGET_ENE_0, 9999, f11_local1, f11_local2, 0, 0)
            end
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 9999, f11_local1, f11_local2, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 9999, 0, 0)
        end
    elseif f11_local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3044, TARGET_ENE_0, 9999, f11_local1, f11_local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 9999, f11_local1, f11_local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3045, TARGET_ENE_0, 9999, f11_local1, f11_local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 9999, f11_local1, f11_local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act11 = function (arg0, arg1, arg2)
    local f12_local0 = 0
    local f12_local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 9999, f12_local0, f12_local1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act21 = function (arg0, arg1, arg2)
    local f13_local0 = 3
    local f13_local1 = 45
    arg1:AddSubGoal(GOAL_COMMON_Turn, f13_local0, TARGET_ENE_0, f13_local1, -1, GOAL_RESULT_Success, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act22 = function (arg0, arg1, arg2)
    local f14_local0 = 3
    local f14_local1 = 0
    local f14_local2 = 5202
    if SpaceCheck(arg0, arg1, -45, 2) == true then
        if SpaceCheck(arg0, arg1, 45, 2) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f14_local2 = 5202
            else
                f14_local2 = 5203
            end
        else
            f14_local2 = 5202
        end
    elseif SpaceCheck(arg0, arg1, 45, 2) == true then
        f14_local2 = 5203
    else

    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f14_local0, f14_local2, TARGET_ENE_0, f14_local1, AI_DIR_TYPE_R, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act23 = function (arg0, arg1, arg2)
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = arg0:GetSp(TARGET_SELF)
    local f15_local2 = 20
    local f15_local3 = arg0:GetRandam_Int(1, 100)
    local f15_local4 = -1
    local f15_local5 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_R, 180, 999) then
                f15_local5 = 1
            else
                f15_local5 = 0
            end
        else
            f15_local5 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f15_local5 = 1
    else

    end
    local f15_local6 = 1.2
    local f15_local7 = arg0:GetRandam_Int(30, 45)
    arg0:SetNumber(10, f15_local5)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f15_local6, TARGET_ENE_0, f15_local5, f15_local7, true, true, f15_local4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act24 = function (arg0, arg1, arg2)
    local f16_local0 = arg0:GetDist(TARGET_ENE_0)
    local f16_local1 = 3
    local f16_local2 = 0
    local f16_local3 = 5201
    if SpaceCheck(arg0, arg1, 180, 2) == true and SpaceCheck(arg0, arg1, 180, 4) == true then
        if f16_local0 > 4 then

        else
            f16_local3 = 5211
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f16_local1, f16_local3, TARGET_ENE_0, f16_local2, AI_DIR_TYPE_B, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act25 = function (arg0, arg1, arg2)
    local f17_local0 = arg0:GetRandam_Float(2, 4)
    local f17_local1 = arg0:GetRandam_Float(5, 7)
    local f17_local2 = arg0:GetDist(TARGET_ENE_0)
    local f17_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f17_local0, TARGET_ENE_0, f17_local1, TARGET_ENE_0, true, f17_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act26 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act27 = function (arg0, arg1, arg2)
    local f19_local0 = arg0:GetDist(TARGET_ENE_0)
    local f19_local1 = arg0:GetDistYSigned(TARGET_ENE_0)
    local f19_local2 = f19_local1 / math.tan(math.deg(30))
    local f19_local3 = arg0:GetRandam_Int(0, 1)
    if f19_local1 >= 3 then
        if f19_local2 + 1 <= f19_local0 then
            if SpaceCheck(arg0, arg1, 0, 4) == true then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.1, TARGET_ENE_0, f19_local2, TARGET_SELF, false, -1)
            elseif SpaceCheck(arg0, arg1, 0, 3) == true then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_ENE_0, f19_local2, TARGET_SELF, true, -1)
            end
        elseif f19_local0 <= f19_local2 - 1 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, f19_local2, TARGET_ENE_0, true, -1)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f19_local3, arg0:GetRandam_Int(30, 45), true, true, -1)
            arg0:SetNumber(10, f19_local3)
        end
    elseif SpaceCheck(arg0, arg1, 0, 4) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.1, TARGET_ENE_0, 0, TARGET_SELF, false, -1)
    elseif SpaceCheck(arg0, arg1, 0, 3) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_ENE_0, 0, TARGET_SELF, true, -1)
    elseif SpaceCheck(arg0, arg1, 0, 1) == false then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 0.5, TARGET_ENE_0, 999, TARGET_ENE_0, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f19_local3, arg0:GetRandam_Int(30, 45), true, true, -1)
        arg0:SetNumber(10, f19_local3)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act28 = function (arg0, arg1, arg2)
    local f20_local0 = arg0:GetDist(TARGET_ENE_0)
    local f20_local1 = 1.5
    local f20_local2 = 1.5
    local f20_local3 = arg0:GetRandam_Int(30, 45)
    local f20_local4 = -1
    local f20_local5 = arg0:GetRandam_Int(0, 1)
    if f20_local0 <= 3 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f20_local1, TARGET_ENE_0, f20_local5, f20_local3, true, true, f20_local4)
    elseif f20_local0 <= 8 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f20_local2, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f20_local2, TARGET_ENE_0, 8, TARGET_SELF, false, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f21_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        return arg0.Damaged(arg1, arg2)
    end
    return false
    
end

Goal.Damaged = function (arg0, arg1, arg2)
    local f22_local0 = arg0:GetRandam_Int(1, 100)
    local f22_local1 = 5
    if arg0:GetStringIndexedNumber("hassouDisable_Flg") == 1 and arg0:HasSpecialEffectId(TARGET_SELF, 200051) then
        return true
    end
    if SpaceCheck(arg0, arg1, 180, 3) == true then
        if f22_local0 <= 50 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 1, 3045, TARGET_ENE_0, 9999, 0, 0, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 1, 3010, TARGET_ENE_0, 9999, 0, 0, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3005, TARGET_ENE_0, 9999, 0, 0)
            return true
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 1, 3044, TARGET_ENE_0, 9999, 0, 0, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3045, TARGET_ENE_0, 9999, 0, 0, 0, 0)
        end
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


