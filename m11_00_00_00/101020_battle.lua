RegisterTableGoal(GOAL_Ochimusha_yari_101020_Battle, "GOAL_Ochimusha_yari_101020_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Ochimusha_yari_101020_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_Step_Small", 2)
    arg1:SetStringIndexedNumber("Dist_Step_Large", 4)
    arg1:SetStringIndexedNumber("targetWhich", TARGET_ENE_0)
    Set_ConsecutiveGuardCount_Interrupt(arg1)
    if arg0:Kengeki_Activate(arg1, arg2) then
        return 
    end
    if not not arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 120, 9999) or arg1:HasSpecialEffectId(TARGET_SELF, 220020) then
        arg1:SetStringIndexedNumber("karaburiDist", 0)
    else
        arg1:SetStringIndexedNumber("karaburiDist", 2)
    end
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetHpRate(TARGET_SELF)
    local f2_local4 = arg1:GetSp(TARGET_SELF)
    local f2_local5 = arg1:GetDist(TARGET_ENE_0)
    local f2_local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local7 = arg1:GetEventRequest()
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 107900)
    if arg1:HasSpecialEffectId(TARGET_ENE_0, 3170200) then
        f2_local0[25] = 1000
        f2_local0[1] = 1
    elseif Common_ActivateAct(arg1, arg2) then

    elseif arg1:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 0) == false or arg1:HasSpecialEffectId(TARGET_ENE_0, 109220) then
        f2_local0[29] = 100
    elseif f2_local7 == 204 and arg1:GetNumber(20) == 0 then
        f2_local0[4] = 300
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 107900) and arg1:GetNumber(12) == 1 then
        arg1:SetNumber(12, 0)
        f2_local0[8] = 400
    elseif f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        KankyakuAct(arg1, arg2)
    elseif f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if TorimakiAct(arg1, arg2) then
            f2_local0[4] = 100
            f2_local0[11] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 310010) then
        if not arg1:HasSpecialEffectId(TARGET_SELF, 310070) then
            f2_local0[1] = 200
        else
            f2_local0[10] = 200
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 310030) then
        f2_local0[11] = 200
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 310040) then
        f2_local0[1] = 200
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 310041) then
        f2_local0[10] = 200
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 310120) then
        f2_local0[9] = 100
    elseif f2_local5 >= 11 then
        f2_local0[4] = 100
        f2_local0[9] = 100
        f2_local0[28] = 100
    elseif f2_local5 >= 7 then
        f2_local0[1] = 100
        f2_local0[2] = 400
        f2_local0[4] = 300
        f2_local0[8] = 400
        f2_local0[23] = 400
    elseif f2_local5 >= 5 then
        f2_local0[1] = 200
        f2_local0[4] = 200
        f2_local0[8] = 200
        f2_local0[23] = 200
    elseif f2_local5 >= 3 then
        f2_local0[1] = 200
        f2_local0[8] = 100
        f2_local0[23] = 200
        f2_local0[24] = 200
    elseif f2_local5 >= 2 then
        f2_local0[1] = 100
        f2_local0[8] = 100
        f2_local0[23] = 100
        f2_local0[24] = 200
    elseif f2_local5 >= 1 then
        f2_local0[1] = 100
        f2_local0[3] = 200
        f2_local0[24] = 200
    else
        f2_local0[3] = 100
        f2_local0[6] = 100
        f2_local0[24] = 100
        f2_local0[25] = 100
    end
    if SpaceCheck(arg1, arg2, 45, arg1:GetStringIndexedNumber("Dist_Step_Small")) == false and SpaceCheck(arg1, arg2, -45, arg1:GetStringIndexedNumber("Dist_Step_Small")) == false then
        f2_local0[22] = 0
    end
    if SpaceCheck(arg1, arg2, 90, 1) == false and SpaceCheck(arg1, arg2, -90, 1) == false then
        f2_local0[23] = 0
    end
    if SpaceCheck(arg1, arg2, 180, arg1:GetStringIndexedNumber("Dist_Step_Small")) == false then
        f2_local0[24] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 1) == false then
        f2_local0[25] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 5, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3002, 5, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3003, 5, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3004, 5, f2_local0[4], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3006, 5, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3007, 5, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3008, 5, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3009, 5, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3010, 5, f2_local0[10], 1)
    f2_local0[24] = SetCoolTime(arg1, arg2, 5201, 3, f2_local0[24], 1)
    f2_local0[24] = SetCoolTime(arg1, arg2, 5211, 3, f2_local0[24], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, arg0.Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, arg0.Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, arg0.Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, arg0.Act04)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, arg0.Act06)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, arg0.Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, arg0.Act09)
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
    f2_local1[29] = REGIST_FUNC(arg1, arg2, arg0.Act29)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, arg0.Act30)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, arg0.Act41)
    local f2_local8 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local8, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 4.7 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetStringIndexedNumber("karaburiDist")
    local f3_local2 = 4.7 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f3_local3 = 4.7 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local4 = 100
    local f3_local5 = 0
    local f3_local6 = 1.5
    local f3_local7 = 3
    if f3_local1 < f3_local0 then
        Approach_Act_Flex(arg0, arg1, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7)
    end
    local f3_local8 = 3000
    local f3_local9 = 3001
    local f3_local10 = 7.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f3_local11 = 0.5
    local f3_local12 = 90
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local8, arg0:GetStringIndexedNumber("targetWhich"), f3_local10, f3_local11, f3_local12, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f3_local9, arg0:GetStringIndexedNumber("targetWhich"), 9999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 10.5 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetStringIndexedNumber("karaburiDist")
    local f4_local2 = 10.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f4_local3 = 10.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f4_local4 = 100
    local f4_local5 = 0
    local f4_local6 = 1.5
    local f4_local7 = 3
    if f4_local1 < f4_local0 then
        Approach_Act_Flex(arg0, arg1, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7)
    end
    local f4_local8 = 3002
    local f4_local9 = 0.5
    local f4_local10 = 90
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 45, -1, GOAL_RESULT_Success, true)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local8, arg0:GetStringIndexedNumber("targetWhich"), 9999, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = 2 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetStringIndexedNumber("karaburiDist")
    local f5_local2 = 2 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f5_local3 = 2 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f5_local4 = 100
    local f5_local5 = 0
    local f5_local6 = 1.5
    local f5_local7 = 10
    if f5_local1 < f5_local0 then
        Approach_Act_Flex(arg0, arg1, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7)
    end
    local f5_local8 = 3003
    local f5_local9 = 0.5
    local f5_local10 = 90
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local8, arg0:GetStringIndexedNumber("targetWhich"), 9999, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act04 = function (arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = 7.8 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetStringIndexedNumber("karaburiDist")
    local f6_local2 = 7.8 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f6_local3 = 7.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f6_local4 = 100
    local f6_local5 = 0
    local f6_local6 = 1.5
    local f6_local7 = 3
    if f6_local1 < f6_local0 then
        Approach_Act_Flex(arg0, arg1, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7)
    end
    local f6_local8 = 3004
    local f6_local9 = 0.5
    local f6_local10 = 90
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local8, arg0:GetStringIndexedNumber("targetWhich"), 9999, f6_local9, f6_local10, 0, 0)
    arg0:SetNumber(20, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act05 = function (arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = 2.9 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetStringIndexedNumber("karaburiDist")
    local f7_local2 = 2.9 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f7_local3 = 2.9 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f7_local4 = 100
    local f7_local5 = 0
    local f7_local6 = 1.5
    local f7_local7 = 3
    if f7_local1 < f7_local0 then
        Approach_Act_Flex(arg0, arg1, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7)
    end
    local f7_local8 = 3005
    local f7_local9 = 0.5
    local f7_local10 = 90
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local8, arg0:GetStringIndexedNumber("targetWhich"), 9999, f7_local9, f7_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act06 = function (arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = 1.2 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetStringIndexedNumber("karaburiDist")
    local f8_local2 = 1.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f8_local3 = 1.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f8_local4 = 100
    local f8_local5 = 0
    local f8_local6 = 1.5
    local f8_local7 = 3
    local f8_local8 = 3006
    local f8_local9 = 0.5
    local f8_local10 = 90
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local8, arg0:GetStringIndexedNumber("targetWhich"), 9999, f8_local9, f8_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act07 = function (arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = 1.6 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetStringIndexedNumber("karaburiDist")
    local f9_local2 = 1.6 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f9_local3 = 1.6 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f9_local4 = 100
    local f9_local5 = 0
    local f9_local6 = 1.5
    local f9_local7 = 3
    if f9_local1 < f9_local0 then
        Approach_Act_Flex(arg0, arg1, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6, f9_local7)
    end
    local f9_local8 = 3007
    local f9_local9 = 0.5
    local f9_local10 = 90
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local8, arg0:GetStringIndexedNumber("targetWhich"), 9999, f9_local9, f9_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act08 = function (arg0, arg1, arg2)
    local f10_local0 = arg0:GetDist(TARGET_ENE_0)
    local f10_local1 = 7.1 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetStringIndexedNumber("karaburiDist")
    local f10_local2 = 7.1 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f10_local3 = 7.1 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f10_local4 = 0
    local f10_local5 = 0
    local f10_local6 = 1.5
    local f10_local7 = 3
    if f10_local1 < f10_local0 then
        Approach_Act_Flex(arg0, arg1, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6, f10_local7)
    end
    local f10_local8 = 3008
    local f10_local9 = 0.5
    local f10_local10 = 90
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 45, -1, GOAL_RESULT_Success, true)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local8, arg0:GetStringIndexedNumber("targetWhich"), 9999, f10_local9, f10_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act09 = function (arg0, arg1, arg2)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = 15.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local2 = 15.8 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f11_local3 = 15.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f11_local4 = 100
    local f11_local5 = 0
    local f11_local6 = 1.5
    local f11_local7 = 3
    if f11_local1 < f11_local0 then
        Approach_Act_Flex(arg0, arg1, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6, f11_local7)
    end
    local f11_local8 = 3009
    local f11_local9 = 0.5
    local f11_local10 = 90
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 45, -1, GOAL_RESULT_Success, true)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local8, arg0:GetStringIndexedNumber("targetWhich"), 9999, f11_local9, f11_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act10 = function (arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = 4.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local2 = 4.7 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f12_local3 = 4.7 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f12_local4 = 0
    local f12_local5 = 0
    local f12_local6 = 1.5
    local f12_local7 = 3
    if f12_local1 < f12_local0 then
        Approach_Act_Flex(arg0, arg1, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6, f12_local7)
    end
    local f12_local8 = 3010
    local f12_local9 = 0.5
    local f12_local10 = 90
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local8, arg0:GetStringIndexedNumber("targetWhich"), 9999, f12_local9, f12_local10, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act11 = function (arg0, arg1, arg2)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = 4.7 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetStringIndexedNumber("karaburiDist")
    local f13_local2 = 4.7 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f13_local3 = 4.7 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f13_local4 = 100
    local f13_local5 = 0
    local f13_local6 = 1.5
    local f13_local7 = 3
    if f13_local1 < f13_local0 then
        Approach_Act_Flex(arg0, arg1, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6, f13_local7)
    end
    local f13_local8 = 3000
    local f13_local9 = 5201
    local f13_local10 = 7.1 - arg0:GetMapHitRadius(TARGET_SELF) + 1
    local f13_local11 = 0.5
    local f13_local12 = 90
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f13_local8, arg0:GetStringIndexedNumber("targetWhich"), f13_local10, f13_local11, f13_local12, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f13_local9, arg0:GetStringIndexedNumber("targetWhich"), 9999, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act21 = function (arg0, arg1, arg2)
    local f14_local0 = 3
    local f14_local1 = 45
    if arg0:IsTargetGuard(TARGET_SELF) then
        arg1:AddSubGoal(GOAL_COMMON_Turn, f14_local0, TARGET_ENE_0, f14_local1, 9910, GOAL_RESULT_Success, true)
    else
        arg1:AddSubGoal(GOAL_COMMON_Turn, f14_local0, TARGET_ENE_0, f14_local1, -1, GOAL_RESULT_Success, true)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odd
    
end

Goal.Act22 = function (arg0, arg1, arg2)
    local f15_local0 = 3
    local f15_local1 = 0
    if SpaceCheck(arg0, arg1, -45, arg0:GetStringIndexedNumber("Dist_Step_Small")) == true then
        if SpaceCheck(arg0, arg1, 45, arg0:GetStringIndexedNumber("Dist_Step_Small")) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, f15_local0, 5202, TARGET_ENE_0, f15_local1, AI_DIR_TYPE_L, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, f15_local0, 5203, TARGET_ENE_0, f15_local1, AI_DIR_TYPE_R, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f15_local0, 5202, TARGET_ENE_0, f15_local1, AI_DIR_TYPE_L, 0)
        end
    elseif SpaceCheck(arg0, arg1, 45, arg0:GetStringIndexedNumber("Dist_Step_Small")) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f15_local0, 5203, TARGET_ENE_0, f15_local1, AI_DIR_TYPE_R, 0)
    else

    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act23 = function (arg0, arg1, arg2)
    local f16_local0 = arg0:GetSp(TARGET_SELF)
    local f16_local1 = 0
    local f16_local2 = arg0:GetRandam_Int(1, 100)
    local f16_local3 = -1
    local f16_local4 = arg0:GetSp(TARGET_SELF)
    local f16_local5 = 0
    local f16_local6 = arg0:GetRandam_Int(1, 100)
    local f16_local7 = -1
    local f16_local8 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f16_local8 = 1
            else
                f16_local8 = 0
            end
        else
            f16_local8 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f16_local8 = 1
    elseif SpaceCheck(arg0, arg1, 180, 1) == true then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, approachLife, TARGET_ENE_0, 8.5, TARGET_ENE_0, true, f16_local7)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
    end
    local f16_local9 = 1.8
    local f16_local10 = arg0:GetRandam_Int(30, 45)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f16_local9, TARGET_ENE_0, f16_local8, f16_local10, true, true, f16_local7)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act24 = function (arg0, arg1, arg2)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    local f17_local1 = 3
    local f17_local2 = 0
    local f17_local3 = arg0:GetRandam_Int(1, 100)
    if SpaceCheck(arg0, arg1, 180, arg0:GetStringIndexedNumber("Dist_Step_Small")) == true then
        if SpaceCheck(arg0, arg1, 180, arg0:GetStringIndexedNumber("Dist_Step_Large")) == true then
            if f17_local0 > 4 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, f17_local1, 5201, TARGET_ENE_0, f17_local2, AI_DIR_TYPE_B, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, f17_local1, 5211, TARGET_ENE_0, f17_local2, AI_DIR_TYPE_B, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f17_local1, 5201, TARGET_ENE_0, f17_local2, AI_DIR_TYPE_B, 0)
        end
    end
    local f17_local4 = 2
    local f17_local5 = arg0:GetRandam_Int(30, 45)
    if f17_local3 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f17_local4, TARGET_ENE_0, direction, f17_local5, true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act25 = function (arg0, arg1, arg2)
    local f18_local0 = arg0:GetSp(TARGET_SELF)
    local f18_local1 = 0
    local f18_local2 = arg0:GetRandam_Int(1, 100)
    local f18_local3 = -1
    if not (f18_local1 > f18_local0 or f18_local2 > 100) or arg0:HasSpecialEffectId(TARGET_ENE_0, 3170200) then
        f18_local3 = 9910
    end
    local f18_local4 = arg0:GetRandam_Float(3, 5)
    local f18_local5 = 5
    if arg0:HasSpecialEffectId(TARGET_ENE_0, 3170200) then
        f18_local5 = 999
    end
    if SpaceCheck(arg0, arg1, 180, 1) == true then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f18_local4, TARGET_ENE_0, f18_local5, TARGET_ENE_0, true, f18_local3)
    else

    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act26 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act27 = function (arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 8, 999, 999, 0, 0, 10, 10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act28 = function (arg0, arg1, arg2)
    local f21_local0 = arg0:GetDist(TARGET_ENE_0)
    local f21_local1 = 1.5
    local f21_local2 = 1.5
    local f21_local3 = arg0:GetRandam_Int(30, 45)
    local f21_local4 = -1
    local f21_local5 = arg0:GetRandam_Int(0, 1)
    if f21_local0 <= 8 then
        if SpaceCheck(arg0, arg1, -90, 1) == true then
            if SpaceCheck(arg0, arg1, 90, 1) == true then
                if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    f21_local5 = 1
                else
                    f21_local5 = 0
                end
            else
                f21_local5 = 0
            end
        elseif SpaceCheck(arg0, arg1, 90, 1) == true then
            f21_local5 = 1
        elseif SpaceCheck(arg0, arg1, 180, 1) == true then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f21_local2, TARGET_ENE_0, 8.5, TARGET_ENE_0, true, f21_local4)
        else
            arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
        end
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f21_local1, TARGET_ENE_0, f21_local5, f21_local3, true, true, f21_local4)
    else
        Approach_Act_Flex(arg0, arg1, 8, 8, 8, 100, 0, 10, 10)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act29 = function (arg0, arg1, arg2)
    local f22_local0 = arg0:GetRandam_Int(1, 100)
    if YousumiAct_SubGoal(arg0, arg1, true, 60, 30) == false then
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    local f22_local1 = 0
    local f22_local2 = SpaceCheck_SidewayMove(arg0, arg1, 1)
    if f22_local2 == 0 then
        f22_local1 = 0
    elseif f22_local2 == 1 then
        f22_local1 = 1
    elseif f22_local2 == 2 then
        if f22_local0 <= 50 then
            f22_local1 = 0
        else
            f22_local1 = 1
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    arg0:SetNumber(10, f22_local1)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f22_local1, arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act30 = function (arg0, arg1, arg2)
    local f23_local0 = 3
    local f23_local1 = 3 + 2
    local f23_local2 = 3 + 2
    local f23_local3 = 100
    local f23_local4 = 0
    local f23_local5 = 1.5
    local f23_local6 = 3
    Approach_Act_Flex(arg0, arg1, f23_local0, f23_local1, f23_local2, f23_local3, f23_local4, f23_local5, f23_local6)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act41 = function (arg0, arg1, arg2)
    local f24_local0 = 3.5
    local f24_local1 = arg0:GetRandam_Int(30, 45)
    local f24_local2 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f24_local2 = 0
            else
                f24_local2 = 1
            end
        else
            f24_local2 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f24_local2 = 1
    else

    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f24_local0, TARGET_ENE_0, f24_local2, f24_local1, true, true, -1)
    return GETWELLSPACE_ODDS
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f25_local0 = arg1:GetHpRate(TARGET_SELF)
    local f25_local1 = arg1:GetDist(TARGET_ENE_0)
    local f25_local2 = arg1:GetSp(TARGET_SELF)
    local f25_local3 = arg1:GetSpecialEffectActivateInterruptType(0)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ParryTiming) then
        return Common_Parry(arg1, arg2, 0, 0)
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        return arg0.Damaged(arg1, arg2)
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and f25_local3 == 107900 then
        arg1:SetNumber(12, 1)
        arg2:ClearSubGoal()
        arg1:Replanning()
        return true
    end
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) then

    else

    end
    if arg1:IsInterupt(INTERUPT_ShootImpact) and arg0.ShootReaction(arg1, arg2) then
        return true
    end
    return false
    
end

Goal.Damaged = function (arg0, arg1, arg2)
    local f26_local0 = arg0:GetHpRate(TARGET_SELF)
    local f26_local1 = arg0:GetDist(TARGET_ENE_0)
    local f26_local2 = arg0:GetSp(TARGET_SELF)
    local f26_local3 = arg0:GetRandam_Int(1, 100)
    local f26_local4 = 0
    local f26_local5 = 2.5
    local f26_local6 = 0
    if f26_local3 <= 100 then
        arg1:ClearSubGoal()
        local f26_local7 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, f26_local5, 5211, TARGET_ENE_0, f26_local6, AI_DIR_TYPE_B, 0)
        f26_local7:TimingSetTimer(3, 6, UPDATE_SUCCESS)
        return true
    elseif f26_local3 <= 67 then

    else

    end
    return false
    
end

Goal.ShootReaction = function (arg0, arg1)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3100, TARGET_ENE_0, 9999, 0)
    return true
    
end

Goal.Kengeki_Activate = function (arg0, arg1, arg2)
    local f28_local0 = ReturnKengekiSpecialEffect(arg1)
    if f28_local0 == 0 then
        return false
    end
    local f28_local1 = {}
    local f28_local2 = {}
    local f28_local3 = {}
    Common_Clear_Param(f28_local1, f28_local2, f28_local3)
    local f28_local4 = arg1:GetDist(TARGET_ENE_0)
    local f28_local5 = arg1:GetSp(TARGET_SELF)
    if f28_local5 <= 0 then

    elseif f28_local0 == 200200 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 310010) then
            arg1:SetNumber(0, 1)
            f28_local1[50] = 70
        end
        if f28_local4 >= 3.5 then

        elseif f28_local4 <= 0.2 then
            f28_local1[30] = 30
            f28_local1[50] = 70
        else
            f28_local1[2] = 33
            f28_local1[50] = 70
        end
    elseif f28_local0 == 200201 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 310010) then
            arg1:SetNumber(0, 1)
            f28_local1[50] = 70
        end
        if f28_local4 >= 3.5 then

        elseif f28_local4 <= 0.2 then
            f28_local1[30] = 30
            f28_local1[50] = 70
        else
            f28_local1[3] = 33
            f28_local1[4] = 33
            f28_local1[50] = 33
        end
    elseif f28_local0 == 200205 then
        if f28_local4 >= 3.5 then

        elseif f28_local4 <= 0.2 then
            f28_local1[30] = 30
            f28_local1[50] = 70
        else
            f28_local1[2] = 33
            f28_local1[50] = 33
        end
    elseif f28_local0 == 200206 then
        if f28_local4 >= 3.5 then

        elseif f28_local4 <= 0.2 then
            f28_local1[30] = 30
            f28_local1[50] = 70
        else
            f28_local1[3] = 33
            f28_local1[4] = 33
            f28_local1[50] = 33
        end
    elseif f28_local0 == 200215 then
        f28_local1[30] = 100
        f28_local1[50] = 100
    elseif f28_local0 == 200216 then
        f28_local1[30] = 100
        f28_local1[50] = 100
    end
    f28_local2[1] = REGIST_FUNC(arg1, arg2, arg0.Kengeki01)
    f28_local2[2] = REGIST_FUNC(arg1, arg2, arg0.Kengeki02)
    f28_local2[3] = REGIST_FUNC(arg1, arg2, arg0.Kengeki03)
    f28_local2[4] = REGIST_FUNC(arg1, arg2, arg0.Kengeki04)
    f28_local2[5] = REGIST_FUNC(arg1, arg2, arg0.Kengeki05)
    f28_local2[6] = REGIST_FUNC(arg1, arg2, arg0.Kengeki06)
    f28_local2[30] = REGIST_FUNC(arg1, arg2, arg0.Kengeki30)
    f28_local2[50] = REGIST_FUNC(arg1, arg2, arg0.NoAction)
    local f28_local6 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    return Common_Kengeki_Activate(arg1, arg2, f28_local1, f28_local2, f28_local6, f28_local3)
    
end

Goal.Kengeki01 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3070, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki02 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3051, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki03 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3055, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki04 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3056, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki05 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3070, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki06 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3076, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki30 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 5211, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    
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


