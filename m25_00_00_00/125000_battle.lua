RegisterTableGoal(GOAL_YashazaruKenzoku_sude_125000_Battle, "GOAL_YashazaruKenzoku_sude_125000_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_YashazaruKenzoku_sude_125000_Battle, true)
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
    local f2_local5 = Check_ReachAttack(arg1, 0)
    if arg1:HasSpecialEffectId(TARGET_ENE_0, 110060) then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            f2_local0[26] = 100
        else
            f2_local0[21] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 110015) then
        f2_local0[24] = 10000
        f2_local0[23] = 100
        f2_local0[26] = 1
    elseif not not arg1:HasSpecialEffectId(TARGET_ENE_0, COMMON_SP_EFFECT_PC_REVIVAL_AFTER_1) or arg1:HasSpecialEffectId(TARGET_ENE_0, COMMON_SP_EFFECT_PC_REVIVAL_AFTER_2) then
        if TorimakiAct(arg1, arg2, 0, 80) then
            f2_local0[7] = 100
            f2_local0[10] = 100
            f2_local0[11] = 100
            f2_local0[12] = 100
            f2_local0[13] = 100
            f2_local0[14] = 100
            f2_local0[15] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 110030) then
        if TorimakiAct(arg1, arg2, 0, 80) then
            f2_local0[7] = 100
            f2_local0[10] = 100
            f2_local0[11] = 100
            f2_local0[12] = 100
            f2_local0[13] = 100
            f2_local0[14] = 100
            f2_local0[15] = 100
        end
    elseif f2_local5 ~= POSSIBLE_ATTACK then
        if f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            f2_local0[27] = 100
        elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            f2_local0[27] = 100
        elseif f2_local5 == UNREACH_ATTACK then
            f2_local0[6] = 100
            f2_local0[7] = 100
            f2_local0[27] = 100
        elseif f2_local5 == REACH_ATTACK_TARGET_HIGH_POSITION then
            f2_local0[1] = 100
            f2_local0[3] = 100
            f2_local0[27] = 100
        elseif f2_local5 == REACH_ATTACK_TARGET_LOW_POSITION then
            f2_local0[1] = 100
            f2_local0[3] = 100
            f2_local0[27] = 100
        else
            f2_local0[27] = 100
        end
    elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if KankyakuAct(arg1, arg2, -1, 70) then
            f2_local0[7] = 100
            f2_local0[10] = 100
            f2_local0[11] = 100
            f2_local0[12] = 100
            f2_local0[13] = 100
            f2_local0[14] = 100
            f2_local0[15] = 100
        end
    elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if TorimakiAct(arg1, arg2, -1, 80) then
            f2_local0[6] = 100
            f2_local0[7] = 100
            f2_local0[10] = 100
            f2_local0[11] = 100
            f2_local0[12] = 100
            f2_local0[13] = 100
            f2_local0[14] = 100
            f2_local0[15] = 100
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        f2_local0[21] = 100
        f2_local0[22] = 1
    elseif f2_local3 >= 12 then
        f2_local0[6] = 100
        f2_local0[7] = 100
        f2_local0[8] = 400
        f2_local0[10] = 100
        f2_local0[11] = 100
        f2_local0[12] = 100
        f2_local0[13] = 100
    elseif f2_local3 >= 7 then
        f2_local0[1] = 100
        f2_local0[2] = 200
        f2_local0[4] = 100
        f2_local0[5] = 100
        f2_local0[22] = 200
        f2_local0[23] = 300
    elseif f2_local3 > 4 then
        f2_local0[1] = 100
        f2_local0[2] = 200
        f2_local0[4] = 100
        f2_local0[5] = 100
        f2_local0[6] = 80
        f2_local0[22] = 200
        f2_local0[23] = 100
        f2_local0[24] = 200
    else
        f2_local0[1] = 200
        f2_local0[3] = 200
        f2_local0[4] = 100
        f2_local0[5] = 100
        f2_local0[24] = 400
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 200050) then
        f2_local0[6] = 0
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 3125041) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 4000) then
            f2_local0[1] = f2_local0[1] * 0.2
            f2_local0[2] = f2_local0[2] * 0.2
            f2_local0[3] = f2_local0[3] * 0.2
            f2_local0[6] = f2_local0[6] * 5
        else
            f2_local0[6] = 0
        end
    end
    if SpaceCheck(arg1, arg2, -60, 6.5) == false then
        f2_local0[4] = 0
        f2_local0[14] = 0
    end
    if SpaceCheck(arg1, arg2, -40, 5) == false and f2_local3 < 5 then
        f2_local0[4] = 0
        f2_local0[14] = 0
    end
    if SpaceCheck(arg1, arg2, 60, 6.5) == false then
        f2_local0[5] = 0
        f2_local0[15] = 0
    end
    if SpaceCheck(arg1, arg2, 40, 5) == false and f2_local3 < 5 then
        f2_local0[5] = 0
        f2_local0[15] = 0
    end
    if SpaceCheck(arg1, arg2, 45, 2.6) == false and SpaceCheck(arg1, arg2, -45, 2.6) == false then
        f2_local0[22] = 0
    end
    if SpaceCheck(arg1, arg2, 90, 1) == false and SpaceCheck(arg1, arg2, -90, 1) == false then
        f2_local0[23] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 2.6) == false then
        f2_local0[24] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 1) == false then
        f2_local0[25] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 7, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3003, 8, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3004, 7, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3001, 10, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3002, 10, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3020, 8, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3021, 20, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3022, 10, f2_local0[8], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3015, 5, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3016, 5, f2_local0[11], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3017, 5, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3018, 5, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3010, 5, f2_local0[14], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3011, 5, f2_local0[15], 1)
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
    local f3_local0 = 4.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 4.6 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local2 = 4.6 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 1.5
    local f3_local6 = 3
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 0
    local f3_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 9999, f3_local7, f3_local8, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    local f4_local0 = 7.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 7.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f4_local2 = 7.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 1.5
    local f4_local6 = 3
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 0
    local f4_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 9999, f4_local7, f4_local8, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f5_local0 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f5_local2 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 1.5
    local f5_local6 = 3
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 2.4 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f5_local8 = 0
    local f5_local9 = 0
    local f5_local10 = arg0:GetRandam_Int(1, 100)
    if f5_local10 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, f5_local7, f5_local8, f5_local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, 9999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 9999, f5_local8, f5_local9, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act04 = function (arg0, arg1, arg2)
    local f6_local0 = 6.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 6.6 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f6_local2 = 6.6 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 1.5
    local f6_local6 = 3
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 6.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local8 = 0
    local f6_local9 = 180
    local f6_local10 = arg0:GetRandam_Int(1, 100)
    if SpaceCheck(arg0, arg1, -60, 9) == true and f6_local10 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, 9999, f6_local8, f6_local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, 9999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, 9999, f6_local8, f6_local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 9999, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 9999, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act05 = function (arg0, arg1, arg2)
    local f7_local0 = 6.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 6.6 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f7_local2 = 6.6 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 1.5
    local f7_local6 = 3
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 6.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local8 = 0
    local f7_local9 = 180
    local f7_local10 = arg0:GetRandam_Int(1, 100)
    if SpaceCheck(arg0, arg1, 60, 9) == true and f7_local10 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, 9999, f7_local8, f7_local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, 9999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, 9999, f7_local8, f7_local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 9999, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 9999, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act06 = function (arg0, arg1, arg2)
    local f8_local0 = 0
    local f8_local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, 9999, f8_local0, f8_local1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act07 = function (arg0, arg1, arg2)
    local f9_local0 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 8 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f9_local2 = 8 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 1.5
    local f9_local6 = 3
    local f9_local7 = 0
    local f9_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, 9999, f9_local7, f9_local8, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act08 = function (arg0, arg1, arg2)
    local f10_local0 = 12.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = 12.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f10_local2 = 12.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 1.5
    local f10_local6 = 3
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 4.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local8 = 0
    local f10_local9 = 180
    local f10_local10 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 5210, TARGET_ENE_0, f10_local7, f10_local8, f10_local9, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3000, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act10 = function (arg0, arg1, arg2)
    local f11_local0 = 0
    local f11_local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 9999, f11_local0, f11_local1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act11 = function (arg0, arg1, arg2)
    local f12_local0 = 0
    local f12_local1 = 0
    if SpaceCheck(arg0, arg1, 180, 1.7) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, 9999, f12_local0, f12_local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 9999, f12_local0, f12_local1, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act12 = function (arg0, arg1, arg2)
    local f13_local0 = 0
    local f13_local1 = 0
    if SpaceCheck(arg0, arg1, -90, 1.7) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, 9999, f13_local0, f13_local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 9999, f13_local0, f13_local1, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act13 = function (arg0, arg1, arg2)
    local f14_local0 = 0
    local f14_local1 = 0
    if SpaceCheck(arg0, arg1, 90, 1.7) == true then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, 9999, f14_local0, f14_local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 9999, f14_local0, f14_local1, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act14 = function (arg0, arg1, arg2)
    local f15_local0 = 0
    local f15_local1 = 180
    local f15_local2 = arg0:GetRandam_Int(1, 100)
    if SpaceCheck(arg0, arg1, -70, 12.5) == true and f15_local2 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, 9999, f15_local0, f15_local1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 9999, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, 9999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, 9999, f15_local0, f15_local1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, 9999, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act15 = function (arg0, arg1, arg2)
    local f16_local0 = 0
    local f16_local1 = 180
    local f16_local2 = arg0:GetRandam_Int(1, 100)
    if SpaceCheck(arg0, arg1, 70, 12.5) == true and f16_local2 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, 9999, f16_local0, f16_local1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 9999, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, 9999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, 9999, f16_local0, f16_local1, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, 9999, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act21 = function (arg0, arg1, arg2)
    local f17_local0 = 3
    local f17_local1 = 45
    arg1:AddSubGoal(GOAL_COMMON_Turn, f17_local0, TARGET_ENE_0, f17_local1, -1, GOAL_RESULT_Success, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act22 = function (arg0, arg1, arg2)
    local f18_local0 = 3
    local f18_local1 = 0
    local f18_local2 = arg0:GetRandam_Int(1, 100)
    if SpaceCheck(arg0, arg1, -45, 2.6) == true then
        if SpaceCheck(arg0, arg1, 45, 2.6) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                if SpaceCheck(arg0, arg1, -60, 5) == true and f18_local2 <= 60 then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f18_local0, 5212, TARGET_ENE_0, f18_local1, AI_DIR_TYPE_L, 0)
                else
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f18_local0, 5202, TARGET_ENE_0, f18_local1, AI_DIR_TYPE_L, 0)
                end
            elseif SpaceCheck(arg0, arg1, 60, 5) == true and f18_local2 <= 60 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, f18_local0, 5213, TARGET_ENE_0, f18_local1, AI_DIR_TYPE_L, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, f18_local0, 5203, TARGET_ENE_0, f18_local1, AI_DIR_TYPE_L, 0)
            end
        elseif SpaceCheck(arg0, arg1, -60, 5) == true and f18_local2 <= 60 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f18_local0, 5212, TARGET_ENE_0, f18_local1, AI_DIR_TYPE_L, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f18_local0, 5202, TARGET_ENE_0, f18_local1, AI_DIR_TYPE_L, 0)
        end
    elseif SpaceCheck(arg0, arg1, 45, 2.6) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f18_local0, 5203, TARGET_ENE_0, f18_local1, AI_DIR_TYPE_R, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f18_local0, 5203, TARGET_ENE_0, f18_local1, AI_DIR_TYPE_R, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act23 = function (arg0, arg1, arg2)
    local f19_local0 = arg0:GetDist(TARGET_ENE_0)
    local f19_local1 = arg0:GetSp(TARGET_SELF)
    local f19_local2 = 20
    local f19_local3 = arg0:GetRandam_Int(1, 100)
    local f19_local4 = -1
    local f19_local5 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f19_local5 = 0
            else
                f19_local5 = 1
            end
        else
            f19_local5 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f19_local5 = 1
    else

    end
    local f19_local6 = 3
    local f19_local7 = arg0:GetRandam_Int(30, 45)
    arg0:SetNumber(10, f19_local5)
    local f19_local8 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f19_local6, TARGET_ENE_0, f19_local5, f19_local7, true, true, f19_local4)
    f19_local8:TimingSetTimer(2, 4, UPDATE_SUCCESS)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act24 = function (arg0, arg1, arg2)
    local f20_local0 = arg0:GetDist(TARGET_ENE_0)
    local f20_local1 = 3
    local f20_local2 = 0
    local f20_local3 = 5201
    local f20_local4 = arg0:GetRandam_Int(1, 100)
    if SpaceCheck(arg0, arg1, 180, 2.6) == true and SpaceCheck(arg0, arg1, 180, 5) == true and f20_local0 < 4 and f20_local4 < 60 then
        f20_local3 = 5211
    else

    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f20_local1, f20_local3, TARGET_ENE_0, f20_local2, AI_DIR_TYPE_B, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act25 = function (arg0, arg1, arg2)
    local f21_local0 = arg0:GetRandam_Float(2, 4)
    local f21_local1 = arg0:GetRandam_Float(1, 3)
    local f21_local2 = arg0:GetDist(TARGET_ENE_0)
    local f21_local3 = -1
    if SpaceCheck(arg0, arg1, 180, 1) == true then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f21_local0, TARGET_ENE_0, f21_local1, TARGET_ENE_0, true, f21_local3)
    else

    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act26 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act27 = function (arg0, arg1, arg2)
    local f23_local0 = arg0:GetRandam_Int(1, 100)
    if YousumiAct_SubGoal(arg0, arg1, true, 60, 30) == false then
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    local f23_local1 = 0
    local f23_local2 = SpaceCheck_SidewayMove(arg0, arg1, 1)
    if f23_local2 == 0 then
        f23_local1 = 0
    elseif f23_local2 == 1 then
        f23_local1 = 1
    elseif f23_local2 == 2 then
        if f23_local0 <= 50 then
            f23_local1 = 0
        else
            f23_local1 = 1
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    arg0:SetNumber(10, f23_local1)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f23_local1, arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act28 = function (arg0, arg1, arg2)
    local f24_local0 = arg0:GetDist(TARGET_ENE_0)
    local f24_local1 = 1.5
    local f24_local2 = 1.5
    local f24_local3 = arg0:GetRandam_Int(30, 45)
    local f24_local4 = -1
    local f24_local5 = arg0:GetRandam_Int(0, 1)
    if f24_local0 <= 3 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f24_local1, TARGET_ENE_0, f24_local5, f24_local3, true, true, f24_local4)
    elseif f24_local0 <= 8 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f24_local2, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f24_local2, TARGET_ENE_0, 8, TARGET_SELF, false, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f25_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        return arg0.Damaged(arg1, arg2)
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and arg1:HasSpecialEffectId(TARGET_ENE_0, 3125000) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 0.5, 3008, TARGET_ENE_0, 9999, 0, 0)
            return true
        end
        return false
    end
    return false
    
end

Goal.Parry = function (arg0, arg1, arg2)
    local f26_local0 = arg0:GetHpRate(TARGET_SELF)
    local f26_local1 = arg0:GetDist(TARGET_ENE_0)
    local f26_local2 = arg0:GetSp(TARGET_SELF)
    local f26_local3 = arg0:GetRandam_Int(1, 100)
    local f26_local4 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 90, 3) then
        if arg0:HasSpecialEffectId(TARGET_ENE_0, 109012) then

        elseif arg0:IsTargetGuard(TARGET_SELF) then
            if arg0:HasSpecialEffectId(TARGET_ENE_0, 109970) then

            end
        elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 109970) then

        else

        end
    end
    return false
    
end

Goal.Damaged = function (arg0, arg1, arg2)
    local f27_local0 = arg0:GetHpRate(TARGET_SELF)
    local f27_local1 = arg0:GetDist(TARGET_ENE_0)
    local f27_local2 = arg0:GetSp(TARGET_SELF)
    local f27_local3 = arg0:GetRandam_Int(1, 100)
    local f27_local4 = 0
    if f27_local3 <= 33 then
        arg1:ClearSubGoal()
        local f27_local5 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 5201, TARGET_ENE_0, TurnTime, AI_DIR_TYPE_B, 0)
        f27_local5:TimingSetTimer(3, 6, UPDATE_SUCCESS)
        return true
    elseif f27_local3 <= 67 then

    else

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

RegisterTableGoal(GOAL_YashazaruKenzoku_sude_125000_AfterAttackAct, "GOAL_YashazaruKenzoku_sude_125000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_YashazaruKenzoku_sude_125000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


