RegisterTableGoal(GOAL_Taniteki_Shotgun_119020_Battle, "GOAL_Taniteki_Shotgun_119020_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Taniteki_Shotgun_119020_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetHpRate(TARGET_SELF)
    local f2_local4 = arg1:GetSp(TARGET_SELF)
    local f2_local5 = arg1:GetDist(TARGET_ENE_0)
    local f2_local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local7 = Check_ReachAttack(arg1, 0)
    local f2_local8 = arg1:GetEventRequest()
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    Set_ConsecutiveGuardCount_Interrupt(arg1)
    if arg0:Kengeki_Activate(arg1, arg2) then
        return 
    end
    if Common_ActivateAct(arg1, arg2) then

    elseif f2_local7 ~= POSSIBLE_ATTACK then
        if f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            f2_local0[27] = 100
        elseif f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            f2_local0[27] = 100
        elseif f2_local7 == UNREACH_ATTACK then
            f2_local0[27] = 150
        elseif f2_local7 == REACH_ATTACK_TARGET_HIGH_POSITION then
            f2_local0[1] = 100
            f2_local0[27] = 100
        elseif f2_local7 == REACH_ATTACK_TARGET_LOW_POSITION then
            f2_local0[1] = 100
            f2_local0[27] = 100
        else
            f2_local0[27] = 100
        end
    elseif f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        KankyakuAct(arg1, arg2)
    elseif f2_local6 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        TorimakiAct(arg1, arg2, -1, 0)
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        f2_local0[21] = 100
    elseif arg1:GetNumber(1) >= 3 then
        f2_local0[11] = 100
    elseif f2_local5 >= 20 then
        f2_local0[1] = 70
        f2_local0[2] = 0
        f2_local0[3] = 0
        f2_local0[4] = 0
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[8] = 0
        f2_local0[23] = 1
        f2_local0[28] = 1
    elseif f2_local5 >= 15 then
        f2_local0[1] = 50
        f2_local0[2] = 30
        f2_local0[3] = 30
        f2_local0[4] = 30
        f2_local0[6] = 10
        f2_local0[7] = 0
        f2_local0[8] = 60
        f2_local0[23] = 30
    elseif f2_local5 > 5 then
        f2_local0[1] = 50
        f2_local0[2] = 30
        f2_local0[3] = 30
        f2_local0[4] = 30
        f2_local0[6] = 10
        f2_local0[7] = 30
        f2_local0[8] = 100
        f2_local0[23] = 1
    elseif f2_local5 > 3 then
        f2_local0[1] = 10
        f2_local0[2] = 0
        f2_local0[3] = 20
        f2_local0[4] = 20
        f2_local0[6] = 0
        f2_local0[7] = 100
        f2_local0[8] = 0
        f2_local0[10] = 0
        f2_local0[25] = 10
    else
        f2_local0[1] = 10
        f2_local0[2] = 0
        f2_local0[3] = 10
        f2_local0[4] = 10
        f2_local0[6] = 0
        f2_local0[7] = 100
        f2_local0[8] = 0
        f2_local0[10] = 200
        f2_local0[25] = 10
    end
    if SpaceCheck(arg1, arg2, 0, 4) == false then
        f2_local0[2] = 1
    end
    if SpaceCheck(arg1, arg2, 45, 4) == false then
        f2_local0[4] = 1
    end
    if SpaceCheck(arg1, arg2, -45, 4) == false then
        f2_local0[3] = 1
    end
    if SpaceCheck(arg1, arg2, 180, 4) == false then
        f2_local0[7] = 1
    end
    if f2_local5 < 5 - arg1:GetMapHitRadius(TARGET_SELF) then
        f2_local0[2] = 1
    end
    if f2_local5 < 2 - arg1:GetMapHitRadius(TARGET_SELF) then
        f2_local0[8] = 1
    end
    if arg1:IsFinishTimer(1) == true then
        arg1:SetNumber(0, 0)
    end
    if SpaceCheck(arg1, arg2, 90, 1) == false and SpaceCheck(arg1, arg2, -45, 1) == false then
        f2_local0[23] = 0
        f2_local0[8] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 2) == false then
        f2_local0[24] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 1) == false then
        f2_local0[25] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 2, f2_local0[1], 1)
    f2_local0[1] = SetCoolTime(arg1, arg2, 3004, 2, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 10, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 6, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3003, 6, f2_local0[4], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3005, 10, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3006, 8, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3007, 5, f2_local0[8], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3008, 5, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3010, 5, f2_local0[9], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3011, 5, f2_local0[10], 1)
    f2_local0[24] = SetCoolTime(arg1, arg2, 5201, 3, f2_local0[24], 1)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, arg0.Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, arg0.Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, arg0.Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, arg0.Act04)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, arg0.Act06)
    f2_local1[7] = REGIST_FUNC(arg1, arg2, arg0.Act07)
    f2_local1[8] = REGIST_FUNC(arg1, arg2, arg0.Act08)
    f2_local1[9] = REGIST_FUNC(arg1, arg2, arg0.Act09)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, arg0.Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, arg0.Act11)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, arg0.Act21)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, arg0.Act23)
    f2_local1[24] = REGIST_FUNC(arg1, arg2, arg0.Act24)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, arg0.Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, arg0.Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, arg0.Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, arg0.Act28)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, arg0.Act30)
    local f2_local9 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local9, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 15 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = 15 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f3_local3 = 15 - arg0:GetMapHitRadius(TARGET_SELF) + 25
    local f3_local4 = 100
    local f3_local5 = 0
    local f3_local6 = 1.5
    local f3_local7 = 10
    local f3_local8 = 3000
    local f3_local9 = 3004
    local f3_local10 = 0
    local f3_local11 = 0
    if f3_local1 < f3_local0 then
        Approach_Act_Flex(arg0, arg1, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6, f3_local7)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local9, TARGET_ENE_0, 9999, f3_local10, f3_local11, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f3_local8, TARGET_ENE_0, 9999, f3_local10, f3_local11, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local2 = 10 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f4_local3 = 10 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f4_local4 = 100
    local f4_local5 = 0
    local f4_local6 = 1.5
    local f4_local7 = 3
    if f4_local1 < f4_local0 then
        Approach_Act_Flex(arg0, arg1, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6, f4_local7)
    end
    local f4_local8 = 3001
    local f4_local9 = 0
    local f4_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f4_local8, TARGET_ENE_0, 9999, f4_local9, f4_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local2 = 7 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f5_local3 = 7 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f5_local4 = 100
    local f5_local5 = 0
    local f5_local6 = 1.5
    local f5_local7 = 3
    if f5_local1 < f5_local0 then
        Approach_Act_Flex(arg0, arg1, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6, f5_local7)
    end
    local f5_local8 = 3002
    local f5_local9 = 0
    local f5_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f5_local8, TARGET_ENE_0, 9999, f5_local9, f5_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act04 = function (arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = 7 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local2 = 7 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f6_local3 = 7 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f6_local4 = 100
    local f6_local5 = 0
    local f6_local6 = 1.5
    local f6_local7 = 3
    if f6_local1 < f6_local0 then
        Approach_Act_Flex(arg0, arg1, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6, f6_local7)
    end
    local f6_local8 = 3003
    local f6_local9 = 0
    local f6_local10 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f6_local8, TARGET_ENE_0, 9999, f6_local9, f6_local10, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act06 = function (arg0, arg1, arg2)
    local f7_local0 = 3005
    local f7_local1 = 0
    local f7_local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local0, TARGET_ENE_0, 9999, f7_local1, f7_local2, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act07 = function (arg0, arg1, arg2)
    local f8_local0 = 3006
    local f8_local1 = 0
    local f8_local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local0, TARGET_ENE_0, 9999, f8_local1, f8_local2, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act08 = function (arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = arg0:GetRandam_Int(1, 100)
    local f9_local2 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f9_local2 = 0
            else
                f9_local2 = 1
            end
        else
            f9_local2 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f9_local2 = 1
    else
        f9_local2 = 1
    end
    local f9_local3 = arg0:GetRandam_Float(1, 3.5)
    local f9_local4 = arg0:GetRandam_Int(30, 45)
    if f9_local2 == 0 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3022, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, 9999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3023, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, 9999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act09 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act10 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3011, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act11 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    arg0:SetNumber(1, 0)
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

Goal.Act23 = function (arg0, arg1, arg2)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = arg0:GetSp(TARGET_SELF)
    local f14_local2 = 20
    local f14_local3 = arg0:GetRandam_Int(1, 100)
    local f14_local4 = -1
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
    arg0:SetNumber(NUMBER_SIDEWAY_DIRECTION, f14_local5)
    local f14_local8 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f14_local6, TARGET_ENE_0, f14_local5, f14_local7, true, true, f14_local4)
    f14_local8:TmiingSetTimer(2, 4, UPDATE_SUCCESS)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act24 = function (arg0, arg1, arg2)
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = 3
    local f15_local2 = 0
    local f15_local3 = 5201
    if SpaceCheck(arg0, arg1, 180, 2) == true then
        if SpaceCheck(arg0, arg1, 180, 4) == true then
            if f15_local0 > 4 then

            else
                f15_local3 = 5211
            end
        end
    else
        GetWellSpace_Odds = 100
        return GetWellSpace_Odds
    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f15_local1, 5201, TARGET_ENE_0, f15_local2, AI_DIR_TYPE_B, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act25 = function (arg0, arg1, arg2)
    local f16_local0 = arg0:GetRandam_Float(0.5, 2)
    local f16_local1 = arg0:GetRandam_Float(2, 5)
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
    if YousumiAct_SubGoal(arg0, arg1, true, 60, 30) == false then
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

Goal.Act30 = function (arg0, arg1, arg2)
    local f20_local0 = 3.5
    local f20_local1 = arg0:GetRandam_Int(30, 45)
    local f20_local2 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f20_local2 = 0
            else
                f20_local2 = 1
            end
        else
            f20_local2 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f20_local2 = 1
    else

    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f20_local0, TARGET_ENE_0, f20_local2, f20_local1, true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f21_local0 = arg1:GetHpRate(TARGET_SELF)
    local f21_local1 = arg1:GetDist(TARGET_ENE_0)
    local f21_local2 = arg1:GetSp(TARGET_SELF)
    local f21_local3 = arg1:GetSpecialEffectActivateInterruptType(0)
    local f21_local4 = arg1:GetRandam_Int(1, 100)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ParryTiming) then
        return Common_Parry(arg1, arg2, 50, 0)
    end
    if arg1:IsInterupt(INTERUPT_ShootImpact) then
        return arg0.ShootReaction(arg1, arg2)
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        return arg0.Damaged(arg1, arg2)
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and f21_local3 == 5030 then
        arg1:SetNumber(1, arg1:GetNumber(1) + 1)
        return true
    end
    return false
    
end

Goal.Damaged = function (arg0, arg1, arg2)
    local f22_local0 = arg0:GetHpRate(TARGET_SELF)
    local f22_local1 = arg0:GetDist(TARGET_ENE_0)
    local f22_local2 = arg0:GetSp(TARGET_SELF)
    local f22_local3 = arg0:GetRandam_Int(1, 100)
    local f22_local4 = 0
    if f22_local3 <= 33 then
        arg1:ClearSubGoal()
        local f22_local5 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, StepLife, 5201, TARGET_ENE_0, TurnTime, AI_DIR_TYPE_B, 0)
        f22_local5:TimingSetTimer(3, 6, UPDATE_SUCCESS)
        return true
    elseif f22_local3 <= 67 then

    else

    end
    return false
    
end

Goal.ShootReaction = function (arg0, arg1)
    local f23_local0 = arg0:GetDist(TARGET_ENE_0)
    if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 20, 999) then
        if f23_local0 <= 30 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3100, TARGET_ENE_0, 9999, 0)
            return true
        else
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_Wait, 0.3, TARGET_SELF, 0, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3100, TARGET_ENE_0, 9999, 0)
            return true
        end
    end
    return false
    
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
    if f24_local0 == 200210 then
        if f24_local4 <= 0.2 then
            f24_local1[7] = 100
        elseif SpaceCheck(arg1, arg2, 180, 4) == false then
            f24_local1[8] = 100
            f24_local1[9] = 100
        else
            f24_local1[7] = 100
        end
    elseif f24_local0 == 200211 then
        if f24_local4 <= 0.2 then
            f24_local1[7] = 100
        elseif SpaceCheck(arg1, arg2, 180, 4) == false then
            f24_local1[8] = 100
            f24_local1[9] = 100
        else
            f24_local1[7] = 100
        end
    elseif f24_local0 == 200215 then
        if f24_local4 <= 0.2 then
            f24_local1[7] = 100
        elseif SpaceCheck(arg1, arg2, 180, 4) == false then
            f24_local1[8] = 100
            f24_local1[9] = 100
        else
            f24_local1[7] = 100
        end
    elseif f24_local0 == 200216 then
        if f24_local4 <= 0.2 then
            f24_local1[7] = 100
        elseif SpaceCheck(arg1, arg2, 180, 4) == false then
            f24_local1[8] = 100
            f24_local1[9] = 100
        else
            f24_local1[7] = 100
        end
    end
    if SpaceCheck(arg1, arg2, 45, 4) == false then
        f24_local1[4] = 0
    end
    if SpaceCheck(arg1, arg2, -45, 4) == false then
        f24_local1[3] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 4) == false then
        f24_local1[7] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 2) == false then
        f24_local1[24] = 0
    end
    if f24_local4 >= 5 then
        f24_local1[8] = 0
        f24_local1[9] = 0
    end
    f24_local1[5] = SetCoolTime(arg1, arg2, 3002, 20, f24_local1[5], 1)
    f24_local1[6] = SetCoolTime(arg1, arg2, 3003, 20, f24_local1[6], 1)
    f24_local1[7] = SetCoolTime(arg1, arg2, 3006, 20, f24_local1[7], 1)
    f24_local1[8] = SetCoolTime(arg1, arg2, 3010, 5, f24_local1[8], 1)
    f24_local1[9] = SetCoolTime(arg1, arg2, 3011, 5, f24_local1[9], 1)
    f24_local1[24] = SetCoolTime(arg1, arg2, 5201, 8, f24_local1[24], 1)
    f24_local2[5] = REGIST_FUNC(arg1, arg2, arg0.Kengeki05)
    f24_local2[6] = REGIST_FUNC(arg1, arg2, arg0.Kengeki06)
    f24_local2[7] = REGIST_FUNC(arg1, arg2, arg0.Kengeki07)
    f24_local2[8] = REGIST_FUNC(arg1, arg2, arg0.Kengeki08)
    f24_local2[9] = REGIST_FUNC(arg1, arg2, arg0.Kengeki09)
    f24_local2[21] = REGIST_FUNC(arg1, arg2, arg0.Act21)
    f24_local2[23] = REGIST_FUNC(arg1, arg2, arg0.Act23)
    f24_local2[24] = REGIST_FUNC(arg1, arg2, arg0.Act24)
    f24_local2[25] = REGIST_FUNC(arg1, arg2, arg0.Act25)
    f24_local2[26] = REGIST_FUNC(arg1, arg2, arg0.NoAction)
    local f24_local6 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    return Common_Kengeki_Activate(arg1, arg2, f24_local1, f24_local2, f24_local6, f24_local3)
    
end

Goal.Kengeki05 = function (arg0, arg1, arg2)
    local f25_local0 = 3003
    local f25_local1 = 0
    local f25_local2 = 0
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f25_local0, TARGET_ENE_0, 9999, f25_local1, f25_local2, 0, 0)
    
end

Goal.Kengeki06 = function (arg0, arg1, arg2)
    local f26_local0 = 3002
    local f26_local1 = 0
    local f26_local2 = 0
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f26_local0, TARGET_ENE_0, 9999, f26_local1, f26_local2, 0, 0)
    
end

Goal.Kengeki07 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3006, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki08 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3010, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki09 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3011, TARGET_ENE_0, 9999, 0, 0)
    
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


