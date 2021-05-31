RegisterTableGoal(GOAL_Yotakashu_Shuriken_145010_Battle, "GOAL_Yotakashu_Shuriken_145010_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Yotakashu_Shuriken_145010_Battle, true)
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
    local f2_local7 = arg1:GetNumber(0)
    if arg1:GetRandam_Int(5, 7) <= arg1:GetNumber(4) then
        arg1:SetNumber(4, 0)
        arg1:SetTimer(5, arg1:GetRandam_Int(3, 8))
    end
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    Set_ConsecutiveGuardCount_Interrupt(arg1)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:DeleteObserve(0)
    arg1:SetStringIndexedNumber("noRun", false)
    if arg1:IsInsideTargetRegion(TARGET_SELF, COMMON_REGION_FORCE_WALK_M11_1) then
        arg1:SetStringIndexedNumber("noRun", true)
    end
    arg1:AddObserveRegion(30, TARGET_SELF, COMMON_REGION_FORCE_WALK_M11_1)
    if arg0:Kengeki_Activate(arg1, arg2) then
        return 
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 3145010) then
        arg1:AddObserveRegion(1, TARGET_ENE_0, 1112260)
        arg1:AddObserveRegion(2, TARGET_ENE_0, 1112261)
        f2_local0[26] = 100
    elseif f2_local5 == 10 and not arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
        f2_local0[10] = 100
    elseif Common_ActivateAct(arg1, arg2) then

    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 109220) then
        f2_local0[27] = 100
        local f2_local8 = arg1:GetDistYSigned(TARGET_ENE_0)
        if f2_local8 <= 0 and arg1:HasSpecialEffectId(TARGET_ENE_0, 109220) then
            f2_local0[1] = 100
        elseif f2_local8 > 0 and f2_local8 < 10.5 and arg1:HasSpecialEffectId(TARGET_ENE_0, 109220) then
            f2_local0[1] = 100
        end
    elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if KankyakuAct(arg1, arg2, 20, 50, arg1:GetStringIndexedNumber("noRun")) then
            f2_local0[1] = 100
            f2_local0[2] = 100
        end
    elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if TorimakiAct(arg1, arg2, 9.5, 70) then
            f2_local0[1] = 100
            f2_local0[2] = 100
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        f2_local0[21] = 100
        f2_local0[22] = 1
    elseif arg1:IsFinishTimer(5) == false and f2_local3 >= 10 then
        f2_local0[27] = 100
    elseif f2_local3 >= 15 then
        f2_local0[1] = 500
        f2_local0[2] = 100
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[6] = 100
        f2_local0[8] = 50
    elseif f2_local3 >= 10 then
        f2_local0[1] = 500
        f2_local0[2] = 200
        f2_local0[3] = 200
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[6] = 50
        f2_local0[7] = 100
        f2_local0[8] = 50
    elseif f2_local3 >= 5 then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 200
        f2_local0[4] = 0
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 50
        f2_local0[8] = 50
        f2_local0[24] = 100
    elseif f2_local3 >= 3 then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 200
        f2_local0[4] = 50
        f2_local0[5] = 50
        f2_local0[6] = 0
        f2_local0[7] = 50
        f2_local0[8] = 0
        f2_local0[24] = 100
    else
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 200
        f2_local0[4] = 100
        f2_local0[5] = 100
        f2_local0[6] = 0
        f2_local0[7] = 50
        f2_local0[8] = 0
        f2_local0[24] = 100
    end
    if f2_local3 <= 7 then
        arg1:SetNumber(2, arg1:GetNumber(2) + 1)
    else
        arg1:SetNumber(2, 0)
    end
    if arg1:GetNumber(2) <= 3 or arg1:HasSpecialEffectId(TARGET_SELF, 200050) then
        f2_local0[3] = 0
        f2_local0[24] = 0
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
    if f2_local7 == 4 and f2_local0[4] > 0 then
        f2_local0[4] = 1
    end
    if f2_local7 == 5 and f2_local0[5] > 0 then
        f2_local0[5] = 1
    end
    if f2_local7 == 6 and f2_local0[6] > 0 then
        f2_local0[6] = 1
    end
    if f2_local7 == 8 and f2_local0[8] > 0 then
        f2_local0[8] = 1
    end
    if f2_local7 == 22 and f2_local0[22] > 0 then
        f2_local0[22] = 1
    end
    if f2_local7 == 24 and f2_local0[24] > 0 then
        f2_local0[24] = 1
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 15, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3003, 15, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3004, 10, f2_local0[3], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3010, 10, f2_local0[7], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3015, 15, f2_local0[9], 1)
    f2_local0[24] = SetCoolTime(arg1, arg2, 5211, 15, f2_local0[24], 1)
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
    f2_local1[30] = REGIST_FUNC(arg1, arg2, arg0.Act30)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, arg0.Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, arg0.Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, arg0.Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, arg0.Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, arg0.Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, arg0.Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, arg0.Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, arg0.Act28)
    local f2_local8 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local8, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 25 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = 25 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local3 = 25 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local4 = 100
    local f3_local5 = 0
    local f3_local6 = 1.5
    local f3_local7 = 3
    local f3_local8 = 3000
    local f3_local9 = 25 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local10 = 25 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local11 = 0
    local f3_local12 = 0
    if f3_local0 <= 15 then
        f3_local8 = 3030
    end
    local f3_local13 = arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local8, TARGET_ENE_0, f3_local9, f3_local11, f3_local12, 0, 0)
    f3_local13:TimingSetNumber(4, arg0:GetNumber(4) + 2, AI_TIMING_SET__ACTIVATE)
    arg0:SetNumber(1, 0)
    arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 7)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 25 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local2 = 25 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f4_local3 = 25 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f4_local4 = 100
    local f4_local5 = 0
    local f4_local6 = 1.5
    local f4_local7 = 3
    local f4_local8 = 3003
    local f4_local9 = 0
    local f4_local10 = 0
    if f4_local0 <= 15 then
        f4_local8 = 3033
    end
    local f4_local11 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local8, TARGET_ENE_0, 9999, f4_local9, f4_local10, 0, 0)
    f4_local11:TimingSetNumber(4, arg0:GetNumber(4) + 2, AI_TIMING_SET__ACTIVATE)
    arg0:SetNumber(0, 2)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f5_local0 = 0
    local f5_local1 = 0
    local f5_local2 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 9999, f5_local0, f5_local1, 0, 0)
    f5_local2:TimingSetNumber(4, arg0:GetNumber(4) + 2, AI_TIMING_SET__ACTIVATE)
    arg0:SetNumber(0, 3)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act04 = function (arg0, arg1, arg2)
    local f6_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f6_local2 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 1.5
    local f6_local6 = 3
    local f6_local7 = arg0:GetRandam_Int(1, 100)
    local f6_local8 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local9 = 3005
    local f6_local10 = 0
    local f6_local11 = 0
    if f6_local7 <= 50 then
        f6_local9 = 3006
    end
    if f6_local8 <= 50 then
        f6_local9 = f6_local9 + 2
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local9, TARGET_ENE_0, 9999, f6_local10, f6_local11, 0, 0)
    arg0:SetNumber(0, 4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act05 = function (arg0, arg1, arg2)
    local f7_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f7_local2 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 1.5
    local f7_local6 = 3
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 0
    local f7_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 9999, f7_local7, f7_local8, 0, 0)
    arg0:SetNumber(0, 5)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act06 = function (arg0, arg1, arg2)
    local f8_local0 = arg0:GetDist(TARGET_ENE_0)
    local f8_local1 = 3010
    local f8_local2 = 0
    local f8_local3 = 0
    if f8_local0 <= 15 then
        f8_local1 = 3034
    end
    local f8_local4 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local1, TARGET_ENE_0, 9999, f8_local2, f8_local3, 0, 0)
    f8_local4:TimingSetNumber(4, arg0:GetNumber(4) + 2, AI_TIMING_SET__ACTIVATE)
    arg0:SetNumber(1, 0)
    arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 7)
    arg0:SetNumber(0, 6)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act07 = function (arg0, arg1, arg2)
    local f9_local0 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 15 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f9_local2 = 15 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 1.5
    local f9_local6 = 3
    local f9_local7 = arg0:GetRandam_Int(1, 100)
    local f9_local8 = 3012
    local f9_local9 = 0
    local f9_local10 = 0
    if f9_local7 <= 50 then
        f9_local0 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
        f9_local1 = 15 - arg0:GetMapHitRadius(TARGET_SELF) + 2
        f9_local2 = 15 - arg0:GetMapHitRadius(TARGET_SELF) + 2
        f9_local8 = 3013
    end
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local8, TARGET_ENE_0, 9999, f9_local9, f9_local10, 0, 0)
    arg0:SetNumber(0, 7)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act08 = function (arg0, arg1, arg2)
    local f10_local0 = arg0:GetRandam_Int(1, 100)
    local f10_local1 = 0
    local f10_local2 = 0
    local f10_local3 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, 9999, f10_local1, f10_local2, 0, 0)
    f10_local3:TimingSetNumber(4, arg0:GetNumber(4) + 1, AI_TIMING_SET__ACTIVATE)
    if f10_local0 <= 30 then
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    end
    arg0:SetNumber(0, 8)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act09 = function (arg0, arg1, arg2)
    local f11_local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = 10 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f11_local2 = 10 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f11_local3 = 100
    local f11_local4 = 0
    local f11_local5 = 1.5
    local f11_local6 = 3
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 0
    local f11_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 9999, f11_local7, f11_local8, 0, 0)
    arg0:SetNumber(0, 5)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act10 = function (arg0, arg1, arg2)
    local f12_local0 = 0
    local f12_local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 20002, TARGET_ENE_0, 9999, f12_local0, f12_local1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act30 = function (arg0, arg1, arg2)
    local f13_local0 = 0
    local f13_local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, 9999, f13_local0, f13_local1, 0, 0)
    arg0:SetNumber(0, 30)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act31 = function (arg0, arg1, arg2)
    local f14_local0 = 0
    local f14_local1 = 0
    local f14_local2 = 20000
    arg1:AddSubGoal(GOAL_COMMON_AttackImmediateAction, 10, f14_local2, TARGET_ENE_0, 9999, f14_local0, f14_local1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act21 = function (arg0, arg1, arg2)
    local f15_local0 = 3
    local f15_local1 = 45
    arg1:AddSubGoal(GOAL_COMMON_Turn, f15_local0, TARGET_ENE_0, f15_local1, -1, GOAL_RESULT_Success, true)
    arg0:SetNumber(0, 21)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act22 = function (arg0, arg1, arg2)
    local f16_local0 = 3
    local f16_local1 = 0
    local f16_local2 = 5202
    if SpaceCheck(arg0, arg1, -45, 2) == true then
        if SpaceCheck(arg0, arg1, 45, 2) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f16_local2 = 5202
            else
                f16_local2 = 5203
            end
        else
            f16_local2 = 5202
        end
    elseif SpaceCheck(arg0, arg1, 45, 2) == true then
        f16_local2 = 5203
    else

    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f16_local0, f16_local2, TARGET_ENE_0, f16_local1, AI_DIR_TYPE_R, 0)
    arg0:SetNumber(0, 22)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act23 = function (arg0, arg1, arg2)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    local f17_local1 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_R, 180, 999) then
                f17_local1 = 1
            else
                f17_local1 = 0
            end
        else
            f17_local1 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f17_local1 = 1
    else

    end
    local f17_local2 = arg0:GetRandam_Float(1, 1.5)
    local f17_local3 = arg0:GetRandam_Int(30, 45)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f17_local2, TARGET_ENE_0, f17_local1, f17_local3, true, true, -1)
    arg0:SetNumber(0, 23)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act24 = function (arg0, arg1, arg2)
    local f18_local0 = arg0:GetDist(TARGET_ENE_0)
    local f18_local1 = 3
    local f18_local2 = 0
    local f18_local3 = 5211
    if SpaceCheck(arg0, arg1, 180, 2) == true and SpaceCheck(arg0, arg1, 180, 4) == true then
        if f18_local0 > 4 then

        else
            f18_local3 = 5211
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f18_local1, f18_local3, TARGET_ENE_0, f18_local2, AI_DIR_TYPE_B, 0)
    arg0:SetNumber(0, 24)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act25 = function (arg0, arg1, arg2)
    local f19_local0 = arg0:GetRandam_Float(2, 4)
    local f19_local1 = arg0:GetRandam_Float(1, 3)
    local f19_local2 = arg0:GetDist(TARGET_ENE_0)
    local f19_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f19_local0, TARGET_ENE_0, f19_local1, TARGET_ENE_0, true, f19_local3)
    arg0:SetNumber(0, 25)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act26 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act27 = function (arg0, arg1, arg2)
    local f21_local0 = arg0:GetRandam_Int(1, 100)
    if YousumiAct_SubGoal(arg0, arg1, true, 60, 30) == false then
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    local f21_local1 = 0
    local f21_local2 = SpaceCheck_SidewayMove(arg0, arg1, 1)
    if f21_local2 == 0 then
        f21_local1 = 0
    elseif f21_local2 == 1 then
        f21_local1 = 1
    elseif f21_local2 == 2 then
        if f21_local0 <= 50 then
            f21_local1 = 0
        else
            f21_local1 = 1
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    arg0:SetNumber(10, f21_local1)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f21_local1, arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act28 = function (arg0, arg1, arg2)
    local f22_local0 = arg0:GetDist(TARGET_ENE_0)
    local f22_local1 = 1.5
    local f22_local2 = 1.5
    local f22_local3 = arg0:GetRandam_Int(30, 45)
    local f22_local4 = -1
    local f22_local5 = arg0:GetRandam_Int(0, 1)
    if f22_local0 <= 18 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f22_local1, TARGET_ENE_0, f22_local5, f22_local3, true, true, f22_local4)
    elseif f22_local0 <= 25 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f22_local2, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f22_local2, TARGET_ENE_0, 8, TARGET_SELF, false, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f23_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
    local f23_local1 = arg1:GetDist(TARGET_ENE_0)
    local f23_local2 = arg1:GetRandam_Int(1, 100)
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
    if arg1:IsInterupt(INTERUPT_ShootImpact) and arg0.ShootReaction(arg1, arg2) then
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and arg1:GetNumber(1) == 0 then
            local f23_local3 = 3001
            if f23_local2 <= 70 then
                f23_local3 = 3001
                if f23_local1 <= 15 then
                    f23_local3 = 3031
                end
            else
                f23_local3 = 3011
                if f23_local1 <= 15 then
                    f23_local3 = 3035
                end
            end
            arg2:ClearSubGoal()
            local f23_local4 = arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, f23_local3, TARGET_ENE_0, 9999, 0, 0)
            f23_local4:TimingSetNumber(4, arg1:GetNumber(4) + 2, AI_TIMING_SET__ACTIVATE)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and arg1:GetNumber(1) == 0 then
            local f23_local3 = 3002
            if f23_local1 <= 15 then
                f23_local3 = 3032
            end
            arg2:ClearSubGoal()
            local f23_local4 = arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, f23_local3, TARGET_ENE_0, 9999, 0, 0)
            f23_local4:TimingSetNumber(4, arg1:GetNumber(4) + 2, AI_TIMING_SET__ACTIVATE)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5027 then
            if f23_local1 <= 10 then
                arg2:ClearSubGoal()
                local f23_local3 = arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3015, TARGET_ENE_0, 9999, 0, 0)
                f23_local3:TimingSetNumber(4, arg1:GetNumber(4) + 2, AI_TIMING_SET__ACTIVATE)
                return true
            else
                arg1:SetTimer(3, 2)
                arg1:Replanning()
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) then
        if arg1:IsInsideObserve(0) then
            arg2:ClearSubGoal()
            local f23_local3 = arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3012, TARGET_ENE_0, 9999, 0)
            f23_local3:TimingSetNumber(4, arg1:GetNumber(4) + 2, AI_TIMING_SET__ACTIVATE)
            arg1:SetNumber(1, 1)
            arg1:DeleteObserve(0)
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 3145010) and (not not arg1:IsInsideObserve(1) or arg1:IsInsideObserve(2)) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackImmediateAction, 10, 20000, TARGET_ENE_0, 9999, 0)
            arg1:DeleteObserve(1)
            arg1:DeleteObserve(2)
            return true
        end
    end
    return false
    
end

Goal.Damaged = function (arg0, arg1, arg2)
    if SpaceCheck(arg0, arg1, 180, 2) == false then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, StepLife, 5201, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        return true
    end
    return false
    
end

Goal.ShootReaction = function (arg0, arg1)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3100, TARGET_ENE_0, 9999, 0)
    return true
    
end

Goal.Kengeki_Activate = function (arg0, arg1, arg2, arg3)
    local f26_local0 = ReturnKengekiSpecialEffect(arg1)
    if f26_local0 == 0 then
        return false
    end
    local f26_local1 = {}
    local f26_local2 = {}
    local f26_local3 = {}
    Common_Clear_Param(f26_local1, f26_local2, f26_local3)
    local f26_local4 = arg1:GetDist(TARGET_ENE_0)
    local f26_local5 = arg1:GetSp(TARGET_SELF)
    if f26_local5 <= 0 then
        f26_local1[50] = 100
    elseif f26_local0 == 200216 then
        if f26_local4 >= 2 then
            f26_local1[50] = 100
        elseif f26_local4 <= 0.2 then
            f26_local1[50] = 100
        else
            f26_local1[6] = 100
        end
    end
    f26_local2[6] = REGIST_FUNC(arg1, arg2, arg0.Kengeki06)
    f26_local2[50] = REGIST_FUNC(arg1, arg2, arg0.NoAction)
    local f26_local6 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    return Common_Kengeki_Activate(arg1, arg2, f26_local1, f26_local2, f26_local6, f26_local3)
    
end

Goal.Kengeki06 = function (arg0, arg1, arg2)
    local f27_local0 = arg0:GetRandam_Int(1, 100)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3075, TARGET_ENE_0, 9999, 0, 0)
    if f27_local0 <= 100 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3014, TARGET_ENE_0, 9999, 0, 0)
        if f27_local0 <= 100 then
            arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
        end
    end
    
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


