RegisterTableGoal(GOAL_Mukade_103000_Battle, "GOAL_Mukade_103000_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Mukade_103000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_Step_Small", 2)
    arg1:SetStringIndexedNumber("Dist_Step_Large", 4)
    Set_ConsecutiveGuardCount_Interrupt(arg1)
    local f2_local0 = arg0:Kengeki_Activate(arg1, arg2)
    if f2_local0 then
        return 
    end
    f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetDistYSigned(TARGET_ENE_0)
    local f2_local5 = arg1:GetRandam_Int(1, 100)
    local f2_local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local7 = arg1:GetNpcThinkParamID()
    local f2_local8 = arg1:GetEventRequest()
    if Common_ActivateAct(arg1, arg2) then

    elseif arg1:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 0) == false then
        if f2_local3 <= 10 then
            f2_local0[5] = 100
        else
            f2_local0[27] = 100
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        f2_local0[21] = 100
    elseif f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        KankyakuAct(arg1, arg2)
    elseif f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if TorimakiAct(arg1, arg2) then
            f2_local0[5] = 25
        end
    elseif f2_local3 > 12 then
        f2_local0[5] = 100
        f2_local0[23] = 200
    elseif f2_local3 > 8 then
        f2_local0[5] = 200
        f2_local0[23] = 200
    elseif f2_local3 > 4 then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[6] = 200
        f2_local0[23] = 200
        f2_local0[24] = 0
    elseif f2_local3 > 1.3 then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[6] = 400
        f2_local0[23] = 200
        f2_local0[24] = 400
    else
        f2_local0[1] = 700
        f2_local0[2] = 100
        f2_local0[3] = 100
        f2_local0[4] = 500
        f2_local0[6] = 400
        f2_local0[24] = 400
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 220020) then
        f2_local0[10] = 99999
    end
    if SpaceCheck(arg1, arg2, 45, arg1:GetStringIndexedNumber("Dist_Step_Small")) == false and SpaceCheck(arg1, arg2, -45, arg1:GetStringIndexedNumber("Dist_Step_Small")) == false then
        f2_local0[1] = 0
        f2_local0[22] = 0
        f2_local0[2] = 0
        f2_local0[3] = 0
    end
    if SpaceCheck(arg1, arg2, 45, arg1:GetStringIndexedNumber("Dist_Step_Small")) == false then
        f2_local0[2] = 0
    end
    if SpaceCheck(arg1, arg2, -45, arg1:GetStringIndexedNumber("Dist_Step_Small")) == false then
        f2_local0[3] = 0
    end
    if SpaceCheck(arg1, arg2, 90, 1) == false and SpaceCheck(arg1, arg2, -90, 1) == false then
        f2_local0[23] = 0
    end
    if SpaceCheck(arg1, arg2, 180, arg1:GetStringIndexedNumber("Dist_Step_Small")) == false then

    else

    end
    if SpaceCheck(arg1, arg2, 180, 1) == false then
        f2_local0[25] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3001, 5, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3002, 5, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3003, 5, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3000, 5, f2_local0[3], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3016, 5, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3061, 5, f2_local0[6], 1)
    f2_local0[24] = SetCoolTime(arg1, arg2, 5201, 3, f2_local0[24], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, arg0.Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, arg0.Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, arg0.Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, arg0.Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, arg0.Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, arg0.Act06)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, arg0.Act10)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, arg0.Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, arg0.Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, arg0.Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, arg0.Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, arg0.Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, arg0.Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, arg0.Act27)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, arg0.Act41)
    local f2_local9 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local9, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 1.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = 1.7 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f3_local3 = 1.7 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local4 = 100
    local f3_local5 = 0
    local f3_local6 = 1.5
    local f3_local7 = 3
    Approach_Act_Flex(arg0, arg1, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7)
    local f3_local8 = 3001
    local f3_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local10 = 0
    local f3_local11 = 0
    local f3_local12 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local8, TARGET_ENE_0, f3_local9, f3_local10, f3_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local2 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f4_local3 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f4_local4 = 100
    local f4_local5 = 0
    local f4_local6 = 1.5
    local f4_local7 = 3
    Approach_Act_Flex(arg0, arg1, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7)
    local f4_local8 = 3002
    local f4_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local10 = 0
    local f4_local11 = 0
    local f4_local12 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local8, TARGET_ENE_0, f4_local9, f4_local10, f4_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local2 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f5_local3 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f5_local4 = 100
    local f5_local5 = 0
    local f5_local6 = 1.5
    local f5_local7 = 3
    Approach_Act_Flex(arg0, arg1, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7)
    local f5_local8 = 3003
    local f5_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local10 = 0
    local f5_local11 = 0
    local f5_local12 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local8, TARGET_ENE_0, f5_local9, f5_local10, f5_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act04 = function (arg0, arg1, arg2)
    local f6_local0 = 3000
    local f6_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local2 = 0
    local f6_local3 = 0
    local f6_local4 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local0, TARGET_ENE_0, f6_local1, f6_local2, f6_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act05 = function (arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = 9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local2 = 9 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f7_local3 = 9 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f7_local4 = 100
    local f7_local5 = 0
    local f7_local6 = 1.5
    local f7_local7 = 3
    Approach_Act_Flex(arg0, arg1, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6, f7_local7)
    local f7_local8 = 3016
    local f7_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local10 = 0
    local f7_local11 = 0
    local f7_local12 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local8, TARGET_ENE_0, f7_local9, f7_local10, f7_local11, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act06 = function (arg0, arg1, arg2)
    local f8_local0 = 3061
    local f8_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local2 = 0
    local f8_local3 = 0
    local f8_local4 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local0, TARGET_ENE_0, f8_local1, f8_local2, f8_local3, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act10 = function (arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF) - 3
    local f9_local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF) - 4
    local f9_local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local f9_local4 = 100
    local f9_local5 = 0
    local f9_local6 = 1.5
    local f9_local7 = 3
    Approach_Act_Flex(arg0, arg1, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6, f9_local7)
    local f9_local8 = 3013
    local f9_local9 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local10 = 0
    local f9_local11 = 0
    local f9_local12 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local8, TARGET_ENE_0, f9_local9, f9_local10, f9_local11, 0, 0)
    GetWellSpace_Odds = 100
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
    local f11_local2 = 3016
    local f11_local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local4 = 0
    local f11_local5 = 0
    local f11_local6 = arg0:GetRandam_Int(1, 100)
    if SpaceCheck(arg0, arg1, -45, arg0:GetStringIndexedNumber("Dist_Step_Small")) == true then
        if SpaceCheck(arg0, arg1, 45, arg0:GetStringIndexedNumber("Dist_Step_Small")) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, f11_local0, 5202, TARGET_ENE_0, f11_local4, AI_DIR_TYPE_L, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, f11_local0, 5203, TARGET_ENE_0, f11_local4, AI_DIR_TYPE_R, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f11_local0, 5202, TARGET_ENE_0, f11_local4, AI_DIR_TYPE_L, 0)
        end
    elseif SpaceCheck(arg0, arg1, 45, arg0:GetStringIndexedNumber("Dist_Step_Small")) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f11_local0, 5203, TARGET_ENE_0, f11_local4, AI_DIR_TYPE_R, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local2, TARGET_ENE_0, f11_local3, f11_local4, f11_local5, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act23 = function (arg0, arg1, arg2)
    local f12_local0 = arg0:GetSp(TARGET_SELF)
    local f12_local1 = 0
    local f12_local2 = arg0:GetRandam_Int(1, 100)
    local f12_local3 = -1
    local f12_local4 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f12_local4 = 0
            else
                f12_local4 = 1
            end
        else
            f12_local4 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f12_local4 = 1
    else

    end
    local f12_local5 = 1.8
    local f12_local6 = arg0:GetRandam_Int(30, 45)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f12_local5, TARGET_ENE_0, f12_local4, f12_local6, true, true, f12_local3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act24 = function (arg0, arg1, arg2)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = 3
    local f13_local2 = 0
    local f13_local3 = 3021
    local f13_local4 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local5 = 0
    local f13_local6 = 0
    local f13_local7 = arg0:GetRandam_Int(1, 100)
    if SpaceCheck(arg0, arg1, 180, arg0:GetStringIndexedNumber("Dist_Step_Small")) == true then
        if SpaceCheck(arg0, arg1, 180, arg0:GetStringIndexedNumber("Dist_Step_Large")) == true then
            if f13_local0 > 3 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, f13_local1, 5201, TARGET_ENE_0, f13_local5, AI_DIR_TYPE_B, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, f13_local1, 5201, TARGET_ENE_0, f13_local5, AI_DIR_TYPE_B, 0)
            end
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f13_local1, 5201, TARGET_ENE_0, f13_local5, AI_DIR_TYPE_B, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f13_local3, TARGET_ENE_0, f13_local4, f13_local5, f13_local6, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act25 = function (arg0, arg1, arg2)
    local f14_local0 = arg0:GetSp(TARGET_SELF)
    local f14_local1 = 0
    local f14_local2 = arg0:GetRandam_Int(1, 100)
    local f14_local3 = -1
    if f14_local1 <= f14_local0 and f14_local2 <= 0 then
        f14_local3 = 9910
    end
    local f14_local4 = arg0:GetRandam_Float(3, 5)
    local f14_local5 = 5
    if SpaceCheck(arg0, arg1, 180, 1) == true then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f14_local4, TARGET_ENE_0, f14_local5, TARGET_ENE_0, true, f14_local3)
    else

    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act26 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 2, TARGET_ENE_0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act27 = function (arg0, arg1, arg2)
    local f16_local0 = arg0:GetDist(TARGET_ENE_0)
    local f16_local1 = arg0:GetDistYSigned(TARGET_ENE_0)
    local f16_local2 = arg0:GetRandam_Int(1, 100)
    local f16_local3 = arg0:GetRandam_Float(2.5, 4.5)
    local f16_local4 = arg0:GetRandam_Float(2, 4)
    local f16_local5 = f16_local1 / math.tan(math.deg(30))
    local f16_local6 = arg0:GetRandam_Int(0, 1)
    arg0:SetNumber(10, f16_local6)
    if f16_local1 >= 3 then
        if f16_local5 + 1 <= f16_local0 then
            if SpaceCheck(arg0, arg1, 0, 4) == true then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.1, TARGET_ENE_0, f16_local5, TARGET_SELF, false, -1)
            elseif SpaceCheck(arg0, arg1, 0, 3) == true then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_ENE_0, f16_local5, TARGET_SELF, true, -1)
            else
                arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f16_local6, arg0:GetRandam_Int(30, 45), true, true, -1)
            end
        elseif f16_local0 <= f16_local5 - 1 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, f16_local5, TARGET_ENE_0, true, -1)
        end
    elseif SpaceCheck(arg0, arg1, 0, 4) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.1, TARGET_ENE_0, 0, TARGET_SELF, false, -1)
    elseif SpaceCheck(arg0, arg1, 0, 3) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_ENE_0, 0, TARGET_SELF, true, -1)
    elseif SpaceCheck(arg0, arg1, 0, 1) == false then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 0.5, TARGET_ENE_0, 999, TARGET_ENE_0, true, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f16_local4, TARGET_ENE_0, f16_local6, arg0:GetRandam_Int(30, 45), true, true, -1)
    if f16_local2 <= 33 then
        arg1:AddSubGoal(GOAL_COMMON_Wait, f16_local3, TARGET_ENE_0, 0, 0, 0)
    elseif f16_local2 <= 67 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 201040, TARGET_ENE_0, SuccessDist1, TurnTime, FrontAngle, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, f16_local3, TARGET_ENE_0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 201040, TARGET_ENE_0, SuccessDist1, TurnTime, FrontAngle, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act41 = function (arg0, arg1, arg2)
    local f17_local0 = 3.5
    local f17_local1 = arg0:GetRandam_Int(30, 45)
    local f17_local2 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f17_local2 = 0
            else
                f17_local2 = 1
            end
        else
            f17_local2 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f17_local2 = 1
    else

    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f17_local0, TARGET_ENE_0, f17_local2, f17_local1, true, true, -1)
    return GETWELLSPACE_ODDS
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f18_local0 = arg1:GetDist(TARGET_ENE_0)
    local f18_local1 = arg1:GetSp(TARGET_SELF)
    local f18_local2 = arg1:GetSpecialEffectActivateInterruptType(0)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ParryTiming) then
        return arg0.Parry(arg1, arg2)
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        return arg0.Damaged(arg1, arg2)
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then

    else

    end
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) then

    else

    end
    if arg1:IsInterupt(INTERUPT_ShootImpact) and arg0.ShootReaction(arg1, arg2) then
        return true
    end
    return false
    
end

Goal.Parry = function (arg0, arg1, arg2)
    local f19_local0 = arg0:GetRandam_Int(1, 100)
    if arg0:IsInterupt(INTERUPT_ParryTiming) then
        if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 90, 3) then
            arg1:ClearSubGoal()
            local f19_local1 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 5201, TARGET_ENE_0, TurnTime, AI_DIR_TYPE_B, 0)
            f19_local1:TimingSetTimer(3, 6, UPDATE_SUCCESS)
            return true
        else
            return false
        end
    end
    
end

Goal.Damaged = function (arg0, arg1, arg2)
    local f20_local0 = arg0:GetRandam_Int(1, 100)
    if f20_local0 <= 33 then
        arg1:ClearSubGoal()
        local f20_local1 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 5201, TARGET_ENE_0, TurnTime, AI_DIR_TYPE_B, 0)
        f20_local1:TimingSetTimer(3, 6, UPDATE_SUCCESS)
        return true
    elseif f20_local0 <= 67 then

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
    local f22_local0 = ReturnKengekiSpecialEffect(arg1)
    if f22_local0 == 0 then
        return false
    end
    local f22_local1 = {}
    local f22_local2 = {}
    local f22_local3 = {}
    Common_Clear_Param(f22_local1, f22_local2, f22_local3)
    local f22_local4 = arg1:GetDist(TARGET_ENE_0)
    if f22_local0 == 200215 then
        f22_local1[24] = 100
    elseif f22_local0 == 200216 then
        f22_local1[24] = 100
    end
    f22_local2[21] = REGIST_FUNC(arg1, arg2, arg0.Act21)
    f22_local2[22] = REGIST_FUNC(arg1, arg2, arg0.Act22)
    f22_local2[23] = REGIST_FUNC(arg1, arg2, arg0.Act23)
    f22_local2[24] = REGIST_FUNC(arg1, arg2, arg0.Act24)
    f22_local2[25] = REGIST_FUNC(arg1, arg2, arg0.Act25)
    f22_local2[50] = REGIST_FUNC(arg1, arg2, arg0.NoAction)
    local f22_local5 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    return Common_Kengeki_Activate(arg1, arg2, f22_local1, f22_local2, f22_local5, f22_local3)
    
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


