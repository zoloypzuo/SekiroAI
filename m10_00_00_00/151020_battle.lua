RegisterTableGoal(GOAL_MurabitoZombie_hocho_genkaku_151020_Battle, "GOAL_MurabitoZombie_hocho_genkaku_151020_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_MurabitoZombie_hocho_genkaku_151020_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Warp_Point_Back", arg1:GetRandam_Int(1002850, 1002857))
    arg1:SetStringIndexedNumber("Warp_Point_Center", arg1:GetRandam_Int(1002860, 1002867))
    arg1:SetStringIndexedNumber("Warp_Point_Front", arg1:GetRandam_Int(1002870, 1002877))
    arg1:SetStringIndexedNumber("Warp_Region_Back", 1002840)
    arg1:SetStringIndexedNumber("Warp_Region_Front", 1002841)
    if arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
        arg1:SetStringIndexedNumber("Warp_Point_Back", arg1:GetRandam_Int(9992900, 9992907))
        arg1:SetStringIndexedNumber("Warp_Point_Center", arg1:GetRandam_Int(9992910, 9992917))
        arg1:SetStringIndexedNumber("Warp_Point_Front", arg1:GetRandam_Int(9992920, 9992927))
        arg1:SetStringIndexedNumber("Warp_Region_Back", 9992980)
        arg1:SetStringIndexedNumber("Warp_Region_Front", 9992982)
    elseif arg1:GetNpcThinkParamID() == 15109200 and not arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
        arg1:SetStringIndexedNumber("Warp_Point_Back", arg1:GetRandam_Int(9992800, 9992807))
        arg1:SetStringIndexedNumber("Warp_Point_Center", arg1:GetRandam_Int(9992810, 9992817))
        arg1:SetStringIndexedNumber("Warp_Point_Front", arg1:GetRandam_Int(9992820, 9992827))
        arg1:SetStringIndexedNumber("Warp_Region_Back", 9992880)
        arg1:SetStringIndexedNumber("Warp_Region_Front", 9992882)
    end
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local5 = arg1:GetEventRequest(0)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 110124)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3509070)
    if arg1:GetNumber(1) == 0 then
        if arg1:IsInsideTargetRegion(TARGET_EVENT, arg1:GetStringIndexedNumber("Warp_Region_Back")) == true then
            f2_local0[36] = 100
            arg1:SetNumber(1, 36)
        elseif arg1:IsInsideTargetRegion(TARGET_EVENT, arg1:GetStringIndexedNumber("Warp_Region_Front")) == true then
            f2_local0[38] = 100
            arg1:SetNumber(1, 38)
        elseif arg1:IsInsideTargetRegion(TARGET_EVENT, arg1:GetStringIndexedNumber("Warp_Region_Back")) == false and arg1:IsInsideTargetRegion(TARGET_EVENT, arg1:GetStringIndexedNumber("Warp_Region_Front")) == false then
            f2_local0[37] = 100
            arg1:SetNumber(1, 37)
        end
    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 110010) then
        KankyakuAct(arg1, arg2, 0)
    elseif Common_ActivateAct(arg1, arg2) then

    elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if f2_local3 >= 5 then
            f2_local0[7] = 100
            f2_local0[23] = 1
        else
            f2_local0[23] = 1
            f2_local0[28] = 200
        end
    elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        f2_local0[23] = 100
        f2_local0[27] = 100
        f2_local0[28] = 100
    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 110030) then
        f2_local0[28] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        f2_local0[21] = 100
        f2_local0[22] = 1
    elseif f2_local3 >= 8 then
        f2_local0[1] = 500
        f2_local0[2] = 500
        f2_local0[3] = 0
    elseif f2_local3 >= 3.2 then
        f2_local0[1] = 300
        f2_local0[2] = 300
        f2_local0[3] = 0
        f2_local0[30] = 150
    else
        f2_local0[1] = 250
        f2_local0[2] = 250
        f2_local0[3] = 0
        f2_local0[30] = 50
    end
    if SpaceCheck(arg1, arg2, 45, 2) == false and SpaceCheck(arg1, arg2, -45, 2) == false then
        f2_local0[22] = 0
    end
    if SpaceCheck(arg1, arg2, 90, 1) == false and SpaceCheck(arg1, arg2, -45, 1) == false then
        f2_local0[23] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 2) == false then
        f2_local0[24] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 1) == false then
        f2_local0[25] = 0
    end
    f2_local0[10] = SetCoolTime(arg1, arg2, 3010, 22, f2_local0[10], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, arg0.Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, arg0.Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, arg0.Act03)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, arg0.Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, arg0.Act07)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, arg0.Act10)
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
    f2_local1[35] = REGIST_FUNC(arg1, arg2, arg0.Act35)
    f2_local1[36] = REGIST_FUNC(arg1, arg2, arg0.Act36)
    f2_local1[37] = REGIST_FUNC(arg1, arg2, arg0.Act37)
    f2_local1[38] = REGIST_FUNC(arg1, arg2, arg0.Act38)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, arg0.Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, arg0.Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, arg0.Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, arg0.Act43)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, arg0.Act44)
    local f2_local6 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    local f3_local0 = 2.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 2.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = 2.6 - arg0:GetMapHitRadius(TARGET_SELF) + 0.8
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 1.5
    local f3_local6 = 3
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local f3_local8 = 0
    local f3_local9 = 0
    local f3_local10 = arg0:GetRandam_Int(1, 100)
    if f3_local10 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 9999, f3_local8, f3_local9, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, f3_local7, f3_local8, f3_local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 9999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    local f4_local0 = 2.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 2.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local2 = 2.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 1.5
    local f4_local6 = 3
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 4.3 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local f4_local8 = 0
    local f4_local9 = 0
    local f4_local10 = arg0:GetRandam_Int(1, 100)
    if f4_local10 <= 70 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 9999, f4_local8, f4_local9, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, f4_local7, f4_local8, f4_local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, 9999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f5_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 0.8
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 1.5
    local f5_local6 = 3
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 0
    local f5_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 9999, f5_local7, f5_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act06 = function (arg0, arg1, arg2)
    local f6_local0 = -1
    local f6_local1 = arg0:GetRandam_Int(0, 100)
    local f6_local2 = arg0:GetRandam_Int(0, 1)
    local f6_local3 = 3
    local f6_local4 = arg0:GetRandam_Int(30, 45)
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        f6_local2 = 0
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f6_local2 = 1
    end
    if SpaceCheck(arg0, arg1, 180, 1) == true then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, 8, TARGET_ENE_0, true, f6_local0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f6_local3, TARGET_ENE_0, f6_local2, f6_local4, true, true, f6_local0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act07 = function (arg0, arg1, arg2)
    local f7_local0 = 5
    local f7_local1 = 10
    local f7_local2 = 15
    local f7_local3 = 0
    local f7_local4 = 0
    local f7_local5 = 1.5
    local f7_local6 = 2
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act10 = function (arg0, arg1, arg2)
    local f8_local0 = 4.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = 4.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local2 = 4.8 - arg0:GetMapHitRadius(TARGET_SELF) + 0.8
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 1.5
    local f8_local6 = 3
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 0
    local f8_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 9999, f8_local7, f8_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act15 = function (arg0, arg1, arg2)
    local f9_local0 = 0
    local f9_local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3031, TARGET_ENE_0, 9999, f9_local0, f9_local1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act21 = function (arg0, arg1, arg2)
    local f10_local0 = 3
    local f10_local1 = 45
    arg1:AddSubGoal(GOAL_COMMON_Turn, f10_local0, TARGET_ENE_0, f10_local1, -1, GOAL_RESULT_Success, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act22 = function (arg0, arg1, arg2)
    local f11_local0 = 3
    local f11_local1 = 0
    if SpaceCheck(arg0, arg1, -45, 2) == true then
        if SpaceCheck(arg0, arg1, 45, 2) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, f11_local0, 5202, TARGET_ENE_0, f11_local1, AI_DIR_TYPE_L, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, f11_local0, 5203, TARGET_ENE_0, f11_local1, AI_DIR_TYPE_R, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f11_local0, 5202, TARGET_ENE_0, f11_local1, AI_DIR_TYPE_L, 0)
        end
    elseif SpaceCheck(arg0, arg1, 45, 2) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f11_local0, 5203, TARGET_ENE_0, f11_local1, AI_DIR_TYPE_R, 0)
    else

    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act23 = function (arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = arg0:GetSp(TARGET_SELF)
    local f12_local2 = 20
    local f12_local3 = arg0:GetRandam_Int(1, 100)
    local f12_local4 = -1
    if f12_local2 <= f12_local1 and f12_local3 <= 50 then
        f12_local4 = 9910
    end
    local f12_local5 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f12_local5 = 0
            else
                f12_local5 = 1
            end
        else
            f12_local5 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f12_local5 = 1
    else

    end
    local f12_local6 = 3
    local f12_local7 = arg0:GetRandam_Int(30, 45)
    arg0:SetNumber(10, f12_local5)
    local f12_local8 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f12_local6, TARGET_ENE_0, f12_local5, f12_local7, true, true, f12_local4)
    f12_local8:TimingSetTimer(2, 4, UPDATE_SUCCESS)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act24 = function (arg0, arg1, arg2)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = 3
    local f13_local2 = 0
    local f13_local3 = 5211
    if SpaceCheck(arg0, arg1, 180, 2) == true and SpaceCheck(arg0, arg1, 180, 4) == true then
        if f13_local0 > 4 then

        else
            f13_local3 = 5211
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f13_local1, f13_local3, TARGET_ENE_0, f13_local2, AI_DIR_TYPE_B, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act25 = function (arg0, arg1, arg2)
    local f14_local0 = arg0:GetRandam_Float(2, 4)
    local f14_local1 = arg0:GetRandam_Float(1, 3)
    local f14_local2 = arg0:GetDist(TARGET_ENE_0)
    local f14_local3 = -1
    if SpaceCheck(arg0, arg1, 180, 1) == true then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f14_local0, TARGET_ENE_0, f14_local1, TARGET_ENE_0, true, f14_local3)
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
    local f16_local0 = arg0:GetDist(TARGET_ENE_0)
    local f16_local1 = arg0:GetDistYSigned(TARGET_ENE_0)
    local f16_local2 = f16_local1 / math.tan(math.deg(30))
    local f16_local3 = arg0:GetRandam_Int(0, 1)
    if f16_local1 >= 3 then
        if f16_local2 + 1 <= f16_local0 then
            if SpaceCheck(arg0, arg1, 0, 4) == true then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.1, TARGET_ENE_0, f16_local2, TARGET_SELF, false, -1)
            elseif SpaceCheck(arg0, arg1, 0, 3) == true then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_ENE_0, f16_local2, TARGET_SELF, true, -1)
            end
        elseif f16_local0 <= f16_local2 - 1 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, f16_local2, TARGET_ENE_0, true, -1)
        end
    elseif SpaceCheck(arg0, arg1, 0, 4) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.1, TARGET_ENE_0, 0, TARGET_SELF, false, -1)
    elseif SpaceCheck(arg0, arg1, 0, 3) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_ENE_0, 0, TARGET_SELF, true, -1)
    elseif SpaceCheck(arg0, arg1, 0, 1) == false then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 0.5, TARGET_ENE_0, 999, TARGET_ENE_0, true, -1)
    end
    arg0:SetNumber(10, f16_local3)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f16_local3, arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act28 = function (arg0, arg1, arg2)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    local f17_local1 = 1.5
    local f17_local2 = 1.5
    local f17_local3 = arg0:GetRandam_Int(30, 45)
    local f17_local4 = -1
    local f17_local5 = arg0:GetRandam_Int(0, 1)
    if f17_local0 <= 3 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f17_local1, TARGET_ENE_0, f17_local5, f17_local3, true, true, f17_local4)
    elseif f17_local0 <= 8 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f17_local2, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f17_local2, TARGET_ENE_0, 8, TARGET_SELF, false, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act30 = function (arg0, arg1, arg2)
    local f18_local0 = arg0:GetDist(TARGET_ENE_0)
    local f18_local1 = 9999
    local f18_local2 = 0
    local f18_local3 = 0
    local f18_local4 = arg0:GetRandam_Int(1, 100)
    local f18_local5 = arg0:GetRandam_Int(1, 100)
    local f18_local6 = arg0:GetRandam_Float(2.5, 3.5)
    local f18_local7 = arg0:GetRandam_Float(2.5, 3.5)
    local f18_local8 = 3
    if f18_local4 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 0.5, TARGET_SELF, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToF, 10)
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Float(1.5, 3), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, 10)
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Float(1.5, 3), TARGET_ENE_0, 0, TARGET_SELF, true, -1, arg0:GetRandam_Int(AI_DIR_TYPE_ToR, AI_DIR_TYPE_ToL), 10)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 0.5, TARGET_SELF, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToF, 10)
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Float(1.5, 3), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, 10)
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Float(1.5, 3), TARGET_ENE_0, 0, TARGET_SELF, true, -1, arg0:GetRandam_Int(AI_DIR_TYPE_ToR, AI_DIR_TYPE_ToR), 10)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act35 = function (arg0, arg1, arg2)
    local f19_local0 = arg0:GetDist(TARGET_ENE_0)
    local f19_local1 = arg0:GetRandam_Int(1, 100)
    local f19_local2 = arg0:GetRandam_Int(0, 1)
    local f19_local3 = arg0:GetRandam_Float(2, 3.5)
    local f19_local4 = 3
    local f19_local5 = 0
    local f19_local6 = arg0:GetDist(TARGET_FRI_0)
    local f19_local7 = arg0:GetRandam_Int(1, 100)
    local f19_local8 = arg0:GetRandam_Float(6.5, 7.5)
    local f19_local9 = arg0:GetRandam_Float(5.5, 6.5)
    local f19_local10 = 999
    local f19_local11 = 100
    if f19_local0 >= 10 then
        Approach_Act(arg0, arg1, f19_local8, f19_local10, 0, 3)
    elseif f19_local0 >= 5 then

    elseif f19_local0 >= 3.5 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, f19_local8, TARGET_ENE_0, false, 9910)
    else
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 5201, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
    end
    local f19_local12 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f19_local3, TARGET_ENE_0, f19_local2, arg0:GetRandam_Int(30, 45), true, true, 9910)
    f19_local12:TimingSetTimer(2, 4, UPDATE_SUCCESS)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act36 = function (arg0, arg1, arg2)
    local f20_local0 = arg0:GetStringIndexedNumber("Warp_Point_Back")
    arg0:SetNumber(2, f20_local0)
    arg0:SetEventMoveTarget(f20_local0)
    arg1:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, POINT_EVENT, AI_DIR_TYPE_F, 0, TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act37 = function (arg0, arg1, arg2)
    local f21_local0 = arg0:GetStringIndexedNumber("Warp_Point_Center")
    arg0:SetNumber(2, f21_local0)
    arg0:SetEventMoveTarget(f21_local0)
    arg1:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, POINT_EVENT, AI_DIR_TYPE_F, 0, TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act38 = function (arg0, arg1, arg2)
    local f22_local0 = arg0:GetStringIndexedNumber("Warp_Point_Front")
    arg0:SetNumber(2, f22_local0)
    arg0:SetEventMoveTarget(f22_local0)
    arg1:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, POINT_EVENT, AI_DIR_TYPE_F, 0, TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act40 = function (arg0, arg1, arg2)
    local f23_local0 = arg0:GetRandam_Int(9992960, 9992967)
    arg0:SetNumber(2, f23_local0)
    arg0:SetEventMoveTarget(f23_local0)
    arg1:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, POINT_EVENT, AI_DIR_TYPE_F, 0, TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act41 = function (arg0, arg1, arg2)
    local f24_local0 = arg0:GetRandam_Int(9992964, 9992971)
    arg0:SetNumber(2, f24_local0)
    arg0:SetEventMoveTarget(f24_local0)
    arg1:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, POINT_EVENT, AI_DIR_TYPE_F, 0, TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act42 = function (arg0, arg1, arg2)
    local f25_local0 = arg0:GetRandam_Int(9992968, 9992975)
    arg0:SetNumber(2, f25_local0)
    arg0:SetEventMoveTarget(f25_local0)
    arg1:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, POINT_EVENT, AI_DIR_TYPE_F, 0, TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act43 = function (arg0, arg1, arg2)
    local f26_local0 = arg0:GetRandam_Float(0, 1)
    local f26_local1 = arg0:GetRandam_Int(9992810, 9992817)
    arg0:SetNumber(2, f26_local1)
    arg0:SetEventMoveTarget(f26_local1)
    arg1:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, POINT_EVENT, AI_DIR_TYPE_F, f26_local0, TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act44 = function (arg0, arg1, arg2)
    local f27_local0 = arg0:GetRandam_Int(0, 1)
    local f27_local1 = arg0:GetRandam_Int(9992800, 9992807)
    arg0:SetNumber(2, f27_local1)
    arg0:SetEventMoveTarget(f27_local1)
    arg1:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, POINT_EVENT, AI_DIR_TYPE_F, f27_local0, TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f28_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        return arg0.Damaged(arg1, arg2)
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and f28_local0 == 3509070 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_AttackImmediateAction, 1, 3031, TARGET_ENE_0, 9999, 0, 0, 0, 0)
        return true
    end
    if arg1:GetSpecialEffectActivateInterruptType(0) == 110124 then
        arg2:ClearSubGoal()
        arg1:Replaning()
        return false
    end
    return false
    
end

Goal.Parry = function (arg0, arg1, arg2)
    local f29_local0 = arg0:GetHpRate(TARGET_SELF)
    local f29_local1 = arg0:GetDist(TARGET_ENE_0)
    local f29_local2 = arg0:GetSp(TARGET_SELF)
    local f29_local3 = arg0:GetRandam_Int(1, 100)
    local f29_local4 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 90, 3) then
        if arg0:HasSpecialEffectId(TARGET_ENE_0, 109012) then

        elseif arg0:IsTargetGuard(TARGET_SELF) then
            if arg0:HasSpecialEffectId(TARGET_ENE_0, 109970) then

            else
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3100, TARGET_ENE_0, 9999, 0)
                return true
            end
        elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 109970) then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3101, TARGET_ENE_0, 9999, 0)
            return true
        else
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3100, TARGET_ENE_0, 9999, 0)
            return true
        end
    end
    return false
    
end

Goal.Damaged = function (arg0, arg1, arg2)
    local f30_local0 = arg0:GetHpRate(TARGET_SELF)
    local f30_local1 = arg0:GetDist(TARGET_ENE_0)
    local f30_local2 = arg0:GetSp(TARGET_SELF)
    local f30_local3 = arg0:GetRandam_Int(1, 100)
    local f30_local4 = 0
    if f30_local3 <= 33 then
        arg1:ClearSubGoal()
        local f30_local5 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, StepLife, 5211, TARGET_ENE_0, TurnTime, AI_DIR_TYPE_B, 0)
        f30_local5:TimingSetTimer(3, 6, UPDATE_SUCCESS)
        return true
    elseif f30_local3 <= 67 then

    else

    end
    return false
    
end

Goal.ActAfter_AdjustSpace = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_MurabitoZombie_hocho_genkaku_151020_AfterAttackAct, 10)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

RegisterTableGoal(GOAL_MurabitoZombie_hocho_genkaku_151020_AfterAttackAct, "GOAL_MurabitoZombie_hocho_genkaku_151020_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MurabitoZombie_hocho_genkaku_151020_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local f34_local0 = arg1:GetDist(TARGET_ENE_0)
    local f34_local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    local f34_local2 = arg1:GetHpRate(TARGET_SELF)
    local f34_local3 = arg1:GetRandam_Int(1, 100)
    local f34_local4 = arg1:GetRandam_Int(1, 2)
    local f34_local5 = {}
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 160) then
        f34_local5[1] = 100
        f34_local5[2] = 0
        f34_local5[3] = 0
    elseif f34_local0 >= 7 then
        f34_local5[1] = 100
        f34_local5[2] = 0
        f34_local5[3] = 0
    elseif f34_local0 >= 3 then
        f34_local5[1] = 50
        f34_local5[2] = 20
        f34_local5[3] = 30
    else
        f34_local5[1] = 50
        f34_local5[2] = 20
        f34_local5[3] = 30
    end
    local f34_local6 = SelectOddsIndex(arg1, f34_local5)
    if f34_local6 == 1 then

    elseif f34_local6 == 2 then
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    elseif f34_local6 == 3 then
        if f34_local3 <= 50 then
            arg2:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 0.5, TARGET_SELF, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToF, 10)
            arg2:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg1:GetRandam_Float(1.5, 3), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToR, 10)
            arg2:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg1:GetRandam_Float(1.5, 3), TARGET_ENE_0, 0, TARGET_SELF, true, -1, arg1:GetRandam_Int(AI_DIR_TYPE_ToR, AI_DIR_TYPE_ToL), 10)
        else
            arg2:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 0.5, TARGET_SELF, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToF, 10)
            arg2:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg1:GetRandam_Float(1.5, 3), TARGET_ENE_0, 0, TARGET_SELF, true, -1, AI_DIR_TYPE_ToL, 10)
            arg2:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg1:GetRandam_Float(1.5, 3), TARGET_ENE_0, 0, TARGET_SELF, true, -1, arg1:GetRandam_Int(AI_DIR_TYPE_ToR, AI_DIR_TYPE_ToR), 10)
        end
    end
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


