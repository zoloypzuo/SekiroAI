RegisterTableGoal(GOAL_Tokugawazamurai_kodachi_170010_Battle, "GOAL_Tokugawazamurai_kodachi_170010_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Tokugawazamurai_kodachi_170010_Battle, true)
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
    local f2_local5 = arg1:GetSp(TARGET_SELF)
    local f2_local6 = Check_ReachAttack(arg1, 3.5)
    arg1:DeleteObserve(0)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 110111)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 110112)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 110113)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 110114)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    Set_ConsecutiveGuardCount_Interrupt(arg1)
    if arg0:Kengeki_Activate(arg1, arg2) then
        return 
    end
    if Common_ActivateAct(arg1, arg2, 0, 2) then

    elseif f2_local6 ~= POSSIBLE_ATTACK then
        if f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            f2_local0[27] = 100
        elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            f2_local0[27] = 100
        elseif f2_local6 == UNREACH_ATTACK then
            f2_local0[27] = 100
        elseif f2_local6 == REACH_ATTACK_TARGET_HIGH_POSITION then
            if arg1:IsVisibleCurrTarget() then
                f2_local0[1] = 100
                f2_local0[2] = 100
                f2_local0[27] = 100
            else
                f2_local0[27] = 100
            end
        elseif f2_local6 == REACH_ATTACK_TARGET_LOW_POSITION then
            if arg1:IsVisibleCurrTarget() then
                f2_local0[1] = 100
                f2_local0[2] = 100
                f2_local0[27] = 100
            else
                f2_local0[27] = 100
            end
        else
            f2_local0[27] = 100
        end
    elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        KankyakuAct(arg1, arg2)
    elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if TorimakiAct(arg1, arg2) then
            f2_local0[5] = 100
            f2_local0[6] = 100
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        f2_local0[21] = 100
    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, COMMON_SP_EFFECT_PC_BREAK) then
        if f2_local3 >= 7 then
            f2_local0[6] = 100
        else
            f2_local0[2] = 100
        end
    elseif f2_local3 >= 7 then
        f2_local0[1] = 100
        f2_local0[2] = 100
        f2_local0[3] = 100
        f2_local0[4] = 100
        f2_local0[5] = 100
        f2_local0[6] = 100
        f2_local0[23] = 4000
    elseif f2_local3 >= 5 then
        f2_local0[1] = 100
        f2_local0[2] = 100
        f2_local0[3] = 100
        f2_local0[4] = 100
        f2_local0[5] = 100
        f2_local0[6] = 100
        f2_local0[23] = 10000
    elseif f2_local3 > 3 then
        f2_local0[1] = 100
        f2_local0[2] = 100
        f2_local0[3] = 100
        f2_local0[4] = 100
        f2_local0[5] = 100
        f2_local0[6] = 100
        f2_local0[8] = 100
        f2_local0[23] = 10000
    else
        f2_local0[1] = 100
        f2_local0[2] = 100
        f2_local0[3] = 100
        f2_local0[4] = 100
        f2_local0[5] = 100
        f2_local0[6] = 100
    end
    if arg1:IsFinishTimer(2) == false then
        f2_local0[23] = 0
    end
    if SpaceCheck(arg1, arg2, 45, 2) == false and SpaceCheck(arg1, arg2, -45, 2) == false then
        f2_local0[22] = 0
    end
    if SpaceCheck(arg1, arg2, 90, 1) == false and SpaceCheck(arg1, arg2, -90, 1) == false then
        f2_local0[23] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 2) == false then
        f2_local0[4] = 0
        f2_local0[24] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 1) == false then
        f2_local0[25] = 0
    end
    if f2_local5 >= 200 then
        f2_local0[4] = 0
    end
    if not not arg1:IsInsideTargetRegion(TARGET_SELF, 1112250) or arg1:IsInsideTargetRegion(TARGET_ENE_0, 1112250) then
        f2_local0[8] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3005, 15, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3030, 15, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3053, 15, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3045, 15, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3000, 15, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3001, 15, f2_local0[6], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3007, 15, f2_local0[8], 1)
    f2_local0[23] = SetCoolTime(arg1, arg2, 3022, 15, f2_local0[16], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, arg0.Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, arg0.Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, arg0.Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, arg0.Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, arg0.Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, arg0.Act06)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, arg0.Act08)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, arg0.Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, arg0.Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, arg0.Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, arg0.Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, arg0.Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, arg0.Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, arg0.Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, arg0.Act28)
    local f2_local7 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    local f3_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local2 = 4 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 1.5
    local f3_local6 = 3
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local8 = 3.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local9 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local10 = 0
    local f3_local11 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, f3_local7, f3_local10, f3_local11, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, f3_local8, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3027, TARGET_ENE_0, f3_local9, 0)
    if arg0:IsInsideTargetRegion(TARGET_SELF, 1112250) == false and arg0:IsInsideTargetRegion(TARGET_ENE_0, 1112250) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, 9999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    local f4_local0 = 4.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 4.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f4_local2 = 4.2 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 1.5
    local f4_local6 = 3
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local8 = 0
    local f4_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3030, TARGET_ENE_0, f4_local7, f4_local8, f4_local9, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3031, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f5_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f5_local2 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 1.5
    local f5_local6 = 3
    local f5_local7 = 3
    local f5_local8 = 0
    local f5_local9 = 5211
    local f5_local10 = -1
    local f5_local11 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_R, 180, 999) then
                f5_local11 = 1
            else
                f5_local11 = 0
            end
        else
            f5_local11 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f5_local11 = 1
    else

    end
    local f5_local12 = 3
    local f5_local13 = arg0:GetRandam_Int(30, 45)
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local12, f5_local6)
    local f5_local14 = 3.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local15 = 0
    local f5_local16 = 0
    if not (SpaceCheck(arg0, arg1, 180, 2) ~= false or SpaceCheck(arg0, arg1, 90, 1) ~= false) or SpaceCheck(arg0, arg1, -90, 1) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3053, TARGET_ENE_0, f5_local14, f5_local15, f5_local16, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3028, TARGET_ENE_0, 9999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3053, TARGET_ENE_0, f5_local14, f5_local15, f5_local16, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3028, TARGET_ENE_0, 9999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f5_local7, f5_local9, TARGET_ENE_0, f5_local15, AI_DIR_TYPE_B, 0)
        arg0:SetNumber(10, f5_local11)
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f5_local12, TARGET_ENE_0, f5_local11, f5_local13, true, true, f5_local10)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act04 = function (arg0, arg1, arg2)
    local f6_local0 = 9.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 9.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f6_local2 = 9.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 1.5
    local f6_local6 = 3
    local f6_local7 = arg0:GetDist(TARGET_ENE_0)
    local f6_local8 = 3
    local f6_local9 = 0
    local f6_local10 = 5211
    local f6_local11 = 0
    local f6_local12 = 0
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    if SpaceCheck(arg0, arg1, 180, 4) == true then
        if f6_local7 >= 7 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3045, TARGET_ENE_0, 9999, f6_local11, f6_local12, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3046, TARGET_ENE_0, 9999, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f6_local8, f6_local10, TARGET_ENE_0, f6_local11, AI_DIR_TYPE_B, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3045, TARGET_ENE_0, 9999, f6_local11, f6_local12, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3046, TARGET_ENE_0, 9999, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3045, TARGET_ENE_0, 9999, f6_local11, f6_local12, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3046, TARGET_ENE_0, 9999, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act05 = function (arg0, arg1, arg2)
    local f7_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f7_local2 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 1.5
    local f7_local6 = 3
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local8 = 0
    local f7_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, f7_local7, f7_local8, f7_local9, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3024, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act06 = function (arg0, arg1, arg2)
    local f8_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f8_local2 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 1.5
    local f8_local6 = 3
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local8 = 0
    local f8_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, f8_local7, f8_local8, f8_local9, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act07 = function (arg0, arg1, arg2)
    local f9_local0 = 9.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 9.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f9_local2 = 9.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 1.5
    local f9_local6 = 3
    local f9_local7 = 3
    local f9_local8 = 0
    local f9_local9 = 5211
    local f9_local10 = 2
    local f9_local11 = arg0:GetRandam_Int(30, 45)
    direction = 1
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local10, f9_local6)
    local f9_local12 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local13 = 0
    local f9_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3022, TARGET_ENE_0, f9_local12, f9_local13, f9_local14, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3046, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f9_local7, f9_local9, TARGET_ENE_0, f9_local13, AI_DIR_TYPE_B, 0)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f9_local10, TARGET_ENE_0, direction, f9_local11, true, true, Guard)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act08 = function (arg0, arg1, arg2)
    local f10_local0 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f10_local2 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 1.5
    local f10_local6 = 3
    local f10_local7 = 3
    local f10_local8 = 0
    local f10_local9 = 5211
    local f10_local10 = 2
    local f10_local11 = arg0:GetRandam_Int(30, 45)
    direction = 1
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local10, f10_local6)
    local f10_local12 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local13 = 0
    local f10_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3007, TARGET_ENE_0, f10_local12, f10_local13, f10_local14, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act09 = function (arg0, arg1, arg2)
    local f11_local0 = 9.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = 9.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f11_local2 = 9.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f11_local3 = 100
    local f11_local4 = 0
    local f11_local5 = 1.5
    local f11_local6 = 3
    local f11_local7 = 3
    local f11_local8 = 0
    local f11_local9 = 5211
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local11 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local12 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local13 = 9.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local14 = 0
    local f11_local15 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3022, TARGET_ENE_0, f11_local10, f11_local14, f11_local15, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3046, TARGET_ENE_0, f11_local11, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, f11_local12, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, f11_local12, 0)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f11_local7, f11_local9, TARGET_ENE_0, f11_local14, AI_DIR_TYPE_B, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3045, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act13 = function (arg0, arg1, arg2)
    local f12_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local2 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local3 = 100
    local f12_local4 = 0
    local f12_local5 = 1.5
    local f12_local6 = 3
    local f12_local7 = 3
    local f12_local8 = 0
    local f12_local9 = 5211
    Approach_Act_Flex(arg0, arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local f12_local10 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local11 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local12 = 0
    local f12_local13 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, f12_local10, f12_local12, f12_local13, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, f12_local11, f12_local12, f12_local13, 0, 0)
    if arg0:IsInsideTargetRegion(TARGET_SELF, 1112250) == false and arg0:IsInsideTargetRegion(TARGET_ENE_0, 1112250) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, 9999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act16 = function (arg0, arg1, arg2)
    local f13_local0 = 9.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = 9.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f13_local2 = 9.5 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f13_local3 = 100
    local f13_local4 = 0
    local f13_local5 = 1.5
    local f13_local6 = 3
    local f13_local7 = 3
    local f13_local8 = 0
    local f13_local9 = 5213
    Approach_Act_Flex(arg0, arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    local f13_local10 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local11 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local12 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local13 = 0
    local f13_local14 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3022, TARGET_ENE_0, f13_local10, f13_local13, f13_local14, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, f13_local11, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3046, TARGET_ENE_0, f13_local12, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act21 = function (arg0, arg1, arg2)
    local f14_local0 = 3
    local f14_local1 = 45
    arg1:AddSubGoal(GOAL_COMMON_Turn, f14_local0, TARGET_ENE_0, f14_local1, -1, GOAL_RESULT_Success, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act22 = function (arg0, arg1, arg2)
    local f15_local0 = 3
    local f15_local1 = 0
    local f15_local2 = 5212
    if SpaceCheck(arg0, arg1, -45, 2) == true then
        if SpaceCheck(arg0, arg1, 45, 2) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f15_local2 = 5212
            else
                f15_local2 = 5213
            end
        else
            f15_local2 = 5212
        end
    elseif SpaceCheck(arg0, arg1, 45, 2) == true then
        f15_local2 = 5213
    else

    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f15_local0, f15_local2, TARGET_ENE_0, f15_local1, AI_DIR_TYPE_R, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act23 = function (arg0, arg1, arg2)
    local f16_local0 = arg0:GetDist(TARGET_ENE_0)
    local f16_local1 = arg0:GetSp(TARGET_SELF)
    local f16_local2 = 20
    local f16_local3 = arg0:GetRandam_Int(1, 100)
    local f16_local4 = -1
    arg0:SetTimer(2, 7)
    local f16_local5 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_R, 180, 999) then
                f16_local5 = 1
            else
                f16_local5 = 0
            end
        else
            f16_local5 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f16_local5 = 1
    else

    end
    local f16_local6 = 3
    local f16_local7 = arg0:GetRandam_Int(30, 45)
    arg0:SetNumber(10, f16_local5)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f16_local6, TARGET_ENE_0, f16_local5, f16_local7, true, true, f16_local4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act24 = function (arg0, arg1, arg2)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    local f17_local1 = 3
    local f17_local2 = 0
    local f17_local3 = 5211
    if SpaceCheck(arg0, arg1, 180, 2) == true and SpaceCheck(arg0, arg1, 180, 4) == true then
        if f17_local0 > 4 then
            f17_local3 = 5211
        else
            f17_local3 = 5211
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f17_local1, f17_local3, TARGET_ENE_0, f17_local2, AI_DIR_TYPE_B, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act25 = function (arg0, arg1, arg2)
    local f18_local0 = arg0:GetRandam_Float(2, 4)
    local f18_local1 = arg0:GetRandam_Float(5, 7)
    local f18_local2 = arg0:GetDist(TARGET_ENE_0)
    local f18_local3 = 9910
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f18_local0, TARGET_ENE_0, f18_local1, TARGET_ENE_0, true, f18_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act26 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act27 = function (arg0, arg1, arg2)
    local f20_local0 = arg0:GetRandam_Int(1, 100)
    if YousumiAct_SubGoal(arg0, arg1, false, 60, 30) == false then
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    local f20_local1 = 0
    local f20_local2 = SpaceCheck_SidewayMove(arg0, arg1, 1)
    if f20_local2 == 0 then
        f20_local1 = 0
    elseif f20_local2 == 1 then
        f20_local1 = 1
    elseif f20_local2 == 2 then
        if f20_local0 <= 50 then
            f20_local1 = 0
        else
            f20_local1 = 1
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    arg0:SetNumber(10, f20_local1)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f20_local1, arg0:GetRandam_Int(30, 45), true, true, -1)
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
    if f21_local0 <= 3 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f21_local1, TARGET_ENE_0, f21_local5, f21_local3, true, true, f21_local4)
    elseif f21_local0 <= 8 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f21_local2, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f21_local2, TARGET_ENE_0, 8, TARGET_SELF, false, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f22_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
    local f22_local1 = 0.3
    local f22_local2 = 0
    local f22_local3 = 5202
    local f22_local4 = 90
    local f22_local5 = 4
    local f22_local6 = arg1:GetDistYSigned(TARGET_ENE_0)
    local f22_local7 = arg1:GetDist(TARGET_ENE_0)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ParryTiming) then
        if arg1:HasSpecialEffectId(TARGET_ENE_0, 3502520) then
            return false
        else
            return Common_Parry(arg1, arg2, 50, 0, 2)
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        return arg0.Damaged(arg1, arg2)
    end
    if arg1:IsInterupt(INTERUPT_ShootImpact) and arg0.ShootReaction(arg1, arg2) then
        return true
    end
    if Interupt_PC_Break(arg1) then
        arg1:Replanning()
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if f22_local0 == 110111 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_SpinStep, f22_local1, 5211, TARGET_ENE_0, f22_local2, AI_DIR_TYPE_R, 0)
            return true
        elseif f22_local0 == 110112 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_SpinStep, f22_local1, 5210, TARGET_ENE_0, f22_local2, AI_DIR_TYPE_R, 0)
            return true
        elseif f22_local0 == 110113 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_SpinStep, f22_local1, 5213, TARGET_ENE_0, f22_local2, AI_DIR_TYPE_R, 0)
            return true
        elseif f22_local0 == 110114 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_SpinStep, f22_local1, 5212, TARGET_ENE_0, f22_local2, AI_DIR_TYPE_R, 0)
            return true
        elseif f22_local0 == 5025 then
            arg1:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, f22_local4, f22_local5)
            return true
        elseif f22_local0 == 5026 then
            arg1:SetNumber(0, 0)
            return true
        elseif f22_local0 == 5028 and arg1:GetTimer(0) <= 0 and f22_local7 > 3 then
            arg1:SetTimer(0, 15)
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 9999, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 9999, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, 9999, 0)
            return true
        elseif f22_local0 == 5030 then
            arg1:SetTimer(0, 10)
            return true
        end
    elseif arg1:IsInterupt(INTERUPT_Inside_ObserveArea) and arg1:IsInsideObserve(0) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3046, TARGET_ENE_0, 9999, 0)
        arg1:DeleteObserve(0)
    end
    return false
    
end

Goal.ShootReaction = function (arg0, arg1)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3102, TARGET_ENE_0, 9999, 0)
    return true
    
end

Goal.Kengeki_Activate = function (arg0, arg1, arg2, arg3)
    local f24_local0 = ReturnKengekiSpecialEffect(arg1)
    if f24_local0 == 0 then
        return false
    end
    local f24_local1 = {}
    local f24_local2 = {}
    local f24_local3 = {}
    Common_Clear_Param(f24_local1, f24_local2, f24_local3)
    local f24_local4 = arg1:GetDist(TARGET_ENE_0)
    local f24_local5 = arg1:GetSp(TARGET_SELF)
    local f24_local6 = 3
    local f24_local7 = 0
    local f24_local8 = 0
    if f24_local5 <= 0 then
        f24_local1[50] = 100
    else
        if f24_local0 == 200200 then
            arg1:SetNumber(0, arg1:GetNumber(0) + 1)
            if f24_local4 >= 3 then
                f24_local1[50] = 100
            elseif f24_local4 <= -1 then
                f24_local1[50] = 100
            elseif arg1:GetNumber(0) >= 3 then
                f24_local1[1] = 100
                f24_local1[2] = 20
                f24_local1[3] = 20
                f24_local1[4] = 20
                f24_local1[5] = 100
                f24_local1[20] = 100
            else
                f24_local1[2] = 100
                f24_local1[3] = 100
                f24_local1[4] = 100
                f24_local1[20] = 50
            end
        elseif f24_local0 == 200201 then
            arg1:SetNumber(0, arg1:GetNumber(0) + 1)
            if f24_local4 >= 3 then
                f24_local1[50] = 100
            elseif f24_local4 <= -1 then
                f24_local1[50] = 100
            elseif arg1:GetNumber(0) >= 3 then
                f24_local1[10] = 100
                f24_local1[11] = 20
                f24_local1[12] = 100
                f24_local1[13] = 20
                f24_local1[14] = 20
                f24_local1[20] = 100
            else
                f24_local1[11] = 100
                f24_local1[13] = 100
                f24_local1[14] = 100
                f24_local1[20] = 50
            end
        elseif f24_local0 == 200205 then
            arg1:SetNumber(0, arg1:GetNumber(0) + 1)
            if f24_local4 >= 3 then
                f24_local1[50] = 100
            elseif f24_local4 <= -1 then
                f24_local1[50] = 100
            elseif arg1:GetNumber(0) >= 3 then
                f24_local1[1] = 100
                f24_local1[2] = 20
                f24_local1[3] = 20
                f24_local1[4] = 20
                f24_local1[5] = 100
                f24_local1[20] = 100
            else
                f24_local1[2] = 100
                f24_local1[3] = 100
                f24_local1[4] = 100
            end
        elseif f24_local0 == 200206 then
            arg1:SetNumber(0, arg1:GetNumber(0) + 1)
            if f24_local4 >= 3 then
                f24_local1[50] = 100
            elseif f24_local4 <= -1 then
                f24_local1[50] = 100
            elseif arg1:GetNumber(0) >= 3 then
                f24_local1[10] = 100
                f24_local1[11] = 20
                f24_local1[12] = 100
                f24_local1[13] = 20
                f24_local1[14] = 20
                f24_local1[20] = 100
            else
                f24_local1[11] = 100
                f24_local1[13] = 100
                f24_local1[14] = 100
            end
        elseif f24_local0 == 200210 then
            if f24_local4 >= 3 then
                f24_local1[50] = 100
            elseif f24_local4 <= -1 then
                f24_local1[50] = 100
            else
                f24_local1[20] = 50
                f24_local1[22] = 100
                f24_local1[25] = 100
            end
        elseif f24_local0 == 200211 then
            if f24_local4 >= 3 then
                f24_local1[50] = 100
            elseif f24_local4 <= -1 then
                f24_local1[50] = 100
            else
                f24_local1[20] = 50
                f24_local1[21] = 100
                f24_local1[25] = 100
            end
        elseif f24_local0 == 200215 then
            arg1:SetNumber(0, arg1:GetNumber(0) + 1)
            if f24_local4 >= 3 then
                f24_local1[50] = 100
            elseif f24_local4 <= -1 then
                f24_local1[50] = 100
            elseif arg1:GetNumber(0) >= 3 then
                f24_local1[1] = 100
                f24_local1[2] = 20
                f24_local1[3] = 20
                f24_local1[4] = 20
                f24_local1[5] = 100
                f24_local1[20] = 100
            else
                f24_local1[2] = 100
                f24_local1[3] = 100
                f24_local1[4] = 100
            end
        elseif f24_local0 == 200216 then
            arg1:SetNumber(0, arg1:GetNumber(0) + 1)
            if f24_local4 >= 3 then
                f24_local1[50] = 100
            elseif f24_local4 <= -1 then
                f24_local1[50] = 100
            elseif arg1:GetNumber(0) >= 3 then
                f24_local1[10] = 100
                f24_local1[11] = 20
                f24_local1[12] = 100
                f24_local1[13] = 20
                f24_local1[14] = 20
                f24_local1[20] = 100
            else
                f24_local1[11] = 100
                f24_local1[13] = 100
                f24_local1[14] = 100
            end
        else
            f24_local1[50] = 100
        end
        if SpaceCheck(arg1, arg2, 180, 2) == false then
            f24_local1[20] = 0
        end
    end
    f24_local1[1] = SetCoolTime(arg1, arg2, 3005, 15, f24_local1[1], 1)
    f24_local1[2] = SetCoolTime(arg1, arg2, 3061, 15, f24_local1[2], 1)
    f24_local1[3] = SetCoolTime(arg1, arg2, 3005, 15, f24_local1[3], 1)
    f24_local1[4] = SetCoolTime(arg1, arg2, 3005, 15, f24_local1[4], 1)
    f24_local1[5] = SetCoolTime(arg1, arg2, 3063, 15, f24_local1[5], 1)
    f24_local1[10] = SetCoolTime(arg1, arg2, 3055, 15, f24_local1[10], 1)
    f24_local1[11] = SetCoolTime(arg1, arg2, 3066, 15, f24_local1[11], 1)
    f24_local1[12] = SetCoolTime(arg1, arg2, 3059, 15, f24_local1[12], 1)
    f24_local1[13] = SetCoolTime(arg1, arg2, 3056, 15, f24_local1[13], 1)
    f24_local1[14] = SetCoolTime(arg1, arg2, 3055, 15, f24_local1[14], 1)
    f24_local1[20] = SetCoolTime(arg1, arg2, 5211, 15, f24_local1[20], 1)
    f24_local1[21] = SetCoolTime(arg1, arg2, 3085, 15, f24_local1[21], 1)
    f24_local1[22] = SetCoolTime(arg1, arg2, 3080, 15, f24_local1[22], 1)
    f24_local1[25] = SetCoolTime(arg1, arg2, 3021, 15, f24_local1[25], 1)
    f24_local1[26] = SetCoolTime(arg1, arg2, 3021, 15, f24_local1[26], 1)
    f24_local2[1] = REGIST_FUNC(arg1, arg2, arg0.Kengeki01)
    f24_local2[2] = REGIST_FUNC(arg1, arg2, arg0.Kengeki02)
    f24_local2[3] = REGIST_FUNC(arg1, arg2, arg0.Kengeki03)
    f24_local2[4] = REGIST_FUNC(arg1, arg2, arg0.Kengeki04)
    f24_local2[5] = REGIST_FUNC(arg1, arg2, arg0.Kengeki05)
    f24_local2[10] = REGIST_FUNC(arg1, arg2, arg0.Kengeki10)
    f24_local2[11] = REGIST_FUNC(arg1, arg2, arg0.Kengeki11)
    f24_local2[12] = REGIST_FUNC(arg1, arg2, arg0.Kengeki12)
    f24_local2[13] = REGIST_FUNC(arg1, arg2, arg0.Kengeki13)
    f24_local2[14] = REGIST_FUNC(arg1, arg2, arg0.Kengeki14)
    f24_local2[20] = REGIST_FUNC(arg1, arg2, arg0.Kengeki20)
    f24_local2[21] = REGIST_FUNC(arg1, arg2, arg0.Kengeki21)
    f24_local2[22] = REGIST_FUNC(arg1, arg2, arg0.Kengeki22)
    f24_local2[25] = REGIST_FUNC(arg1, arg2, arg0.Kengeki25)
    f24_local2[26] = REGIST_FUNC(arg1, arg2, arg0.Kengeki26)
    f24_local2[40] = REGIST_FUNC(arg1, arg2, arg0.Kengeki40)
    f24_local2[41] = REGIST_FUNC(arg1, arg2, arg0.Kengeki41)
    f24_local2[42] = REGIST_FUNC(arg1, arg2, arg0.Kengeki42)
    f24_local2[44] = REGIST_FUNC(arg1, arg2, arg0.Kengeki44)
    f24_local2[50] = REGIST_FUNC(arg1, arg2, arg0.NoAction)
    local f24_local9 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    return Common_Kengeki_Activate(arg1, arg2, f24_local1, f24_local2, f24_local9, f24_local3)
    
end

Goal.Kengeki01 = function (arg0, arg1, arg2)
    arg0:SetNumber(0, 0)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3050, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3025, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki02 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3061, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki03 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3050, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3028, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki04 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3027, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki05 = function (arg0, arg1, arg2)
    arg0:SetNumber(0, 0)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3063, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki10 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3055, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3024, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki11 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3066, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3028, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki12 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3059, TARGET_ENE_0, 9999, 0, 0)
    if arg0:IsInsideTargetRegion(TARGET_SELF, 1112250) == false and arg0:IsInsideTargetRegion(TARGET_ENE_0, 1112250) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, 9999, 0, 0)
    end
    
end

Goal.Kengeki13 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3056, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki14 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 9999, 0, 0)
    if arg0:IsInsideTargetRegion(TARGET_SELF, 1112250) == false and arg0:IsInsideTargetRegion(TARGET_ENE_0, 1112250) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, 9999, 0, 0)
    end
    
end

Goal.Kengeki20 = function (arg0, arg1, arg2)
    local f35_local0 = arg0:GetDist(TARGET_ENE_0)
    local f35_local1 = arg0:GetSp(TARGET_SELF)
    local f35_local2 = arg0:GetSpRate(TARGET_SELF)
    local f35_local3 = 20
    local f35_local4 = arg0:GetRandam_Int(1, 100)
    local f35_local5 = -1
    local f35_local6 = 3
    local f35_local7 = 0
    local f35_local8 = 5211
    local f35_local9 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_R, 180, 999) then
                f35_local9 = 1
            else
                f35_local9 = 0
            end
        else
            f35_local9 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f35_local9 = 1
    else

    end
    local f35_local10 = 3
    local f35_local11 = arg0:GetRandam_Int(30, 45)
    arg0:SetNumber(10, f35_local9)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 7, 5211, TARGET_ENE_0, 9999, 0, 0)
    if f35_local2 <= 0.5 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 7, 3045, TARGET_ENE_0, 9999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f35_local10, TARGET_ENE_0, f35_local9, f35_local11, true, true, f35_local5)
    end
    
end

Goal.Kengeki21 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3085, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3020, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki22 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3080, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki25 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3046, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki26 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3021, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3046, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki40 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3066, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki41 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3066, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3028, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki42 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3061, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3027, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki43 = function (arg0, arg1, arg2)
    
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


