RegisterTableGoal(GOAL_Kubinashi_135000_Battle, "GOAL_Kubinashi_135000_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Kubinashi_135000_Battle, true)
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
    local f2_local5 = arg1:GetEventRequest()
    local f2_local6 = arg1:GetEventRequest(1)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3135010)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3135011)
    if arg0:Kengeki_Activate(arg1, arg2) then
        return 
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 3135010) and not arg1:HasSpecialEffectId(TARGET_SELF, 3135011) then

    else

    end
    if Common_ActivateAct(arg1, arg2, 1) then

    elseif f2_local5 == 20 then
        f2_local0[30] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 3135501) then
        f2_local0[26] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5021) and arg1:IsInsideTargetRegion(TARGET_ENE_0, 1102331) == false and f2_local3 >= 3 then
        f2_local0[25] = 10000
        f2_local0[23] = 100
        f2_local0[27] = 1
    elseif arg1:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 0) == false then
        if f2_local3 >= 8.5 then
            f2_local0[40] = 100
            f2_local0[27] = 10
        else
            f2_local0[25] = 10000
            f2_local0[27] = 100
            f2_local0[40] = 1
        end
    elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        f2_local0[28] = 200
    elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        f2_local0[28] = 200
    elseif f2_local6 == 10 then
        f2_local0[7] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        f2_local0[21] = 100
    else
        if arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 180, 9999) then
            f2_local0[6] = 1000
        end
        if arg1:HasSpecialEffectId(TARGET_ENE_0, COMMON_SP_EFFECT_PC_BREAK) then
            f2_local0[4] = 100
        elseif f2_local3 >= 12 then
            f2_local0[1] = 100
            f2_local0[12] = 150
            f2_local0[40] = 200
        elseif f2_local3 >= 7 then
            f2_local0[1] = 100
            f2_local0[2] = 100
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[40] = 200
        elseif f2_local3 >= 5 then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[4] = 10
            f2_local0[5] = 30
            f2_local0[9] = 100
            f2_local0[10] = 100
            f2_local0[12] = 0
        elseif f2_local3 > 3 then
            f2_local0[4] = 100
            f2_local0[9] = 100
            f2_local0[10] = 100
            f2_local0[12] = 0
            f2_local0[45] = 150
            f2_local0[46] = 100
            if arg1:IsFinishTimer(5) == true then
                f2_local0[13] = 300
            end
        else
            f2_local0[4] = 100
            f2_local0[5] = 0
            f2_local0[14] = 100
            f2_local0[15] = 100
            f2_local0[12] = 0
            f2_local0[45] = 150
            f2_local0[46] = 120
            if arg1:IsFinishTimer(5) == true then
                f2_local0[4] = 0
                f2_local0[5] = 0
                f2_local0[9] = 0
                f2_local0[10] = 0
                f2_local0[12] = 0
                f2_local0[13] = 100
            end
        end
        if arg1:IsFinishTimer(3) == true then
            f2_local0[28] = 50
        end
    end
    if arg1:GetNumber(0) == 1 then
        f2_local0[11] = 0
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
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 8, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 8, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3009, 15, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3010, 8, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3011, 8, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3021, 30, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3018, 30, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3005, 8, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3006, 8, f2_local0[10], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3017, 25, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3010, 8, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3007, 8, f2_local0[14], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3008, 8, f2_local0[15], 1)
    f2_local0[40] = SetCoolTime(arg1, arg2, 3022, 4, f2_local0[40], 1)
    f2_local0[45] = SetCoolTime(arg1, arg2, 3070, 15, f2_local0[45], 1)
    f2_local0[46] = SetCoolTime(arg1, arg2, 3070, 15, f2_local0[46], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, arg0.Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, arg0.Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, arg0.Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, arg0.Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, arg0.Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, arg0.Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, arg0.Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, arg0.Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, arg0.Act09)
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
    f2_local1[30] = REGIST_FUNC(arg1, arg2, arg0.Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, arg0.Act31)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, arg0.Act40)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, arg0.Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, arg0.Act46)
    local f2_local7 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    local f3_local0 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 8 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f3_local2 = 8 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 1.5
    local f3_local6 = 3
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 7.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local8 = 7.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local9 = 0
    local f3_local10 = 0
    local f3_local11 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 30, 3000, TARGET_ENE_0, f3_local7, f3_local9, f3_local10, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    local f4_local0 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f4_local2 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 1.5
    local f4_local6 = 3
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 7.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local8 = 7.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local9 = 0
    local f4_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 30, 3001, TARGET_ENE_0, f4_local7, f4_local9, f4_local10, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, f4_local8, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f5_local0 = 11 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 11 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f5_local2 = 11 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 1.5
    local f5_local6 = 3
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = ATT3018_DIST_MAX
    local f5_local8 = 7.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local9 = 0
    local f5_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 9999, f5_local9, f5_local10, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 9999, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act04 = function (arg0, arg1, arg2)
    local f6_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 6 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f6_local2 = 6 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 1.5
    local f6_local6 = 3
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 0
    local f6_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 9999, f6_local7, f6_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act05 = function (arg0, arg1, arg2)
    local f7_local0 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 7 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f7_local2 = 7 - arg0:GetMapHitRadius(TARGET_SELF) + 100
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 1.5
    local f7_local6 = 3
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 0
    local f7_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 9999, f7_local7, f7_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act06 = function (arg0, arg1, arg2)
    local f8_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f8_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 1.5
    local f8_local6 = 3
    local f8_local7 = 0
    local f8_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, 9999, f8_local7, f8_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act07 = function (arg0, arg1, arg2)
    local f9_local0 = 0
    local f9_local1 = 0
    local f9_local2 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, 9999, f9_local0, f9_local1, 0, 0)
    f9_local2:TimingSetTimer(1, 0, UPDATE_SUCCESS)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act08 = function (arg0, arg1, arg2)
    local f10_local0 = 0
    local f10_local1 = 0
    local f10_local2 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, 9999, f10_local0, f10_local1, 0, 0)
    f10_local2:TimingSetTimer(1, 0, UPDATE_SUCCESS)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act09 = function (arg0, arg1, arg2)
    local f11_local0 = 7.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = 7.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f11_local2 = 7.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f11_local3 = 100
    local f11_local4 = 0
    local f11_local5 = 1.5
    local f11_local6 = 3
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 7.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local8 = 0
    local f11_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 30, 3005, TARGET_ENE_0, f11_local7, f11_local8, f11_local9, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act10 = function (arg0, arg1, arg2)
    local f12_local0 = 7.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = 7.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f12_local2 = 7.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f12_local3 = 100
    local f12_local4 = 0
    local f12_local5 = 1.5
    local f12_local6 = 3
    Approach_Act_Flex(arg0, arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local f12_local7 = 7.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local8 = 0
    local f12_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 30, 3006, TARGET_ENE_0, f12_local7, f12_local8, f12_local9, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act11 = function (arg0, arg1, arg2)
    local f13_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = 6 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f13_local2 = 6 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f13_local3 = 100
    local f13_local4 = 0
    local f13_local5 = 1.5
    local f13_local6 = 3
    Approach_Act_Flex(arg0, arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    local f13_local7 = 0
    local f13_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3040, TARGET_ENE_0, 9999, f13_local7, f13_local8, 0, 0)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act12 = function (arg0, arg1, arg2)
    local f14_local0 = 12.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local1 = 12.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f14_local2 = 12.5 - arg0:GetMapHitRadius(TARGET_SELF) + 100
    local f14_local3 = 100
    local f14_local4 = 0
    local f14_local5 = 1.5
    local f14_local6 = 3
    local f14_local7 = 0
    local f14_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, 9999, f14_local7, f14_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act13 = function (arg0, arg1, arg2)
    local f15_local0 = 0
    local f15_local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 9999, f15_local0, f15_local1, 0, 0)
    arg0:SetTimer(5, 15)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act14 = function (arg0, arg1, arg2)
    local f16_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local1 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f16_local2 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f16_local3 = 100
    local f16_local4 = 0
    local f16_local5 = 1.5
    local f16_local6 = 3
    Approach_Act_Flex(arg0, arg1, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6)
    local f16_local7 = 7.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local8 = 0
    local f16_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 30, 3007, TARGET_ENE_0, f16_local7, f16_local8, f16_local9, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act15 = function (arg0, arg1, arg2)
    local f17_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local1 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f17_local2 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f17_local3 = 100
    local f17_local4 = 0
    local f17_local5 = 1.5
    local f17_local6 = 3
    Approach_Act_Flex(arg0, arg1, f17_local0, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, f17_local6)
    local f17_local7 = 7.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local8 = 0
    local f17_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 30, 3008, TARGET_ENE_0, f17_local7, f17_local8, f17_local9, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act21 = function (arg0, arg1, arg2)
    local f18_local0 = 3
    local f18_local1 = 45
    arg1:AddSubGoal(GOAL_COMMON_Turn, f18_local0, TARGET_ENE_0, f18_local1, -1, GOAL_RESULT_Success, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act22 = function (arg0, arg1, arg2)
    local f19_local0 = 3
    local f19_local1 = 0
    local f19_local2 = 5202
    if SpaceCheck(arg0, arg1, -45, 2) == true then
        if SpaceCheck(arg0, arg1, 45, 2) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f19_local2 = 5202
            else
                f19_local2 = 5203
            end
        else
            f19_local2 = 5202
        end
    elseif SpaceCheck(arg0, arg1, 45, 2) == true then
        f19_local2 = 5203
    else

    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f19_local0, f19_local2, TARGET_ENE_0, f19_local1, AI_DIR_TYPE_R, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act23 = function (arg0, arg1, arg2)
    local f20_local0 = arg0:GetDist(TARGET_ENE_0)
    local f20_local1 = arg0:GetSp(TARGET_SELF)
    local f20_local2 = 20
    local f20_local3 = arg0:GetRandam_Int(1, 100)
    local f20_local4 = -1
    local f20_local5 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_R, 180, 999) then
                f20_local5 = 1
            else
                f20_local5 = 0
            end
        else
            f20_local5 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f20_local5 = 1
    else

    end
    local f20_local6 = 1.5
    local f20_local7 = arg0:GetRandam_Int(30, 45)
    arg0:SetNumber(10, f20_local5)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f20_local6, TARGET_ENE_0, f20_local5, f20_local7, true, true, f20_local4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act24 = function (arg0, arg1, arg2)
    local f21_local0 = arg0:GetDist(TARGET_ENE_0)
    local f21_local1 = 3
    local f21_local2 = 0
    local f21_local3 = 5201
    if SpaceCheck(arg0, arg1, 180, 2) == true and SpaceCheck(arg0, arg1, 180, 4) == true then
        if f21_local0 > 4 then

        else
            f21_local3 = 5211
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f21_local1, f21_local3, TARGET_ENE_0, f21_local2, AI_DIR_TYPE_B, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act25 = function (arg0, arg1, arg2)
    local f22_local0 = 2
    local f22_local1 = 8.5
    local f22_local2 = arg0:GetDist(TARGET_ENE_0)
    local f22_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f22_local0, TARGET_ENE_0, f22_local1, TARGET_ENE_0, true, f22_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act26 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1.5, TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act27 = function (arg0, arg1, arg2)
    local f24_local0 = arg0:GetRandam_Int(1, 100)
    if YousumiAct_SubGoal(arg0, arg1, true, 60, 30) == false and arg0:HasSpecialEffectId(TARGET_SELF, 5020) == false then
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    local f24_local1 = 0
    local f24_local2 = SpaceCheck_SidewayMove(arg0, arg1, 1)
    if f24_local2 == 0 then
        f24_local1 = 0
    elseif f24_local2 == 1 then
        f24_local1 = 1
    elseif f24_local2 == 2 then
        if f24_local0 <= 50 then
            f24_local1 = 0
        else
            f24_local1 = 1
        end
    elseif arg0:IsInsideTargetRegion(TARGET_SELF, 1702240) then
        f24_local1 = 1
    elseif arg0:IsInsideTargetRegion(TARGET_SELF, 1702241) then
        f24_local1 = 0
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_SELF, 0, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    arg0:SetNumber(10, f24_local1)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f24_local1, arg0:GetRandam_Int(30, 45), true, true, -1)
    return GET_WELL_SPACE_ODDS
    
end

Goal.Act28 = function (arg0, arg1, arg2)
    local f25_local0 = arg0:GetDist(TARGET_ENE_0)
    local f25_local1 = 1.5
    local f25_local2 = 1.5
    local f25_local3 = 2
    local f25_local4 = arg0:GetRandam_Float(5, 7)
    local f25_local5 = arg0:GetRandam_Int(30, 45)
    local f25_local6 = -1
    local f25_local7 = arg0:GetRandam_Int(0, 1)
    if f25_local0 <= 3 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f25_local3, TARGET_ENE_0, f25_local4, TARGET_ENE_0, true, guard)
    elseif f25_local0 <= 8 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f25_local1, TARGET_ENE_0, f25_local7, f25_local5, true, true, f25_local6)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f25_local2, TARGET_ENE_0, 8, TARGET_SELF, false, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act30 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act31 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act40 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3022, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act45 = function (arg0, arg1, arg2)
    local f29_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f29_local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f29_local2 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 100
    local f29_local3 = 100
    local f29_local4 = 0
    local f29_local5 = 1.5
    local f29_local6 = 3
    Approach_Act_Flex(arg0, arg1, f29_local0, f29_local1, f29_local2, f29_local3, f29_local4, f29_local5, f29_local6)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3070, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3071, TARGET_ENE_0, 9999, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 9999, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act46 = function (arg0, arg1, arg2)
    local f30_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f30_local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f30_local2 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 100
    local f30_local3 = 100
    local f30_local4 = 0
    local f30_local5 = 1.5
    local f30_local6 = 3
    Approach_Act_Flex(arg0, arg1, f30_local0, f30_local1, f30_local2, f30_local3, f30_local4, f30_local5, f30_local6)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3070, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 9999, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 9999, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f31_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
    local f31_local1 = 180
    local f31_local2 = 20
    local f31_local3 = 2.5
    local f31_local4 = arg1:GetDist(TARGET_ENE_0)
    local f31_local5 = 0
    local f31_local6 = 0
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
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if f31_local0 == 5025 then
            arg1:AddObserveArea(0, TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, f31_local1, f31_local3)
            arg1:AddObserveArea(1, TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, f31_local1, 3.5)
            return true
        elseif f31_local0 == 5027 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 20, 20001, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        elseif f31_local0 == 5029 then
            if f31_local4 <= 7 == true and arg1:IsFinishTimer(5) == true then
                if not arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
                    arg2:ClearSubGoal()
                    local f31_local7 = arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5.5, 3014, TARGET_ENE_0, 999, 0, 0, 0, 0)
                    f31_local7:TimingSetTimer(5, 15, AI_TIMING_SET__ACTIVATE)
                end
                return true
            elseif f31_local4 >= 4.5 and arg1:IsFinishTimer(0) == true then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 4, 3032, TARGET_ENE_0, 999, 0, 0, 0, 0)
                arg1:SetTimer(0, 8)
                return true
            end
        elseif f31_local0 == 5028 then
            arg1:AddObserveArea(2, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, f31_local1, 6.5)
            return true
        elseif f31_local0 == 5031 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3015, TARGET_ENE_0, 9999, 0, 0)
            return true
        elseif f31_local0 == 5036 then
            arg1:SetTimer(3, 5)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_InactivateSpecialEffect) then

    else

    end
    if arg1:IsInsideObserve(0) and arg1:HasSpecialEffectId(TARGET_SELF, 5032) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 4, 3012, TARGET_ENE_0, 9999, 0, 0)
        arg1:DeleteObserve(0)
        arg1:DeleteObserve(1)
        return true
    elseif arg1:IsInsideObserve(1) and arg1:HasSpecialEffectId(TARGET_SELF, 5033) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 4, 3013, TARGET_ENE_0, 9999, 0, 0)
        arg1:DeleteObserve(0)
        arg1:DeleteObserve(1)
        return true
    elseif arg1:IsInsideObserve(2) and arg1:HasSpecialEffectId(TARGET_SELF, 5035) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 4, 3033, TARGET_ENE_0, 5.5, 0, 0)
        arg1:DeleteObserve(2)
        return true
    end
    return false
    
end

Goal.Kengeki_Activate = function (arg0, arg1, arg2, arg3)
    local f32_local0 = ReturnKengekiSpecialEffect(arg1)
    if f32_local0 == 0 then
        return false
    end
    local f32_local1 = {}
    local f32_local2 = {}
    local f32_local3 = {}
    Common_Clear_Param(f32_local1, f32_local2, f32_local3)
    local f32_local4 = arg1:GetDist(TARGET_ENE_0)
    local f32_local5 = arg1:GetSp(TARGET_SELF)
    if f32_local5 <= 0 then
        f32_local1[50] = 100
    elseif f32_local0 == 200200 then
        if f32_local4 >= 4 then
            f32_local1[50] = 100
        elseif f32_local4 <= 0.2 then
            f32_local1[1] = 100
            f32_local1[2] = 100
            f32_local1[3] = 100
            f32_local1[4] = 100
        else
            f32_local1[1] = 100
            f32_local1[2] = 100
            f32_local1[3] = 100
            f32_local1[4] = 100
        end
    elseif f32_local0 == 200201 then
        if f32_local4 >= 4 then
            f32_local1[50] = 100
        elseif f32_local4 <= 0.2 then
            f32_local1[1] = 100
            f32_local1[2] = 100
            f32_local1[3] = 100
            f32_local1[4] = 100
        else
            f32_local1[1] = 100
            f32_local1[2] = 100
            f32_local1[3] = 100
            f32_local1[4] = 100
        end
    elseif f32_local0 == 200205 then
        if f32_local4 >= 4 then
            f32_local1[50] = 100
        elseif f32_local4 <= 0.2 then
            f32_local1[1] = 100
        else
            f32_local1[1] = 100
            f32_local1[2] = 100
            f32_local1[3] = 100
            f32_local1[4] = 100
        end
    elseif f32_local0 == 200206 then
        if f32_local4 >= 4 then
            f32_local1[50] = 100
        elseif f32_local4 <= 0.2 then
            f32_local1[2] = 100
        else
            f32_local1[2] = 100
        end
    else
        f32_local1[50] = 100
    end
    if arg1:IsFinishTimer(5) == true then
        f32_local1[10] = 300
    end
    f32_local2[1] = REGIST_FUNC(arg1, arg2, arg0.Kengeki01)
    f32_local2[2] = REGIST_FUNC(arg1, arg2, arg0.Kengeki02)
    f32_local2[3] = REGIST_FUNC(arg1, arg2, arg0.Kengeki03)
    f32_local2[4] = REGIST_FUNC(arg1, arg2, arg0.Kengeki04)
    f32_local2[5] = REGIST_FUNC(arg1, arg2, arg0.Kengeki05)
    f32_local2[6] = REGIST_FUNC(arg1, arg2, arg0.Kengeki06)
    f32_local2[7] = REGIST_FUNC(arg1, arg2, arg0.Kengeki07)
    f32_local2[8] = REGIST_FUNC(arg1, arg2, arg0.Kengeki08)
    f32_local2[10] = REGIST_FUNC(arg1, arg2, arg0.Kengeki10)
    f32_local2[20] = REGIST_FUNC(arg1, arg2, arg0.Kengeki20)
    f32_local2[21] = REGIST_FUNC(arg1, arg2, arg0.Kengeki21)
    f32_local2[50] = REGIST_FUNC(arg1, arg2, arg0.NoAction)
    local f32_local6 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    return Common_Kengeki_Activate(arg1, arg2, f32_local1, f32_local2, f32_local6, f32_local3)
    
end

Goal.Kengeki01 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3050, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki02 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3055, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki03 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3060, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki04 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3061, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki05 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3070, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki06 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3075, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki07 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3085, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki08 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3085, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki10 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki20 = function (arg0, arg1, arg2)
    local f42_local0 = arg0:GetRandam_Int(1, 100)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3060, TARGET_ENE_0, 8, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3019, TARGET_ENE_0, 8, 0)
    if f42_local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3033, TARGET_ENE_0, 8, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 8, 0)
    end
    
end

Goal.Kengeki21 = function (arg0, arg1, arg2)
    
end

Goal.NoAction = function (arg0, arg1, arg2)
    return -1
    
end

Goal.ActAfter_AdjustSpace = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end


