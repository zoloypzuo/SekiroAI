RegisterTableGoal(GOAL_Tokugawazamurai_katana_170000_Battle, "GOAL_Tokugawazamurai_katana_170000_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Tokugawazamurai_katana_170000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    if arg1:HasSpecialEffectId(TARGET_SELF, 200033) then
        arg2:AddSubGoal(GOAL_Tokugawazamurai_shouiju_170030_Battle, -1)
        return true
    end
    arg1:SetStringIndexedNumber("TargetDistant_Dbg", 0)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetDist(TARGET_ENE_0)
    local f2_local4 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local5 = Check_ReachAttack(arg1, 4)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3170100)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3170101)
    Set_ConsecutiveGuardCount_Interrupt(arg1)
    if arg0:Kengeki_Activate(arg1, arg2) then
        return 
    end
    arg1:SetStringIndexedNumber("TargetDistant_Dbg", f2_local3)
    if arg1:HasSpecialEffectId(TARGET_ENE_0, 110060) then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
            f2_local0[26] = 100
        else
            f2_local0[21] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5028) and arg1:HasSpecialEffectId(TARGET_SELF, 3170101) then
        f2_local0[5] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5028) and arg1:HasSpecialEffectId(TARGET_SELF, 3170100) then
        f2_local0[16] = 100
        f2_local0[1] = 1
    elseif Common_ActivateAct(arg1, arg2, 0, 2) then

    elseif f2_local5 ~= POSSIBLE_ATTACK then
        if f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            f2_local0[27] = 100
        elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            f2_local0[27] = 100
        elseif f2_local5 == UNREACH_ATTACK then
            if arg1:HasSpecialEffectId(TARGET_SELF, 3170100) then
                f2_local0[8] = 20
                f2_local0[27] = 100
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
                f2_local0[27] = 100
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
                f2_local0[8] = 100
            else
                f2_local0[8] = 100
            end
        elseif f2_local5 == REACH_ATTACK_TARGET_HIGH_POSITION then
            if arg1:IsVisibleCurrTarget() then
                f2_local0[5] = 100
                f2_local0[7] = 200
                f2_local0[27] = 100
            else
                f2_local0[27] = 100
            end
        elseif f2_local5 == REACH_ATTACK_TARGET_LOW_POSITION then
            if arg1:IsVisibleCurrTarget() then
                f2_local0[5] = 100
                f2_local0[7] = 200
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
            f2_local0[1] = 100
            f2_local0[5] = 100
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        f2_local0[21] = 100
    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, COMMON_SP_EFFECT_PC_BREAK) then
        if f2_local3 >= 7 then
            f2_local0[1] = 100
        else
            f2_local0[16] = 100
            f2_local0[1] = 1
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 3170100) then
        if f2_local3 >= 17 then
            f2_local0[1] = 1
            f2_local0[8] = 100
        elseif f2_local3 >= 8 then
            f2_local0[1] = 100
            f2_local0[2] = 100
            f2_local0[4] = 20
            f2_local0[5] = 20
        elseif f2_local3 >= 5 then
            f2_local0[1] = 100
            f2_local0[2] = 100
            f2_local0[4] = 50
            f2_local0[5] = 30
        elseif f2_local3 > 4 then
            if arg1:IsFinishTimer(1) == false then
                f2_local0[4] = 100
                f2_local0[5] = 100
            else
                f2_local0[4] = 100
                f2_local0[5] = 100
                f2_local0[23] = 400
            end
        else
            f2_local0[4] = 100
            f2_local0[5] = 100
            f2_local0[7] = 200
        end
    elseif f2_local3 >= 12 then
        f2_local0[8] = 100
        f2_local0[4] = 10
        f2_local0[5] = 10
    elseif f2_local3 >= 5 then
        f2_local0[4] = 50
        f2_local0[5] = 30
    elseif f2_local3 > 4 then
        f2_local0[4] = 100
        f2_local0[5] = 100
        f2_local0[7] = 100
        f2_local0[23] = 400
    else
        f2_local0[4] = 100
        f2_local0[5] = 100
        f2_local0[7] = 100
    end
    if arg1:IsFinishTimer(0) == false then
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
    if arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
        f2_local0[8] = 0
    end
    if not not arg1:IsInsideTargetRegion(TARGET_SELF, 1112250) or arg1:IsInsideTargetRegion(TARGET_ENE_0, 1112250) then
        f2_local0[16] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 8, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3003, 8, f2_local0[2], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3005, 8, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3010, 8, f2_local0[5], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3015, 8, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3018, 8, f2_local0[8], 1)
    f2_local0[23] = SetCoolTime(arg1, arg2, 405002, 8, f2_local0[23], 1)
    f2_local0[23] = SetCoolTime(arg1, arg2, 405003, 8, f2_local0[23], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, arg0.Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, arg0.Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, arg0.Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, arg0.Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, arg0.Act05)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, arg0.Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, arg0.Act08)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, arg0.Act16)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, arg0.Act21)
    f2_local1[22] = REGIST_FUNC(arg1, arg2, arg0.Act22)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, arg0.Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, arg0.Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, arg0.Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, arg0.Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, arg0.Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, arg0.Act28)
    local f2_local6 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local6, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    local f3_local0 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 8 - arg0:GetMapHitRadius(TARGET_SELF) + 8.5
    local f3_local2 = 8 - arg0:GetMapHitRadius(TARGET_SELF) + 8.5
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 1
    local f3_local6 = 2
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 0
    local f3_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 9999, f3_local7, f3_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    local f4_local0 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local1 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF) + 8.5
    local f4_local2 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF) + 8.5
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 1.5
    local f4_local6 = 3
    Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    local f4_local7 = 0
    local f4_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 9999, f4_local7, f4_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f5_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 8.5
    local f5_local2 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 8.5
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 1.5
    local f5_local6 = 3
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local8 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local9 = 0
    local f5_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3004, TARGET_ENE_0, f5_local7, f5_local9, f5_local10, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3006, TARGET_ENE_0, f5_local8, 0)
    if arg0:IsInsideTargetRegion(TARGET_SELF, 1112250) == false and arg0:IsInsideTargetRegion(TARGET_ENE_0, 1112250) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3007, TARGET_ENE_0, 9999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act04 = function (arg0, arg1, arg2)
    local f6_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 8.5
    local f6_local2 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 8.5
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 1.5
    local f6_local6 = 3
    Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    local f6_local7 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local8 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local9 = 0
    local f6_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3005, TARGET_ENE_0, f6_local7, f6_local9, f6_local10, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3006, TARGET_ENE_0, f6_local8, 0)
    if arg0:IsInsideTargetRegion(TARGET_SELF, 1112250) == false and arg0:IsInsideTargetRegion(TARGET_ENE_0, 1112250) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3007, TARGET_ENE_0, 9999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act05 = function (arg0, arg1, arg2)
    local f7_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 8.5
    local f7_local2 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 8.5
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 1.5
    local f7_local6 = 3
    Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    local f7_local7 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local8 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local9 = 0
    local f7_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3010, TARGET_ENE_0, f7_local7, f7_local9, f7_local10, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3011, TARGET_ENE_0, f7_local8, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3012, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act07 = function (arg0, arg1, arg2)
    local f8_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 8.5
    local f8_local2 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 8.5
    local f8_local3 = 100
    local f8_local4 = 0
    local f8_local5 = 1.5
    local f8_local6 = 3
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local7 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local8 = 0
    local f8_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3015, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3016, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act08 = function (arg0, arg1, arg2)
    local f9_local0 = 999 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local1 = 999 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f9_local2 = 999 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 1.5
    local f9_local6 = 3
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 0
    local f9_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, 9999, f9_local7, f9_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act16 = function (arg0, arg1, arg2)
    local f10_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 8.5
    local f10_local2 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 8.5
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 1
    local f10_local6 = 2
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 0
    local f10_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 9999, f10_local7, f10_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act19 = function (arg0, arg1, arg2)
    local f11_local0 = 3 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 8.5
    local f11_local2 = 3 - arg0:GetMapHitRadius(TARGET_SELF) + 8.5
    local f11_local3 = 100
    local f11_local4 = 0
    local f11_local5 = 1.5
    local f11_local6 = 3
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local8 = 0
    local f11_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3015, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3000, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act21 = function (arg0, arg1, arg2)
    local f12_local0 = 3
    local f12_local1 = 45
    arg1:AddSubGoal(GOAL_COMMON_Turn, f12_local0, TARGET_ENE_0, f12_local1, -1, GOAL_RESULT_Success, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act22 = function (arg0, arg1, arg2)
    local f13_local0 = 3
    local f13_local1 = 0
    local f13_local2 = 5202
    if SpaceCheck(arg0, arg1, -45, 2) == true then
        if SpaceCheck(arg0, arg1, 45, 2) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f13_local2 = 5202
            else
                f13_local2 = 5203
            end
        else
            f13_local2 = 5202
        end
    elseif SpaceCheck(arg0, arg1, 45, 2) == true then
        f13_local2 = 5203
    else

    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f13_local0, f13_local2, TARGET_ENE_0, f13_local1, AI_DIR_TYPE_R, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act23 = function (arg0, arg1, arg2)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = arg0:GetSp(TARGET_SELF)
    local f14_local2 = 20
    local f14_local3 = arg0:GetRandam_Int(1, 100)
    local f14_local4 = -1
    local f14_local5 = arg0:GetRandam_Int(1, 100)
    arg0:SetTimer(0, 10)
    if f14_local1 <= 300 or arg0:HasSpecialEffectId(TARGET_SELF, 3170101) then
        f14_local4 = 9910
    end
    local f14_local6 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if f14_local5 <= 50 then
                f14_local6 = 1
            else
                f14_local6 = 0
            end
        else
            f14_local6 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f14_local6 = 1
    else

    end
    local f14_local7 = 4.5
    local f14_local8 = arg0:GetRandam_Int(30, 45)
    arg0:SetNumber(10, f14_local6)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f14_local7, TARGET_ENE_0, f14_local6, f14_local8, true, true, f14_local4)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act24 = function (arg0, arg1, arg2)
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = 3
    local f15_local2 = 0
    local f15_local3 = 5201
    if SpaceCheck(arg0, arg1, 180, 2) == true and SpaceCheck(arg0, arg1, 180, 4) == true then
        if f15_local0 > 4 then

        else
            f15_local3 = 5211
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f15_local1, f15_local3, TARGET_ENE_0, f15_local2, AI_DIR_TYPE_B, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act25 = function (arg0, arg1, arg2)
    local f16_local0 = arg0:GetRandam_Float(2, 4)
    local f16_local1 = arg0:GetRandam_Float(5, 7)
    local f16_local2 = arg0:GetDist(TARGET_ENE_0)
    local f16_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f16_local0, TARGET_ENE_0, f16_local1, TARGET_ENE_0, true, f16_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act26 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act27 = function (arg0, arg1, arg2)
    local f18_local0 = arg0:GetRandam_Int(1, 100)
    if YousumiAct_SubGoal(arg0, arg1, false, 60, 30) == false then
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    local f18_local1 = 0
    local f18_local2 = SpaceCheck_SidewayMove(arg0, arg1, 1)
    if f18_local2 == 0 then
        f18_local1 = 0
    elseif f18_local2 == 1 then
        f18_local1 = 1
    elseif f18_local2 == 2 then
        if f18_local0 <= 50 then
            f18_local1 = 0
        else
            f18_local1 = 1
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    arg0:SetNumber(10, f18_local1)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f18_local1, arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act28 = function (arg0, arg1, arg2)
    local f19_local0 = arg0:GetDist(TARGET_ENE_0)
    local f19_local1 = 1.5
    local f19_local2 = 1.5
    local f19_local3 = arg0:GetRandam_Int(30, 45)
    local f19_local4 = -1
    local f19_local5 = arg0:GetRandam_Int(0, 1)
    if f19_local0 <= 3 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f19_local1, TARGET_ENE_0, f19_local5, f19_local3, true, true, f19_local4)
    elseif f19_local0 <= 8 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f19_local2, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f19_local2, TARGET_ENE_0, 8, TARGET_SELF, false, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f20_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
    local f20_local1 = arg1:GetDist(TARGET_ENE_0)
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
    if arg1:IsInterupt(INTERUPT_ShootImpact) and arg0.ShootReaction(arg1, arg2) then
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if f20_local0 == 5026 then
            arg1:SetNumber(0, 0)
            return true
        elseif f20_local0 == 5030 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 3170100) and arg1:GetTimer(5) <= 0 and f20_local1 > 2 then
                arg1:SetTimer(5, 10)
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 9999, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 9999, 0, 0)
                if arg1:IsInsideTargetRegion(TARGET_SELF, 1112250) == false and arg1:IsInsideTargetRegion(TARGET_ENE_0, 1112250) == false then
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3007, TARGET_ENE_0, 9999, 0, 0)
                end
                return true
            end
        elseif f20_local0 == 5031 and arg1:HasSpecialEffectId(TARGET_SELF, 3170100) and arg1:GetTimer(5) <= 0 and f20_local1 > 2 then
            arg1:SetTimer(5, 10)
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 9999, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 9999, 0, 0)
            if arg1:IsInsideTargetRegion(TARGET_SELF, 1112250) == false and arg1:IsInsideTargetRegion(TARGET_ENE_0, 1112250) == false then
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3007, TARGET_ENE_0, 9999, 0, 0)
            end
            return true
        end
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
    return false
    
end

Goal.ShootReaction = function (arg0, arg1)
    if arg0:HasSpecialEffectId(TARGET_SELF, 3170100) then

    else
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3100, TARGET_ENE_0, 9999, 0)
        return true
    end
    
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
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 3170100) then
        if f22_local0 == 200200 then
            arg1:SetNumber(0, arg1:GetNumber(0) + 1)
            if f22_local4 >= 3.2 then
                f22_local1[50] = 100
            elseif f22_local4 <= 0 then
                f22_local1[50] = 100
            elseif arg1:GetNumber(0) >= 5 then
                f22_local1[1] = 100
                f22_local1[4] = 100
            elseif arg1:GetNumber(0) >= 3 then
                f22_local1[1] = 10
                f22_local1[4] = 50
            else
                f22_local1[1] = 100
                f22_local1[4] = 100
            end
        elseif f22_local0 == 200201 then
            arg1:SetNumber(0, arg1:GetNumber(0) + 1)
            if f22_local4 >= 3.2 then
                f22_local1[50] = 100
            elseif f22_local4 <= 0 then
                f22_local1[50] = 100
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
                f22_local1[16] = 100
            elseif arg1:GetNumber(0) >= 4 then
                f22_local1[8] = 100
                f22_local1[10] = 100
            elseif arg1:GetNumber(0) >= 2 then
                f22_local1[8] = 100
                f22_local1[10] = 100
            else
                f22_local1[8] = 20
                f22_local1[10] = 100
            end
        elseif f22_local0 == 200210 then
            if f22_local4 >= 3.2 then
                f22_local1[6] = 100
            elseif f22_local4 <= 0 then
                f22_local1[6] = 100
            else
                f22_local1[2] = 100
                f22_local1[5] = 100
                f22_local1[6] = 200
            end
        elseif f22_local0 == 200211 then
            if f22_local4 >= 3.2 then
                f22_local1[13] = 100
            elseif f22_local4 <= 0 then
                f22_local1[13] = 100
            else
                f22_local1[12] = 100
                f22_local1[15] = 100
                f22_local1[13] = 200
            end
        elseif f22_local0 == 200215 then
            arg1:SetNumber(0, arg1:GetNumber(0) + 1)
            if f22_local4 >= 3.2 then
                f22_local1[50] = 100
            elseif f22_local4 <= 0 then
                f22_local1[50] = 100
            elseif arg1:GetNumber(0) >= 5 then
                f22_local1[4] = 100
            elseif arg1:GetNumber(0) >= 3 then
                f22_local1[1] = 100
                f22_local1[4] = 120
            else
                f22_local1[1] = 100
                f22_local1[4] = 120
            end
        elseif f22_local0 == 200216 then
            arg1:SetNumber(0, arg1:GetNumber(0) + 1)
            if f22_local4 >= 3.2 then
                f22_local1[50] = 100
            elseif f22_local4 <= 0 then
                f22_local1[50] = 100
            elseif arg1:GetNumber(0) >= 5 then
                f22_local1[8] = 200
                f22_local1[10] = 100
            elseif arg1:GetNumber(0) >= 3 then
                f22_local1[8] = 200
                f22_local1[10] = 100
            else
                f22_local1[8] = 20
                f22_local1[10] = 100
            end
        end
    elseif f22_local0 == 200200 then
        arg1:SetNumber(0, arg1:GetNumber(0) + 1)
        if f22_local4 >= 3.2 then
            f22_local1[50] = 100
            f22_local1[17] = 100
        elseif f22_local4 <= 0 then
            f22_local1[50] = 100
        elseif arg1:GetNumber(0) >= 4 then
            f22_local1[1] = 100
            f22_local1[4] = 100
        elseif arg1:GetNumber(0) >= 2 then
            f22_local1[1] = 100
            f22_local1[4] = 100
        else
            f22_local1[1] = 100
            f22_local1[4] = 100
        end
    elseif f22_local0 == 200201 then
        arg1:SetNumber(0, arg1:GetNumber(0) + 1)
        if f22_local4 >= 3.2 then
            f22_local1[50] = 100
            f22_local1[17] = 100
        elseif f22_local4 <= 0 then
            f22_local1[50] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
            f22_local1[16] = 100
        elseif arg1:GetNumber(0) >= 4 then
            f22_local1[8] = 100
            f22_local1[10] = 100
        elseif arg1:GetNumber(0) >= 2 then
            f22_local1[8] = 100
            f22_local1[10] = 100
        else
            f22_local1[8] = 100
            f22_local1[10] = 100
        end
    elseif f22_local0 == 200210 then
        if f22_local4 >= 3.2 then
            f22_local1[50] = 100
        elseif f22_local4 <= 0 then
            f22_local1[50] = 100
        else
            f22_local1[2] = 100
            f22_local1[5] = 100
        end
    elseif f22_local0 == 200211 then
        if f22_local4 >= 3.2 then
            f22_local1[50] = 100
        elseif f22_local4 <= 0 then
            f22_local1[50] = 100
        else
            f22_local1[12] = 100
            f22_local1[15] = 100
        end
    elseif f22_local0 == 200215 then
        arg1:SetNumber(0, arg1:GetNumber(0) + 1)
        if f22_local4 >= 3.2 then
            f22_local1[50] = 100
        elseif f22_local4 <= 0 then
            f22_local1[50] = 100
        elseif arg1:GetNumber(0) >= 4 then
            f22_local1[1] = 100
            f22_local1[4] = 100
        elseif arg1:GetNumber(0) >= 2 then
            f22_local1[1] = 100
            f22_local1[4] = 100
        else
            f22_local1[1] = 100
            f22_local1[4] = 100
        end
    elseif f22_local0 == 200216 then
        arg1:SetNumber(0, arg1:GetNumber(0) + 1)
        if f22_local4 >= 3.2 then
            f22_local1[50] = 100
        elseif f22_local4 <= 0 then
            f22_local1[50] = 100
        elseif arg1:GetNumber(0) >= 4 then
            f22_local1[8] = 100
            f22_local1[10] = 100
        elseif arg1:GetNumber(0) >= 2 then
            f22_local1[8] = 100
            f22_local1[10] = 100
        else
            f22_local1[8] = 100
            f22_local1[10] = 100
        end
    else
        f22_local1[50] = 100
    end
    if not not arg1:IsInsideTargetRegion(TARGET_SELF, 1112250) or arg1:IsInsideTargetRegion(TARGET_ENE_0, 1112250) then
        f22_local1[5] = 0
    end
    f22_local1[1] = SetCoolTime(arg1, arg2, 3050, 5, f22_local1[1], 1)
    f22_local1[2] = SetCoolTime(arg1, arg2, 3015, 10, f22_local1[2], 1)
    f22_local1[4] = SetCoolTime(arg1, arg2, 3061, 5, f22_local1[4], 1)
    f22_local1[5] = SetCoolTime(arg1, arg2, 3007, 5, f22_local1[5], 1)
    f22_local1[8] = SetCoolTime(arg1, arg2, 3055, 5, f22_local1[8], 1)
    f22_local1[10] = SetCoolTime(arg1, arg2, 3066, 5, f22_local1[10], 1)
    f22_local1[12] = SetCoolTime(arg1, arg2, 3016, 5, f22_local1[12], 1)
    f22_local1[15] = SetCoolTime(arg1, arg2, 3065, 5, f22_local1[15], 1)
    f22_local1[16] = SetCoolTime(arg1, arg2, 3068, 5, f22_local1[16], 1)
    f22_local2[1] = REGIST_FUNC(arg1, arg2, arg0.Kengeki01)
    f22_local2[2] = REGIST_FUNC(arg1, arg2, arg0.Kengeki02)
    f22_local2[4] = REGIST_FUNC(arg1, arg2, arg0.Kengeki04)
    f22_local2[5] = REGIST_FUNC(arg1, arg2, arg0.Kengeki05)
    f22_local2[6] = REGIST_FUNC(arg1, arg2, arg0.Kengeki06)
    f22_local2[8] = REGIST_FUNC(arg1, arg2, arg0.Kengeki08)
    f22_local2[10] = REGIST_FUNC(arg1, arg2, arg0.Kengeki10)
    f22_local2[12] = REGIST_FUNC(arg1, arg2, arg0.Kengeki12)
    f22_local2[13] = REGIST_FUNC(arg1, arg2, arg0.Kengeki13)
    f22_local2[15] = REGIST_FUNC(arg1, arg2, arg0.Kengeki15)
    f22_local2[16] = REGIST_FUNC(arg1, arg2, arg0.Kengeki16)
    f22_local2[17] = REGIST_FUNC(arg1, arg2, arg0.Kengeki17)
    f22_local2[50] = REGIST_FUNC(arg1, arg2, arg0.NoAction)
    local f22_local6 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    return Common_Kengeki_Activate(arg1, arg2, f22_local1, f22_local2, f22_local6, f22_local3)
    
end

Goal.Kengeki01 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3050, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3053, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki02 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3056, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki04 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3061, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki05 = function (arg0, arg1, arg2)
    arg0:SetNumber(0, 0)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki06 = function (arg0, arg1, arg2)
    arg0:SetNumber(0, 0)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 9999, 0, 0)
    if arg0:IsInsideTargetRegion(TARGET_SELF, 1112250) == false and arg0:IsInsideTargetRegion(TARGET_ENE_0, 1112250) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3007, TARGET_ENE_0, 9999, 0, 0)
    end
    
end

Goal.Kengeki08 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3055, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3053, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3056, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki10 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3066, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki12 = function (arg0, arg1, arg2)
    arg0:SetNumber(0, 0)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3053, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3056, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki13 = function (arg0, arg1, arg2)
    arg0:SetNumber(0, 0)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 9999, 0, 0)
    if arg0:IsInsideTargetRegion(TARGET_SELF, 1112250) == false and arg0:IsInsideTargetRegion(TARGET_ENE_0, 1112250) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3007, TARGET_ENE_0, 9999, 0, 0)
    end
    
end

Goal.Kengeki15 = function (arg0, arg1, arg2)
    arg0:SetTimer(1, 8)
    arg0:SetTimer(2, 4)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3065, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki16 = function (arg0, arg1, arg2)
    arg0:SetNumber(0, 0)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3068, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki17 = function (arg0, arg1, arg2)
    arg0:SetNumber(0, 0)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 5211, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.NoAction = function (arg0, arg1, arg2)
    local f35_local0 = arg0:GetRandam_Float(0.1, 0.1)
    local f35_local1 = arg0:GetRandam_Float(5, 7)
    local f35_local2 = arg0:GetDist(TARGET_ENE_0)
    local f35_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f35_local0, TARGET_ENE_0, f35_local1, TARGET_ENE_0, true, f35_local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.ActAfter_AdjustSpace = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end


