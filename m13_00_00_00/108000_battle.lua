RegisterTableGoal(GOAL_7menmusya_108000_Battle, "GOAL_7menmusya_108000_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_7menmusya_108000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local5 = arg1:GetEventRequest()
    local f2_local6 = arg1:GetNinsatsuNum()
    arg1:DeleteObserve(0)
    if Common_ActivateAct(arg1, arg2) then

    elseif f2_local5 == 10 then
        f2_local0[20] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
        f2_local0[25] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 3108020) then
        f2_local0[26] = 100
    elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        KankyakuAct(arg1, arg2)
    elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        TorimakiAct(arg1, arg2, -1, 0)
    elseif arg1:GetNumber(0) == 0 then
        f2_local0[10] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
        f2_local0[7] = 100
        f2_local0[8] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        if f2_local3 > 7 then
            f2_local0[21] = 100
        elseif f2_local3 > 5 then
            f2_local0[21] = 100
        else
            f2_local0[21] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, COMMON_SP_EFFECT_PC_BREAK) then
        if f2_local3 >= 5 then
            f2_local0[20] = 300
            f2_local0[32] = 100
        else
            f2_local0[33] = 100
        end
    elseif f2_local6 <= 1 then
        if f2_local3 >= 25 then
            f2_local0[20] = 800
            f2_local0[42] = 200
            f2_local0[43] = 400
            f2_local0[37] = 200
            f2_local0[38] = 300
            f2_local0[39] = 100
        elseif f2_local3 >= 15 then
            f2_local0[20] = 800
            f2_local0[22] = 100
            f2_local0[42] = 200
            f2_local0[43] = 400
            f2_local0[37] = 100
            f2_local0[38] = 100
            f2_local0[39] = 300
        elseif f2_local3 > 3 then
            f2_local0[20] = 300
            f2_local0[22] = 100
            f2_local0[37] = 200
            f2_local0[38] = 100
            f2_local0[39] = 100
        else
            f2_local0[7] = 100
            f2_local0[8] = 100
            f2_local0[22] = 100
            f2_local0[37] = 100
            f2_local0[38] = 200
            f2_local0[39] = 100
        end
        if arg1:IsFinishTimer(0) == true and f2_local3 >= 15 then
            local f2_local7 = 0
            for f2_local8 = 1, 50, 1 do
                f2_local7 = f2_local7 + f2_local0[f2_local8]
            end
            local f2_local8 = f2_local7 * 2
            f2_local0[10] = f2_local8
        end
    else
        if SpaceCheck(arg1, arg2, 180, 11) then
            if f2_local3 >= 25 then
                f2_local0[20] = 900
                f2_local0[33] = 100
                f2_local0[34] = 400
                f2_local0[36] = 100
                f2_local0[42] = 200
                f2_local0[43] = 400
                f2_local0[37] = 1
                f2_local0[38] = 4
                f2_local0[39] = 1
            elseif f2_local3 >= 15 then
                f2_local0[20] = 800
                f2_local0[22] = 100
                f2_local0[33] = 100
                f2_local0[34] = 400
                f2_local0[36] = 100
                f2_local0[42] = 200
                f2_local0[43] = 400
                f2_local0[37] = 1
                f2_local0[38] = 4
                f2_local0[39] = 1
            elseif f2_local3 > 3 then
                f2_local0[20] = 400
                f2_local0[22] = 100
                f2_local0[33] = 100
                f2_local0[34] = 400
                f2_local0[36] = 100
                f2_local0[42] = 200
                f2_local0[43] = 400
                f2_local0[37] = 1
                f2_local0[38] = 4
                f2_local0[39] = 1
            else
                f2_local0[7] = 300
                f2_local0[8] = 300
                f2_local0[22] = 100
                f2_local0[33] = 100
                f2_local0[34] = 400
                f2_local0[36] = 100
                f2_local0[42] = 200
                f2_local0[43] = 400
                f2_local0[37] = 1
                f2_local0[38] = 4
                f2_local0[39] = 1
            end
        elseif f2_local3 >= 3 then
            f2_local0[20] = 200
            f2_local0[33] = 0
            f2_local0[34] = 0
            f2_local0[36] = 0
            f2_local0[42] = 0
            f2_local0[43] = 0
            f2_local0[37] = 100
            f2_local0[38] = 150
            f2_local0[39] = 100
        else
            f2_local0[7] = 100
            f2_local0[8] = 100
            f2_local0[22] = 100
            f2_local0[33] = 0
            f2_local0[34] = 0
            f2_local0[36] = 0
            f2_local0[42] = 0
            f2_local0[43] = 0
            f2_local0[37] = 100
            f2_local0[38] = 0
            f2_local0[39] = 100
        end
        if arg1:IsFinishTimer(0) == true and f2_local3 >= 15 then
            local f2_local7 = 0
            for f2_local8 = 1, 50, 1 do
                f2_local7 = f2_local7 + f2_local0[f2_local8]
            end
            local f2_local8 = f2_local7 * 2
            f2_local0[10] = f2_local8
        end
    end
    if SpaceCheck(arg1, arg2, 45, 4) == false and SpaceCheck(arg1, arg2, -45, 4) == false then
        f2_local0[22] = 0
    end
    if SpaceCheck(arg1, arg2, 90, 1) == false and SpaceCheck(arg1, arg2, -45, 1) == false then
        f2_local0[23] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 4) == false then
        f2_local0[24] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 1) == false then

    else

    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 3108050) and f2_local5 ~= 10 then
        f2_local0[20] = 0
    end
    f2_local0[7] = SetCoolTime(arg1, arg2, 3030, 10, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3031, 10, f2_local0[8], 1)
    f2_local0[20] = SetCoolTime(arg1, arg2, 3031, 15, f2_local0[20], 1)
    f2_local0[33] = SetCoolTime(arg1, arg2, 3000, 8, f2_local0[33], 1)
    f2_local0[33] = SetCoolTime(arg1, arg2, 3003, 8, f2_local0[33], 1)
    f2_local0[33] = SetCoolTime(arg1, arg2, 3004, 8, f2_local0[33], 1)
    f2_local0[33] = SetCoolTime(arg1, arg2, 3006, 8, f2_local0[33], 1)
    f2_local0[33] = SetCoolTime(arg1, arg2, 3007, 8, f2_local0[33], 1)
    f2_local0[42] = SetCoolTime(arg1, arg2, 3000, 8, f2_local0[42], 1)
    f2_local0[42] = SetCoolTime(arg1, arg2, 3003, 8, f2_local0[42], 1)
    f2_local0[42] = SetCoolTime(arg1, arg2, 3004, 8, f2_local0[42], 1)
    f2_local0[42] = SetCoolTime(arg1, arg2, 3006, 8, f2_local0[42], 1)
    f2_local0[42] = SetCoolTime(arg1, arg2, 3007, 8, f2_local0[42], 1)
    f2_local0[37] = SetCoolTime(arg1, arg2, 3000, 8, f2_local0[37], 1)
    f2_local0[37] = SetCoolTime(arg1, arg2, 3003, 8, f2_local0[37], 1)
    f2_local0[37] = SetCoolTime(arg1, arg2, 3004, 8, f2_local0[37], 1)
    f2_local0[37] = SetCoolTime(arg1, arg2, 3006, 8, f2_local0[37], 1)
    f2_local0[37] = SetCoolTime(arg1, arg2, 3007, 8, f2_local0[37], 1)
    f2_local0[34] = SetCoolTime(arg1, arg2, 3010, 8, f2_local0[34], 1)
    f2_local0[34] = SetCoolTime(arg1, arg2, 3013, 8, f2_local0[34], 1)
    f2_local0[34] = SetCoolTime(arg1, arg2, 3014, 8, f2_local0[34], 1)
    f2_local0[34] = SetCoolTime(arg1, arg2, 3016, 8, f2_local0[34], 1)
    f2_local0[34] = SetCoolTime(arg1, arg2, 3017, 8, f2_local0[34], 1)
    f2_local0[43] = SetCoolTime(arg1, arg2, 3010, 8, f2_local0[43], 1)
    f2_local0[43] = SetCoolTime(arg1, arg2, 3013, 8, f2_local0[43], 1)
    f2_local0[43] = SetCoolTime(arg1, arg2, 3014, 8, f2_local0[43], 1)
    f2_local0[43] = SetCoolTime(arg1, arg2, 3016, 8, f2_local0[43], 1)
    f2_local0[43] = SetCoolTime(arg1, arg2, 3017, 8, f2_local0[43], 1)
    f2_local0[38] = SetCoolTime(arg1, arg2, 3010, 8, f2_local0[38], 1)
    f2_local0[38] = SetCoolTime(arg1, arg2, 3013, 8, f2_local0[38], 1)
    f2_local0[38] = SetCoolTime(arg1, arg2, 3014, 8, f2_local0[38], 1)
    f2_local0[38] = SetCoolTime(arg1, arg2, 3016, 8, f2_local0[38], 1)
    f2_local0[38] = SetCoolTime(arg1, arg2, 3017, 8, f2_local0[38], 1)
    f2_local0[36] = SetCoolTime(arg1, arg2, 3020, 8, f2_local0[36], 1)
    f2_local0[36] = SetCoolTime(arg1, arg2, 3023, 8, f2_local0[36], 1)
    f2_local0[36] = SetCoolTime(arg1, arg2, 3024, 8, f2_local0[36], 1)
    f2_local0[39] = SetCoolTime(arg1, arg2, 3020, 8, f2_local0[39], 1)
    f2_local0[39] = SetCoolTime(arg1, arg2, 3023, 8, f2_local0[39], 1)
    f2_local0[39] = SetCoolTime(arg1, arg2, 3024, 8, f2_local0[39], 1)
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
    f2_local1[20] = REGIST_FUNC(arg1, arg2, arg0.Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, arg0.Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, arg0.Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, arg0.Act23)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, arg0.Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, arg0.Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, arg0.Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, arg0.Act28)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, arg0.Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, arg0.Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, arg0.Act33)
    f2_local1[34] = REGIST_FUNC(arg1, arg2, arg0.Act34)
    f2_local1[36] = REGIST_FUNC(arg1, arg2, arg0.Act36)
    f2_local1[37] = REGIST_FUNC(arg1, arg2, arg0.Act37)
    f2_local1[38] = REGIST_FUNC(arg1, arg2, arg0.Act38)
    f2_local1[39] = REGIST_FUNC(arg1, arg2, arg0.Act39)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, arg0.Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, arg0.Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, arg0.Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, arg0.Act43)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, arg0.Act46)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, arg0.Act47)
    f2_local1[48] = REGIST_FUNC(arg1, arg2, arg0.Act48)
    local f2_local7 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    local f3_local0 = 360
    local f3_local1 = 15
    local f3_local2 = 3000
    local f3_local3 = 3010
    local f3_local4 = 9999
    local f3_local5 = 0
    local f3_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local2, TARGET_ENE_0, f3_local4, f3_local5, f3_local6, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local3, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    local f4_local0 = 360
    local f4_local1 = 15
    local f4_local2 = 3000
    local f4_local3 = 3020
    local f4_local4 = 9999
    local f4_local5 = 0
    local f4_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local2, TARGET_ENE_0, f4_local4, f4_local5, f4_local6, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f4_local3, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f5_local0 = 360
    local f5_local1 = 15
    local f5_local2 = 3010
    local f5_local3 = 3000
    local f5_local4 = 9999
    local f5_local5 = 0
    local f5_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f5_local2, TARGET_ENE_0, f5_local4, f5_local5, f5_local6, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f5_local3, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act04 = function (arg0, arg1, arg2)
    local f6_local0 = 360
    local f6_local1 = 15
    local f6_local2 = 3010
    local f6_local3 = 3020
    local f6_local4 = 9999
    local f6_local5 = 0
    local f6_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f6_local2, TARGET_ENE_0, f6_local4, f6_local5, f6_local6, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f6_local3, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act05 = function (arg0, arg1, arg2)
    local f7_local0 = 360
    local f7_local1 = 15
    local f7_local2 = 3020
    local f7_local3 = 3000
    local f7_local4 = 9999
    local f7_local5 = 0
    local f7_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f7_local2, TARGET_ENE_0, f7_local4, f7_local5, f7_local6, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f7_local3, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act06 = function (arg0, arg1, arg2)
    local f8_local0 = 360
    local f8_local1 = 15
    local f8_local2 = 3020
    local f8_local3 = 3010
    local f8_local4 = 9999
    local f8_local5 = 0
    local f8_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f8_local2, TARGET_ENE_0, f8_local4, f8_local5, f8_local6, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f8_local3, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act07 = function (arg0, arg1, arg2)
    local f9_local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f9_local2 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 1.5
    local f9_local6 = 1
    local f9_local7 = 3030
    local f9_local8 = 0
    local f9_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local7, TARGET_ENE_0, 9999, f9_local8, f9_local9, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act08 = function (arg0, arg1, arg2)
    local f10_local0 = 4.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = 4.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f10_local2 = 4.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 1.5
    local f10_local6 = 1
    local f10_local7 = 3031
    local f10_local8 = 3032
    local f10_local9 = 4.4 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f10_local10 = 0
    local f10_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local7, TARGET_ENE_0, f10_local9, f10_local10, f10_local11, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f10_local8, TARGET_ENE_0, SuccessDist, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act10 = function (arg0, arg1, arg2)
    local f11_local0 = 3040
    local f11_local1 = 0
    local f11_local2 = 0
    local f11_local3 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local0, TARGET_ENE_0, 9999, f11_local1, f11_local2, 0, 0)
    f11_local3 = f11_local3:TimingSetNumber(0, 1, AI_TIMING_SET__ACTIVATE)
    f11_local3:TimingSetTimer(0, 30, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act11 = function (arg0, arg1, arg2)
    local f12_local0 = 3003
    local f12_local1 = 3014
    local f12_local2 = 3016
    local f12_local3 = 3017
    local f12_local4 = 9999
    local f12_local5 = 0
    local f12_local6 = 0
    local f12_local7 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f12_local0, TARGET_ENE_0, f12_local4, f12_local5, f12_local6, 0, 0)
    if f12_local7 <= 33 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f12_local1, TARGET_ENE_0, 9999, 0, 0)
    elseif f12_local7 <= 66 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f12_local2, TARGET_ENE_0, 9999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f12_local3, TARGET_ENE_0, 9999, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act12 = function (arg0, arg1, arg2)
    local f13_local0 = 3003
    local f13_local1 = 3024
    local f13_local2 = 9999
    local f13_local3 = 0
    local f13_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f13_local0, TARGET_ENE_0, f13_local2, f13_local3, f13_local4, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f13_local1, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act13 = function (arg0, arg1, arg2)
    local f14_local0 = 3013
    local f14_local1 = 3004
    local f14_local2 = 3006
    local f14_local3 = 3007
    local f14_local4 = 9999
    local f14_local5 = 0
    local f14_local6 = 0
    local f14_local7 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f14_local0, TARGET_ENE_0, f14_local4, f14_local5, f14_local6, 0, 0)
    if f14_local7 <= 33 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f14_local1, TARGET_ENE_0, 9999, 0, 0)
    elseif f14_local7 <= 66 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f14_local2, TARGET_ENE_0, 9999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f14_local3, TARGET_ENE_0, 9999, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act14 = function (arg0, arg1, arg2)
    local f15_local0 = 3013
    local f15_local1 = 3024
    local f15_local2 = 9999
    local f15_local3 = 0
    local f15_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f15_local0, TARGET_ENE_0, f15_local2, f15_local3, f15_local4, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f15_local1, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act15 = function (arg0, arg1, arg2)
    local f16_local0 = 3023
    local f16_local1 = 3004
    local f16_local2 = 3006
    local f16_local3 = 3007
    local f16_local4 = 9999
    local f16_local5 = 0
    local f16_local6 = 0
    local f16_local7 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f16_local0, TARGET_ENE_0, f16_local4, f16_local5, f16_local6, 0, 0)
    if f16_local7 <= 33 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f16_local1, TARGET_ENE_0, 9999, 0, 0)
    elseif f16_local7 <= 66 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f16_local2, TARGET_ENE_0, 9999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f16_local3, TARGET_ENE_0, 9999, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act16 = function (arg0, arg1, arg2)
    local f17_local0 = 3023
    local f17_local1 = 3014
    local f17_local2 = 3016
    local f17_local3 = 3017
    local f17_local4 = 9999
    local f17_local5 = 0
    local f17_local6 = 0
    local f17_local7 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f17_local0, TARGET_ENE_0, f17_local4, f17_local5, f17_local6, 0, 0)
    if f17_local7 <= 33 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f17_local1, TARGET_ENE_0, 9999, 0, 0)
    elseif f17_local7 <= 66 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f17_local2, TARGET_ENE_0, 9999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f17_local3, TARGET_ENE_0, 9999, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act20 = function (arg0, arg1, arg2)
    local f18_local0 = 3041
    local f18_local1 = 0
    local f18_local2 = 0
    local f18_local3 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f18_local0, TARGET_ENE_0, 9999, f18_local1, f18_local2, 0, 0)
    f18_local3:TimingSetTimer(0, 15, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act21 = function (arg0, arg1, arg2)
    local f19_local0 = 3
    local f19_local1 = 45
    arg1:AddSubGoal(GOAL_COMMON_Turn, f19_local0, TARGET_ENE_0, f19_local1, -1, GOAL_RESULT_Success, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act22 = function (arg0, arg1, arg2)
    local f20_local0 = 3
    local f20_local1 = 0
    if SpaceCheck(arg0, arg1, -45, 4) == true then
        if SpaceCheck(arg0, arg1, 45, 4) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, f20_local0, 5212, TARGET_ENE_0, f20_local1, AI_DIR_TYPE_L, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, f20_local0, 5213, TARGET_ENE_0, f20_local1, AI_DIR_TYPE_R, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f20_local0, 5212, TARGET_ENE_0, f20_local1, AI_DIR_TYPE_L, 0)
        end
    elseif SpaceCheck(arg0, arg1, 45, 4) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f20_local0, 5213, TARGET_ENE_0, f20_local1, AI_DIR_TYPE_R, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_SELF, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act23 = function (arg0, arg1, arg2)
    local f21_local0 = arg0:GetDist(TARGET_ENE_0)
    local f21_local1 = -1
    local f21_local2 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f21_local2 = 0
            else
                f21_local2 = 1
            end
        else
            f21_local2 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f21_local2 = 1
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_SELF, 0, 0, 0)
    end
    local f21_local3 = 3
    local f21_local4 = arg0:GetRandam_Int(30, 45)
    arg0:SetNumber(10, f21_local2)
    local f21_local5 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f21_local3, TARGET_ENE_0, f21_local2, f21_local4, true, true, f21_local1)
    f21_local5:TimingSetTimer(2, 4, UPDATE_SUCCESS)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act25 = function (arg0, arg1, arg2)
    local f22_local0 = arg0:GetRandam_Float(2.5, 3.5)
    local f22_local1 = 30
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f22_local0, TARGET_ENE_0, f22_local1, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act26 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act27 = function (arg0, arg1, arg2)
    local f24_local0 = arg0:GetDist(TARGET_ENE_0)
    local f24_local1 = arg0:GetDistYSigned(TARGET_ENE_0)
    local f24_local2 = f24_local1 / math.tan(math.deg(30))
    local f24_local3 = arg0:GetRandam_Int(0, 1)
    if f24_local1 >= 3 then
        if f24_local2 + 1 <= f24_local0 then
            if SpaceCheck(arg0, arg1, 0, 4) == true then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.1, TARGET_ENE_0, f24_local2, TARGET_SELF, false, -1)
            elseif SpaceCheck(arg0, arg1, 0, 3) == true then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_ENE_0, f24_local2, TARGET_SELF, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f24_local3, arg0:GetRandam_Int(30, 45), true, true, -1)
            end
        elseif f24_local0 <= f24_local2 - 1 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, f24_local2, TARGET_ENE_0, true, -1)
        end
    elseif SpaceCheck(arg0, arg1, 0, 4) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.1, TARGET_ENE_0, 0, TARGET_SELF, false, -1)
    elseif SpaceCheck(arg0, arg1, 0, 3) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_ENE_0, 0, TARGET_SELF, true, -1)
    elseif SpaceCheck(arg0, arg1, 0, 1) == false then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 0.5, TARGET_ENE_0, 999, TARGET_ENE_0, true, -1)
    end
    arg0:SetNumber(10, f24_local3)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f24_local3, arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act28 = function (arg0, arg1, arg2)
    local f25_local0 = arg0:GetDist(TARGET_ENE_0)
    local f25_local1 = 1.5
    local f25_local2 = arg0:GetRandam_Int(30, 45)
    local f25_local3 = -1
    local f25_local4 = arg0:GetRandam_Int(0, 1)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f25_local1, TARGET_ENE_0, f25_local4, f25_local2, true, true, f25_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act31 = function (arg0, arg1, arg2)
    local f26_local0 = 360
    local f26_local1 = 15
    arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, f26_local0, f26_local1)
    local f26_local2 = 3010
    local f26_local3 = 3000
    local f26_local4 = 3010
    local f26_local5 = 9999
    local f26_local6 = 9999
    local f26_local7 = 0
    local f26_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f26_local2, TARGET_ENE_0, f26_local5, f26_local7, f26_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f26_local3, TARGET_ENE_0, f26_local6, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f26_local4, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act32 = function (arg0, arg1, arg2)
    local f27_local0 = 360
    local f27_local1 = 15
    arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, f27_local0, f27_local1)
    local f27_local2 = 3000
    local f27_local3 = 3010
    local f27_local4 = 3020
    local f27_local5 = 9999
    local f27_local6 = 9999
    local f27_local7 = 0
    local f27_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f27_local2, TARGET_ENE_0, f27_local5, f27_local7, f27_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f27_local3, TARGET_ENE_0, f27_local6, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f27_local4, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act33 = function (arg0, arg1, arg2)
    local f28_local0 = 3003
    local f28_local1 = 3004
    local f28_local2 = 9999
    local f28_local3 = 0
    local f28_local4 = 0
    local f28_local5 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f28_local0, TARGET_ENE_0, f28_local2, f28_local3, f28_local4, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f28_local1, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act34 = function (arg0, arg1, arg2)
    local f29_local0 = 3013
    local f29_local1 = 3014
    local f29_local2 = 9999
    local f29_local3 = 0
    local f29_local4 = 0
    local f29_local5 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f29_local0, TARGET_ENE_0, f29_local2, f29_local3, f29_local4, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f29_local1, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act36 = function (arg0, arg1, arg2)
    local f30_local0 = 3023
    local f30_local1 = 3024
    local f30_local2 = 9999
    local f30_local3 = 0
    local f30_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f30_local0, TARGET_ENE_0, f30_local2, f30_local3, f30_local4, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f30_local1, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act37 = function (arg0, arg1, arg2)
    local f31_local0 = 360
    local f31_local1 = 15
    arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, f31_local0, f31_local1)
    local f31_local2 = 3000
    local f31_local3 = 3000
    local f31_local4 = 9999
    local f31_local5 = 0
    local f31_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f31_local2, TARGET_ENE_0, f31_local4, f31_local5, f31_local6, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f31_local3, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act38 = function (arg0, arg1, arg2)
    local f32_local0 = 3010
    local f32_local1 = 3010
    local f32_local2 = 9999
    local f32_local3 = 0
    local f32_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f32_local0, TARGET_ENE_0, f32_local2, f32_local3, f32_local4, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f32_local1, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act39 = function (arg0, arg1, arg2)
    local f33_local0 = 360
    local f33_local1 = 15
    arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, f33_local0, f33_local1)
    local f33_local2 = 3020
    local f33_local3 = 3020
    local f33_local4 = 9999
    local f33_local5 = 0
    local f33_local6 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f33_local2, TARGET_ENE_0, f33_local4, f33_local5, f33_local6, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f33_local3, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act40 = function (arg0, arg1, arg2)
    local f34_local0 = 3003
    local f34_local1 = 3024
    local f34_local2 = 9999
    local f34_local3 = 0
    local f34_local4 = 0
    local f34_local5 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f34_local0, TARGET_ENE_0, f34_local2, f34_local3, f34_local4, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f34_local1, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act41 = function (arg0, arg1, arg2)
    local f35_local0 = 3013
    local f35_local1 = 3024
    local f35_local2 = 9999
    local f35_local3 = 0
    local f35_local4 = 0
    local f35_local5 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f35_local0, TARGET_ENE_0, f35_local2, f35_local3, f35_local4, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f35_local1, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act42 = function (arg0, arg1, arg2)
    local f36_local0 = 3003
    local f36_local1 = 3006
    local f36_local2 = 9999
    local f36_local3 = 0
    local f36_local4 = 0
    local f36_local5 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f36_local0, TARGET_ENE_0, f36_local2, f36_local3, f36_local4, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f36_local1, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act43 = function (arg0, arg1, arg2)
    local f37_local0 = 3013
    local f37_local1 = 3017
    local f37_local2 = 9999
    local f37_local3 = 0
    local f37_local4 = 0
    local f37_local5 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f37_local0, TARGET_ENE_0, f37_local2, f37_local3, f37_local4, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f37_local1, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act46 = function (arg0, arg1, arg2)
    local f38_local0 = 3000
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, f38_local0, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act47 = function (arg0, arg1, arg2)
    local f39_local0 = 3010
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, f39_local0, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act48 = function (arg0, arg1, arg2)
    local f40_local0 = 3020
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, f40_local0, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f41_local0 = arg1:GetDist(TARGET_ENE_0)
    local f41_local1 = arg1:GetSpecialEffectActivateInterruptType(0)
    local f41_local2 = GetDist_Parry(arg1)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
        return false
    end
    if Interupt_PC_Break(arg1) then
        arg1:Replanning()
        return true
    end
    if arg1:IsInterupt(INTERUPT_ParryTiming) and arg1:GetNumber(1) == 1 then
        local f41_local3 = GetDist_Parry(arg1)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 90, f41_local3) and arg1:HasSpecialEffectId(TARGET_SELF, 3108020) == false then
            arg2:ClearSubGoal()
            local f41_local4 = arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3101, TARGET_ENE_0, 9999, 0)
            f41_local4:TimingSetNumber(1, 0, AI_TIMING_SET__ACTIVATE)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and f41_local1 == 5026 then
        arg1:SetNumber(1, 1)
        return false
    end
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) and arg1:IsInsideObserve(0) then
        arg1:DeleteObserve(0)
        arg1:Replanning()
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


