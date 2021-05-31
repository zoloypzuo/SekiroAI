RegisterTableGoal(GOAL_Kenkaku_iai_140020_Battle, "GOAL_Kenkaku_iai_140020_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Kenkaku_iai_140020_Battle, true)
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
    local f2_local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local6 = arg1:GetHpRate(TARGET_SELF)
    local f2_local7 = arg1:GetSp(TARGET_SELF)
    local f2_local8 = arg1:GetDist(TARGET_ENE_0)
    local f2_local9 = arg1:GetSp(TARGET_ENE_0)
    local f2_local10 = arg1:GetRandam_Int(1, 100)
    local f2_local11 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local12 = Check_ReachAttack(arg1, 0)
    local f2_local13 = arg1:GetRandam_Int(3, 5)
    Set_ConsecutiveGuardCount_Interrupt(arg1)
    arg1:SetNumber(5, 0)
    arg1:SetNumber(11, 0)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 200030)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 200031)
    local f2_local14 = 60
    local f2_local15 = 4.6 - arg1:GetMapHitRadius(TARGET_SELF) + 1
    local f2_local16 = 2.5
    if arg1:GetNumber(3) == 0 then
        arg1:SetNumber(3, 1)
        arg1:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, f2_local14, f2_local15)
        arg1:AddObserveArea(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, f2_local16)
    end
    if arg0:Kengeki_Activate(arg1, arg2) then
        return 
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 200030) then
        f2_local0[15] = 100
        if arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
            f2_local0[22] = 100
        end
    elseif Common_ActivateAct(arg1, arg2) then

    elseif f2_local12 ~= POSSIBLE_ATTACK then
        if f2_local11 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            f2_local0[27] = 100
        elseif f2_local11 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            f2_local0[27] = 100
        elseif f2_local12 == UNREACH_ATTACK then
            f2_local0[27] = 100
        elseif f2_local12 == REACH_ATTACK_TARGET_HIGH_POSITION then
            f2_local0[10] = 50
            f2_local0[27] = 100
        elseif f2_local12 == REACH_ATTACK_TARGET_LOW_POSITION then
            f2_local0[10] = 50
            f2_local0[27] = 100
        else
            f2_local0[27] = 100
        end
    elseif f2_local11 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        KankyakuAct(arg1, arg2)
    elseif f2_local11 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        TorimakiAct(arg1, arg2, -1, 0)
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 200030) then
            if f2_local8 < 3 then
                f2_local0[22] = 100
            else
                f2_local0[15] = 100
            end
        else
            f2_local0[21] = 100
            f2_local0[22] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 200030) then
        f2_local0[15] = 1000
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 200031) then
        if f2_local8 >= 8.5 then
            f2_local0[19] = 60
            f2_local0[20] = 100
            if not arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                f2_local0[19] = 0
                f2_local0[20] = 0
                f2_local0[21] = 100
            end
        elseif f2_local8 >= 5.5 then
            f2_local0[10] = 100
            f2_local0[19] = 50
            f2_local0[20] = 30
            f2_local0[23] = 40
            f2_local0[26] = 50
            if arg1:GetNumber(4) >= 1 then
                f2_local0[19] = 500
            end
        elseif f2_local8 > 3.8 then
            f2_local0[10] = 15
            f2_local0[19] = 30
            f2_local0[20] = 10
            f2_local0[22] = 30
            f2_local0[23] = 25
            f2_local0[24] = 15
            f2_local0[25] = 10
            f2_local0[26] = 70
            if arg1:GetNumber(4) >= 1 then
                f2_local0[19] = 10000
            end
        else
            f2_local0[10] = 100
            f2_local0[23] = 1
            f2_local0[24] = 100
            f2_local0[25] = 10
            if arg1:GetNumber(4) >= 1 then
                f2_local0[10] = 400
                f2_local0[24] = 10
            end
        end
        if f2_local8 < 1.5 then
            f2_local0[24] = 500
        elseif arg1:GetNumber(1) >= 1 then
            f2_local0[24] = f2_local0[24] * 0.1
        end
        if arg1:GetNumber(12) == 1 and f2_local8 < 2.5 then
            f2_local0[3] = 1000
            f2_local0[19] = 500
            f2_local0[22] = 0
        end
        if arg1:HasSpecialEffectId(TARGET_ENE_0, COMMON_SP_EFFECT_PC_BREAK) then
            f2_local0[22] = 0
            f2_local0[23] = 0
            f2_local0[24] = 0
            f2_local0[25] = 0
            f2_local0[26] = 1
        end
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 5028) then
        arg1:SetNumber(12, 0)
    elseif f2_local8 < 2.5 then
        f2_local0[3] = 1000
        f2_local0[19] = 0
    end
    if arg1:GetNumber(3) == 1 and arg1:HasSpecialEffectId(TARGET_SELF, 200030) then
        f2_local0[15] = 3000
        arg1:SetNumber(3, 0)
    else
        arg1:SetNumber(3, 0)
    end
    if SpaceCheck(arg1, arg2, 0, 1) == false then
        f2_local0[19] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 2) == false and f2_local8 < 6 then
        f2_local0[22] = 400
        f2_local0[24] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 4) == false and f2_local8 < 6 then
        f2_local0[22] = 200
    end
    if SpaceCheck(arg1, arg2, 90, 1) == false and SpaceCheck(arg1, arg2, -90, 1) == false then
        f2_local0[22] = 0
        f2_local0[23] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 1) == false then
        f2_local0[25] = 0
    end
    if arg1:IsInsideObserve(0) and f2_local8 > 1 then
        f2_local0[10] = f2_local0[10] * 3
        f2_local0[24] = f2_local0[24] * 0.5
        f2_local0[25] = f2_local0[25] * 0.3
    end
    if not arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
        f2_local0[19] = 0
    end
    if arg1:GetNumber(4) >= 4 then
        arg1:SetNumber(4, 0)
        f2_local0[10] = 1
    end
    if f2_local4 > 1.5 then
        f2_local0[10] = 1
        f2_local0[26] = 1
    end
    f2_local0[3] = SetCoolTime(arg1, arg2, 3021, 5, f2_local0[3], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3010, 1, f2_local0[10], 1)
    f2_local0[19] = SetCoolTime(arg1, arg2, 5200, 1.4, f2_local0[19], 1)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, arg0.Act03)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, arg0.Act10)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, arg0.Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, arg0.Act15)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, arg0.Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, arg0.Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, arg0.Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, arg0.Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, arg0.Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, arg0.Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, arg0.Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, arg0.Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, arg0.Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, arg0.Act28)
    local f2_local17 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local17, f2_local2)
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local f3_local3 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local f3_local4 = 0
    local f3_local5 = 0
    local f3_local6 = 5
    local f3_local7 = 3
    local f3_local8 = 3021
    local f3_local9 = 0
    local f3_local10 = 70
    arg0:DeleteObserve(0)
    arg0:DeleteObserve(1)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local8, TARGET_ENE_0, 4, f3_local9, f3_local10, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act10 = function (arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 4.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local2 = 4.6 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f4_local3 = 4.6 - arg0:GetMapHitRadius(TARGET_SELF) + 6
    local f4_local4 = 0
    local f4_local5 = 0
    local f4_local6 = 1.5
    local f4_local7 = 3
    Approach_Act_Flex(arg0, arg1, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7)
    local f4_local8 = 3010
    local f4_local9 = 0
    local f4_local10 = 0
    arg0:SetNumber(11, arg0:GetNumber(11) + 1)
    arg0:SetNumber(4, 0)
    local f4_local11 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local8, TARGET_ENE_0, 9999, f4_local9, f4_local10, 0, 0)
    f4_local11:TimingSetTimer(9, 4, AI_TIMING_SET__ACTIVATE)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act14 = function (arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = 0
    local f5_local2 = 0
    local f5_local3 = 3
    local f5_local4 = 3020
    if f5_local0 <= 2 then
        if SpaceCheck(arg0, arg1, 180, 2) == false then

        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f5_local3, 5201, TARGET_ENE_0, f5_local1, AI_DIR_TYPE_B, 0)
            local f5_local5 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local4, TARGET_ENE_0, 9999, f5_local1, f5_local2, 0, 0)
            f5_local5:TimingSetNumber(11, 0, AI_TIMING_SET__ACTIVATE)
        end
    else
        local f5_local5 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local4, TARGET_ENE_0, 9999, f5_local1, f5_local2, 0, 0)
        f5_local5:TimingSetNumber(11, 0, AI_TIMING_SET__ACTIVATE)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act15 = function (arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = 3031
    local f6_local2 = 3033
    local f6_local3 = 0
    local f6_local4 = 0
    arg0:SetNumber(5, 0)
    arg0:SetNumber(1, 1)
    if SpaceCheck(arg0, arg1, 180, 2) == false then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local1, TARGET_ENE_0, 9999, f6_local3, f6_local4, 0, 0)
    elseif f6_local0 <= 2 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local2, TARGET_ENE_0, 9999, f6_local3, f6_local4, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local1, TARGET_ENE_0, 9999, f6_local3, f6_local4, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act19 = function (arg0, arg1, arg2)
    local f7_local0 = 3
    local f7_local1 = 0
    local f7_local2 = 5200
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f7_local0, f7_local2, TARGET_ENE_0, f7_local1, AI_DIR_TYPE_F, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act20 = function (arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = 3
    local f8_local2 = 3
    local f8_local3 = arg0:GetRandam_Float(1, 3)
    local f8_local4 = 0
    local f8_local5 = 5200
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f8_local2, TARGET_ENE_0, f8_local1, TARGET_SELF, true, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act21 = function (arg0, arg1, arg2)
    local f9_local0 = 3
    local f9_local1 = 45
    arg1:AddSubGoal(GOAL_COMMON_Turn, f9_local0, TARGET_ENE_0, f9_local1, -1, GOAL_RESULT_Success, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act22 = function (arg0, arg1, arg2)
    local f10_local0 = 3
    local f10_local1 = 0
    local f10_local2 = 0
    local f10_local3 = arg0:GetRandam_Int(1, 100)
    local f10_local4 = arg0:GetDist(TARGET_ENE_0)
    if arg0:HasSpecialEffectId(TARGET_SELF, 200030) then
        if SpaceCheck(arg0, arg1, -45, 2) == true then
            if SpaceCheck(arg0, arg1, 45, 2) == true then
                if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3035, TARGET_ENE_0, 999, f10_local1, f10_local2, 0, 0)
                else
                    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3034, TARGET_ENE_0, 999, f10_local1, f10_local2, 0, 0)
                end
            else
                arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3035, TARGET_ENE_0, 999, f10_local1, f10_local2, 0, 0)
            end
        elseif SpaceCheck(arg0, arg1, 45, 2) == true then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3034, TARGET_ENE_0, 999, f10_local1, f10_local2, 0, 0)
        end
    else
        if SpaceCheck(arg0, arg1, -45, 2) == true then
            if SpaceCheck(arg0, arg1, 45, 2) == true then
                if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f10_local0, 5202, TARGET_ENE_0, f10_local1, AI_DIR_TYPE_L, 0)
                else
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f10_local0, 5203, TARGET_ENE_0, f10_local1, AI_DIR_TYPE_R, 0)
                end
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, f10_local0, 5202, TARGET_ENE_0, f10_local1, AI_DIR_TYPE_L, 0)
            end
        elseif SpaceCheck(arg0, arg1, 45, 2) == true then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f10_local0, 5203, TARGET_ENE_0, f10_local1, AI_DIR_TYPE_R, 0)
        else

        end
        if f10_local3 <= 50 and f10_local4 < 4 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 4.5, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, 9999, 0, 0)
        else
            f10_local1 = 0.5
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f10_local0, 5200, TARGET_ENE_0, f10_local1, AI_DIR_TYPE_F, 0)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act23 = function (arg0, arg1, arg2)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = arg0:GetSp(TARGET_SELF)
    local f11_local2 = 20
    local f11_local3 = arg0:GetRandam_Int(1, 100)
    local f11_local4 = -1
    local f11_local5 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if f11_local3 <= 50 then
                if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_R, 180, 999) then
                    f11_local5 = 1
                else
                    f11_local5 = 0
                end
            elseif arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_L, 180, 999) then
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
        f11_local5 = 1
    end
    local f11_local6 = arg0:GetRandam_Float(0.5, 1.5)
    local f11_local7 = arg0:GetRandam_Int(30, 45)
    arg0:SetNumber(10, f11_local5)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f11_local6, TARGET_ENE_0, f11_local5, f11_local7, true, true, f11_local4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act24 = function (arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = 3
    local f12_local2 = 0
    local f12_local3 = 5201
    arg0:SetNumber(1, 1)
    if SpaceCheck(arg0, arg1, 180, 2) == true and SpaceCheck(arg0, arg1, 180, 4) == true then
        if f12_local0 > 4 then

        else
            f12_local3 = 5201
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f12_local1, f12_local3, TARGET_ENE_0, f12_local2, AI_DIR_TYPE_B, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act25 = function (arg0, arg1, arg2)
    local f13_local0 = arg0:GetRandam_Float(0.8, 2)
    local f13_local1 = arg0:GetRandam_Float(2, 4.5)
    local f13_local2 = arg0:GetDist(TARGET_ENE_0)
    local f13_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f13_local0, TARGET_ENE_0, f13_local1, TARGET_ENE_0, true, f13_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act26 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act27 = function (arg0, arg1, arg2)
    local f15_local0 = arg0:GetRandam_Int(1, 100)
    if YousumiAct_SubGoal(arg0, arg1, true, 60, 30) == false then
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    local f15_local1 = 0
    local f15_local2 = SpaceCheck_SidewayMove(arg0, arg1, 1)
    if f15_local2 == 0 then
        f15_local1 = 0
    elseif f15_local2 == 1 then
        f15_local1 = 1
    elseif f15_local2 == 2 then
        if f15_local0 <= 50 then
            f15_local1 = 0
        else
            f15_local1 = 1
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    arg0:SetNumber(10, f15_local1)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f15_local1, arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act28 = function (arg0, arg1, arg2)
    local f16_local0 = arg0:GetDist(TARGET_ENE_0)
    local f16_local1 = 1.5
    local f16_local2 = 1.5
    local f16_local3 = arg0:GetRandam_Int(30, 45)
    local f16_local4 = -1
    local f16_local5 = arg0:GetRandam_Int(0, 1)
    if f16_local0 <= 3 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f16_local1, TARGET_ENE_0, f16_local5, f16_local3, true, true, f16_local4)
    elseif f16_local0 <= 8 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f16_local2, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f16_local2, TARGET_ENE_0, 5, TARGET_SELF, false, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f17_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
    local f17_local1 = arg1:GetRandam_Int(1, 100)
    local f17_local2 = arg1:GetDist(TARGET_ENE_0)
    local f17_local3 = arg1:GetSpRate(TARGET_SELF)
    local f17_local4 = arg1:GetNumber(11)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_Shoot) then
        return arg0.ShootReaction(arg1, arg2)
    end
    if arg1:IsInterupt(INTERUPT_ParryTiming) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 200030) then
            return Common_Parry(arg1, arg2, 100, 0, 0, 3103)
        else
            return Common_Parry(arg1, arg2, 100, 0)
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        return arg0.Damaged(arg1, arg2)
    end
    if Interupt_PC_Break(arg1) then
        arg1:Replanning()
        return true
    end
    if Interupt_Use_Item(arg1, 4, 10) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 200030) then
            arg1:Replanning()
            return true
        elseif f17_local2 <= 5 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3010, TARGET_ENE_0, 9999, 0, 0, 0, 0)
            return true
        elseif f17_local2 <= 10 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_SpinStep, 1, 5200, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 0)
            return true
        else
            arg1:Replanning()
            return true
        end
    end
    local f17_local5 = 60
    local f17_local6 = 4.6 - arg1:GetMapHitRadius(TARGET_SELF) + 1
    local f17_local7 = 2.5
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5027 and arg1:HasSpecialEffectId(TARGET_SELF, 200030) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3031, TARGET_ENE_0, 9999, 0)
            return true
        end
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 200030) and arg1:GetHpRate(TARGET_ENE_0) == 0 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 5, 3032, TARGET_ENE_0, 9999, 0, 0, 0, 0)
                return true
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 200031) and arg1:HasSpecialEffectId(TARGET_ENE_0, 110125) then
                arg1:Replanning()
                return true
            end
        end
        if arg1:GetSpecialEffectActivateInterruptType(0) == 200031 then
            arg1:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, f17_local5, f17_local6)
            arg1:AddObserveArea(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 200, f17_local7)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 200030 then
            arg1:DeleteObserve(0)
            arg1:DeleteObserve(1)
            return true
        end
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5029 and arg1:GetNumber(5) == 0 then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and f17_local2 <= 2 and not arg1:HasSpecialEffectId(TARGET_ENE_0, 110125) then
                arg2:ClearSubGoal()
                if f17_local1 <= 70 then
                    local f17_local8 = arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3033, TARGET_ENE_0, 9999, 0)
                    f17_local8:TimingSetTimer(9, 0.1, AI_TIMING_SET__ACTIVATE)
                elseif f17_local1 <= 85 then
                    local f17_local8 = arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3035, TARGET_ENE_0, 9999, 0)
                    f17_local8:TimingSetTimer(9, 0.1, AI_TIMING_SET__ACTIVATE)
                else
                    local f17_local8 = arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3034, TARGET_ENE_0, 9999, 0)
                    f17_local8:TimingSetTimer(9, 0.1, AI_TIMING_SET__ACTIVATE)
                end
                arg1:AddObserveArea(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, f17_local5, f17_local6)
                return true
            elseif SpaceCheck(arg1, arg2, -90, 1) and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) and f17_local2 <= 4 then
                arg1:SetNumber(12, 1)
                arg2:ClearSubGoal()
                local f17_local8 = arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3035, TARGET_ENE_0, 9999, 0)
                f17_local8:TimingSetTimer(9, 0.1, AI_TIMING_SET__ACTIVATE)
                arg1:AddObserveArea(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, f17_local5, f17_local6)
                return true
            elseif SpaceCheck(arg1, arg2, 90, 1) and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90) and f17_local2 <= 4 then
                arg1:SetNumber(12, 1)
                arg2:ClearSubGoal()
                local f17_local8 = arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3034, TARGET_ENE_0, 9999, 0)
                f17_local8:TimingSetTimer(9, 0.1, AI_TIMING_SET__ACTIVATE)
                arg1:AddObserveArea(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, f17_local5, f17_local6)
                return true
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and f17_local2 <= 2 and not arg1:HasSpecialEffectId(TARGET_ENE_0, 110125) then
                if f17_local4 >= 2 or f17_local3 < 0.6 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 1, 3033, TARGET_ENE_0, 9999, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 200031) and f17_local4 == 0 then
                    arg2:ClearSubGoal()
                    arg1:SetNumber(11, arg1:GetNumber(11) + 1)
                    arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 1, 3010, TARGET_ENE_0, 9999, 0)
                    return true
                end
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_InactivateSpecialEffect) and arg1:GetSpecialEffectInactivateInterruptType(0) == 5026 then
        if f17_local2 < 2 and arg1:GetNumber(1) == 0 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 1, 3033, TARGET_ENE_0, 9999, 0)
            return true
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3012, TARGET_ENE_0, 9999, 0)
            return true
        end
    end
    if arg1:GetNumber(5) == 1 then
        return false
    end
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) then
        if arg1:IsInsideObserve(1) and arg1:HasSpecialEffectId(TARGET_SELF, 200031) and f17_local4 == 0 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 200031) and (not not arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 90) or arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 90)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 5201, TARGET_ENE_0, 9999, 0, 0, 0, 0)
                return true
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 5028) then
                arg1:SetNumber(12, 1)
                arg1:Replanning()
                return true
            else
                arg1:SetNumber(11, arg1:GetNumber(11) + 1)
                arg2:ClearSubGoal()
                local f17_local8 = arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3010, TARGET_ENE_0, 9999, 0, 0, 0, 0)
                f17_local8:TimingSetTimer(9, 4, AI_TIMING_SET__ACTIVATE)
                return true
            end
        elseif arg1:IsInsideObserve(0) and f17_local4 == 0 and arg1:HasSpecialEffectId(TARGET_SELF, 200031) and arg1:GetHpRate(TARGET_ENE_0) > 0 and f17_local4 == 0 then
            if arg1:GetNumber(12) == 1 then

            elseif f17_local4 == 0 and arg1:IsFinishTimer(9) == true and f17_local1 <= 80 and not arg1:HasSpecialEffectId(TARGET_ENE_0, 110125) then
                arg2:ClearSubGoal()
                arg1:SetNumber(11, arg1:GetNumber(11) + 1)
                local f17_local8 = arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 1.5, 3010, TARGET_ENE_0, 9999, 0, 0, 0, 0)
                f17_local8:TimingSetTimer(9, 4, AI_TIMING_SET__ACTIVATE)
                return true
            elseif arg1:IsFinishTimer(9) == true and f17_local1 > 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 5201, TARGET_ENE_0, 9999, 0, 0, 0, 0)
                return true
            end
        end
    end
    return false
    
end

Goal.Parry = function (arg0, arg1, arg2, arg3)
    local f18_local0 = arg0:GetDist(TARGET_ENE_0)
    local f18_local1 = GetDist_Parry(arg0)
    local f18_local2 = arg0:GetRandam_Int(1, 100)
    local f18_local3 = arg0:GetRandam_Int(1, 100)
    local f18_local4 = arg0:GetRandam_Int(1, 100)
    local f18_local5 = arg0:HasSpecialEffectId(TARGET_ENE_0, 109970)
    local f18_local6 = arg0:HasSpecialEffectId(TARGET_ENE_0, COMMON_SP_EFFECT_PC_ATTACK_RUSH)
    local f18_local7 = -1
    local f18_local8 = 3.7
    if arg0:HasSpecialEffectId(TARGET_SELF, 221000) then
        f18_local7 = 0
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 221001) then
        f18_local7 = 1
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 221002) then
        f18_local7 = 2
    end
    if arg0:IsFinishTimer(AI_TIMER_PARRY_INTERVAL) == false then
        return false
    end
    if f18_local7 == -1 then
        return false
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 220062) then
        return false
    end
    if not not arg0:HasSpecialEffectId(TARGET_ENE_0, 110450) or not not arg0:HasSpecialEffectId(TARGET_ENE_0, 110501) or arg0:HasSpecialEffectId(TARGET_ENE_0, 110500) then
        return false
    end
    arg0:SetTimer(AI_TIMER_PARRY_INTERVAL, 0.1)
    if arg2 == nil then
        arg2 = 50
    end
    if arg3 == nil then
        arg3 = 0
    end
    if nil == stepType then
        stepType = 0
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 200030) then
        if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 90, f18_local1) then
            if f18_local6 then
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3033, TARGET_ENE_0, 9999, 0)
                return true
            elseif f18_local5 then
                if arg0:IsTargetGuard(TARGET_SELF) and ReturnKengekiSpecialEffect(arg0) == false then
                    arg1:ClearSubGoal()
                    arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3101, TARGET_ENE_0, 9999, 0)
                    return true
                else
                    if f18_local7 == 2 then
                        return false
                    elseif f18_local7 == 1 then
                        if f18_local2 <= 50 then
                            arg1:ClearSubGoal()
                            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3101, TARGET_ENE_0, 9999, 0)
                            return true
                        end
                    elseif f18_local7 == 0 and f18_local2 <= 100 then
                        if f18_local0 >= 3 then
                            arg1:ClearSubGoal()
                            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3033, TARGET_ENE_0, 9999, 0)
                            return true
                        else
                            arg1:ClearSubGoal()
                            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3101, TARGET_ENE_0, 9999, 0)
                            return true
                        end
                    end
                    return false
                end
            else
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3033, TARGET_ENE_0, 9999, 0)
                return true
            end
        elseif arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 90, f18_local1 + 1) then
            if -1 ~= stepType and f18_local4 <= arg3 then
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3033, TARGET_ENE_0, 9999, 0)
                return true
            else
                return false
            end
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 200031) then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 90, f18_local1) then
                if f18_local6 then
                    arg1:ClearSubGoal()
                    arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3100, TARGET_ENE_0, 9999, 0)
                    return true
                elseif f18_local5 then
                    if arg0:IsTargetGuard(TARGET_SELF) and ReturnKengekiSpecialEffect(arg0) == false then
                        arg1:ClearSubGoal()
                        arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 5201, TARGET_ENE_0, 9999, 0)
                        arg0:SetNumber(4, 1)
                        return true
                    else
                        if f18_local7 == 2 then
                            return false
                        elseif f18_local7 == 1 then
                            if f18_local2 <= 50 then
                                arg1:ClearSubGoal()
                                arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3101, TARGET_ENE_0, 9999, 0)
                                return true
                            end
                        elseif f18_local7 == 0 and f18_local2 <= 100 then
                            arg0:DeleteObserve(0)
                            arg0:DeleteObserve(1)
                            arg1:ClearSubGoal()
                            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.4, 5201, TARGET_ENE_0, 9999, 0)
                            return true
                        end
                        return false
                    end
                elseif arg0:HasSpecialEffectId(TARGET_ENE_0, 109980) and -1 ~= stepType and f18_local7 == 0 then
                    arg1:ClearSubGoal()
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1, 5201, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
                    return true
                elseif f18_local3 <= Get_ConsecutiveGuardCount(arg0) * arg2 then
                    arg0:DeleteObserve(0)
                    arg0:DeleteObserve(1)
                    arg1:ClearSubGoal()
                    arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3101, TARGET_ENE_0, 9999, 0)
                    return true
                else
                    arg0:DeleteObserve(0)
                    arg0:DeleteObserve(1)
                    arg1:ClearSubGoal()
                    arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3100, TARGET_ENE_0, 9999, 0)
                    return true
                end
            elseif arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 90, f18_local1 + 1) then
                if -1 ~= stepType and f18_local4 <= arg3 then
                    arg1:ClearSubGoal()
                    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 1, 5201, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
                    return true
                else
                    return false
                end
            else
                return false
            end
        end
    end
    return false
    
end

Goal.Damaged = function (arg0, arg1, arg2)
    local f19_local0 = arg0:GetHpRate(TARGET_SELF)
    local f19_local1 = arg0:GetDist(TARGET_ENE_0)
    local f19_local2 = arg0:GetSp(TARGET_SELF)
    local f19_local3 = arg0:GetRandam_Int(1, 100)
    local f19_local4 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 200030) then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3031, TARGET_ENE_0, 9999, 0)
        return true
    end
    return false
    
end

Goal.ShootReaction = function (arg0, arg1)
    local f20_local0 = arg0:GetDist(TARGET_ENE_0)
    local f20_local1 = f20_local0 * 0.01
    if arg0:HasSpecialEffectId(TARGET_SELF, 200030) then
        if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 20, 999) then
            if f20_local0 <= 15 then
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3100, TARGET_ENE_0, 9999, 0)
                return true
            else
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_Wait, f20_local1, TARGET_SELF, 0, 0, 0)
                arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3100, TARGET_ENE_0, 9999, 0)
                return true
            end
        end
    elseif f20_local0 <= 20 then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3100, TARGET_ENE_0, 9999, 0)
        return true
    else
        arg1:ClearSubGoal()
        if SpaceCheck(arg0, arg1, -45, 2) == true then
            if SpaceCheck(arg0, arg1, 45, 2) == true then
                if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                    arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 5202, TARGET_ENE_0, 9999, 0)
                else
                    arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 5203, TARGET_ENE_0, 9999, 0)
                end
            else
                arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 5202, TARGET_ENE_0, 9999, 0)
            end
        elseif SpaceCheck(arg0, arg1, 45, 2) == true then
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 5203, TARGET_ENE_0, 9999, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_Wait, f20_local1, TARGET_SELF, 0, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3100, TARGET_ENE_0, 9999, 0)
        end
        return true
    end
    return false
    
end

Goal.Kengeki_Activate = function (arg0, arg1, arg2, arg3)
    local f21_local0 = ReturnKengekiSpecialEffect(arg1)
    if f21_local0 == 0 then
        return false
    end
    local f21_local1 = {}
    local f21_local2 = {}
    local f21_local3 = {}
    Common_Clear_Param(f21_local1, f21_local2, f21_local3)
    local f21_local4 = arg1:GetDist(TARGET_ENE_0)
    local f21_local5 = arg1:GetSp(TARGET_SELF)
    if f21_local5 <= 0 then
        f21_local1[50] = 100
    elseif f21_local0 == 200200 then
        if f21_local4 >= 2.8 then
            f21_local1[8] = 100
            f21_local1[50] = 100
        elseif f21_local4 <= 0.2 then
            f21_local1[50] = 100
        else
            f21_local1[8] = 100
            f21_local1[50] = 100
        end
    elseif f21_local0 == 200201 then
        if f21_local4 >= 2.8 then
            f21_local1[9] = 100
            f21_local1[50] = 1
        else
            f21_local1[9] = 100
            f21_local1[50] = 1
        end
    elseif f21_local0 == 200205 then
        if f21_local4 >= 2.8 then
            f21_local1[1] = 100
            f21_local1[50] = 1
        elseif f21_local4 <= 0.2 then
            f21_local1[2] = 20
            f21_local1[50] = 80
        else
            f21_local1[1] = 100
            f21_local1[2] = 100
            f21_local1[50] = 1
        end
    elseif f21_local0 == 200206 then
        if f21_local4 >= 2.8 then
            f21_local1[5] = 100
            f21_local1[50] = 1
        elseif f21_local4 <= 0.2 then
            f21_local1[6] = 50
            f21_local1[24] = 20
            f21_local1[50] = 30
        else
            f21_local1[5] = 100
            f21_local1[6] = 50
            f21_local1[50] = 1
        end
    elseif f21_local0 == 200215 then
        if f21_local4 >= 2.8 then
            f21_local1[10] = 40
            f21_local1[11] = 20
            f21_local1[50] = 40
        elseif f21_local4 <= 0.2 then
            f21_local1[10] = 100
            f21_local1[50] = 1
        else
            f21_local1[10] = 100
            f21_local1[50] = 1
        end
    elseif f21_local0 == 200216 then
        if f21_local4 >= 2.8 then
            f21_local1[50] = 100
        elseif f21_local4 <= 0.2 then
            f21_local1[13] = 100
            f21_local1[50] = 1
        else
            f21_local1[5] = 100
            f21_local1[12] = 100
            f21_local1[50] = 1
        end
    end
    if arg1:IsFinishTimer(6) == false or arg1:GetNumber(5) <= 6 then
        f21_local1[6] = 0
        f21_local1[13] = 0
    end
    if arg1:IsFinishTimer(7) == false then
        f21_local1[12] = 0
    end
    f21_local1[1] = 0
    f21_local1[2] = 0
    f21_local1[3] = 0
    f21_local1[4] = 0
    f21_local1[5] = 0
    f21_local1[6] = 0
    f21_local1[8] = 0
    f21_local1[9] = 0
    f21_local1[10] = 0
    f21_local1[11] = 0
    f21_local1[12] = 0
    f21_local1[13] = 0
    f21_local1[14] = 0
    f21_local1[15] = 0
    if f21_local0 == 200228 then
        if f21_local4 <= 2.8 then
            f21_local1[14] = 100
            f21_local1[15] = 0
        end
    elseif f21_local0 == 200210 or f21_local0 == 200211 then
        if f21_local4 <= 2.8 then
            f21_local1[14] = 100
            f21_local1[15] = 100
            f21_local1[17] = 20
        end
    elseif f21_local0 == 200215 or f21_local0 == 200216 then
        if f21_local4 <= 2.8 then
            f21_local1[14] = 100
            f21_local1[15] = 0
        end
    elseif (f21_local0 == 200200 or f21_local0 == 200201) and f21_local4 <= 2.8 then
        f21_local1[14] = 0
        f21_local1[15] = 50
        f21_local1[50] = 50
        f21_local1[12] = 100
        f21_local1[14] = 100
        f21_local1[17] = 100
    end
    if SpaceCheck(arg1, arg2, 90, 2) == false and SpaceCheck(arg1, arg2, -90, 2) == false then
        f21_local1[17] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 2) == false then
        f21_local1[12] = 0
        f21_local1[14] = f21_local1[14] * 5
    end
    f21_local2[1] = REGIST_FUNC(arg1, arg2, arg0.Kengeki01)
    f21_local2[2] = REGIST_FUNC(arg1, arg2, arg0.Kengeki02)
    f21_local2[5] = REGIST_FUNC(arg1, arg2, arg0.Kengeki05)
    f21_local2[6] = REGIST_FUNC(arg1, arg2, arg0.Kengeki06)
    f21_local2[8] = REGIST_FUNC(arg1, arg2, arg0.Kengeki08)
    f21_local2[9] = REGIST_FUNC(arg1, arg2, arg0.Kengeki09)
    f21_local2[10] = REGIST_FUNC(arg1, arg2, arg0.Kengeki10)
    f21_local2[11] = REGIST_FUNC(arg1, arg2, arg0.Kengeki11)
    f21_local2[12] = REGIST_FUNC(arg1, arg2, arg0.Kengeki12)
    f21_local2[13] = REGIST_FUNC(arg1, arg2, arg0.Kengeki13)
    f21_local2[14] = REGIST_FUNC(arg1, arg2, arg0.Kengeki14)
    f21_local2[15] = REGIST_FUNC(arg1, arg2, arg0.Kengeki15)
    f21_local2[16] = REGIST_FUNC(arg1, arg2, arg0.Kengeki16)
    f21_local2[17] = REGIST_FUNC(arg1, arg2, arg0.Kengeki17)
    f21_local2[24] = REGIST_FUNC(arg1, arg2, arg0.Act24)
    f21_local2[50] = REGIST_FUNC(arg1, arg2, arg0.NoAction)
    local f21_local6 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    return Common_Kengeki_Activate(arg1, arg2, f21_local1, f21_local2, f21_local6, f21_local3)
    
end

Goal.Kengeki14 = function (arg0, arg1, arg2)
    local f22_local0 = arg0:GetDist(TARGET_ENE_0)
    local f22_local1 = 3066
    local f22_local2 = arg0:GetRandam_Int(1, 100)
    arg1:ClearSubGoal()
    if arg0:HasSpecialEffectId(TARGET_SELF, 200031) then

    elseif f22_local2 <= 50 then
        f22_local1 = 3083
        if arg0:HasSpecialEffectId(TARGET_SELF, 200210) then
            f22_local1 = 3087
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, f22_local1, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki15 = function (arg0, arg1, arg2)
    local f23_local0 = arg0:GetDist(TARGET_ENE_0)
    local f23_local1 = 3031
    local f23_local2 = 3066
    local f23_local3 = 0
    local f23_local4 = 0
    arg1:ClearSubGoal()
    arg0:SetNumber(5, 0)
    arg0:SetNumber(1, 1)
    if SpaceCheck(arg0, arg1, 180, 2) == false then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f23_local1, TARGET_ENE_0, 9999, f23_local3, f23_local4, 0, 0)
    elseif f23_local0 <= 2.4 then
        arg0:SetNumber(4, arg0:GetNumber(4) + 1)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 15, f23_local2, TARGET_ENE_0, 9999, f23_local3, f23_local4, 0, 0)
    else
        arg0:SetNumber(4, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f23_local1, TARGET_ENE_0, 9999, f23_local3, f23_local4, 0, 0)
    end
    
end

Goal.Kengeki16 = function (arg0, arg1, arg2)
    local f24_local0 = 3057
    local f24_local1 = 3017
    local f24_local2 = 0
    local f24_local3 = 0
    arg1:ClearSubGoal()
    if arg0:GetNumber(5) >= 15 or arg0:GetStringIndexedNumber("spFlag") >= 3 then
        arg0:SetNumber(5, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f24_local0, TARGET_ENE_0, 9999, f24_local2, f24_local3, 0, 0)
        local f24_local4 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f24_local1, TARGET_ENE_0, 9999, 0, 0)
        f24_local4:TimingSetTimer(6, 8, AI_TIMING_SET__ACTIVATE)
    else
        arg0:SetTimer(6, 8)
        local f24_local4 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3077, TARGET_ENE_0, 9999, 0, 0)
        f24_local4:TimingSetNumber(5, arg0:GetNumber(5) + 2, AI_TIMING_SET__ACTIVATE)
    end
    
end

Goal.Kengeki17 = function (arg0, arg1, arg2)
    local f25_local0 = arg0:GetDist(TARGET_ENE_0)
    local f25_local1 = 3034
    local f25_local2 = 3035
    local f25_local3 = arg0:GetRandam_Int(1, 100)
    local f25_local4 = 0
    local f25_local5 = 0
    arg1:ClearSubGoal()
    arg0:SetNumber(5, 0)
    if SpaceCheck(arg0, arg1, -90, 2) and SpaceCheck(arg0, arg1, 90, 2) then
        if f25_local3 <= 50 then
            f25_local1 = 3035
        end
    elseif SpaceCheck(arg0, arg1, -90, 2) == true then
        f25_local1 = 3035
    else

    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f25_local1, TARGET_ENE_0, 9999, f25_local4, f25_local5, 0, 0)
    
end

Goal.Kengeki01 = function (arg0, arg1, arg2)
    local f26_local0 = 3050
    local f26_local1 = 3013
    local f26_local2 = 3014
    local f26_local3 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f26_local4 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f26_local5 = 0
    local f26_local6 = 0
    local f26_local7 = arg0:GetRandam_Int(1, 100)
    arg1:ClearSubGoal()
    if f26_local7 <= 30 then
        local f26_local8 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f26_local0, TARGET_ENE_0, f26_local3, f26_local5, f26_local6, 0, 0)
        f26_local8:TimingSetNumber(5, arg0:GetNumber(5) + 1, AI_TIMING_SET__ACTIVATE)
        f26_local8 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f26_local1, TARGET_ENE_0, f26_local4, 0)
        f26_local8:TimingSetNumber(5, arg0:GetNumber(5) + 2, AI_TIMING_SET__ACTIVATE)
        f26_local8 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f26_local2, TARGET_ENE_0, 9999, 0, 0)
        f26_local8:TimingSetNumber(5, arg0:GetNumber(5) + 3, AI_TIMING_SET__ACTIVATE)
    elseif f26_local7 <= 70 then
        local f26_local8 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f26_local0, TARGET_ENE_0, 9999, f26_local5, f26_local6, 0, 0)
        f26_local8:TimingSetNumber(5, arg0:GetNumber(5) + 1, AI_TIMING_SET__ACTIVATE)
        f26_local8 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f26_local1, TARGET_ENE_0, 9999, 0, 0)
        f26_local8:TimingSetNumber(5, arg0:GetNumber(5) + 2, AI_TIMING_SET__ACTIVATE)
    else
        local f26_local8 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f26_local0, TARGET_ENE_0, 9999, f26_local5, f26_local6, 0, 0)
        f26_local8:TimingSetNumber(5, arg0:GetNumber(5) + 1, AI_TIMING_SET__ACTIVATE)
    end
    
end

Goal.Kengeki02 = function (arg0, arg1, arg2)
    local f27_local0 = 3051
    local f27_local1 = 3016
    local f27_local2 = 3017
    local f27_local3 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f27_local4 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f27_local5 = 0
    local f27_local6 = 0
    local f27_local7 = arg0:GetRandam_Int(1, 100)
    arg1:ClearSubGoal()
    if arg0:GetNumber(5) >= 15 or arg0:GetStringIndexedNumber("spFlag") >= 3 then
        arg0:SetNumber(5, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f27_local0, TARGET_ENE_0, f27_local3, f27_local5, f27_local6, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f27_local1, TARGET_ENE_0, f27_local4, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f27_local2, TARGET_ENE_0, 9999, 0, 0)
    elseif arg0:IsFinishTimer(6) == true then
        local f27_local8 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f27_local0, TARGET_ENE_0, f27_local3, f27_local5, f27_local6, 0, 0)
        f27_local8:TimingSetNumber(5, arg0:GetNumber(5) + 1, AI_TIMING_SET__ACTIVATE)
    else
        local f27_local8 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f27_local0, TARGET_ENE_0, f27_local3, f27_local5, f27_local6, 0, 0)
        f27_local8:TimingSetNumber(5, arg0:GetNumber(5) + 1, AI_TIMING_SET__ACTIVATE)
        f27_local8 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f27_local1, TARGET_ENE_0, 9999, 0, 0)
        f27_local8 = f27_local8:TimingSetNumber(5, arg0:GetNumber(5) + 2, AI_TIMING_SET__ACTIVATE)
        f27_local8:TimingSetTimer(6, 8, AI_TIMING_SET__ACTIVATE)
    end
    
end

Goal.Kengeki05 = function (arg0, arg1, arg2)
    local f28_local0 = 3056
    local f28_local1 = 3012
    local f28_local2 = 3013
    local f28_local3 = 3014
    local f28_local4 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f28_local5 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f28_local6 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f28_local7 = 0
    local f28_local8 = 0
    local f28_local9 = arg0:GetRandam_Int(1, 100)
    arg1:ClearSubGoal()
    if f28_local9 <= 30 or arg0:GetNumber(7) >= 3 then
        arg0:SetNumber(7, 0)
        local f28_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f28_local0, TARGET_ENE_0, f28_local4, f28_local7, f28_local8, 0, 0)
        f28_local10:TimingSetNumber(5, arg0:GetNumber(5) + 1, AI_TIMING_SET__ACTIVATE)
        f28_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f28_local1, TARGET_ENE_0, f28_local5, 0)
        f28_local10:TimingSetNumber(5, arg0:GetNumber(5) + 2, AI_TIMING_SET__ACTIVATE)
        f28_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f28_local2, TARGET_ENE_0, 9999, 0)
        f28_local10:TimingSetNumber(5, arg0:GetNumber(5) + 3, AI_TIMING_SET__ACTIVATE)
        f28_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f28_local3, TARGET_ENE_0, 9999, 0, 0)
        f28_local10:TimingSetNumber(5, arg0:GetNumber(5) + 4, AI_TIMING_SET__ACTIVATE)
    elseif f28_local9 <= 60 then
        arg0:SetNumber(7, arg0:GetNumber(7) + 1)
        local f28_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f28_local0, TARGET_ENE_0, f28_local4, f28_local7, f28_local8, 0, 0)
        f28_local10:TimingSetNumber(5, arg0:GetNumber(5) + 1, AI_TIMING_SET__ACTIVATE)
        f28_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f28_local1, TARGET_ENE_0, f28_local5, 0)
        f28_local10:TimingSetNumber(5, arg0:GetNumber(5) + 2, AI_TIMING_SET__ACTIVATE)
        f28_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f28_local2, TARGET_ENE_0, 9999, 0, 0)
        f28_local10:TimingSetNumber(5, arg0:GetNumber(5) + 3, AI_TIMING_SET__ACTIVATE)
    elseif f28_local9 <= 90 then
        arg0:SetNumber(7, arg0:GetNumber(7) + 1)
        local f28_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f28_local0, TARGET_ENE_0, f28_local4, f28_local7, f28_local8, 0, 0)
        f28_local10:TimingSetNumber(5, arg0:GetNumber(5) + 1, AI_TIMING_SET__ACTIVATE)
        f28_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f28_local1, TARGET_ENE_0, 9999, 0, 0)
        f28_local10:TimingSetNumber(5, arg0:GetNumber(5) + 2, AI_TIMING_SET__ACTIVATE)
    elseif f28_local9 <= 100 then
        arg0:SetNumber(7, arg0:GetNumber(7) + 1)
        local f28_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f28_local0, TARGET_ENE_0, f28_local4, f28_local7, f28_local8, 0, 0)
        f28_local10:TimingSetNumber(5, arg0:GetNumber(5) + 1, AI_TIMING_SET__ACTIVATE)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Kengeki06 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local f29_local0 = 3057
    local f29_local1 = 3017
    local f29_local2 = 0
    local f29_local3 = 0
    if arg0:GetNumber(5) >= 15 or arg0:GetStringIndexedNumber("spFlag") >= 3 then
        arg0:SetNumber(5, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f29_local0, TARGET_ENE_0, 9999, f29_local2, f29_local3, 0, 0)
        local f29_local4 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f29_local1, TARGET_ENE_0, 9999, 0, 0)
        f29_local4:TimingSetTimer(6, 8, AI_TIMING_SET__ACTIVATE)
    else
        arg0:SetTimer(6, 8)
        local f29_local4 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3077, TARGET_ENE_0, 9999, 0, 0)
        f29_local4:TimingSetNumber(5, arg0:GetNumber(5) + 2, AI_TIMING_SET__ACTIVATE)
    end
    
end

Goal.Kengeki08 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg0:SetNumber(MENFLAG, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3060, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki09 = function (arg0, arg1, arg2)
    local f31_local0 = 3065
    local f31_local1 = 3012
    local f31_local2 = 3013
    local f31_local3 = 3014
    local f31_local4 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f31_local5 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f31_local6 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f31_local7 = 0
    local f31_local8 = 0
    local f31_local9 = arg0:GetRandam_Int(1, 100)
    arg1:ClearSubGoal()
    if f31_local9 <= 10 then
        local f31_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f31_local0, TARGET_ENE_0, f31_local4, f31_local7, f31_local8, 0, 0)
        f31_local10:TimingSetNumber(5, arg0:GetNumber(5) + 1, AI_TIMING_SET__ACTIVATE)
        f31_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f31_local1, TARGET_ENE_0, f31_local5, 0)
        f31_local10:TimingSetNumber(5, arg0:GetNumber(5) + 2, AI_TIMING_SET__ACTIVATE)
        f31_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f31_local2, TARGET_ENE_0, 9999, 0)
        f31_local10:TimingSetNumber(5, arg0:GetNumber(5) + 3, AI_TIMING_SET__ACTIVATE)
        f31_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f31_local3, TARGET_ENE_0, 9999, 0, 0)
        f31_local10:TimingSetNumber(5, arg0:GetNumber(5) + 4, AI_TIMING_SET__ACTIVATE)
    elseif f31_local9 <= 30 then
        local f31_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f31_local0, TARGET_ENE_0, f31_local4, f31_local7, f31_local8, 0, 0)
        f31_local10:TimingSetNumber(5, arg0:GetNumber(5) + 1, AI_TIMING_SET__ACTIVATE)
        f31_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f31_local1, TARGET_ENE_0, f31_local5, 0)
        f31_local10:TimingSetNumber(5, arg0:GetNumber(5) + 2, AI_TIMING_SET__ACTIVATE)
        f31_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f31_local2, TARGET_ENE_0, 9999, 0, 0)
        f31_local10:TimingSetNumber(5, arg0:GetNumber(5) + 3, AI_TIMING_SET__ACTIVATE)
    elseif f31_local9 <= 65 then
        local f31_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f31_local0, TARGET_ENE_0, f31_local4, f31_local7, f31_local8, 0, 0)
        f31_local10:TimingSetNumber(5, arg0:GetNumber(5) + 1, AI_TIMING_SET__ACTIVATE)
        f31_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f31_local1, TARGET_ENE_0, 9999, 0, 0)
        f31_local10:TimingSetNumber(5, arg0:GetNumber(5) + 2, AI_TIMING_SET__ACTIVATE)
    else
        local f31_local10 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f31_local0, TARGET_ENE_0, f31_local4, f31_local7, f31_local8, 0, 0)
        f31_local10:TimingSetNumber(5, arg0:GetNumber(5) + 1, AI_TIMING_SET__ACTIVATE)
    end
    
end

Goal.Kengeki13 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local f32_local0 = 3077
    local f32_local1 = 3017
    local f32_local2 = 0
    local f32_local3 = 0
    if arg0:GetNumber(5) >= 15 or arg0:GetStringIndexedNumber("spFlag") >= 3 then
        arg0:SetNumber(5, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f32_local0, TARGET_ENE_0, 9999, f32_local2, f32_local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f32_local1, TARGET_ENE_0, 9999, 0, 0)
    else
        arg0:SetTimer(6, 8)
        local f32_local4 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3077, TARGET_ENE_0, 9999, 0, 0)
        f32_local4:TimingSetNumber(5, arg0:GetNumber(5) + 2, AI_TIMING_SET__ACTIVATE)
    end
    
end

Goal.Kengeki10 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg0:SetNumber(5, arg0:GetNumber(5) + 1)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3071, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki11 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg0:SetNumber(5, arg0:GetNumber(5) + 3)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3073, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki12 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg0:SetNumber(5, arg0:GetNumber(5) + 1)
    local f35_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3076, TARGET_ENE_0, 9999, 0, 0)
    f35_local0:TimingSetTimer(7, 20, AI_TIMING_SET__ACTIVATE)
    
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


