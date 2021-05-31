RegisterTableGoal(GOAL_Ochimusha_hassou_101010_Battle, "GOAL_Ochimusha_hassou_101010_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Ochimusha_hassou_101010_Battle, true)
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
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 109031)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 107900)
    Set_ConsecutiveGuardCount_Interrupt(arg1)
    if arg0:Kengeki_Activate(arg1, arg2) then
        return 
    end
    if arg1:HasSpecialEffectId(TARGET_ENE_0, 3170200) then
        f2_local0[25] = 1000
        f2_local0[1] = 1
    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 3101540) then
        f2_local0[27] = 100
    elseif Common_ActivateAct(arg1, arg2) then

    elseif not not arg1:HasSpecialEffectId(TARGET_SELF, 5020) or arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
        f2_local0[23] = 600
    elseif arg1:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 0) == false or not not arg1:HasSpecialEffectId(TARGET_ENE_0, 109220) or arg1:HasSpecialEffectId(TARGET_ENE_0, 109221) then
        f2_local0[10] = 100
        f2_local0[27] = 100
    elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        KankyakuAct(arg1, arg2)
    elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if TorimakiAct(arg1, arg2) == true then
            f2_local0[1] = 10
            f2_local0[4] = 10
            if arg1:HasSpecialEffectId(TARGET_SELF, 3101500) then
                f2_local0[10] = 500
            end
        end
    elseif arg1:IsFinishTimer(0) == false then
        f2_local0[1] = 1
        f2_local0[23] = 1000
    elseif f2_local3 >= 7 then
        f2_local0[1] = 1
        f2_local0[2] = 200
        f2_local0[4] = 0
        f2_local0[5] = 100
        f2_local0[6] = 0
        f2_local0[23] = 600
    elseif f2_local3 >= 5 then
        f2_local0[1] = 100
        f2_local0[2] = 200
        f2_local0[4] = 0
        f2_local0[5] = 100
        f2_local0[6] = 0
        f2_local0[23] = 1200
    elseif f2_local3 >= 3 then
        f2_local0[1] = 100
        f2_local0[2] = 200
        f2_local0[4] = 0
        f2_local0[5] = 100
        f2_local0[6] = 300
        f2_local0[23] = 1200
    elseif f2_local3 >= 1 then
        f2_local0[1] = 200
        f2_local0[2] = 100
        f2_local0[4] = 100
        f2_local0[5] = 0
        f2_local0[6] = 200
        f2_local0[23] = 0
        f2_local1[24] = 0
    else
        f2_local0[1] = 100
        f2_local0[2] = 100
        f2_local0[3] = 0
        f2_local0[4] = 200
        f2_local0[5] = 0
        f2_local0[6] = 400
        f2_local0[23] = 0
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
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 5, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3002, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3003, 5, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3004, 5, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3006, 10, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3007, 5, f2_local0[6], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3009, 5, f2_local0[10], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, arg0.Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, arg0.Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, arg0.Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, arg0.Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, arg0.Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, arg0.Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, arg0.Act07)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, arg0.Act10)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, arg0.Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, arg0.Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, arg0.Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, arg0.Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, arg0.Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, arg0.Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, arg0.Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, arg0.Act28)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, arg0.Act41)
    local f2_local5 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local5, f2_local2)
    
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
    local f3_local8 = 5.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local9 = 0.5
    local f3_local10 = 90
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, f3_local7, f3_local9, f3_local10, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 9999, 0, 0)
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
    local f4_local7 = 0.5
    local f4_local8 = 90
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 9999, f4_local7, f4_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f5_local0 = 5.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 5.4 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f5_local2 = 5.4 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 1.5
    local f5_local6 = 3
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 0.5
    local f5_local8 = 90
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 9999, f5_local7, f5_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act04 = function (arg0, arg1, arg2)
    local f6_local0 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f6_local2 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 1.5
    local f6_local6 = 3
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local8 = 0.5
    local f6_local9 = 90
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, f6_local7, f6_local8, f6_local9, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act05 = function (arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local2 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f7_local3 = 3.3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f7_local4 = 100
    local f7_local5 = 0
    local f7_local6 = 1.5
    local f7_local7 = 3
    local f7_local8 = 0.5
    local f7_local9 = 90
    Approach_Act_Flex(arg0, arg1, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 9999, f7_local8, f7_local9, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act06 = function (arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = 2.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local2 = 2.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f8_local3 = 2.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f8_local4 = 100
    local f8_local5 = 0
    local f8_local6 = 1.5
    local f8_local7 = 3
    local f8_local8 = 0.5
    local f8_local9 = 90
    Approach_Act_Flex(arg0, arg1, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6, f8_local7)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 9999, f8_local8, f8_local9, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act07 = function (arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local2 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f9_local3 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f9_local4 = 100
    local f9_local5 = 0
    local f9_local6 = 1.5
    local f9_local7 = 3
    local f9_local8 = 0.5
    local f9_local9 = 90
    Approach_Act_Flex(arg0, arg1, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6, f9_local7)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 9999, f9_local8, f9_local9, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act10 = function (arg0, arg1, arg2)
    local f10_local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = 10 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f10_local2 = 10 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 1.5
    local f10_local6 = 3
    local f10_local7 = 0.5
    local f10_local8 = 90
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 9999, f10_local7, f10_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act21 = function (arg0, arg1, arg2)
    local f11_local0 = 3
    local f11_local1 = 45
    arg1:AddSubGoal(GOAL_COMMON_Turn, f11_local0, TARGET_ENE_0, f11_local1, -1, GOAL_RESULT_Success, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act22 = function (arg0, arg1, arg2)
    local f12_local0 = 3
    local f12_local1 = 0
    local f12_local2 = 5202
    if SpaceCheck(arg0, arg1, -45, 2) == true then
        if SpaceCheck(arg0, arg1, 45, 2) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f12_local2 = 5202
            else
                f12_local2 = 5203
            end
        else
            f12_local2 = 5202
        end
    elseif SpaceCheck(arg0, arg1, 45, 2) == true then
        f12_local2 = 5203
    else

    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f12_local0, f12_local2, TARGET_ENE_0, f12_local1, AI_DIR_TYPE_R, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act23 = function (arg0, arg1, arg2)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = arg0:GetSp(TARGET_SELF)
    local f13_local2 = 20
    local f13_local3 = arg0:GetRandam_Int(1, 100)
    local f13_local4 = -1
    local f13_local5 = arg0:IsFinishTimer(0)
    if f13_local5 == false then
        f13_local4 = 9910
    end
    f13_local5 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_R, 180, 999) then
                f13_local5 = 1
            else
                f13_local5 = 0
            end
        else
            f13_local5 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f13_local5 = 1
    else

    end
    local f13_local6 = 3
    local f13_local7 = arg0:GetRandam_Int(30, 45)
    arg0:SetNumber(10, f13_local5)
    arg0:SetTimer(2, f13_local6)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f13_local6, TARGET_ENE_0, f13_local5, f13_local7, true, true, f13_local4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act24 = function (arg0, arg1, arg2)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = 3
    local f14_local2 = 0
    local f14_local3 = 5201
    if SpaceCheck(arg0, arg1, 180, 2) == true and SpaceCheck(arg0, arg1, 180, 4) == true then
        if f14_local0 > 4 then

        else
            f14_local3 = 5211
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f14_local1, f14_local3, TARGET_ENE_0, f14_local2, AI_DIR_TYPE_B, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act25 = function (arg0, arg1, arg2)
    local f15_local0 = arg0:GetSp(TARGET_SELF)
    local f15_local1 = 0
    local f15_local2 = arg0:GetRandam_Int(1, 100)
    local f15_local3 = -1
    if not (f15_local1 > f15_local0 or f15_local2 > 100) or arg0:HasSpecialEffectId(TARGET_ENE_0, 3170200) then
        f15_local3 = 9910
    end
    local f15_local4 = arg0:GetRandam_Float(3, 5)
    local f15_local5 = 5
    if arg0:HasSpecialEffectId(TARGET_ENE_0, 3170200) then
        f15_local5 = 999
    end
    if SpaceCheck(arg0, arg1, 180, 1) == true then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f15_local4, TARGET_ENE_0, f15_local5, TARGET_ENE_0, true, f15_local3)
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
    local f17_local0 = arg0:GetRandam_Int(1, 100)
    if YousumiAct_SubGoal(arg0, arg1, true, 60, 30) == false then
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    local f17_local1 = 0
    local f17_local2 = SpaceCheck_SidewayMove(arg0, arg1, 1)
    if f17_local2 == 0 then
        f17_local1 = 0
    elseif f17_local2 == 1 then
        f17_local1 = 1
    elseif f17_local2 == 2 then
        if f17_local0 <= 50 then
            f17_local1 = 0
        else
            f17_local1 = 1
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_SELF, 0, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    arg0:SetNumber(10, f17_local1)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f17_local1, arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act28 = function (arg0, arg1, arg2)
    local f18_local0 = arg0:GetDist(TARGET_ENE_0)
    local f18_local1 = 1.5
    local f18_local2 = 1.5
    local f18_local3 = arg0:GetRandam_Int(30, 45)
    local f18_local4 = -1
    local f18_local5 = arg0:GetRandam_Int(0, 1)
    if f18_local0 <= 3 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f18_local1, TARGET_ENE_0, f18_local5, f18_local3, true, true, f18_local4)
    elseif f18_local0 <= 8 then
        Approach_Act_Flex(arg0, arg1, 3, 3, 3, 100, 0, 1.5, 3)
    else
        Approach_Act_Flex(arg0, arg1, 8, 999, 999, 0, 0, 1.5, 3)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act41 = function (arg0, arg1, arg2)
    local f19_local0 = 3.5
    local f19_local1 = arg0:GetRandam_Int(30, 45)
    local f19_local2 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f19_local2 = 0
            else
                f19_local2 = 1
            end
        else
            f19_local2 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f19_local2 = 1
    else

    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f19_local0, TARGET_ENE_0, f19_local2, f19_local1, true, true, -1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f20_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ParryTiming) and not arg1:HasSpecialEffectId(TARGET_ENE_0, 3502520) then
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

Goal.ShootReaction = function (arg0, arg1)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3100, TARGET_ENE_0, 9999, 0)
    return true
    
end

Goal.Kengeki_Activate = function (arg0, arg1, arg2, arg3)
    local f22_local0 = ReturnKengekiSpecialEffect(arg1)
    if f22_local0 == 0 then
        return false
    end
    local f22_local1 = {}
    local f22_local2 = {}
    local f22_local3 = {}
    Common_Clear_Param(f22_local1, f22_local2, f22_local3)
    local f22_local4 = arg1:GetDist(TARGET_ENE_0)
    local f22_local5 = arg1:GetSp(TARGET_SELF)
    if f22_local5 <= 0 then
        f22_local1[50] = 100
    elseif not not arg1:HasSpecialEffectId(TARGET_SELF, 5020) or arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
        f22_local1[50] = 50
    elseif f22_local0 == 200200 or f22_local0 == 200205 then
        if f22_local4 >= 2 then
            f22_local1[50] = 100
        else
            f22_local1[1] = 100
            f22_local1[2] = 100
            f22_local1[3] = 100
            f22_local1[50] = 50
        end
    elseif f22_local0 == 200201 or f22_local0 == 200206 then
        if f22_local4 >= 2 then
            f22_local1[50] = 100
        else
            f22_local1[5] = 100
            f22_local1[6] = 100
            f22_local1[50] = 50
        end
    elseif f22_local0 == 200210 or f22_local0 == 200215 then
        if f22_local0 == 200210 and arg1:HasSpecialEffectId(TARGET_SELF, 3101030) then
            f22_local1[11] = 200
            f22_local1[12] = 1
        elseif f22_local4 >= 2 then
            f22_local1[50] = 100
        else
            f22_local1[10] = 20
            f22_local1[24] = 0
            f22_local1[50] = 0
        end
    elseif f22_local0 == 200211 or f22_local0 == 200216 then
        if f22_local0 == 200211 and arg1:HasSpecialEffectId(TARGET_SELF, 3101030) then
            f22_local1[11] = 200
            f22_local1[12] = 1
        elseif f22_local4 >= 2 then
            f22_local1[50] = 100
        else
            f22_local1[10] = 20
            f22_local1[24] = 0
            f22_local1[50] = 0
            if arg1:HasSpecialEffectId(TARGET_SELF, 3101030) then
                f22_local1[11] = 20
                f22_local1[50] = 30
            end
        end
    else
        f22_local1[50] = 100
    end
    if SpaceCheck(arg1, arg2, 180, 2) == false then
        f22_local1[11] = 0
    end
    f22_local2[1] = REGIST_FUNC(arg1, arg2, arg0.Kengeki01)
    f22_local2[2] = REGIST_FUNC(arg1, arg2, arg0.Kengeki02)
    f22_local2[3] = REGIST_FUNC(arg1, arg2, arg0.Kengeki03)
    f22_local2[4] = REGIST_FUNC(arg1, arg2, arg0.Kengeki04)
    f22_local2[5] = REGIST_FUNC(arg1, arg2, arg0.Kengeki05)
    f22_local2[6] = REGIST_FUNC(arg1, arg2, arg0.Kengeki06)
    f22_local2[7] = REGIST_FUNC(arg1, arg2, arg0.Kengeki07)
    f22_local2[8] = REGIST_FUNC(arg1, arg2, arg0.Kengeki08)
    f22_local2[9] = REGIST_FUNC(arg1, arg2, arg0.Kengeki09)
    f22_local2[10] = REGIST_FUNC(arg1, arg2, arg0.Kengeki10)
    f22_local2[11] = REGIST_FUNC(arg1, arg2, arg0.Kengeki11)
    f22_local2[12] = REGIST_FUNC(arg1, arg2, arg0.Kengeki12)
    f22_local2[13] = REGIST_FUNC(arg1, arg2, arg0.Kengeki13)
    f22_local2[21] = REGIST_FUNC(arg1, arg2, arg0.Act21)
    f22_local2[22] = REGIST_FUNC(arg1, arg2, arg0.Act22)
    f22_local2[23] = REGIST_FUNC(arg1, arg2, arg0.Act23)
    f22_local2[24] = REGIST_FUNC(arg1, arg2, arg0.Act24)
    f22_local2[25] = REGIST_FUNC(arg1, arg2, arg0.Act25)
    f22_local2[50] = REGIST_FUNC(arg1, arg2, arg0.NoAction)
    local f22_local6 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    return Common_Kengeki_Activate(arg1, arg2, f22_local1, f22_local2, f22_local6, f22_local3)
    
end

Goal.Kengeki01 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3050, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki02 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3051, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki03 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3052, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki04 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3055, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki05 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3056, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki06 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3057, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki07 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3070, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki08 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 1, 3071, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki09 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 1, 3075, TARGET_ENE_0, 9999, 0)
    
end

Goal.Kengeki10 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3076, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki11 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local f33_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 5211, TARGET_ENE_0, 9999, 0)
    f33_local0:TimingSetTimer(0, 7, AI_TIMING_SET__UPDATE_SUCCESS)
    
end

Goal.Kengeki12 = function (arg0, arg1, arg2)
    local f34_local0 = arg0:GetSp(TARGET_SELF)
    local f34_local1 = 0
    local f34_local2 = arg0:GetRandam_Int(1, 100)
    local f34_local3 = 9910
    local f34_local4 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f34_local4 = 1
            else
                f34_local4 = 0
            end
        else
            f34_local4 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f34_local4 = 1
    else
        GetWellSpace_Odds = 100
        return GetWellSpace_Odds
    end
    local f34_local5 = arg0:GetRandam_Int(30, 45)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetTimer(2), TARGET_ENE_0, f34_local4, f34_local5, true, true, f34_local3)
    
end

Goal.Kengeki13 = function (arg0, arg1, arg2)
    local f35_local0 = arg0:GetSp(TARGET_SELF)
    local f35_local1 = 0
    local f35_local2 = arg0:GetRandam_Int(1, 100)
    local f35_local3 = 9910
    local f35_local4 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f35_local4 = 1
            else
                f35_local4 = 0
            end
        else
            f35_local4 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f35_local4 = 1
    else
        GetWellSpace_Odds = 100
        return GetWellSpace_Odds
    end
    local f35_local5 = arg0:GetRandam_Int(60, 90)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 5, TARGET_ENE_0, f35_local4, f35_local5, true, true, 9910)
    
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


