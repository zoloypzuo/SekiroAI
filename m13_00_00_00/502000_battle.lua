RegisterTableGoal(GOAL_RedOgre_502000_Battle, "GOAL_RedOgre_502000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RedOgre_502000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    arg1:SetNumber(5, 0)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_Step_Small", 2)
    arg1:SetStringIndexedNumber("Dist_Step_Large", 4)
    arg1:SetStringIndexedNumber("KengekiID", 0)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetHpRate(TARGET_SELF)
    local f2_local4 = arg1:GetSp(TARGET_SELF)
    local f2_local5 = arg1:GetDist(TARGET_ENE_0)
    local f2_local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkATTr_doAdmirer)
    local f2_local7 = Check_ReachAttack(arg1, 0)
    local f2_local8 = arg1:GetEventRequest()
    local f2_local9 = arg1:GetNinsatsuNum()
    arg1:SetNumber(5, 0)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3502000)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 3502010)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3502540)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 100401)
    if Common_ActivateAct(arg1, arg2, 1) then

    elseif f2_local7 ~= POSSIBLE_ATTACK then
        if f2_local7 == UNREACH_ATTACK then
            if arg1:IsInsideTargetRegion(TARGET_SELF, 1102318) then
                f2_local0[45] = 100
                f2_local0[46] = 100
                f2_local0[47] = 200
            else
                f2_local0[27] = 100
            end
        elseif f2_local7 == REACH_ATTACK_TARGET_HIGH_POSITION then
            f2_local0[4] = 100
            f2_local0[7] = 100
        elseif f2_local7 == REACH_ATTACK_TARGET_LOW_POSITION then
            f2_local0[3] = 100
            f2_local0[11] = 100
        elseif arg1:IsInsideTargetRegion(TARGET_SELF, 1102318) then
            f2_local0[45] = 100
            f2_local0[46] = 100
            f2_local0[47] = 200
        else
            f2_local0[27] = 100
        end
    elseif arg1:GetNumber(0) == 1 and arg1:HasSpecialEffectId(TARGET_SELF, 200030) then
        f2_local0[10] = 100
    elseif f2_local3 <= 0.7 and arg1:HasSpecialEffectId(TARGET_SELF, 200030) then
        f2_local0[10] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5270) and arg1:HasSpecialEffectId(TARGET_SELF, 200030) then
        f2_local0[10] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 3502540) then
        f2_local0[25] = 10000
        f2_local0[27] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        if f2_local5 > 7 then
            f2_local0[21] = 100
        elseif f2_local5 > 5 then
            f2_local0[21] = 100
        else
            f2_local0[21] = 100
        end
    elseif arg1:GetNumber(1) == 0 and arg1:HasSpecialEffectId(TARGET_SELF, 3502500) then
        f2_local0[20] = 100
    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 3502540) and f2_local5 <= 7 then
        f2_local0[23] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 200031) and arg1:HasSpecialEffectId(TARGET_SELF, 5020) and arg1:GetNumber(2) == 0 then
        if f2_local5 >= 5 then
            f2_local0[1] = 1
            f2_local0[8] = 50000000
        else
            f2_local0[1] = 1
            f2_local0[9] = 50000000
        end
    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, COMMON_SP_EFFECT_PC_BREAK) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 200031) then
            if f2_local5 >= 7 then
                f2_local0[14] = 100
            else
                f2_local0[9] = 100
            end
        elseif f2_local5 >= 7 then
            f2_local0[5] = 200
        else
            f2_local0[3] = 100
        end
    elseif not arg1:HasSpecialEffectId(TARGET_SELF, 200031) then
        if f2_local5 >= 7 then
            f2_local0[5] = 200
        else
            f2_local0[1] = 100
            f2_local0[2] = 100
            f2_local0[3] = 100
            f2_local0[4] = 100
        end
    elseif f2_local5 >= 8 then
        f2_local0[1] = 0
        f2_local0[2] = 0
        f2_local0[3] = 50
        f2_local0[4] = 0
        f2_local0[5] = 200
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[8] = 100
        f2_local0[9] = 0
        f2_local0[13] = 0
        f2_local0[14] = 100
    elseif f2_local5 >= 7 then
        f2_local0[1] = 0
        f2_local0[3] = 100
        f2_local0[5] = 200
        f2_local0[6] = 0
        f2_local0[8] = 100
        f2_local0[14] = 100
    elseif f2_local5 >= 5 then
        f2_local0[1] = 30
        f2_local0[2] = 50
        f2_local0[3] = 100
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[8] = 100
        f2_local0[9] = 0
        f2_local0[13] = 50
        f2_local0[14] = 0
    elseif f2_local5 > 3 then
        f2_local0[1] = 100
        f2_local0[2] = 100
        f2_local0[3] = 100
        f2_local0[4] = 100
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[7] = 0
        f2_local0[8] = 0
        f2_local0[9] = 100
        f2_local0[13] = 100
        f2_local0[14] = 0
    elseif f2_local5 > 1 then
        f2_local0[1] = 100
        f2_local0[2] = 100
        f2_local0[4] = 100
        f2_local0[6] = 0
        f2_local0[7] = 100
        f2_local0[9] = 100
        f2_local0[11] = 100
        f2_local0[13] = 100
        f2_local0[14] = 0
    else
        f2_local0[6] = 200
        f2_local0[7] = 200
        f2_local0[9] = 50
        f2_local0[11] = 100
    end
    if arg1:IsFinishTimer(0) == false then
        f2_local0[6] = 0
        f2_local0[8] = 0
        f2_local0[9] = 0
        f2_local0[13] = 0
        f2_local0[14] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_ENE_0, 3101520) then
        f2_local0[6] = 0
        f2_local0[8] = 0
        f2_local0[9] = 0
        f2_local0[13] = 0
        f2_local0[14] = 0
    end
    if SpaceCheck(arg1, arg2, 45, arg1:GetStringIndexedNumber("Dist_Step_Small")) == false and SpaceCheck(arg1, arg2, -45, arg1:GetStringIndexedNumber("Dist_Step_Small")) == false then
        f2_local0[22] = 0
    end
    if SpaceCheck(arg1, arg2, 90, 1) == false and SpaceCheck(arg1, arg2, -90, 1) == false then
        f2_local0[23] = 0
    end
    if SpaceCheck(arg1, arg2, 180, arg1:GetStringIndexedNumber("Dist_Step_Small")) == false then
        f2_local0[24] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 1) == false then
        f2_local0[25] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 10, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 15, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 8, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3003, 8, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3004, 8, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3005, 8, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3006, 8, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3007, 8, f2_local0[8], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3008, 8, f2_local0[9], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3011, 8, f2_local0[11], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3013, 8, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3014, 8, f2_local0[14], 1)
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
    f2_local1[13] = REGIST_FUNC(arg1, arg2, arg0.Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, arg0.Act14)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, arg0.Act20)
    f2_local1[21] = REGIST_FUNC(arg1, arg2, arg0.Act21)
    f2_local1[23] = REGIST_FUNC(arg1, arg2, arg0.Act23)
    f2_local1[25] = REGIST_FUNC(arg1, arg2, arg0.Act25)
    f2_local1[26] = REGIST_FUNC(arg1, arg2, arg0.Act26)
    f2_local1[27] = REGIST_FUNC(arg1, arg2, arg0.Act27)
    f2_local1[28] = REGIST_FUNC(arg1, arg2, arg0.Act28)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, arg0.Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, arg0.Act31)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, arg0.Act41)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, arg0.Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, arg0.Act46)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, arg0.Act47)
    local f2_local10 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local10, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    local f3_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF) - 1.5
    local f3_local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 3
    local f3_local6 = 3
    if arg0:IsExistMeshOnLine(TARGET_ENE_0, AI_DIR_TYPE_ToF, 8) == false then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 1, TARGET_SELF, false, -1)
    else
        Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    end
    local f3_local7 = 3000
    local f3_local8 = 3015
    local f3_local9 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local10 = 0
    local f3_local11 = 0
    local f3_local12 = arg0:GetRandam_Int(1, 100)
    if arg0:HasSpecialEffectId(TARGET_SELF, 200031) then
        if f3_local12 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f3_local7, TARGET_ENE_0, 9999, f3_local10, f3_local11, 0, 0)
            arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f3_local8, TARGET_ENE_0, 9999, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 4, f3_local7, TARGET_ENE_0, 9999, f3_local10, f3_local11, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 4, f3_local7, TARGET_ENE_0, 9999, f3_local10, f3_local11, 0, 0)
    end
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    local f4_local0 = 4 - arg0:GetMapHitRadius(TARGET_SELF) - 1
    local f4_local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local2 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local3 = 100
    local f4_local4 = 0
    local f4_local5 = 3
    local f4_local6 = 3
    if arg0:IsExistMeshOnLine(TARGET_ENE_0, AI_DIR_TYPE_ToF, 8) == false then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 1, TARGET_SELF, false, -1)
    else
        Approach_Act_Flex(arg0, arg1, f4_local0, f4_local1, f4_local2, f4_local3, f4_local4, f4_local5, f4_local6)
    end
    local f4_local7 = 3001
    local f4_local8 = 0
    local f4_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 4, f4_local7, TARGET_ENE_0, 9999, f4_local8, f4_local9, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f5_local0 = 3.8 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5
    local f5_local1 = 3.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local2 = 3.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local3 = 100
    local f5_local4 = 0
    local f5_local5 = 3
    local f5_local6 = 3
    if arg0:IsExistMeshOnLine(TARGET_ENE_0, AI_DIR_TYPE_ToF, 8) == false then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 1, TARGET_SELF, false, -1)
    else
        Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    end
    local f5_local7 = 3002
    local f5_local8 = 0
    local f5_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 4, f5_local7, TARGET_ENE_0, 9999, f5_local8, f5_local9, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act04 = function (arg0, arg1, arg2)
    local f6_local0 = 5.9 - arg0:GetMapHitRadius(TARGET_SELF) - 1.5
    local f6_local1 = 5.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local2 = 5.9 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local3 = 100
    local f6_local4 = 0
    local f6_local5 = 3
    local f6_local6 = 3
    if arg0:IsExistMeshOnLine(TARGET_ENE_0, AI_DIR_TYPE_ToF, 8) == false then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 1, TARGET_SELF, false, -1)
    else
        Approach_Act_Flex(arg0, arg1, f6_local0, f6_local1, f6_local2, f6_local3, f6_local4, f6_local5, f6_local6)
    end
    local f6_local7 = 3003
    local f6_local8 = 0
    local f6_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f6_local7, TARGET_ENE_0, 9999, f6_local8, f6_local9, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act05 = function (arg0, arg1, arg2)
    local f7_local0 = 9.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local1 = 9.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local2 = 9.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local3 = 100
    local f7_local4 = 0
    local f7_local5 = 3
    local f7_local6 = 3
    if arg0:IsExistMeshOnLine(TARGET_ENE_0, AI_DIR_TYPE_ToF, 8) == false then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 1, TARGET_SELF, false, -1)
    else
        Approach_Act_Flex(arg0, arg1, f7_local0, f7_local1, f7_local2, f7_local3, f7_local4, f7_local5, f7_local6)
    end
    local f7_local7 = 3004
    local f7_local8 = 0
    local f7_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, f7_local7, TARGET_ENE_0, 9999, f7_local8, f7_local9, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act06 = function (arg0, arg1, arg2)
    local f8_local0 = 3005
    local f8_local1 = 0
    local f8_local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local0, TARGET_ENE_0, 9999, f8_local1, f8_local2, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act07 = function (arg0, arg1, arg2)
    local f9_local0 = 2 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5
    local f9_local1 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local2 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 3
    local f9_local6 = 3
    if arg0:IsExistMeshOnLine(TARGET_ENE_0, AI_DIR_TYPE_ToF, 3) == false then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 1, TARGET_SELF, false, -1)
    else
        Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    end
    local f9_local7 = 3006
    local f9_local8 = 0
    local f9_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f9_local7, TARGET_ENE_0, 9999, f9_local8, f9_local9, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act08 = function (arg0, arg1, arg2)
    local f10_local0 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local2 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 3
    local f10_local6 = 3
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local7 = 3007
    local f10_local8 = 0
    local f10_local9 = 0
    local f10_local10 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f10_local7, TARGET_ENE_0, 9999, f10_local8, f10_local9, 0, 0)
    f10_local10:TimingSetNumber(2, 1, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act09 = function (arg0, arg1, arg2)
    local f11_local0 = 5.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = 5.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local2 = 5.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local3 = 100
    local f11_local4 = 0
    local f11_local5 = 3
    local f11_local6 = 3
    if arg0:IsExistMeshOnLine(TARGET_ENE_0, AI_DIR_TYPE_ToF, 8) == false then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 1, TARGET_SELF, false, -1)
    else
        Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    end
    local f11_local7 = 3008
    local f11_local8 = 0
    local f11_local9 = 0
    local f11_local10 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local7, TARGET_ENE_0, 9999, f11_local8, f11_local9, 0, 0)
    f11_local10:TimingSetNumber(2, 1, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act10 = function (arg0, arg1, arg2)
    local f12_local0 = 3010
    local f12_local1 = 0
    local f12_local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f12_local0, TARGET_ENE_0, 9999, f12_local1, f12_local2, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act11 = function (arg0, arg1, arg2)
    local f13_local0 = 4.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = 4.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local2 = 4.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local3 = 100
    local f13_local4 = 0
    local f13_local5 = 3
    local f13_local6 = 3
    if arg0:IsExistMeshOnLine(TARGET_ENE_0, AI_DIR_TYPE_ToF, 8) == false then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 1, TARGET_SELF, false, -1)
    else
        Approach_Act_Flex(arg0, arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    end
    local f13_local7 = 3011
    local f13_local8 = 0
    local f13_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f13_local7, TARGET_ENE_0, 9999, f13_local8, f13_local9, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act13 = function (arg0, arg1, arg2)
    local f14_local0 = 5.4 - arg0:GetMapHitRadius(TARGET_SELF) - 1
    local f14_local1 = 5.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local2 = 5.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local3 = 100
    local f14_local4 = 0
    local f14_local5 = 3
    local f14_local6 = 3
    if arg0:IsExistMeshOnLine(TARGET_ENE_0, AI_DIR_TYPE_ToF, 8) == false then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 1, TARGET_SELF, false, -1)
    else
        Approach_Act_Flex(arg0, arg1, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    end
    local f14_local7 = 3013
    local f14_local8 = 0
    local f14_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f14_local7, TARGET_ENE_0, 9999, f14_local8, f14_local9, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act14 = function (arg0, arg1, arg2)
    local f15_local0 = 9.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local1 = 9.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local2 = 9.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local3 = 100
    local f15_local4 = 0
    local f15_local5 = 3
    local f15_local6 = 3
    Approach_Act_Flex(arg0, arg1, f15_local0, f15_local1, f15_local2, f15_local3, f15_local4, f15_local5, f15_local6)
    local f15_local7 = 3014
    local f15_local8 = 0
    local f15_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f15_local7, TARGET_ENE_0, 9999, f15_local8, f15_local9, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act20 = function (arg0, arg1, arg2)
    local f16_local0 = 1040
    local f16_local1 = 0
    local f16_local2 = 0
    local f16_local3 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f16_local0, TARGET_ENE_0, 9999, f16_local1, f16_local2, 0, 0)
    f16_local3:TimingSetNumber(1, 1, AI_TIMING_SET__UPDATE_SUCCESS)
    arg0:SetTimer(0, 30)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act30 = function (arg0, arg1, arg2)
    local f17_local0 = 5.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local1 = 5.4 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f17_local2 = 5.4 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f17_local3 = 100
    local f17_local4 = 0
    local f17_local5 = 3
    local f17_local6 = 3
    Approach_Act_Flex(arg0, arg1, f17_local0, f17_local1, f17_local2, f17_local3, f17_local4, f17_local5, f17_local6)
    local f17_local7 = 3008
    local f17_local8 = 0
    local f17_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f17_local7, TARGET_ENE_0, 9999, f17_local8, f17_local9, 0, 0)
    arg0:SetNumber(5, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act31 = function (arg0, arg1, arg2)
    local f18_local0 = 5.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f18_local1 = 5.4 - arg0:GetMapHitRadius(TARGET_SELF) + 0
    local f18_local2 = 5.4 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f18_local3 = 100
    local f18_local4 = 0
    local f18_local5 = 1.5
    local f18_local6 = 3
    Approach_Act_Flex(arg0, arg1, f18_local0, f18_local1, f18_local2, f18_local3, f18_local4, f18_local5, f18_local6)
    local f18_local7 = 3013
    local f18_local8 = 0
    local f18_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f18_local7, TARGET_ENE_0, 9999, f18_local8, f18_local9, 0, 0)
    arg0:SetNumber(5, 1)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act21 = function (arg0, arg1, arg2)
    local f19_local0 = 3
    local f19_local1 = 45
    arg1:AddSubGoal(GOAL_COMMON_Turn, f19_local0, TARGET_ENE_0, f19_local1, -1, GOAL_RESULT_Success, true)
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
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f20_local5 = 0
            else
                f20_local5 = 1
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
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act25 = function (arg0, arg1, arg2)
    local f21_local0 = arg0:GetRandam_Float(2, 4)
    local f21_local1 = 4
    local f21_local2 = arg0:GetDist(TARGET_ENE_0)
    local f21_local3 = -1
    if SpaceCheck(arg0, arg1, 180, 1) == true then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f21_local0, TARGET_ENE_0, f21_local1, TARGET_ENE_0, true, f21_local3)
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
    local f23_local0 = arg0:GetRandam_Int(1, 100)
    if YousumiAct_SubGoal(arg0, arg1, true, 50, 30) == false then
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    local f23_local1 = 0
    local f23_local2 = SpaceCheck_SidewayMove(arg0, arg1, 1)
    if f23_local2 == 0 then
        f23_local1 = 0
    elseif f23_local2 == 1 then
        f23_local1 = 1
    elseif f23_local2 == 2 then
        if f23_local0 <= 50 then
            f23_local1 = 0
        else
            f23_local1 = 1
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_Wait, 1, TARGET_SELF, 0, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    arg0:SetNumber(10, f23_local1)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f23_local1, arg0:GetRandam_Int(30, 45), true, true, -1)
    arg0:SetNumber(NUMBER_SLOT_FIGHT_COUNT, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act28 = function (arg0, arg1, arg2)
    local f24_local0 = arg0:GetDist(TARGET_ENE_0)
    local f24_local1 = 1.5
    local f24_local2 = 1.5
    local f24_local3 = arg0:GetRandam_Int(30, 45)
    local f24_local4 = -1
    local f24_local5 = arg0:GetRandam_Int(0, 1)
    if f24_local0 <= 5 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f24_local1, TARGET_ENE_0, f24_local5, f24_local3, true, true, f24_local4)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f24_local2, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act41 = function (arg0, arg1, arg2)
    local f25_local0 = arg0:GetDist(TARGET_ENE_0)
    local f25_local1 = 1.5
    local f25_local2 = 1.5
    local f25_local3 = arg0:GetRandam_Int(30, 45)
    local f25_local4 = -1
    local f25_local5 = arg0:GetRandam_Int(0, 1)
    if f25_local0 <= 3 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, WalkLife, TARGET_ENE_0, 4, TARGET_ENE_0, true, guard)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f25_local1, TARGET_ENE_0, f25_local5, f25_local3, true, true, f25_local4)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act45 = function (arg0, arg1, arg2)
    local f26_local0 = 2 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5
    local f26_local1 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f26_local2 = 2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f26_local3 = 100
    local f26_local4 = 0
    local f26_local5 = 3
    local f26_local6 = 3
    local f26_local7 = 3006
    local f26_local8 = 0
    local f26_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f26_local7, TARGET_ENE_0, 9999, f26_local8, f26_local9, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act46 = function (arg0, arg1, arg2)
    local f27_local0 = 3.8 - arg0:GetMapHitRadius(TARGET_SELF) - 0.5
    local f27_local1 = 3.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f27_local2 = 3.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f27_local3 = 100
    local f27_local4 = 0
    local f27_local5 = 3
    local f27_local6 = 3
    local f27_local7 = 3002
    local f27_local8 = 0
    local f27_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 4, f27_local7, TARGET_ENE_0, 9999, f27_local8, f27_local9, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act47 = function (arg0, arg1, arg2)
    local f28_local0 = 0
    local f28_local1 = 180
    local f28_local2 = arg0:GetRandam_Int(1, 100)
    arg0:SetEventMoveTarget(1102319)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, POINT_EVENT, 0.2, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f29_local0 = arg1:GetHpRate(TARGET_SELF)
    local f29_local1 = arg1:GetDist(TARGET_ENE_0)
    local f29_local2 = arg1:GetSp(TARGET_SELF)
    local f29_local3 = arg1:GetSpecialEffectActivateInterruptType(0)
    local f29_local4 = arg1:GetNinsatsuNum()
    local f29_local5 = arg1:GetRandam_Int(1, 100)
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
        if arg1:GetSpecialEffectActivateInterruptType(0) == 3502540 then
            arg2:ClearSubGoal()
            arg1:Replaning()
            return false
        end
        if arg1:GetSpecialEffectActivateInterruptType(0) == 5025 and arg1:HasSpecialEffectId(TARGET_SELF, 200030) then
            arg1:SetNumber(0, 1)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 3502010 and arg1:HasSpecialEffectId(TARGET_SELF, 3502000) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3016, TARGET_ENE_0, 9999, 0, 0)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5026 and arg1:IsFinishTimer(1) == true and f29_local4 <= 1 and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) then
            if f29_local1 <= 1.3 then
                if f29_local5 <= 33 then
                    arg2:ClearSubGoal()
                    local f29_local6 = arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3006, TARGET_ENE_0, 9999, 0, 0)
                    f29_local6:TimingSetTimer(1, 10, AI_TIMING_SET__ACTIVATE)
                elseif f29_local5 <= 66 then
                    arg2:ClearSubGoal()
                    local f29_local6 = arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3011, TARGET_ENE_0, 9999, 0, 0)
                    f29_local6:TimingSetTimer(1, 10, AI_TIMING_SET__ACTIVATE)
                else
                    arg2:ClearSubGoal()
                    local f29_local6 = arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3013, TARGET_ENE_0, 9999, 0, 0)
                    f29_local6:TimingSetTimer(1, 10, AI_TIMING_SET__ACTIVATE)
                end
            elseif f29_local1 <= 5.4 - arg1:GetMapHitRadius(TARGET_SELF) then
                if f29_local5 <= 50 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3008, TARGET_ENE_0, 9999, 0, 0)
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3013, TARGET_ENE_0, 9999, 0, 0)
                end
            elseif f29_local1 <= 9.4 - arg1:GetMapHitRadius(TARGET_SELF) then
                if f29_local5 <= 50 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3004, TARGET_ENE_0, 9999, 0, 0)
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 3, 3014, TARGET_ENE_0, 9999, 0, 0)
                end
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_InactivateSpecialEffect) and arg1:GetSpecialEffectInactivateInterruptType(0) == 3502540 then
        arg2:ClearSubGoal()
        arg1:Replaning()
        return false
    end
    return false
    
end

Goal.ActAfter_AdjustSpace = function (arg0, arg1, arg2)
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end


