RegisterTableGoal(GOAL_Yasyazaru510010_Battle, "GOAL_Yasyazaru510010_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Yasyazaru510010_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetTimer(6, 50)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = arg0:Kengeki_Activate(arg1, arg2)
    if f2_local0 then
        return 
    end
    f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_EVENT)
    local f2_local4 = arg1:GetHpRate(TARGET_EVENT)
    local f2_local5 = arg1:GetDist(TARGET_ENE_0)
    local f2_local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local7 = arg1:GetEventRequest()
    local f2_local8 = arg1:GetEventRequest(1)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 3510900)
    arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 3510901)
    arg1:DeleteObserve(0)
    if arg1:GetTimer(5) <= 0 and arg1:GetNumber(1) == 1 then
        arg1:SetNumber(1, 0)
    end
    if arg1:GetNumber(1) == 1 and f2_local4 <= 0 then
        arg1:SetNumber(1, 0)
    end
    if f2_local7 == 10 then
        arg1:SetEventMoveTarget(1702871)
        if arg1:IsInsideTarget(POINT_EVENT, AI_DIR_TYPE_B, 180) then
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, POINT_EVENT, 9999, 0, 0, 0, 0)
        end
        arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, POINT_EVENT, 2, TARGET_SELF, false, -1)
    elseif f2_local7 == 11 then
        arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, 9999, 0, 0, 0, 0)
        arg2:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_SELF, 0, 0, 0)
    elseif not not arg1:HasSpecialEffectId(TARGET_ENE_0, 110060) or arg1:HasSpecialEffectId(TARGET_ENE_0, 110010) then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            f2_local0[27] = 100
        else
            f2_local0[21] = 100
        end
    elseif Common_ActivateAct(arg1, arg2, 1) then

    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, COMMON_SP_EFFECT_PC_BREAK) and arg1:GetNumber(1) == 0 then
        if 20 - arg1:GetMapHitRadius(TARGET_SELF) <= f2_local5 then
            f2_local0[9] = 100
        else
            f2_local0[4] = 100
        end
    elseif arg1:GetNumber(1) == 1 or arg1:HasSpecialEffectId(TARGET_ENE_0, 110030) then
        if arg1:GetNumber(5) == 1 then
            f2_local0[23] = 1
            f2_local0[24] = 200
        elseif f2_local3 >= 10 then
            f2_local0[30] = 100000
        elseif f2_local5 >= 20 then
            f2_local0[4] = 0
            f2_local0[6] = 0
            f2_local0[8] = 0
            f2_local0[22] = 200
            f2_local0[23] = 400
        elseif f2_local5 >= 5 then
            f2_local0[6] = 0
            f2_local0[8] = 0
            f2_local0[22] = 200
            f2_local0[23] = 300
        elseif f2_local5 >= 3 then
            f2_local0[8] = 0
            f2_local0[22] = 200
            f2_local0[23] = 100
            f2_local0[24] = 500
        else
            f2_local0[4] = 0
            f2_local0[7] = 0
            f2_local0[22] = 50
            f2_local0[24] = 400
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        f2_local0[22] = 100
        if f2_local5 >= 10 then
            f2_local0[4] = 100
            f2_local0[21] = 50
        elseif f2_local5 >= 3 then
            f2_local0[4] = 100
            f2_local0[22] = 100
        else
            f2_local0[6] = 500
            f2_local0[22] = 100
            f2_local0[24] = 100
        end
    else
        if f2_local7 == 20 then
            f2_local0[12] = 500
        elseif f2_local5 >= 20 then
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 50
            f2_local0[6] = 0
            f2_local0[7] = 60
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 100
        elseif f2_local5 >= 10 then
            f2_local0[5] = 60
            f2_local0[6] = 0
            f2_local0[7] = 50
            f2_local0[8] = 0
            f2_local0[9] = 0
            f2_local0[10] = 120
            if arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
                f2_local0[4] = 0
                f2_local0[41] = 100
                f2_local0[9] = 0
                f2_local0[40] = 0
            end
        elseif f2_local5 >= 3 then
            f2_local0[1] = 100
            f2_local0[4] = 50
            f2_local0[5] = 100
            f2_local0[6] = 100
            f2_local0[7] = 100
            f2_local0[8] = 0
            f2_local0[9] = 50
            f2_local0[22] = 100
            f2_local0[24] = 100
            if arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
                f2_local0[4] = 0
                f2_local0[41] = 100
                f2_local0[9] = 0
                f2_local0[40] = 100
            end
        else
            f2_local0[1] = 0
            f2_local0[2] = 0
            f2_local0[3] = 0
            f2_local0[4] = 0
            f2_local0[5] = 0
            f2_local0[6] = 500
            f2_local0[7] = 0
            f2_local0[8] = 100
            f2_local0[9] = 100
            f2_local0[22] = 100
            f2_local0[24] = 100
        end
        if not not arg1:HasSpecialEffectId(TARGET_ENE_0, 109031) or arg1:HasSpecialEffectId(TARGET_ENE_0, 110125) then
            f2_local0[22] = 1
            f2_local0[24] = 1
        end
    end
    if arg1:IsFinishTimer(0) == false then
        f2_local0[22] = 1
    end
    if arg1:IsFinishTimer(1) == false and arg1:GetNumber(1) == 0 then
        f2_local0[24] = 1
    end
    if arg1:GetNumber(1) == 1 then
        arg1:SetNumber(5, 0)
    end
    if SpaceCheck(arg1, arg2, 45, 2) == false and SpaceCheck(arg1, arg2, -45, 2) == false then

    else

    end
    if SpaceCheck(arg1, arg2, 90, 1) == false and SpaceCheck(arg1, arg2, -90, 1) == false then
        f2_local0[23] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 2) == false then

    else

    end
    if SpaceCheck(arg1, arg2, 180, 1) == false then

    else

    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 8, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3003, 8, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3004, 8, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3005, 8, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3006, 8, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3007, 12, f2_local0[6], 0)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3050, 12, f2_local0[6], 0)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3009, 8, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3011, 8, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3015, 8, f2_local0[9], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3066, 8, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3012, 14, f2_local0[10], 1)
    f2_local0[40] = SetCoolTime(arg1, arg2, 3067, 8, f2_local0[40], 1)
    f2_local0[41] = SetCoolTime(arg1, arg2, 3067, 14, f2_local0[41], 1)
    f2_local0[41] = SetCoolTime(arg1, arg2, 3005, 14, f2_local0[41], 1)
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
    f2_local1[21] = REGIST_FUNC(arg1, arg2, arg0.Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, arg0.Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, arg0.Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, arg0.Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, arg0.Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, arg0.Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, arg0.Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, arg0.Act28)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, arg0.Act30)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, arg0.Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, arg0.Act41)
    local f2_local9 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local9, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    local f3_local0 = 9.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 9.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local2 = 9.8 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 1.5
    local f3_local6 = 3
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local8 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local9 = 0
    local f3_local10 = 0
    local f3_local11 = arg0:GetRandam_Int(1, 100)
    if f3_local11 <= 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, f3_local7, f3_local9, f3_local10, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, 9999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, f3_local8, f3_local9, f3_local10, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 9999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    local f4_local0 = 10.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 10.4 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f4_local2 = 10.4 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 1.5
    local f4_local6 = 3
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 0
    local f4_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 9999, f4_local7, f4_local8, 0, 0)
    arg0:SetNumber(0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f5_local0 = 13.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 13.6 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f5_local2 = 13.6 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 1.5
    local f5_local6 = 3
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 0
    local f5_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 9999, f5_local7, f5_local8, 0, 0)
    arg0:SetNumber(0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act04 = function (arg0, arg1, arg2)
    local f6_local0 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 12 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f6_local2 = 12 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 1.5
    local f6_local6 = 3
    local f6_local7 = arg0:GetEventRequest(1)
    if f6_local7 == 10 then
        f6_local2 = 9999
        f6_local3 = 0
    end
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local8 = 0
    local f6_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 9999, f6_local8, f6_local9, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act05 = function (arg0, arg1, arg2)
    local f7_local0 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 8 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f7_local2 = 8 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 1.5
    local f7_local6 = 3
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 0
    local f7_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 9999, f7_local7, f7_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act06 = function (arg0, arg1, arg2)
    local f8_local0 = 10.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = 10.1 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f8_local2 = 10.1 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 1.5
    local f8_local6 = 3
    local f8_local7 = 0
    local f8_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3007, TARGET_ENE_0, 9999, f8_local7, f8_local8, 0, 0)
    arg0:SetTimer(6, 50)
    arg0:SetNumber(5, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act07 = function (arg0, arg1, arg2)
    local f9_local0 = 8.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 8.6 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f9_local2 = 8.6 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 1.5
    local f9_local6 = 3
    local f9_local7 = arg0:GetEventRequest(1)
    if f9_local7 == 10 then
        f9_local2 = 9999
        f9_local3 = 0
    end
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local8 = 0
    local f9_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 9999, f9_local8, f9_local9, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act08 = function (arg0, arg1, arg2)
    local f10_local0 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f10_local2 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 1.5
    local f10_local6 = 3
    local f10_local7 = 0
    local f10_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 9999, f10_local7, f10_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act09 = function (arg0, arg1, arg2)
    local f11_local0 = 7.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = 7.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f11_local2 = 7.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f11_local3 = 100
    local f11_local4 = 0
    local f11_local5 = 1.5
    local f11_local6 = 3
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 0
    local f11_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 9999, f11_local7, f11_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act10 = function (arg0, arg1, arg2)
    local f12_local0 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = 20 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f12_local2 = 20 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f12_local3 = 100
    local f12_local4 = 0
    local f12_local5 = 1.5
    local f12_local6 = 3
    Approach_Act_Flex(arg0, arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local f12_local7 = 0
    local f12_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 9999, f12_local7, f12_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act11 = function (arg0, arg1, arg2)
    local f13_local0 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = 20 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f13_local2 = 20 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f13_local3 = 100
    local f13_local4 = 0
    local f13_local5 = 1.5
    local f13_local6 = 3
    Approach_Act_Flex(arg0, arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    local f13_local7 = 0
    local f13_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, 9999, f13_local7, f13_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act12 = function (arg0, arg1, arg2)
    local f14_local0 = 10.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local1 = 10.1 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f14_local2 = 10.1 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f14_local3 = 100
    local f14_local4 = 0
    local f14_local5 = 1.5
    local f14_local6 = 3
    local f14_local7 = 3
    local f14_local8 = 0
    local f14_local9 = 0
    arg0:SetEventMoveTarget(1702821)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f14_local7, POINT_EVENT, 1, TARGET_SELF, false, -1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 20, 3007, TARGET_ENE_0, 9999, f14_local8, f14_local9, 0, 0)
    arg0:SetTimer(6, 50)
    arg0:SetNumber(5, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act30 = function (arg0, arg1, arg2)
    local f15_local0 = 3
    local f15_local1 = 8
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f15_local0, TARGET_EVENT, f15_local1, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act40 = function (arg0, arg1, arg2)
    local f16_local0 = 7.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local1 = 7.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f16_local2 = 7.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f16_local3 = 100
    local f16_local4 = 0
    local f16_local5 = 1.5
    local f16_local6 = 3
    Approach_Act_Flex(arg0, arg1, f16_local0, f16_local1, f16_local2, f16_local3, f16_local4, f16_local5, f16_local6)
    local f16_local7 = 0
    local f16_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, 9999, f16_local7, f16_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 9999, f16_local7, f16_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3067, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act41 = function (arg0, arg1, arg2)
    local f17_local0 = 7.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local1 = 7.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f17_local2 = 7.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f17_local3 = 100
    local f17_local4 = 0
    local f17_local5 = 1.5
    local f17_local6 = 3
    Approach_Act_Flex(arg0, arg1, f17_local0, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, f17_local6)
    local f17_local7 = 0
    local f17_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, 9999, f17_local7, f17_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3067, TARGET_ENE_0, 9999, 0, 0)
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
    arg0:SetTimer(0, 8)
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
    local f20_local6 = 3
    local f20_local7 = arg0:GetRandam_Int(30, 45)
    arg0:SetNumber(10, f20_local5)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f20_local6, TARGET_ENE_0, f20_local5, f20_local7, true, true, f20_local4)
    if arg0:GetNumber(1) == 1 then
        arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 5)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act24 = function (arg0, arg1, arg2)
    local f21_local0 = arg0:GetDist(TARGET_ENE_0)
    local f21_local1 = 10
    local f21_local2 = 0
    local f21_local3 = 5211
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f21_local1, f21_local3, TARGET_ENE_0, f21_local2, AI_DIR_TYPE_B, 0)
    arg0:SetTimer(1, 8)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act25 = function (arg0, arg1, arg2)
    local f22_local0 = arg0:GetRandam_Float(2, 4)
    local f22_local1 = arg0:GetRandam_Float(5, 7)
    local f22_local2 = arg0:GetDist(TARGET_ENE_0)
    local f22_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f22_local0, TARGET_ENE_0, f22_local1, TARGET_ENE_0, true, f22_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act26 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act27 = function (arg0, arg1, arg2)
    local f24_local0 = arg0:GetDist(TARGET_ENE_0)
    local f24_local1 = arg0:GetRandam_Int(1, 100)
    local f24_local2 = 15
    local f24_local3 = 10
    local f24_local4 = arg0:GetRandam_Float(2, 4)
    local f24_local5 = arg0:GetRandam_Int(30, 45)
    local f24_local6 = arg0:GetRandam_Float(3, 5)
    local f24_local7 = 3
    local f24_local8 = 0
    local f24_local9 = 3
    if f24_local2 <= f24_local0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f24_local4, TARGET_ENE_0, f24_local2, TARGET_ENE_0, true, -1)
    elseif f24_local0 <= f24_local3 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f24_local7, 5211, TARGET_ENE_0, f24_local8, AI_DIR_TYPE_B, f24_local9)
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f24_local4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), f24_local5, true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act28 = function (arg0, arg1, arg2)
    local f25_local0 = arg0:GetDist(TARGET_ENE_0)
    local f25_local1 = 1.5
    local f25_local2 = 1.5
    local f25_local3 = arg0:GetRandam_Int(30, 45)
    local f25_local4 = -1
    local f25_local5 = arg0:GetRandam_Int(0, 1)
    if f25_local0 <= 3 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f25_local1, TARGET_ENE_0, f25_local5, f25_local3, true, true, f25_local4)
    elseif f25_local0 <= 8 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f25_local2, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f25_local2, TARGET_ENE_0, 8, TARGET_SELF, false, -1)
    end
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
    if Interupt_PC_Break(arg1) then
        arg1:Replanning()
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if f26_local0 == 5028 then
            if f26_local1 <= 3 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 3, 3016, TARGET_ENE_0, 9999, 0)
                return true
            end
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 3510900 and arg1:GetNumber(1) == 0 then
            arg1:SetNumber(1, 1)
            arg1:SetTimer(5, 14)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 3510901 and arg1:GetNumber(1) == 1 then
            arg1:SetNumber(1, 0)
            arg2:ClearSubGoal()
            arg1:Replanning()
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) and arg1:IsInsideObserve(0) then
        arg1:DeleteObserve(0)
        arg2:ClearSubGoal()
        arg1:Replanning()
        return true
    end
    if Interupt_Use_Item(arg1, 2, 5) then
        if f26_local1 <= 20 - arg1:GetMapHitRadius(TARGET_SELF) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3012, TARGET_ENE_0, 9999, 0, 0, 0, 0)
            return true
        else
            arg1:Replanning()
            return true
        end
    end
    return false
    
end

Goal.Parry = function (arg0, arg1, arg2)
    local f27_local0 = arg0:GetHpRate(TARGET_SELF)
    local f27_local1 = arg0:GetDist(TARGET_ENE_0)
    local f27_local2 = arg0:GetSp(TARGET_SELF)
    local f27_local3 = arg0:GetRandam_Int(1, 100)
    local f27_local4 = 0
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
    local f28_local0 = 3
    if SpaceCheck(arg0, arg1, 180, 2) then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f28_local0, 5201, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        return true
    end
    return false
    
end

Goal.Kengeki_Activate = function (arg0, arg1, arg2)
    local f29_local0 = ReturnKengekiSpecialEffect(arg1)
    if f29_local0 == 0 then
        return false
    end
    local f29_local1 = {}
    local f29_local2 = {}
    local f29_local3 = {}
    Common_Clear_Param(f29_local1, f29_local2, f29_local3)
    local f29_local4 = arg1:GetDist(TARGET_ENE_0)
    local f29_local5 = arg1:GetSp(TARGET_SELF)
    local f29_local6 = arg1:GetEventRequest(1)
    arg1:SetNumber(0, arg1:GetNumber(0) + 1)
    if f29_local0 == 200200 or f29_local0 == 200300 then
        if f29_local6 == 10 then
            f29_local1[10] = 100
        elseif arg1:GetNumber(0) >= 2 then
            f29_local1[4] = 100
        elseif f29_local4 >= 3 then
            f29_local1[1] = 0
            f29_local1[2] = 100
            f29_local1[4] = 0
            f29_local1[11] = 50
        elseif f29_local4 >= 1 then
            f29_local1[1] = 100
            f29_local1[2] = 0
            f29_local1[4] = 0
            f29_local1[11] = 200
        else
            f29_local1[1] = 0
            f29_local1[2] = 0
            f29_local1[4] = 0
            f29_local1[3] = 100
            f29_local1[10] = 50
            f29_local1[11] = 200
        end
    elseif f29_local0 == 200201 or f29_local0 == 200301 then
        if f29_local6 == 10 then
            f29_local1[50] = 100
        elseif arg1:GetNumber(0) >= 2 then
            f29_local1[7] = 100
        elseif f29_local4 >= 1 then
            f29_local1[5] = 100
            f29_local1[6] = 50
            f29_local1[7] = 0
            f29_local1[8] = 50
        else
            f29_local1[5] = 0
            f29_local1[6] = 50
            f29_local1[7] = 0
            f29_local1[8] = 0
            f29_local1[9] = 100
        end
    else
        f29_local1[50] = 100
    end
    f29_local1[1] = SetCoolTime(arg1, arg2, 3060, 8, f29_local1[1], 1)
    f29_local1[2] = SetCoolTime(arg1, arg2, 3061, 8, f29_local1[2], 1)
    f29_local1[3] = SetCoolTime(arg1, arg2, 3062, 8, f29_local1[3], 1)
    f29_local1[4] = SetCoolTime(arg1, arg2, 3063, 8, f29_local1[4], 1)
    f29_local1[5] = SetCoolTime(arg1, arg2, 3065, 8, f29_local1[5], 1)
    f29_local1[6] = SetCoolTime(arg1, arg2, 3066, 8, f29_local1[6], 1)
    f29_local1[6] = SetCoolTime(arg1, arg2, 3015, 8, f29_local1[6], 1)
    f29_local1[7] = SetCoolTime(arg1, arg2, 3067, 8, f29_local1[7], 1)
    f29_local1[8] = SetCoolTime(arg1, arg2, 3068, 8, f29_local1[8], 1)
    f29_local1[9] = SetCoolTime(arg1, arg2, 3069, 8, f29_local1[9], 1)
    f29_local1[11] = SetCoolTime(arg1, arg2, 3050, 25, f29_local1[11], 0)
    f29_local1[11] = SetCoolTime(arg1, arg2, 3007, 25, f29_local1[11], 0)
    f29_local2[1] = REGIST_FUNC(arg1, arg2, arg0.Kengeki01)
    f29_local2[2] = REGIST_FUNC(arg1, arg2, arg0.Kengeki02)
    f29_local2[3] = REGIST_FUNC(arg1, arg2, arg0.Kengeki03)
    f29_local2[4] = REGIST_FUNC(arg1, arg2, arg0.Kengeki04)
    f29_local2[5] = REGIST_FUNC(arg1, arg2, arg0.Kengeki05)
    f29_local2[6] = REGIST_FUNC(arg1, arg2, arg0.Kengeki06)
    f29_local2[7] = REGIST_FUNC(arg1, arg2, arg0.Kengeki07)
    f29_local2[8] = REGIST_FUNC(arg1, arg2, arg0.Kengeki08)
    f29_local2[9] = REGIST_FUNC(arg1, arg2, arg0.Kengeki09)
    f29_local2[10] = REGIST_FUNC(arg1, arg2, arg0.Kengeki10)
    f29_local2[11] = REGIST_FUNC(arg1, arg2, arg0.Kengeki11)
    f29_local2[50] = REGIST_FUNC(arg1, arg2, arg0.NoAction)
    local f29_local7 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Kengeki_Activate(arg1, arg2, f29_local1, f29_local2, f29_local7, f29_local3)
    
end

Goal.Kengeki01 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3060, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki02 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3061, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki03 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3062, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki04 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3063, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(0, 0)
    
end

Goal.Kengeki05 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3065, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki06 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3066, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki07 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3067, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(0, 0)
    
end

Goal.Kengeki08 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3068, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki09 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3069, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki10 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3064, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki11 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 20, 3050, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetTimer(6, 50)
    arg0:SetNumber(5, 1)
    
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


