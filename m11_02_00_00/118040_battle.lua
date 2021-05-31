RegisterTableGoal(GOAL_Genan_Tate_118040_Battle, "GOAL_Genan_Tate_118040_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Genan_Tate_118040_Battle, true)
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
    arg1:DeleteObserve(0)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3118110)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 109031)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 110125)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3118120)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3118100)
    Set_ConsecutiveGuardCount_Interrupt(arg1)
    if arg0:Kengeki_Activate(arg1, arg2) then
        return 
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 3118100) then
        f2_local0[26] = 100
    elseif Common_ActivateAct(arg1, arg2) then

    elseif f2_local5 ~= POSSIBLE_ATTACK then
        if f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            f2_local0[27] = 100
        elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            f2_local0[27] = 100
        elseif f2_local5 == UNREACH_ATTACK then
            f2_local0[27] = 100
        elseif f2_local5 == REACH_ATTACK_TARGET_HIGH_POSITION then
            f2_local0[9] = 100
            f2_local0[10] = 100
            f2_local0[27] = 100
        elseif f2_local5 == REACH_ATTACK_TARGET_LOW_POSITION then
            f2_local0[9] = 100
            f2_local0[10] = 100
            f2_local0[27] = 100
        else
            f2_local0[27] = 100
        end
    elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        KankyakuAct(arg1, arg2)
    elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        TorimakiAct(arg1, arg2, -1, 0)
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        f2_local0[21] = 100
    elseif arg1:GetNumber(1) >= 7 then
        f2_local0[1] = 10
    elseif arg1:GetNumber(2) >= 3 then
        f2_local0[8] = 10
    elseif f2_local3 >= 5 then
        f2_local0[6] = 100
        f2_local0[7] = 0
        f2_local0[23] = 1
    else
        f2_local0[2] = 100
        f2_local0[5] = 0
        f2_local0[8] = 0
        f2_local0[9] = 100
        f2_local0[10] = 50
        f2_local0[25] = 100
        f2_local0[30] = 100
        f2_local0[31] = 100
        f2_local0[32] = 100
        f2_local0[33] = 100
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
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 9, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3005, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3010, 7, f2_local0[3], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3011, 7, f2_local0[3], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3015, 10, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3008, 10, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3008, 10, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3006, 9, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3020, 7, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3017, 8, f2_local0[10], 1)
    f2_local0[23] = SetCoolTime(arg1, arg2, 405002, 5, f2_local0[23], 1)
    f2_local0[23] = SetCoolTime(arg1, arg2, 405003, 5, f2_local0[23], 1)
    f2_local0[25] = SetCoolTime(arg1, arg2, 405001, 10, f2_local0[25], 1)
    f2_local0[30] = SetCoolTime(arg1, arg2, 3005, 10, f2_local0[30], 1)
    f2_local0[31] = SetCoolTime(arg1, arg2, 3005, 10, f2_local0[31], 1)
    f2_local0[32] = SetCoolTime(arg1, arg2, 3005, 10, f2_local0[32], 1)
    f2_local0[33] = SetCoolTime(arg1, arg2, 3005, 10, f2_local0[33], 1)
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
    f2_local1[32] = REGIST_FUNC(arg1, arg2, arg0.Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, arg0.Act33)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, arg0.Act40)
    local f2_local6 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    local f3_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f3_local2 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 3
    local f3_local6 = 3
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local8 = 5.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local9 = 0
    local f3_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, f3_local7, f3_local9, f3_local10, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, f3_local8, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(1, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    local f4_local0 = 3.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local2 = 3.8 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f4_local3 = 0
    local f4_local4 = 0
    local f4_local5 = 3
    local f4_local6 = 3
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 0
    local f4_local8 = 0
    if arg0:IsExistMeshOnLine(TARGET_ENE_0, AI_DIR_TYPE_ToF, 3) == false then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 1, TARGET_SELF, false, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 9999, f4_local7, f4_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f5_local0 = 0
    local f5_local1 = 0
    local f5_local2 = 3010
    if arg0:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 5) then
        f5_local2 = 3011
    end
    if arg0:IsExistMeshOnLine(TARGET_ENE_0, AI_DIR_TYPE_ToF, 3) == false then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 1, TARGET_SELF, false, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local2, TARGET_ENE_0, 9999, f5_local0, f5_local1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act04 = function (arg0, arg1, arg2)
    local f6_local0 = 0
    local f6_local1 = 0
    if arg0:IsExistMeshOnLine(TARGET_ENE_0, AI_DIR_TYPE_ToF, 3) == false then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 1, TARGET_SELF, false, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3016, TARGET_ENE_0, 9999, f6_local0, f6_local1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act05 = function (arg0, arg1, arg2)
    local f7_local0 = 0
    local f7_local1 = 0
    if arg0:IsExistMeshOnLine(TARGET_ENE_0, AI_DIR_TYPE_ToF, 3) == false then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 1, TARGET_SELF, false, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 9999, f7_local0, f7_local1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act06 = function (arg0, arg1, arg2)
    local f8_local0 = 0
    local f8_local1 = 0
    local f8_local2 = 3
    if arg0:IsExistMeshOnLine(TARGET_ENE_0, AI_DIR_TYPE_ToF, 3) == false then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 1, TARGET_SELF, false, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 9999, f8_local0, f8_local1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act07 = function (arg0, arg1, arg2)
    local f9_local0 = 0
    local f9_local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3008, TARGET_ENE_0, 9999, f9_local0, f9_local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act08 = function (arg0, arg1, arg2)
    local f10_local0 = 0
    local f10_local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3006, TARGET_ENE_0, 9999, f10_local0, f10_local1, 0, 0)
    local f10_local2 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, 9999, 0, 0)
    f10_local2:TimingSetNumber(2, 0, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act09 = function (arg0, arg1, arg2)
    local f11_local0 = 3
    local f11_local1 = 999
    local f11_local2 = 999
    local f11_local3 = 0
    local f11_local4 = 0
    local f11_local5 = 1.5
    local f11_local6 = 3
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 0
    local f11_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, 9999, f11_local7, f11_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 9999, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act10 = function (arg0, arg1, arg2)
    local f12_local0 = 0
    local f12_local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3017, TARGET_ENE_0, 9999, f12_local0, f12_local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 9999, 0, 0)
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
    local f15_local6 = 3
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
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act30 = function (arg0, arg1, arg2)
    local f21_local0 = 0
    local f21_local1 = 0
    local f21_local2 = 3
    if arg0:IsExistMeshOnLine(TARGET_ENE_0, AI_DIR_TYPE_ToF, 3) == false then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 1, TARGET_SELF, false, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, 9999, f21_local0, f21_local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act31 = function (arg0, arg1, arg2)
    local f22_local0 = 0
    local f22_local1 = 0
    local f22_local2 = 3
    if arg0:IsExistMeshOnLine(TARGET_ENE_0, AI_DIR_TYPE_ToF, 3) == false then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 1, TARGET_SELF, false, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, 9999, f22_local0, f22_local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act32 = function (arg0, arg1, arg2)
    local f23_local0 = 0
    local f23_local1 = 0
    local f23_local2 = 3
    if arg0:IsExistMeshOnLine(TARGET_ENE_0, AI_DIR_TYPE_ToF, 3) == false then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 1, TARGET_SELF, false, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, 9999, f23_local0, f23_local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3021, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act33 = function (arg0, arg1, arg2)
    local f24_local0 = 0
    local f24_local1 = 0
    local f24_local2 = 3
    if arg0:IsExistMeshOnLine(TARGET_ENE_0, AI_DIR_TYPE_ToF, 3) == false then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 1, TARGET_SELF, false, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, 9999, f24_local0, f24_local1, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act40 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 20030, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f26_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
    local f26_local1 = arg1:GetDist(TARGET_ENE_0)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_Damaged) and arg0.Damaged(arg1, arg2) then
        return true
    end
    if Interupt_PC_Break(arg1) then
        arg1:Replanning()
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if f26_local0 == 3118100 then
            arg1:Replanning()
            return true
        elseif f26_local0 == 109031 and f26_local1 <= 4 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 1, 3015, TARGET_ENE_0, 9999, 0)
            return true
        elseif f26_local0 == 3118120 then
            arg1:AddObserveArea(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 6)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_TargetIsGuard) then
        arg1:SetNumber(1, arg1:GetNumber(1) + 1)
    end
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) then
        if arg1:IsInsideObserve(0) then
            if arg1:IsInsideTargetEx(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 5) then
                arg1:DeleteObserve(0)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 1, 3010, TARGET_ENE_0, 9999, 0)
                return true
            else
                arg1:DeleteObserve(0)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 1, 3011, TARGET_ENE_0, 9999, 0)
                return true
            end
        elseif arg1:IsInsideObserve(1) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 1, 3017, TARGET_ENE_0, 9999, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 4, 3017, TARGET_ENE_0, 5.5, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3018, TARGET_ENE_0, 9999, 0, 0)
            arg1:DeleteObserve(1)
            return true
        end
    end
    return false
    
end

Goal.Damaged = function (arg0, arg1, arg2)
    arg0:SetNumber(2, arg0:GetNumber(2) + 1)
    
end

Goal.Kengeki_Activate = function (arg0, arg1, arg2, arg3)
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
    f28_local2[1] = REGIST_FUNC(arg1, arg2, arg0.Kengeki01)
    f28_local2[2] = REGIST_FUNC(arg1, arg2, arg0.Kengeki02)
    f28_local2[3] = REGIST_FUNC(arg1, arg2, arg0.Kengeki03)
    f28_local2[4] = REGIST_FUNC(arg1, arg2, arg0.Kengeki04)
    f28_local2[50] = REGIST_FUNC(arg1, arg2, arg0.NoAction)
    local f28_local6 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Kengeki_Activate(arg1, arg2, f28_local1, f28_local2, f28_local6, f28_local3)
    
end

Goal.Kengeki01 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local f29_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3060, TARGET_ENE_0, 9999, 0, 0)
    f29_local0:TimingSetNumber(0, arg0:GetNumber(0) + 1, AI_TIMING_SET__ACTIVATE)
    
end

Goal.Kengeki02 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local f30_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3065, TARGET_ENE_0, 9999, 0, 0)
    f30_local0:TimingSetNumber(0, arg0:GetNumber(0) + 1, AI_TIMING_SET__ACTIVATE)
    
end

Goal.Kengeki03 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local f31_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3061, TARGET_ENE_0, 9999, 0, 0)
    f31_local0:TimingSetNumber(0, 0, AI_TIMING_SET__ACTIVATE)
    
end

Goal.Kengeki04 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local f32_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3066, TARGET_ENE_0, 9999, 0, 0)
    f32_local0:TimingSetNumber(0, 0, AI_TIMING_SET__ACTIVATE)
    
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


