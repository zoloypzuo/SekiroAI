RegisterTableGoal(GOAL_Tutorial_Ochimusha_hassou_101110_Battle, "GOAL_Tutorial_Ochimusha_hassou_101110_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Tutorial_Ochimusha_hassou_101110_Battle, true)
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
    Set_ConsecutiveGuardCount_Interrupt(arg1)
    if arg0:Kengeki_Activate(arg1, arg2) then
        return 
    end
    if Common_ActivateAct(arg1, arg2) then

    elseif arg1:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 0) == false then
        f2_local0[27] = 100
    elseif f2_local5 == 10110603 and arg1:GetNumber(0) == 0 then
        f2_local0[31] = 100
    elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        KankyakuAct(arg1, arg2)
    elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        TorimakiAct(arg1, arg2, -1, 0)
    elseif arg1:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_B, 240, 4) then
        f2_local0[1] = 1
        f2_local0[30] = 100000
    elseif f2_local3 > 4 then
        f2_local0[1] = 30
        f2_local0[2] = 100
    else
        f2_local0[1] = 30
        f2_local0[23] = 10
        if arg1:GetNumber(1) >= 1 then
            f2_local0[1] = 100
        end
    end
    if SpaceCheck(arg1, arg2, 45, 2) == false and SpaceCheck(arg1, arg2, -45, 2) == false then
        f2_local0[22] = 0
    end
    if SpaceCheck(arg1, arg2, 90, 1) == false and SpaceCheck(arg1, arg2, -90, 1) == false then
        f2_local0[23] = 0
        f2_local0[30] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 2) == false then
        f2_local0[24] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 1) == false then
        f2_local0[25] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 5, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3002, 5, f2_local0[2], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, arg0.Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, arg0.Act02)
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
    f2_local1[31] = REGIST_FUNC(arg1, arg2, arg0.Act31)
    local f2_local6 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    local f3_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local2 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 1.5
    local f3_local6 = 3
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local8 = 0
    local f3_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, f3_local7, f3_local8, f3_local9, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(0, 1)
    arg0:SetNumber(1, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    local f4_local0 = 5.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f4_local2 = 5.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 1.5
    local f4_local6 = 3
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local8 = 0
    local f4_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, f4_local7, f4_local8, f4_local9, 0, 0)
    arg0:SetNumber(1, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act21 = function (arg0, arg1, arg2)
    local f5_local0 = 3
    local f5_local1 = 45
    arg1:AddSubGoal(GOAL_COMMON_Turn, f5_local0, TARGET_ENE_0, f5_local1, -1, GOAL_RESULT_Success, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act22 = function (arg0, arg1, arg2)
    local f6_local0 = 3
    local f6_local1 = 0
    local f6_local2 = 5202
    if SpaceCheck(arg0, arg1, -45, 2) == true then
        if SpaceCheck(arg0, arg1, 45, 2) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f6_local2 = 5202
            else
                f6_local2 = 5203
            end
        else
            f6_local2 = 5202
        end
    elseif SpaceCheck(arg0, arg1, 45, 2) == true then
        f6_local2 = 5203
    else

    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f6_local0, f6_local2, TARGET_ENE_0, f6_local1, AI_DIR_TYPE_R, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act23 = function (arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = arg0:GetSp(TARGET_SELF)
    local f7_local2 = 20
    local f7_local3 = arg0:GetRandam_Int(1, 100)
    local f7_local4 = -1
    if f7_local2 <= f7_local1 and f7_local3 <= 50 then
        f7_local4 = 9910
    end
    local f7_local5 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_R, 180, 999) then
                f7_local5 = 1
            else
                f7_local5 = 0
            end
        else
            f7_local5 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f7_local5 = 1
    else

    end
    local f7_local6 = 3
    local f7_local7 = arg0:GetRandam_Int(30, 45)
    arg0:SetNumber(10, f7_local5)
    arg0:SetNumber(1, arg0:GetNumber(1) + 1)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f7_local6, TARGET_ENE_0, f7_local5, f7_local7, true, true, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act24 = function (arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = 3
    local f8_local2 = 0
    local f8_local3 = 5201
    if SpaceCheck(arg0, arg1, 180, 2) == true and SpaceCheck(arg0, arg1, 180, 4) == true then
        if f8_local0 > 4 then

        else
            f8_local3 = 5211
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f8_local1, f8_local3, TARGET_ENE_0, f8_local2, AI_DIR_TYPE_B, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act25 = function (arg0, arg1, arg2)
    local f9_local0 = arg0:GetRandam_Float(2, 4)
    local f9_local1 = arg0:GetRandam_Float(5, 7)
    local f9_local2 = arg0:GetDist(TARGET_ENE_0)
    local f9_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f9_local0, TARGET_ENE_0, f9_local1, TARGET_ENE_0, true, f9_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act26 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act27 = function (arg0, arg1, arg2)
    local f11_local0 = arg0:GetRandam_Int(1, 100)
    if YousumiAct_SubGoal(arg0, arg1, true, 60, 30) == false then
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    local f11_local1 = 0
    local f11_local2 = SpaceCheck_SidewayMove(arg0, arg1, 1)
    if f11_local2 == 0 then
        f11_local1 = 0
    elseif f11_local2 == 1 then
        f11_local1 = 1
    elseif f11_local2 == 2 then
        if f11_local0 <= 50 then
            f11_local1 = 0
        else
            f11_local1 = 1
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_SELF, 0, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    arg0:SetNumber(10, f11_local1)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f11_local1, arg0:GetRandam_Int(30, 45), true, true, -1)
    arg0:SetNumber(NUMBER_SLOT_FIGHT_COUNT, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act28 = function (arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = 1.5
    local f12_local2 = 1.5
    local f12_local3 = arg0:GetRandam_Int(30, 45)
    local f12_local4 = -1
    local f12_local5 = arg0:GetRandam_Int(0, 1)
    if f12_local0 <= 5 then
        if arg0:IsInsideTargetEx(TARGET_FRI_0, TARGET_SELF, AI_DIR_TYPE_R, 180, 999) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f12_local1, TARGET_ENE_0, 1, f12_local3, true, true, f12_local4)
        else
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f12_local1, TARGET_ENE_0, 0, f12_local3, true, true, f12_local4)
        end
    elseif f12_local0 <= 8 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f12_local2, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f12_local2, TARGET_ENE_0, 8, TARGET_SELF, false, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act29 = function (arg0, arg1, arg2)
    local f13_local0 = 3
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f13_local0, TARGET_ENE_0, 3.9, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act30 = function (arg0, arg1, arg2)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = arg0:GetSp(TARGET_SELF)
    local f14_local2 = 20
    local f14_local3 = arg0:GetRandam_Int(1, 100)
    local f14_local4 = -1
    if f14_local2 <= f14_local1 and f14_local3 <= 50 then
        f14_local4 = 9910
    end
    local f14_local5 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_R, 180, 999) then
                f14_local5 = 1
            else
                f14_local5 = 0
            end
        else
            f14_local5 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f14_local5 = 1
    else

    end
    local f14_local6 = 3
    local f14_local7 = arg0:GetRandam_Int(30, 45)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f14_local6, TARGET_ENE_0, f14_local5, f14_local7, true, false, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act31 = function (arg0, arg1, arg2)
    local f15_local0 = 7
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f15_local0, TARGET_ENE_0, 3.9, TARGET_SELF, true, -1)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f16_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ParryTiming) then
        return Common_Parry(arg1, arg2, 100, 0, 0, 3102)
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
    local f17_local0 = 3
    if SpaceCheck(arg0, arg1, 180, 2) then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f17_local0, 5211, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        return true
    end
    return false
    
end

Goal.ShootReaction = function (arg0, arg1)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3100, TARGET_ENE_0, 9999, 0)
    return true
    
end

Goal.Kengeki_Activate = function (arg0, arg1, arg2, arg3)
    local f19_local0 = ReturnKengekiSpecialEffect(arg1)
    if f19_local0 == 0 then
        return false
    end
    local f19_local1 = {}
    local f19_local2 = {}
    local f19_local3 = {}
    Common_Clear_Param(f19_local1, f19_local2, f19_local3)
    local f19_local4 = arg1:GetDist(TARGET_ENE_0)
    local f19_local5 = arg1:GetSp(TARGET_SELF)
    if f19_local5 <= 0 then
        f19_local1[50] = 100
    elseif f19_local0 == 200205 then
        if f19_local4 >= 2 then
            f19_local1[50] = 100
        elseif f19_local4 <= 0.2 then
            f19_local1[50] = 100
        else
            f19_local1[5] = 100
        end
    elseif f19_local0 == 200206 then
        if f19_local4 >= 2 then
            f19_local1[50] = 100
        elseif f19_local4 <= 0.2 then
            f19_local1[50] = 100
        else
            f19_local1[5] = 100
        end
    elseif f19_local0 == 200210 then
        if f19_local4 >= 2 then
            f19_local1[50] = 100
        elseif f19_local4 <= 0.2 then
            f19_local1[50] = 100
        else
            f19_local1[1] = 100
        end
    elseif f19_local0 == 200211 then
        if f19_local4 >= 2 then
            f19_local1[50] = 100
        elseif f19_local4 <= 0.2 then
            f19_local1[50] = 100
        else
            f19_local1[1] = 100
        end
    elseif f19_local0 == 200215 then
        if f19_local4 >= 2 then
            f19_local1[50] = 100
        elseif f19_local4 <= 0.2 then
            f19_local1[50] = 100
        else
            f19_local1[5] = 100
        end
    elseif f19_local0 == 200216 then
        if f19_local4 >= 2 then
            f19_local1[50] = 100
        elseif f19_local4 <= 0.2 then
            f19_local1[50] = 100
        else
            f19_local1[5] = 100
        end
    else
        f19_local1[50] = 100
    end
    f19_local2[1] = REGIST_FUNC(arg1, arg2, arg0.Kengeki01)
    f19_local2[2] = REGIST_FUNC(arg1, arg2, arg0.Kengeki02)
    f19_local2[3] = REGIST_FUNC(arg1, arg2, arg0.Kengeki03)
    f19_local2[4] = REGIST_FUNC(arg1, arg2, arg0.Kengeki04)
    f19_local2[5] = REGIST_FUNC(arg1, arg2, arg0.Kengeki05)
    f19_local2[6] = REGIST_FUNC(arg1, arg2, arg0.Kengeki06)
    f19_local2[7] = REGIST_FUNC(arg1, arg2, arg0.Kengeki07)
    f19_local2[8] = REGIST_FUNC(arg1, arg2, arg0.Kengeki08)
    f19_local2[50] = REGIST_FUNC(arg1, arg2, arg0.NoAction)
    local f19_local6 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    return Common_Kengeki_Activate(arg1, arg2, f19_local1, f19_local2, f19_local6, f19_local3)
    
end

Goal.Kengeki01 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3076, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki05 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 9999, 0, 0)
    
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


