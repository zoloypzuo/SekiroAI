RegisterTableGoal(GOAL_NingyoRyu_520000_Battle, "GOAL_NingyoRyu_520000_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_NingyoRyu_520000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistYSigned(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("targetDist", arg1:GetDist(TARGET_ENE_0))
    arg1:SetStringIndexedNumber("targetDistY", arg1:GetDistYSigned(TARGET_ENE_0))
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5500)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3520013)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 106110)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 106111)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 3520010)
    arg1:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 90, 15)
    arg1:AddObserveRegion(1, TARGET_ENE_0, 2502301)
    local f2_local5 = 0
    if arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
        f2_local5 = 3
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
        f2_local5 = 2
    else
        f2_local5 = 1
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 3520012) then
        f2_local0[18] = 100
    elseif not not arg1:HasSpecialEffectId(TARGET_ENE_0, 110060) or arg1:HasSpecialEffectId(TARGET_ENE_0, 110010) then
        f2_local0[26] = 100
    elseif f2_local5 == 1 then
        if arg1:GetNumber(0) == 0 then
            f2_local0[5] = 300
        elseif f2_local3 >= 70 then
            f2_local0[5] = 300
            f2_local0[3] = 100
        elseif f2_local3 >= 50 then
            f2_local0[3] = 150
            f2_local0[9] = 200
            f2_local0[11] = 150
            f2_local0[14] = 100
        elseif f2_local3 > 40 then
            f2_local0[1] = 150
            f2_local0[2] = 150
            f2_local0[3] = 100
            f2_local0[8] = 100
            f2_local0[9] = 100
            f2_local0[12] = 100
            f2_local0[14] = 100
        elseif f2_local3 > 30 then
            f2_local0[1] = 100
            f2_local0[2] = 100
            f2_local0[4] = 400
            f2_local0[6] = 100
            f2_local0[8] = 100
        else
            f2_local0[5] = 100
            f2_local0[6] = 100
        end
    elseif f2_local5 == 2 then
        f2_local0[5] = 10000
        if arg1:GetNumber(1) == 0 then
            f2_local0[5] = 100
            arg1:SetNumber(1, 1)
        elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 9495) then
            f2_local0[11] = 100
            f2_local0[12] = 100
        elseif f2_local3 >= 70 then
            f2_local0[3] = 100
            f2_local0[9] = 100
        elseif f2_local4 >= 10.5 then
            f2_local0[3] = 100
            f2_local0[8] = 200
        elseif f2_local4 >= 7.5 then
            f2_local0[13] = 100
            f2_local0[11] = 100
            f2_local0[14] = 50
            f2_local0[35] = 50
        elseif f2_local4 >= 4.5 then
            f2_local0[13] = 100
            f2_local0[12] = 100
            f2_local0[14] = 50
            f2_local0[35] = 50
        elseif f2_local3 <= 35 then
            f2_local0[6] = 1000
        else
            f2_local0[3] = 100
            f2_local0[9] = 100
            f2_local0[14] = 100
        end
    elseif f2_local5 == 3 then
        if arg1:GetNumber(2) == 0 then
            f2_local0[5] = 100
            arg1:SetNumber(2, 1)
            arg1:SetTimer(1, 30)
        elseif f2_local3 <= 30 then
            f2_local0[5] = 100
            f2_local0[6] = 100
        elseif arg1:GetTimer(1) <= 0 then
            f2_local0[47] = 100
            arg1:SetTimer(1, 30)
        elseif f2_local3 <= 36 then
            f2_local0[40] = 100
            f2_local0[41] = 100
            f2_local0[43] = 100
        elseif f2_local3 <= 50 then
            f2_local0[40] = 100
            f2_local0[41] = 100
            f2_local0[44] = 100
        else
            f2_local0[40] = 100
            f2_local0[41] = 100
            f2_local0[43] = 100
            f2_local0[44] = 100
        end
    else
        f2_local0[26] = 100
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 30, f2_local0[1], 1)
    f2_local0[1] = SetCoolTime(arg1, arg2, 3040, 30, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3000, 30, f2_local0[2], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3040, 30, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3000, 15, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3001, 30, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3006, 40, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3007, 30, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3002, 15, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3035, 30, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3036, 30, f2_local0[9], 1)
    f2_local0[20] = SetCoolTime(arg1, arg2, 3020, 30, f2_local0[20], 1)
    f2_local0[31] = SetCoolTime(arg1, arg2, 3011, 30, f2_local0[31], 1)
    f2_local0[30] = SetCoolTime(arg1, arg2, 3013, 30, f2_local0[30], 1)
    f2_local0[32] = SetCoolTime(arg1, arg2, 3013, 30, f2_local0[32], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3014, 30, f2_local0[11], 1)
    f2_local0[33] = SetCoolTime(arg1, arg2, 3015, 15, f2_local0[33], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3003, 15, f2_local0[14], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3005, 30, f2_local0[15], 1)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3020, 30, f2_local0[16], 1)
    f2_local0[31] = SetCoolTime(arg1, arg2, 3013, 30, f2_local0[31], 1)
    f2_local0[31] = SetCoolTime(arg1, arg2, 3014, 30, f2_local0[31], 1)
    f2_local0[32] = SetCoolTime(arg1, arg2, 3013, 30, f2_local0[32], 1)
    f2_local0[32] = SetCoolTime(arg1, arg2, 3014, 30, f2_local0[32], 1)
    f2_local0[33] = SetCoolTime(arg1, arg2, 3013, 15, f2_local0[33], 1)
    f2_local0[33] = SetCoolTime(arg1, arg2, 3014, 15, f2_local0[33], 1)
    f2_local0[34] = SetCoolTime(arg1, arg2, 3011, 30, f2_local0[34], 1)
    f2_local0[35] = SetCoolTime(arg1, arg2, 3011, 30, f2_local0[35], 1)
    f2_local0[40] = SetCoolTime(arg1, arg2, 3040, 10, f2_local0[40], 1)
    f2_local0[41] = SetCoolTime(arg1, arg2, 3041, 10, f2_local0[41], 1)
    f2_local0[42] = SetCoolTime(arg1, arg2, 3043, 10, f2_local0[42], 1)
    f2_local0[43] = SetCoolTime(arg1, arg2, 3044, 10, f2_local0[43], 1)
    f2_local0[44] = SetCoolTime(arg1, arg2, 3045, 10, f2_local0[44], 1)
    f2_local0[45] = SetCoolTime(arg1, arg2, 3044, 10, f2_local0[45], 1)
    f2_local0[46] = SetCoolTime(arg1, arg2, 3045, 10, f2_local0[46], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, arg0.Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, arg0.Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, arg0.Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, arg0.Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, arg0.Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, arg0.Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, arg0.Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, arg0.Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, arg0.Act09)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, arg0.Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, arg0.Act12)
    f2_local1[13] = REGIST_FUNC(arg1, arg2, arg0.Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, arg0.Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, arg0.Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, arg0.Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, arg0.Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, arg0.Act18)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, arg0.Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, arg0.Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, arg0.Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, arg0.Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, arg0.Act24)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, arg0.Act26)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, arg0.Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, arg0.Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, arg0.Act33)
    f2_local1[34] = REGIST_FUNC(arg1, arg2, arg0.Act34)
    f2_local1[35] = REGIST_FUNC(arg1, arg2, arg0.Act35)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, arg0.Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, arg0.Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, arg0.Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, arg0.Act43)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, arg0.Act44)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, arg0.Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, arg0.Act46)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, arg0.Act47)
    local f2_local6 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3000, TARGET_ENE_0, 9999, 0, 180)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3019, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3000, TARGET_ENE_0, 9999, 0, 180)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3016, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3000, TARGET_ENE_0, 9999, 0, 180)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 3029, TARGET_ENE_0, 9999, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3029, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act04 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3001, TARGET_ENE_0, 9999, 0, 180, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act05 = function (arg0, arg1, arg2)
    local f7_local0 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3006, TARGET_ENE_0, 9999, 0, 180, 0, 0)
    f7_local0:TimingSetNumber(0, 1, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act06 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3007, TARGET_ENE_0, 9999, 0, 180, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3008, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act07 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3002, TARGET_ENE_0, 9999, 0, 180, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act08 = function (arg0, arg1, arg2)
    local f10_local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3035, TARGET_ENE_0, 9999, 0, 180, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act09 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3036, TARGET_ENE_0, 9999, 0, 180)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3037, TARGET_ENE_0, 9999, 0, 180)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act11 = function (arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3014, TARGET_ENE_0, 9999, 0, 180, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3025, TARGET_ENE_0, 9999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3014, TARGET_ENE_0, 9999, 0, 180, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act12 = function (arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 5020) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3013, TARGET_ENE_0, 9999, 0, 180, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3024, TARGET_ENE_0, 9999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3013, TARGET_ENE_0, 9999, 0, 180, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act13 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3011, TARGET_ENE_0, 9999, 0, 180)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3012, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act14 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3003, TARGET_ENE_0, 9999, 0, 180, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act15 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3005, TARGET_ENE_0, 9999, 0, 180, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act16 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3020, TARGET_ENE_0, 9999, 0, 180, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act17 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3014, TARGET_ENE_0, 9999, 0, 180, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3025, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act18 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 20, 3038, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 20, 3038, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 20, 3038, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3039, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act20 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3020, TARGET_ENE_0, 9999, 0, 180, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act21 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3012, TARGET_ENE_0, 9999, 0, 180, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3027, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act22 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3012, TARGET_ENE_0, 9999, 0, 180, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3017, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act23 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 20001, TARGET_ENE_0, 9999, 0, 180, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3043, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act24 = function (arg0, arg1, arg2)
    local f24_local0 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3015, TARGET_ENE_0, 9999, 0, 180, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3028, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act26 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act31 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3022, TARGET_ENE_0, 9999, 0, 180, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 3013, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3014, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act32 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3023, TARGET_ENE_0, 9999, 0, 180, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 3014, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3013, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act33 = function (arg0, arg1, arg2)
    local f28_local0 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3015, TARGET_ENE_0, 9999, 0, 180, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3002, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act34 = function (arg0, arg1, arg2)
    local f29_local0 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3011, TARGET_ENE_0, 9999, 0, 180, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3018, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act36 = function (arg0, arg1, arg2)
    local f30_local0 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3011, TARGET_ENE_0, 9999, 0, 180, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 3012, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3027, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act35 = function (arg0, arg1, arg2)
    local f31_local0 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3011, TARGET_ENE_0, 9999, 0, 180, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 3012, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3027, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act40 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3040, TARGET_ENE_0, 9999, 0, 180, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 3049, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 3049, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3049, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act41 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3041, TARGET_ENE_0, 9999, 0, 90, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3042, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act42 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3043, TARGET_ENE_0, 9999, 0, 180, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act43 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3044, TARGET_ENE_0, 9999, 0, 180, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act44 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3045, TARGET_ENE_0, 9999, 0, 180, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act45 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3041, TARGET_ENE_0, 9999, 0, 180, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3045, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act46 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3043, TARGET_ENE_0, 9999, 0, 180, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act47 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3046, TARGET_ENE_0, 9999, 0, 180, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 3047, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3034, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f40_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
    local f40_local1 = arg1:GetDist(TARGET_ENE_0)
    local f40_local2 = arg1:GetDistYSigned(TARGET_ENE_0)
    local f40_local3 = arg1:GetRandam_Int(1, 100)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if f40_local0 == 5500 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackImmediateAction, 0.5, 20003, TARGET_SELF, 9999, 0, 0, 0, 0)
            return true
        end
        if f40_local0 == 106110 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 1, 3039, TARGET_ENE_0, 9999, 0)
            return true
        elseif f40_local0 == 106111 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 1, 3032, TARGET_ENE_0, 9999, 0)
            return true
        elseif f40_local0 == 3520013 then
            if f40_local1 < 100 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 1, 3007, TARGET_ENE_0, 9999, 0)
                return true
            end
        elseif not arg1:HasSpecialEffectId(TARGET_ENE_0, 106110) then
            if f40_local0 == 5027 then
                if f40_local1 > 15 and f40_local1 < 35 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3017, TARGET_ENE_0, 9999, 0, 0)
                    return true
                end
            elseif f40_local0 == 5028 then
                if f40_local2 > 3 and arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3021, TARGET_ENE_0, 9999, 0, 0)
                    return true
                end
            elseif f40_local0 == 5029 then
                if f40_local1 < 30 and f40_local3 <= 40 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3018, TARGET_ENE_0, 9999, 0, 0)
                    return true
                end
            elseif f40_local0 == 106110 and arg1:DbgGetForceActIdx() == 7 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 20, 3030, TARGET_ENE_0, 9999, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3032, TARGET_ENE_0, 9999, 0, 0)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) then
        if arg1:IsInsideObserve(0) then
            arg1:Replanning()
            return true
        elseif arg1:IsInsideObserve(1) then
            arg1:Replanning()
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        return arg0.Damaged(arg1, arg2)
    end
    return false
    
end

Goal.Damaged = function (arg0, arg1, arg2)
    return false
    
end

Goal.ActAfter_AdjustSpace = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end


