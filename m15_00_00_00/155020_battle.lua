RegisterTableGoal(GOAL_Yatou_katanaTaimatsu_155020_Battle, "GOAL_Yatou_katanaTaimatsu_155020_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Yatou_katanaTaimatsu_155020_Battle, true)
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
    Set_ConsecutiveGuardCount_Interrupt(arg1)
    arg1:DeleteObserve(0)
    if arg0:Kengeki_Activate(arg1, arg2) then
        return 
    end
    if Common_ActivateAct(arg1, arg2) then

    elseif arg1:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 0) == false then
        f2_local0[27] = 100
    elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        KankyakuAct(arg1, arg2)
    elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if TorimakiAct(arg1, arg2) then
            f2_local0[7] = 200
            f2_local0[15] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 3155550) then
        f2_local0[28] = 200
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        f2_local0[21] = 100
        f2_local0[22] = 1
    elseif arg1:GetNumber(0) == 0 and arg1:HasSpecialEffectId(TARGET_SELF, 5020) == false then
        f2_local0[4] = 100
    elseif f2_local3 >= 7 then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[5] = 0
        f2_local0[6] = 100
        f2_local0[7] = 200
        f2_local0[15] = 200
    elseif f2_local3 >= 5 then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[5] = 50
        f2_local0[6] = 0
        f2_local0[7] = 50
        f2_local0[15] = 100
    elseif f2_local3 > 3 then
        f2_local0[1] = 100
        f2_local0[2] = 100
        f2_local0[5] = 50
        f2_local0[6] = 50
    elseif f2_local3 > 1 then
        f2_local0[1] = 100
        f2_local0[2] = 100
        f2_local0[3] = 100
        f2_local0[5] = 50
        f2_local0[6] = 50
    else
        f2_local0[3] = 100
    end
    if SpaceCheck(arg1, arg2, 45, 2) == false and SpaceCheck(arg1, arg2, -45, 2) == false then
        f2_local0[22] = 0
    end
    if SpaceCheck(arg1, arg2, 90, 1) == false and SpaceCheck(arg1, arg2, -90, 1) == false then
        f2_local0[23] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 4) == false then
        f2_local0[24] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 1) == false then
        f2_local0[25] = 0
    end
    if arg1:IsFinishTimer(0) == false then
        f2_local0[15] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 5, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3002, 5, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3003, 5, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3004, 15, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3008, 20, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3011, 20, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3012, 20, f2_local0[7], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3007, 15, f2_local0[15], 1)
    f2_local0[24] = SetCoolTime(arg1, arg2, 5211, 10, f2_local0[24], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, arg0.Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, arg0.Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, arg0.Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, arg0.Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, arg0.Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, arg0.Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, arg0.Act07)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, arg0.Act15)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, arg0.Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, arg0.Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, arg0.Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, arg0.Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, arg0.Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, arg0.Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, arg0.Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, arg0.Act28)
    f2_local1[29] = REGIST_FUNC(arg1, arg2, arg0.Act29)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, arg0.Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, arg0.Act41)
    local f2_local5 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local5, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    local f3_local0 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local2 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 1.5
    local f3_local6 = 3
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local8 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local9 = 0
    local f3_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, f3_local7, f3_local9, f3_local10, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, f3_local8, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    local f4_local0 = 2.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 2.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f4_local2 = 2.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 1.5
    local f4_local6 = 3
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 0
    local f4_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 9999, f4_local7, f4_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f5_local0 = 0
    local f5_local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 9999, f5_local0, f5_local1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act04 = function (arg0, arg1, arg2)
    local f6_local0 = 0
    local f6_local1 = 0
    local f6_local2 = 90
    local f6_local3 = 1.5 - arg0:GetMapHitRadius(TARGET_SELF)
    arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, f6_local2, f6_local3)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 9999, f6_local0, f6_local1, 0, 0)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act05 = function (arg0, arg1, arg2)
    local f7_local0 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f7_local2 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 1.5
    local f7_local6 = 3
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local8 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local9 = 0
    local f7_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, f7_local7, f7_local9, f7_local10, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, f7_local8, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act06 = function (arg0, arg1, arg2)
    local f8_local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f8_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 100
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 1.5
    local f8_local6 = 3
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 0
    local f8_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, 9999, f8_local7, f8_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 999, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act07 = function (arg0, arg1, arg2)
    local f9_local0 = 7.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 7.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f9_local2 = 7.5 - arg0:GetMapHitRadius(TARGET_SELF) + 100
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 1.5
    local f9_local6 = 3
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 0
    local f9_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, 9999, f9_local7, f9_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 999, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act40 = function (arg0, arg1, arg2)
    local f10_local0 = 7.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = 7.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f10_local2 = 7.5 - arg0:GetMapHitRadius(TARGET_SELF) + 100
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 1.5
    local f10_local6 = 3
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 0
    local f10_local8 = 0
    local f10_local9 = 3.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local10 = 1.5 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, f10_local9, f10_local7, f10_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, f10_local10, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act41 = function (arg0, arg1, arg2)
    local f11_local0 = 3.5
    local f11_local1 = arg0:GetRandam_Int(30, 45)
    local f11_local2 = 3
    local f11_local3 = 0
    local f11_local4 = 5201
    if SpaceCheck(arg0, arg1, 180, 4) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f11_local2, f11_local4, TARGET_ENE_0, f11_local3, AI_DIR_TYPE_B, 0)
    end
    local f11_local5 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f11_local5 = 0
            else
                f11_local5 = 1
            end
        else
            f11_local5 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f11_local5 = 1
    else

    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f11_local0, TARGET_ENE_0, f11_local5, f11_local1, true, true, -1)
    return GETWELLSPACE_ODDS
    
end

Goal.Act15 = function (arg0, arg1, arg2)
    local f12_local0 = 0
    local f12_local1 = 0
    local f12_local2 = arg0:GetRandam_Int(1, 100)
    if f12_local2 < 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, 5, f12_local0, f12_local1, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3014, TARGET_ENE_0, 5, f12_local0, f12_local1, 0, 0)
    end
    arg0:SetTimer(0, 20)
    local f12_local3 = 180
    local f12_local4 = 5
    arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, f12_local3, f12_local4)
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
    if SpaceCheck(arg0, arg1, -45, 2) == true then
        if SpaceCheck(arg0, arg1, 45, 2) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, f14_local0, 5202, TARGET_ENE_0, f14_local1, AI_DIR_TYPE_L, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, f14_local0, 5203, TARGET_ENE_0, f14_local1, AI_DIR_TYPE_R, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f14_local0, 5202, TARGET_ENE_0, f14_local1, AI_DIR_TYPE_L, 0)
        end
    elseif SpaceCheck(arg0, arg1, 45, 2) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f14_local0, 5203, TARGET_ENE_0, f14_local1, AI_DIR_TYPE_R, 0)
    else

    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act23 = function (arg0, arg1, arg2)
    local f15_local0 = arg0:GetSp(TARGET_SELF)
    local f15_local1 = 0
    local f15_local2 = arg0:GetRandam_Int(1, 100)
    local f15_local3 = -1
    local f15_local4 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f15_local4 = 1
            else
                f15_local4 = 0
            end
        else
            f15_local4 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f15_local4 = 1
    else
        GetWellSpace_Odds = 100
        return GetWellSpace_Odds
    end
    local f15_local5 = 1.5
    local f15_local6 = arg0:GetRandam_Int(30, 45)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f15_local5, TARGET_ENE_0, f15_local4, f15_local6, true, true, f15_local3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act24 = function (arg0, arg1, arg2)
    local f16_local0 = arg0:GetDist(TARGET_ENE_0)
    local f16_local1 = 3
    local f16_local2 = 0
    local f16_local3 = 5211
    if SpaceCheck(arg0, arg1, 180, 2) == true and SpaceCheck(arg0, arg1, 180, 4) == true then
        f16_local3 = 5211
    else

    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f16_local1, f16_local3, TARGET_ENE_0, f16_local2, AI_DIR_TYPE_B, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act25 = function (arg0, arg1, arg2)
    local f17_local0 = arg0:GetRandam_Float(2, 4)
    local f17_local1 = arg0:GetRandam_Float(1, 3)
    local f17_local2 = arg0:GetDist(TARGET_ENE_0)
    local f17_local3 = -1
    if SpaceCheck(arg0, arg1, 180, 1) == true then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f17_local0, TARGET_ENE_0, f17_local1, TARGET_ENE_0, true, f17_local3)
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
    local f19_local0 = arg0:GetRandam_Int(1, 100)
    if YousumiAct_SubGoal(arg0, arg1, true, 60, 30) == false then
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    local f19_local1 = 0
    local f19_local2 = SpaceCheck_SidewayMove(arg0, arg1, 1)
    if f19_local2 == 0 then
        f19_local1 = 0
    elseif f19_local2 == 1 then
        f19_local1 = 1
    elseif f19_local2 == 2 then
        if f19_local0 <= 50 then
            f19_local1 = 0
        else
            f19_local1 = 1
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_SELF, 0, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    arg0:SetNumber(10, f19_local1)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f19_local1, arg0:GetRandam_Int(30, 45), true, true, -1)
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

Goal.Act29 = function (arg0, arg1, arg2)
    local f21_local0 = 3
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f21_local0, TARGET_ENE_0, 4.9, TARGET_SELF, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f22_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
        return false
    end
    if arg1:IsInsideObserve(0) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 10, 3003, TARGET_ENE_0, 9999, 0)
        arg1:DeleteObserve(0)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ParryTiming) then
        return Common_Parry(arg1, arg2, 0, 25, 0, 3102)
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        return arg0.Damaged(arg1, arg2)
    end
    if arg1:IsInterupt(INTERUPT_ShootImpact) and arg0.ShootReaction(arg1, arg2) then
        return true
    end
    return false
    
end

Goal.Damaged = function (arg0, arg1, arg2)
    local f23_local0 = arg0:GetHpRate(TARGET_SELF)
    local f23_local1 = arg0:GetDist(TARGET_ENE_0)
    local f23_local2 = arg0:GetSp(TARGET_SELF)
    local f23_local3 = arg0:GetRandam_Int(1, 100)
    local f23_local4 = 0
    if f23_local3 <= 33 then
        arg1:ClearSubGoal()
        local f23_local5 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, StepLife, 5211, TARGET_ENE_0, TurnTime, AI_DIR_TYPE_B, 0)
        f23_local5:TimingSetTimer(3, 6, UPDATE_SUCCESS)
        return true
    elseif f23_local3 <= 67 then

    else

    end
    return false
    
end

Goal.ShootReaction = function (arg0, arg1)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3100, TARGET_ENE_0, 9999, 0)
    return true
    
end

Goal.Kengeki_Activate = function (arg0, arg1, arg2, arg3)
    local f25_local0 = ReturnKengekiSpecialEffect(arg1)
    if f25_local0 == 0 then
        return false
    end
    local f25_local1 = {}
    local f25_local2 = {}
    local f25_local3 = {}
    Common_Clear_Param(f25_local1, f25_local2, f25_local3)
    local f25_local4 = arg1:GetDist(TARGET_ENE_0)
    local f25_local5 = arg1:GetSp(TARGET_SELF)
    if f25_local5 <= 0 then
        f25_local1[50] = 100
    elseif f25_local0 == 200200 then
        if f25_local4 >= 2 then
            f25_local1[50] = 100
        elseif f25_local4 <= 0.2 then
            f25_local1[50] = 100
        else
            f25_local1[50] = 100
        end
    elseif f25_local0 == 200201 then
        if f25_local4 >= 2 then
            f25_local1[50] = 100
        elseif f25_local4 <= 0.2 then
            f25_local1[50] = 100
        else
            f25_local1[50] = 100
        end
    elseif f25_local0 == 200205 then
        if f25_local4 >= 2 then
            f25_local1[50] = 100
        elseif f25_local4 <= 0.2 then
            f25_local1[50] = 100
        else
            f25_local1[50] = 100
        end
    elseif f25_local0 == 200206 then
        if f25_local4 >= 2 then
            f25_local1[50] = 100
        elseif f25_local4 <= 0.2 then
            f25_local1[50] = 100
        else
            f25_local1[2] = 100
        end
    elseif f25_local0 == 200210 then
        if f25_local4 >= 2 then
            f25_local1[50] = 100
        elseif f25_local4 <= 0.2 then
            f25_local1[50] = 100
        else
            f25_local1[50] = 100
        end
    elseif f25_local0 == 200211 then
        if f25_local4 >= 2 then
            f25_local1[50] = 100
        elseif f25_local4 <= 0.2 then
            f25_local1[50] = 100
        else
            f25_local1[50] = 100
        end
    elseif f25_local0 == 200215 then
        if f25_local4 >= 2 then
            f25_local1[50] = 100
        elseif f25_local4 <= 0.2 then
            f25_local1[50] = 100
        else
            f25_local1[5] = 100
        end
    elseif f25_local0 == 200216 then
        if f25_local4 >= 2 then
            f25_local1[50] = 100
        elseif f25_local4 <= 0.2 then
            f25_local1[50] = 100
        else
            f25_local1[6] = 100
        end
    end
    f25_local2[1] = REGIST_FUNC(arg1, arg2, arg0.Kengeki01)
    f25_local2[2] = REGIST_FUNC(arg1, arg2, arg0.Kengeki02)
    f25_local2[3] = REGIST_FUNC(arg1, arg2, arg0.Kengeki03)
    f25_local2[4] = REGIST_FUNC(arg1, arg2, arg0.Kengeki04)
    f25_local2[5] = REGIST_FUNC(arg1, arg2, arg0.Kengeki05)
    f25_local2[6] = REGIST_FUNC(arg1, arg2, arg0.Kengeki06)
    f25_local2[7] = REGIST_FUNC(arg1, arg2, arg0.Kengeki07)
    f25_local2[8] = REGIST_FUNC(arg1, arg2, arg0.Kengeki08)
    f25_local2[50] = REGIST_FUNC(arg1, arg2, arg0.NoAction)
    local f25_local6 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    return Common_Kengeki_Activate(arg1, arg2, f25_local1, f25_local2, f25_local6, f25_local3)
    
end

Goal.Kengeki01 = function (arg0, arg1, arg2)
    
end

Goal.Kengeki02 = function (arg0, arg1, arg2)
    
end

Goal.Kengeki03 = function (arg0, arg1, arg2)
    
end

Goal.Kengeki04 = function (arg0, arg1, arg2)
    
end

Goal.Kengeki05 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3072, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki06 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3072, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki07 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3072, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki08 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3072, TARGET_ENE_0, 9999, 0, 0)
    
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


