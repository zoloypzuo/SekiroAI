RegisterTableGoal(GOAL_Yasyazaru510000_Battle, "GOAL_Yasyazaru510000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_Yasyazaru510000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 0)
    arg1:SetStringIndexedNumber("Dist_BackStep", 0)
    local f2_local0 = {}
    local f2_local1 = {}
    local f2_local2 = {}
    Common_Clear_Param(f2_local0, f2_local1, f2_local2)
    local f2_local3 = arg1:GetHpRate(TARGET_SELF)
    local f2_local4 = arg1:GetSpRate(TARGET_SELF)
    local f2_local5 = arg1:GetDist(TARGET_ENE_0)
    local f2_local6 = arg1:GetRandam_Int(1, 100)
    local f2_local7 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local f2_local8 = arg1:GetEventRequest()
    local f2_local9 = arg1:GetEventRequest(1)
    local f2_local10 = arg1:GetDistY(TARGET_SELF)
    local f2_local11 = arg1:GetDistY(TARGET_ENE_0)
    local f2_local12 = arg1:HasSpecialEffectId(TARGET_SELF, 200050)
    arg1:SetNumber(11, 0)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:AddObserveSpecialEffectAttribute(TARGET_EVENT, 5034)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 3510020)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 110010)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 110030)
    arg1:DeleteObserve(2)
    arg1:DeleteObserve(3)
    if arg0:Kengeki_Activate(arg1, arg2) then
        return 
    end
    if f2_local8 == 10 then
        f2_local0[20] = 100
    elseif arg1:HasSpecialEffectId(TARGET_EVENT, 5033) then
        f2_local0[39] = 100
    elseif f2_local9 == 10 or arg1:GetNumber(1) == 1 then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            if f2_local5 >= 7 then
                f2_local0[42] = 100
            else
                f2_local0[42] = 100
            end
        elseif not not arg1:HasSpecialEffectId(TARGET_ENE_0, 110060) or arg1:HasSpecialEffectId(TARGET_ENE_0, 110010) then
            f2_local0[39] = 100
        elseif Common_ActivateAct(arg1, arg2) then

        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) and not arg1:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_F, 5) and arg1:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 3) then
            f2_local0[42] = 50
            f2_local0[44] = 100
        elseif arg1:HasSpecialEffectId(TARGET_ENE_0, COMMON_SP_EFFECT_PC_BREAK) and not f2_local12 then
            if f2_local5 > 12 then
                f2_local0[12] = 100
            else
                f2_local0[5] = 100
            end
        else
            if f2_local5 >= 18 then
                f2_local0[6] = 50
                f2_local0[15] = 800
                f2_local0[18] = 50
                f2_local0[19] = 50
                f2_local0[43] = 100
            elseif f2_local5 >= 12 then
                f2_local0[6] = 50
                f2_local0[15] = 800
                f2_local0[18] = 50
                f2_local0[19] = 50
                f2_local0[43] = 100
            elseif f2_local5 >= 5 then
                f2_local0[6] = 50
                f2_local0[15] = 800
                f2_local0[18] = 50
                f2_local0[19] = 50
                f2_local0[36] = 50
                if arg1:IsFinishTimer(3) == true then

                end
            else
                f2_local0[13] = 100
                f2_local0[14] = 500
                f2_local0[36] = 50
                f2_local0[42] = 50
            end
            if arg1:IsFinishTimer(1) == false then
                f2_local0[36] = 0
                f2_local0[42] = 0
            end
            if not arg1:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 2) or not arg1:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 2) then
                f2_local0[42] = 200
            end
        end
    elseif not not arg1:HasSpecialEffectId(TARGET_ENE_0, 110060) or arg1:HasSpecialEffectId(TARGET_ENE_0, 110010) then
        f2_local0[39] = 100
    elseif Common_ActivateAct(arg1, arg2) then

    elseif f2_local8 == 20 then
        f2_local0[12] = 250
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5027) and not f2_local12 then
        f2_local0[48] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5030) and f2_local5 >= 10 then
        f2_local0[18] = 100
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        if f2_local5 >= 7 then
            f2_local0[10] = 150
            f2_local0[11] = 100
            f2_local0[42] = 100
        else
            f2_local0[4] = 300
            f2_local0[10] = 50
            f2_local0[11] = 50
            f2_local0[42] = 100
        end
    else
        if not not arg1:HasSpecialEffectId(TARGET_ENE_0, 110060) or arg1:HasSpecialEffectId(TARGET_ENE_0, 110010) then
            f2_local0[39] = 100
        else
            if f2_local5 >= 22 then
                f2_local0[1] = 50
                f2_local0[10] = 50
                f2_local0[11] = 100
                f2_local0[12] = 250
            elseif f2_local5 >= 18 then
                f2_local0[1] = 50
                f2_local0[5] = 50
                f2_local0[10] = 100
                f2_local0[11] = 100
            elseif f2_local5 >= 12 then
                f2_local0[1] = 100
                f2_local0[6] = 100
                f2_local0[5] = 50
                f2_local0[7] = 100
                if arg1:IsFinishTimer(3) == true then
                    f2_local0[33] = 50
                    f2_local0[34] = 50
                end
            elseif f2_local5 >= 8 then
                f2_local0[1] = 75
                f2_local0[2] = 0
                f2_local0[5] = 100
                f2_local0[6] = 200
                f2_local0[7] = 75
                f2_local0[9] = 150
                f2_local0[13] = 100
                f2_local0[36] = 50
                if arg1:IsFinishTimer(3) == true then
                    f2_local0[33] = 100
                    f2_local0[34] = 100
                end
            else
                f2_local0[1] = 50
                f2_local0[2] = 150
                f2_local0[5] = 50
                f2_local0[7] = 50
                f2_local0[9] = 100
                f2_local0[13] = 75
                f2_local0[14] = 500
                f2_local0[36] = 50
                f2_local0[42] = 50
                if arg1:IsFinishTimer(3) == true then
                    f2_local0[33] = 100
                    f2_local0[34] = 100
                end
            end
            if arg1:IsFinishTimer(4) == false or f2_local3 <= 0.6 then
                f2_local0[6] = 0
            end
            if arg1:IsFinishTimer(1) == false then
                f2_local0[36] = 0
                f2_local0[42] = 0
            end
            if not arg1:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 2) or not arg1:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 2) then
                f2_local0[42] = 200
            end
            if f2_local12 then
                f2_local0[33] = 0
                f2_local0[34] = 0
                f2_local0[36] = 0
                f2_local0[42] = 0
                f2_local0[12] = 0
                f2_local0[15] = 200
            end
        end
        if not not arg1:HasSpecialEffectId(TARGET_ENE_0, 109031) or arg1:HasSpecialEffectId(TARGET_ENE_0, 110125) then
            f2_local0[5] = 1
            f2_local0[13] = 1
            f2_local0[33] = 1
            f2_local0[34] = 1
            f2_local0[36] = 1
            f2_local0[42] = 1
        end
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 15, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3003, 15, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3008, 15, f2_local0[3], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3009, 20, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3012, 5, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3020, 10, f2_local0[7], 1)
    f2_local0[9] = SetCoolTime(arg1, arg2, 3021, 10, f2_local0[9], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3015, 15, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3016, 10, f2_local0[14], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3028, 8, f2_local0[15], 1)
    f2_local0[18] = SetCoolTime(arg1, arg2, 3018, 5, f2_local0[18], 1)
    f2_local0[19] = SetCoolTime(arg1, arg2, 3029, 5, f2_local0[19], 1)
    f2_local0[29] = SetCoolTime(arg1, arg2, 3017, 15, f2_local0[29], 1)
    f2_local0[46] = SetCoolTime(arg1, arg2, 3005, 10, f2_local0[46], 1)
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
    f2_local1[13] = REGIST_FUNC(arg1, arg2, arg0.Act13)
    f2_local1[14] = REGIST_FUNC(arg1, arg2, arg0.Act14)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, arg0.Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, arg0.Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, arg0.Act17)
    f2_local1[18] = REGIST_FUNC(arg1, arg2, arg0.Act18)
    f2_local1[19] = REGIST_FUNC(arg1, arg2, arg0.Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, arg0.Act20)
    f2_local1[29] = REGIST_FUNC(arg1, arg2, arg0.Act29)
    f2_local1[30] = REGIST_FUNC(arg1, arg2, arg0.Act30)
    f2_local1[31] = REGIST_FUNC(arg1, arg2, arg0.Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, arg0.Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, arg0.Act33)
    f2_local1[34] = REGIST_FUNC(arg1, arg2, arg0.Act34)
    f2_local1[35] = REGIST_FUNC(arg1, arg2, arg0.Act35)
    f2_local1[36] = REGIST_FUNC(arg1, arg2, arg0.Act36)
    f2_local1[37] = REGIST_FUNC(arg1, arg2, arg0.Act37)
    f2_local1[38] = REGIST_FUNC(arg1, arg2, arg0.Act38)
    f2_local1[39] = REGIST_FUNC(arg1, arg2, arg0.Act39)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, arg0.Act40)
    f2_local1[41] = REGIST_FUNC(arg1, arg2, arg0.Act41)
    f2_local1[42] = REGIST_FUNC(arg1, arg2, arg0.Act42)
    f2_local1[43] = REGIST_FUNC(arg1, arg2, arg0.Act43)
    f2_local1[44] = REGIST_FUNC(arg1, arg2, arg0.Act44)
    f2_local1[45] = REGIST_FUNC(arg1, arg2, arg0.Act45)
    f2_local1[46] = REGIST_FUNC(arg1, arg2, arg0.Act46)
    f2_local1[47] = REGIST_FUNC(arg1, arg2, arg0.Act47)
    f2_local1[48] = REGIST_FUNC(arg1, arg2, arg0.Act48)
    local f2_local13 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local13, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    local f3_local0 = arg0:GetDist(TARGET_ENE_0)
    local f3_local1 = 9.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local2 = arg0:GetRandam_Float(3, 9)
    local f3_local3 = false
    local f3_local4 = 5
    if f3_local1 < f3_local0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f3_local4, TARGET_ENE_0, f3_local1, TARGET_SELF, f3_local3, -1)
    end
    local f3_local5 = 3000
    local f3_local6 = 3001
    local f3_local7 = 3002
    local f3_local8 = 9.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local9 = 9.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local10 = 9.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local11 = 0
    local f3_local12 = 0
    local f3_local13 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f3_local5, TARGET_ENE_0, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, f3_local6, TARGET_ENE_0, 999, 0, 0, 0, 0)
    arg0:SetNumber(5, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 9.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local2 = false
    local f4_local3 = 10
    if f4_local1 < f4_local0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f4_local3, TARGET_ENE_0, f4_local1, TARGET_SELF, f4_local2, -1)
    else

    end
    local f4_local4 = 3003
    local f4_local5 = 3004
    local f4_local6 = 3023
    local f4_local7 = 9.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local8 = 5.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local9 = 0
    local f4_local10 = 0
    local f4_local11 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f4_local4, TARGET_ENE_0, f4_local7, f4_local9, f4_local10, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f4_local5, TARGET_ENE_0, f4_local8, f4_local9, f4_local10, 0, 0)
    arg0:SetNumber(5, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    local f5_local1 = 26.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local2 = false
    local f5_local3 = 10
    if f5_local1 < f5_local0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f5_local3, TARGET_ENE_0, f5_local1, TARGET_SELF, f5_local2, -1)
    elseif f5_local1 - 8 < f5_local0 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 4, 3023, TARGET_ENE_0, SuccessDist1, TurnTime, FrontAngle, 0, 0)
    elseif f5_local1 - 24 < f5_local0 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, StepLife, 5211, TARGET_ENE_0, TurnTime, AI_DIR_TYPE_F, CourseLong)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 4, 3023, TARGET_ENE_0, SuccessDist1, TurnTime, FrontAngle, 0, 0)
        return false
    end
    local f5_local4 = 3008
    local f5_local5 = 26.8 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local6 = 0
    local f5_local7 = 120
    if arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_F, 15) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, f5_local4, TARGET_ENE_0, 9999, f5_local6, f5_local7, 0, 0)
    else
        return false
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act04 = function (arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = 9.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local2 = 3013
    local f6_local3 = 9.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local4 = 0
    local f6_local5 = 0
    local f6_local6 = arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f6_local2, TARGET_ENE_0, 9999, f6_local4, f6_local5, 0, 0)
    f6_local6:TimingSetNumber(AI_NUMBER_SEARCH_ENEMY_ACTION, 1, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act05 = function (arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = 12.4 - arg0:GetMapHitRadius(TARGET_SELF) + 2
    local f7_local2 = false
    local f7_local3 = 1
    local f7_local4 = arg0:GetRandam_Int(1, 100)
    if f7_local1 < f7_local0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f7_local3, TARGET_ENE_0, f7_local1, TARGET_SELF, f7_local2, -1)
    else

    end
    local f7_local5 = 3009
    local f7_local6 = 12.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f7_local7 = 0
    local f7_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f7_local5, TARGET_ENE_0, 9999, f7_local7, f7_local8, 0, 0)
    if arg0:IsExistMeshOnLine(TARGET_SELf, AI_DIR_TYPE_B, 20) then
        if f7_local4 > 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, 10, 5211, TARGET_ENE_0, f7_local7, AI_DIR_TYPE_F, CourseLong)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3023, TARGET_ENE_0, 999, 0, 0, 0, 0)
    end
    local f7_local9 = arg0:GetRandam_Float(3.5, 3.5)
    local f7_local10 = arg0:GetRandam_Int(30, 45)
    local f7_local11 = arg0:GetSpRate(TARGET_SELF)
    local f7_local12 = arg0:GetHpRate(TARGET_SELF)
    if f7_local12 >= 0.7 then
        if InsideRange(arg0, arg1, 90, 180, -9999, 9999) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f7_local9, TARGET_ENE_0, 0, f7_local10, true, true, -1)
        elseif InsideRange(arg0, arg1, -90, 180, -9999, 9999) then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f7_local9, TARGET_ENE_0, 1, f7_local10, true, true, -1)
        end
    end
    arg0:SetNumber(5, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act06 = function (arg0, arg1, arg2)
    local f8_local0 = 3018
    local f8_local1 = 0.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local2 = 0
    local f8_local3 = 0
    local f8_local4 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f8_local0, TARGET_ENE_0, f8_local1, f8_local2, f8_local3, 0, 0)
    f8_local4:TimingSetTimer(4, 30, AI_TIMING_SET__ACTIVATE)
    arg0:SetTimer(2, 8)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act07 = function (arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f9_local2 = false
    local f9_local3 = arg0:GetRandam_Int(1, 100)
    if f9_local1 + 1 < f9_local0 then
        f9_local1 = f9_local1 + 2.6
    end
    if f9_local1 < f9_local0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, f9_local1, TARGET_SELF, f9_local2, -1)
    end
    local f9_local4 = 3019
    local f9_local5 = 3020
    local f9_local6 = 0
    local f9_local7 = 0
    if f9_local3 > 10 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f9_local4, TARGET_ENE_0, f9_local1, f9_local6, f9_local7, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f9_local5, TARGET_ENE_0, f9_local1, f9_local6, f9_local7, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3019, TARGET_ENE_0, f9_local1, f9_local6, f9_local7, 0, 0)
    end
    arg0:SetNumber(5, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act08 = function (arg0, arg1, arg2)
    local f10_local0 = arg0:GetRandam_Float(3, 4)
    local f10_local1 = arg0:GetRandam_Int(30, 45)
    local f10_local2 = arg0:GetRandam_Int(1, 100)
    local f10_local3 = arg0:GetDist(TARGET_ENE_0)
    local f10_local4 = false
    local f10_local5 = 12 - arg0:GetMapHitRadius(TARGET_SELF) + 5
    local f10_local6 = 3019
    local f10_local7 = 3020
    local f10_local8 = 0
    local f10_local9 = 0
    if f10_local5 < f10_local3 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f10_local0, TARGET_ENE_0, f10_local5, TARGET_SELF, f10_local4, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0, 0, 0, 0)
    if f10_local2 > 10 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f10_local6, TARGET_ENE_0, f10_local5, f10_local8, f10_local9, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f10_local7, TARGET_ENE_0, f10_local5, f10_local8, f10_local9, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3019, TARGET_ENE_0, f10_local5, f10_local8, f10_local9, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act09 = function (arg0, arg1, arg2)
    local f11_local0 = arg0:GetDist(TARGET_ENE_0)
    local f11_local1 = 7.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local2 = arg0:GetRandam_Float(0, 3)
    local f11_local3 = false
    local f11_local4 = 3
    if f11_local1 < f11_local0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f11_local4, TARGET_ENE_0, f11_local1, TARGET_SELF, f11_local3, -1)
    end
    local f11_local5 = 3021
    local f11_local6 = 7.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local7 = 0
    local f11_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f11_local5, TARGET_ENE_0, f11_local6, f11_local7, f11_local8, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act10 = function (arg0, arg1, arg2)
    local f12_local0 = arg0:GetDist(TARGET_ENE_0)
    local f12_local1 = 9.6 - arg0:GetMapHitRadius(TARGET_SELF) + 22.6 - arg0:GetMapHitRadius(TARGET_SELF) + 3
    local f12_local2 = false
    local f12_local3 = 5
    local f12_local4 = 3
    local f12_local5 = 45
    if f12_local1 < f12_local0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f12_local3, TARGET_ENE_0, f12_local1, TARGET_SELF, f12_local2, -1)
    end
    local f12_local6 = 3026
    local f12_local7 = 3000
    local f12_local8 = 3001
    local f12_local9 = 3002
    local f12_local10 = 9.6 - arg0:GetMapHitRadius(TARGET_SELF) + 22.6 - arg0:GetMapHitRadius(TARGET_SELF) + 1.5
    local f12_local11 = 9.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local12 = 9.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local13 = 9.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local14 = 0
    local f12_local15 = 0
    local f12_local16 = arg0:GetRandam_Int(1, 100)
    if f12_local16 > 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f12_local6, TARGET_ENE_0, f12_local10, f12_local14, f12_local15, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f12_local7, TARGET_ENE_0, f12_local11, f12_local14, f12_local15, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f12_local8, TARGET_ENE_0, f12_local12, f12_local14, f12_local15, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f12_local9, TARGET_ENE_0, f12_local13, f12_local14, f12_local15, 0, 0)
    elseif f12_local16 > 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f12_local6, TARGET_ENE_0, f12_local10, f12_local14, f12_local15, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f12_local7, TARGET_ENE_0, f12_local11, f12_local14, f12_local15, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, f12_local8, TARGET_ENE_0, f12_local12, f12_local14, f12_local15, 0, 0)
    elseif f12_local16 > 20 then
        arg0:AddObserveArea(3, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 7)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f12_local6, TARGET_ENE_0, 9999, f12_local14, f12_local15, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f12_local7, TARGET_ENE_0, 9999, f12_local14, f12_local15, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f12_local6, TARGET_ENE_0, f12_local10, f12_local14, f12_local15, 0, 0)
    end
    arg0:SetNumber(5, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act11 = function (arg0, arg1, arg2)
    local f13_local0 = arg0:GetDist(TARGET_ENE_0)
    local f13_local1 = 12.4 - arg0:GetMapHitRadius(TARGET_SELF) + 22.6 - arg0:GetMapHitRadius(TARGET_SELF) - 1
    local f13_local2 = false
    local f13_local3 = 5
    local f13_local4 = 3
    local f13_local5 = 45
    if f13_local1 < f13_local0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f13_local3, TARGET_ENE_0, f13_local1, TARGET_SELF, f13_local2, -1)
    end
    local f13_local6 = 3026
    local f13_local7 = 3009
    local f13_local8 = 12.4 - arg0:GetMapHitRadius(TARGET_SELF) + 22.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local9 = 12.4 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local10 = 0
    local f13_local11 = 0
    local f13_local12 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, f13_local6, TARGET_ENE_0, f13_local8, f13_local10, f13_local11, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, f13_local7, TARGET_ENE_0, f13_local9, 0)
    arg0:SetNumber(5, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act12 = function (arg0, arg1, arg2)
    local f14_local0 = arg0:GetDist(TARGET_ENE_0)
    local f14_local1 = 3014
    local f14_local2 = 0.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local3 = 0
    local f14_local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f14_local1, TARGET_ENE_0, f14_local2, f14_local3, f14_local4, 0, 0)
    arg0:SetNumber(5, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act13 = function (arg0, arg1, arg2)
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = 9.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local2 = arg0:GetRandam_Float(3, 9)
    local f15_local3 = false
    local f15_local4 = 5
    local f15_local5 = 3000
    local f15_local6 = 3015
    local f15_local7 = 3026
    local f15_local8 = 9.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local9 = 0.1 - arg0:GetMapHitRadius(TARGET_SELF)
    local f15_local10 = 0
    local f15_local11 = 0
    arg0:AddObserveArea(3, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 8)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, f15_local5, TARGET_ENE_0, 9999, f15_local10, f15_local11, 0, 0)
    arg0:SetNumber(5, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act14 = function (arg0, arg1, arg2)
    local f16_local0 = arg0:GetDist(TARGET_ENE_0)
    local f16_local1 = 9.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local2 = 3013
    local f16_local3 = 9.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local4 = 0
    local f16_local5 = 0
    local f16_local6 = arg0:GetDist(TARGET_ENE_0)
    local f16_local7 = 9.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f16_local8 = arg0:GetRandam_Float(3, 9)
    local f16_local9 = false
    local f16_local10 = 5
    if f16_local7 < f16_local6 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f16_local10, TARGET_ENE_0, f16_local7, TARGET_SELF, f16_local9, -1)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3016, TARGET_ENE_0, 9999, f16_local4, f16_local5, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act15 = function (arg0, arg1, arg2)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    local f17_local1 = 20 - arg0:GetMapHitRadius(TARGET_SELF) + 12
    local f17_local2 = false
    local f17_local3 = 5
    if f17_local1 < f17_local0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f17_local3, TARGET_ENE_0, f17_local1, TARGET_SELF, f17_local2, -1)
    elseif f17_local0 <= 10 then
        local f17_local4 = 3
        local f17_local5 = 0
        local f17_local6 = 3
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f17_local4, 5211, TARGET_ENE_0, f17_local5, AI_DIR_TYPE_B, f17_local6)
    end
    local f17_local4 = 3
    local f17_local5 = 45
    local f17_local6 = 3028
    local f17_local7 = 20 - arg0:GetMapHitRadius(TARGET_SELF)
    local f17_local8 = 0
    local f17_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f17_local6, TARGET_ENE_0, f17_local7, f17_local8, f17_local9, 0, 0)
    arg0:SetNumber(5, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act16 = function (arg0, arg1, arg2)
    local f18_local0 = arg0:GetDist(TARGET_ENE_0)
    local f18_local1 = 10
    local f18_local2 = 9920
    arg1:AddSubGoal(GOAL_COMMON_Guard, f18_local1, f18_local2, TARGET_ENE_0, false, 0)
    arg0:SetNumber(5, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act17 = function (arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3026, TARGET_ENE_0, 999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act18 = function (arg0, arg1, arg2)
    local f20_local0 = 0
    local f20_local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, 999, f20_local0, f20_local1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act19 = function (arg0, arg1, arg2)
    local f21_local0 = 0
    local f21_local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3029, TARGET_ENE_0, 999, f21_local0, f21_local1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act20 = function (arg0, arg1, arg2)
    local f22_local0 = 0
    local f22_local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 20025, TARGET_EVENT, 999, f22_local0, f22_local1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act29 = function (arg0, arg1, arg2)
    local f23_local0 = arg0:GetDist(TARGET_ENE_0)
    local f23_local1 = arg0:GetRandam_Int(1, 100)
    local f23_local2 = 0
    local f23_local3 = 0
    local f23_local4 = 10
    local f23_local5 = 3026
    local f23_local6 = 9.6 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:ClearSubGoal()
    if arg0:IsExistMeshOnLine(TARGET_ENE_0, AI_DIR_TYPE_B, 15) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3017, TARGET_ENE_0, 999, f23_local2, f23_local3, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, f23_local0 + 20, TARGET_SELF, false, -1)
    end
    arg0:SetTimer(0, 60)
    arg0:SetTimer(1, 25)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act30 = function (arg0, arg1, arg2)
    local f24_local0 = arg0:GetDist(TARGET_ENE_0)
    local f24_local1 = arg0:GetRandam_Int(1, 100)
    local f24_local2 = 0
    local f24_local3 = 0
    local f24_local4 = 10
    local f24_local5 = 3026
    local f24_local6 = 9.6 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:ClearSubGoal()
    if arg0:IsExistMeshOnLine(TARGET_ENE_0, AI_DIR_TYPE_B, 15) then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 8, TARGET_ENE_0, f24_local0 + 15, TARGET_SELF, false, -1)
    end
    arg0:SetTimer(0, 60)
    arg0:SetTimer(1, 25)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act31 = function (arg0, arg1, arg2)
    local f25_local0 = arg0:GetDist(TARGET_ENE_0)
    local f25_local1 = arg0:GetRandam_Int(1, 100)
    local f25_local2 = 0.1
    local f25_local3 = 0
    local f25_local4 = arg0:GetRandam_Int(30, 45)
    local f25_local5 = arg0:GetRandam_Float(6, 12)
    local f25_local6 = arg0:GetRandam_Float(28, 30)
    local f25_local7 = arg0:GetRandam_Float(10, 15)
    if arg0:IsExistMeshOnLine(TARGET_ENE_0, AI_DIR_TYPE_F, 32) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f25_local2, 5211, TARGET_ENE_0, f25_local3, AI_DIR_TYPE_F, f25_local6)
    elseif arg0:IsExistMeshOnLine(TARGET_ENE_0, AI_DIR_TYPE_F, 20) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3023, TARGET_ENE_0, f25_local5, f25_local3, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3023, TARGET_ENE_0, f25_local5, f25_local3, 0, 0, 0)
    elseif arg0:IsExistMeshOnLine(TARGET_ENE_0, AI_DIR_TYPE_F, 10) then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3023, TARGET_ENE_0, f25_local5, f25_local3, 0, 0, 0)
    elseif arg0:IsExistMeshOnLine(TARGET_ENE_0, AI_DIR_TYPE_F, 5) then
        return false
    else
        return false
    end
    arg0:SetTimer(0, 60)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act32 = function (arg0, arg1, arg2)
    local f26_local0 = arg0:GetRandam_Float(3, 4)
    local f26_local1 = arg0:GetRandam_Int(30, 45)
    local f26_local2 = 0
    local f26_local3 = 0
    local f26_local4 = arg0:GetRandam_Int(1, 100)
    local f26_local5 = arg0:GetRandam_Int(1, 100)
    local f26_local6 = arg0:GetRandam_Int(1, 100)
    if f26_local4 > 40 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3022, TARGET_ENE_0, 999, 0)
    elseif fata1 > 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0)
    end
    if f26_local5 > 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 999, 0)
    elseif f26_local5 > 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3024, TARGET_ENE_0, 999, 0)
    elseif f26_local5 > 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 999, 0)
    else

    end
    if f26_local6 > 80 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3022, TARGET_ENE_0, 999, 0)
    elseif f26_local6 > 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3024, TARGET_ENE_0, 999, 0)
    elseif f26_local6 > 20 then
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3025, TARGET_ENE_0, 999, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, 999, 0)
    end
    arg0:SetTimer(3, 5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act33 = function (arg0, arg1, arg2)
    local f27_local0 = arg0:GetRandam_Float(3, 4)
    local f27_local1 = arg0:GetRandam_Int(30, 45)
    local f27_local2 = 0
    local f27_local3 = 0
    local f27_local4 = arg0:GetRandam_Int(1, 100)
    local f27_local5 = 3
    local f27_local6 = 0
    local f27_local7 = 3
    if arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 15) and arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 15) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0)
    elseif not arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 15) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0)
    elseif not arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 15) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0)
    else
        return false
    end
    arg0:SetTimer(3, 5)
    arg0:SetTimer(1, 25)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act34 = function (arg0, arg1, arg2)
    local f28_local0 = arg0:GetRandam_Float(3, 4)
    local f28_local1 = arg0:GetRandam_Int(30, 45)
    local f28_local2 = 0
    local f28_local3 = 0
    local f28_local4 = arg0:GetRandam_Int(1, 100)
    local f28_local5 = 3
    local f28_local6 = 0
    local f28_local7 = 3
    if arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 15) and arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 15) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0)
    elseif not arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 15) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0)
    elseif not arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 15) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0)
    else
        return false
    end
    arg0:SetTimer(3, 5)
    arg0:SetTimer(1, 25)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act35 = function (arg0, arg1, arg2)
    local f29_local0 = 3
    local f29_local1 = arg0:GetRandam_Float(1.5, 2.5)
    local f29_local2 = arg0:GetRandam_Int(30, 45)
    local f29_local3 = arg0:GetRandam_Float(9, 13)
    local f29_local4 = arg0:GetRandam_Float(6, 10)
    local f29_local5 = arg0:GetDist(TARGET_ENE_0)
    if InsideRange(arg0, arg1, 135, 90, -9999, 9999) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f29_local0, TARGET_ENE_0, 0, f29_local2, true, true, -1)
    elseif InsideRange(arg0, arg1, -135, 90, -9999, 9999) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f29_local0, TARGET_ENE_0, 1, f29_local2, true, true, -1)
    elseif f29_local5 > 15 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f29_local1, TARGET_ENE_0, f29_local3, TARGET_SELF, true, 9910)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f29_local1, TARGET_ENE_0, f29_local4, TARGET_SELF, true, 9910)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act36 = function (arg0, arg1, arg2)
    local f30_local0 = 3
    local f30_local1 = 0
    local f30_local2 = 3
    local f30_local3 = arg0:GetRandam_Int(1, 100)
    local f30_local4 = arg0:GetDist(TARGET_ENE_0)
    arg0:SetTimer(1, 25)
    if not (not InsideRange(arg0, arg1, 90, 180, -9999, 9999) or not arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 2)) or InsideRange(arg0, arg1, -90, 180, -9999, 9999) and not arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 2) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f30_local0, 5202, TARGET_ENE_0, f30_local1, AI_DIR_TYPE_L, f30_local2)
        if f30_local3 > 50 and f30_local4 > 10 then
            arg1:AddSubGoal(GOAL_COMMON_Attack, f30_local0, 3022, TARGET_ENE_0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_Attack, f30_local0, 3023, TARGET_ENE_0, 0)
        end
    elseif not (not InsideRange(arg0, arg1, -90, 180, -9999, 9999) or not arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 2)) or InsideRange(arg0, arg1, 90, 180, -9999, 9999) and not arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 2) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f30_local0, 5203, TARGET_ENE_0, f30_local1, AI_DIR_TYPE_R, f30_local2)
        if f30_local3 > 50 and f30_local4 > 10 then
            arg1:AddSubGoal(GOAL_COMMON_Attack, f30_local0, 3022, TARGET_ENE_0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_Attack, f30_local0, 3023, TARGET_ENE_0, 0)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act37 = function (arg0, arg1, arg2)
    local f31_local0 = arg0:GetDist(TARGET_ENE_0)
    local f31_local1 = arg0:GetRandam_Int(1, 100)
    local f31_local2 = 0.1
    local f31_local3 = 0
    local f31_local4 = 3
    local f31_local5 = arg0:GetRandam_Float(1, 3)
    local f31_local6 = arg0:GetRandam_Int(30, 45)
    local f31_local7 = arg0:GetRandam_Float(3, 5)
    local f31_local8 = arg0:GetRandam_Float(1, 1.5)
    local f31_local9 = arg0:GetRandam_Float(6, 10)
    if f31_local1 > 60 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f31_local8, TARGET_ENE_0, f31_local9, TARGET_SELF, false, -1, AI_DIR_TYPE_ToR, f31_local9)
    elseif f31_local1 > 20 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f31_local8, TARGET_ENE_0, f31_local9, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, f31_local9)
    elseif not (not InsideRange(arg0, arg1, 90, 180, -9999, 9999) or not arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 5)) or InsideRange(arg0, arg1, -90, 180, -9999, 9999) and not arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 2) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f31_local2, 5202, TARGET_ENE_0, f31_local3, AI_DIR_TYPE_L, f31_local4)
    elseif not (not InsideRange(arg0, arg1, -90, 180, -9999, 9999) or not arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 5)) or InsideRange(arg0, arg1, 90, 180, -9999, 9999) and not arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 2) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f31_local2, 5203, TARGET_ENE_0, f31_local3, AI_DIR_TYPE_R, f31_local4)
    end
    arg0:SetTimer(0, 60)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act38 = function (arg0, arg1, arg2)
    local f32_local0 = arg0:GetDist(TARGET_ENE_0)
    local f32_local1 = arg0:GetRandam_Int(1, 100)
    local f32_local2 = 0
    local f32_local3 = 3
    local f32_local4 = arg0:GetRandam_Float(1, 2.5)
    local f32_local5 = arg0:GetRandam_Int(30, 45)
    local f32_local6 = arg0:GetRandam_Float(3, 5)
    local f32_local7 = arg0:GetRandam_Float(2, 2.5)
    local f32_local8 = arg0:GetRandam_Float(17, 20)
    if f32_local1 > 60 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f32_local7, TARGET_ENE_0, f32_local4, TARGET_SELF, false, -1, AI_DIR_TYPE_ToR, f32_local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0)
    elseif f32_local1 > 20 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, f32_local7, TARGET_ENE_0, f32_local4, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, f32_local8)
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0)
    elseif not (not InsideRange(arg0, arg1, 90, 180, -9999, 9999) or not arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 5)) or InsideRange(arg0, arg1, -90, 180, -9999, 9999) and not arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 2) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3024, TARGET_ENE_0, 999, 0)
    elseif not (not InsideRange(arg0, arg1, -90, 180, -9999, 9999) or not arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 5)) or InsideRange(arg0, arg1, 90, 180, -9999, 9999) and not arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 2) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0)
    end
    arg0:SetTimer(0, 60)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act39 = function (arg0, arg1, arg2)
    local f33_local0 = arg0:GetDist(TARGET_ENE_0)
    local f33_local1 = arg0:GetRandam_Int(1, 100)
    local f33_local2 = 15
    local f33_local3 = 10
    local f33_local4 = arg0:GetRandam_Float(2, 4)
    local f33_local5 = arg0:GetRandam_Int(30, 45)
    local f33_local6 = arg0:GetRandam_Float(3, 5)
    local f33_local7 = 3
    local f33_local8 = 0
    local f33_local9 = 3
    if f33_local2 <= f33_local0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f33_local4, TARGET_ENE_0, f33_local2, TARGET_ENE_0, true, -1)
    elseif f33_local0 <= f33_local3 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f33_local7, 5201, TARGET_ENE_0, f33_local8, AI_DIR_TYPE_B, f33_local9)
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f33_local4, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), f33_local5, true, true, -1)
    if f33_local1 <= 60 then

    else

    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act40 = function (arg0, arg1, arg2)
    local f34_local0 = arg0:GetDist(TARGET_ENE_0)
    local f34_local1 = ATT3031_DIST_MAX
    local f34_local2 = false
    local f34_local3 = 3
    local f34_local4 = arg0:GetRandam_Int(1, 100)
    if f34_local0 < 2 and arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 2) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 5210, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    elseif f34_local0 < 5 and arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, 2) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 3, 5201, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
    end
    local f34_local5 = 3030
    local f34_local6 = 999
    local f34_local7 = 0
    local f34_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, f34_local5, TARGET_ENE_0, f34_local6, f34_local7, f34_local8, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act41 = function (arg0, arg1, arg2)
    local f35_local0 = 3
    local f35_local1 = 45
    arg1:AddSubGoal(GOAL_COMMON_Turn, f35_local0, TARGET_ENE_0, f35_local1, -1, GOAL_RESULT_Success, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act42 = function (arg0, arg1, arg2)
    local f36_local0 = 3
    local f36_local1 = 0
    local f36_local2 = 3
    if not (not InsideRange(arg0, arg1, 90, 180, -9999, 9999) or not arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 2)) or InsideRange(arg0, arg1, -90, 180, -9999, 9999) and not arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 2) then
        local f36_local3 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, f36_local0, 5202, TARGET_ENE_0, f36_local1, AI_DIR_TYPE_L, f36_local2)
        f36_local3:TimingSetNumber(AI_NUMBER_SEARCH_ENEMY_ACTION, 1, AI_TIMING_SET__ACTIVATE)
    elseif not (not InsideRange(arg0, arg1, -90, 180, -9999, 9999) or not arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 2)) or InsideRange(arg0, arg1, 90, 180, -9999, 9999) and not arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 2) then
        local f36_local3 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, f36_local0, 5203, TARGET_ENE_0, f36_local1, AI_DIR_TYPE_R, f36_local2)
        f36_local3:TimingSetNumber(AI_NUMBER_SEARCH_ENEMY_ACTION, 1, AI_TIMING_SET__ACTIVATE)
    end
    arg0:SetTimer(1, 3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act43 = function (arg0, arg1, arg2)
    local f37_local0 = arg0:GetRandam_Float(2.5, 3.5)
    local f37_local1 = arg0:GetRandam_Int(30, 45)
    if InsideRange(arg0, arg1, 90, 180, -9999, 9999) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f37_local0, TARGET_ENE_0, 0, f37_local1, true, true, -1)
    elseif InsideRange(arg0, arg1, -90, 180, -9999, 9999) then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f37_local0, TARGET_ENE_0, 1, f37_local1, true, true, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act44 = function (arg0, arg1, arg2)
    local f38_local0 = 3
    local f38_local1 = 0
    local f38_local2 = 3
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f38_local0, 5211, TARGET_ENE_0, f38_local1, AI_DIR_TYPE_B, f38_local2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act45 = function (arg0, arg1, arg2)
    local f39_local0 = arg0:GetRandam_Float(3, 5)
    local f39_local1 = 5
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f39_local0, TARGET_ENE_0, f39_local1, TARGET_ENE_0, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act46 = function (arg0, arg1, arg2)
    local f40_local0 = arg0:GetDist(TARGET_ENE_0)
    local f40_local1 = 9.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f40_local2 = arg0:GetRandam_Float(3, 9)
    local f40_local3 = false
    local f40_local4 = 5
    if f40_local1 < f40_local0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f40_local4, TARGET_ENE_0, f40_local1, TARGET_SELF, f40_local3, -1)
    end
    local f40_local5 = 9.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f40_local6 = 9.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f40_local7 = 9.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f40_local8 = 0
    local f40_local9 = 0
    local f40_local10 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 9999, f40_local8, f40_local9, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 9999, f40_local8, f40_local9, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 9999, f40_local8, f40_local9, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act47 = function (arg0, arg1, arg2)
    local f41_local0 = arg0:GetDist(TARGET_ENE_0)
    local f41_local1 = 9.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f41_local2 = arg0:GetRandam_Float(3, 9)
    local f41_local3 = false
    local f41_local4 = 5
    if f41_local1 < f41_local0 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f41_local4, TARGET_ENE_0, f41_local1, TARGET_SELF, f41_local3, -1)
    end
    local f41_local5 = 9.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f41_local6 = 9.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f41_local7 = 9.6 - arg0:GetMapHitRadius(TARGET_SELF)
    local f41_local8 = 0
    local f41_local9 = 0
    local f41_local10 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 9999, f41_local8, f41_local9, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act48 = function (arg0, arg1, arg2)
    local f42_local0 = arg0:GetRandam_Float(4.5, 5.5)
    local f42_local1 = arg0:GetRandam_Int(30, 45)
    local f42_local2 = 3
    local f42_local3 = 0
    local f42_local4 = 3
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3026, TARGET_ENE_0, 9999, f42_local3, FrontAngle, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f43_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
    local f43_local1 = arg1:GetDist(TARGET_ENE_0)
    local f43_local2 = arg1:GetToTargetAngle(TARGET_ENE_0)
    local f43_local3 = arg1:GetRandam_Int(1, 100)
    local f43_local4 = arg1:GetSpRate(TARGET_SELF)
    local f43_local5 = arg1:GetHpRate(TARGET_SELF)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if Interupt_PC_Break(arg1) then
        arg1:Replanning()
        return true
    end
    if arg1:IsInterupt(INTERUPT_Outside_ObserveArea) then

    else

    end
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) and arg1:IsInsideObserve(3) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3015, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
        arg1:DeleteObserve(3)
        arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3014, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
        arg1:DeleteObserve(3)
    else

    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptType(0) == 3510020 then
            arg1:AddObserveArea(1, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 15)
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5031 then
            if f43_local5 <= 0.6 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3027, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif arg1:IsFinishTimer(4) == true and f43_local1 >= 10 then
                arg2:ClearSubGoal()
                local f43_local6 = arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3018, TARGET_ENE_0, 999, 0, 0)
                f43_local6:TimingSetTimer(4, 30, AI_TIMING_SET__ACTIVATE)
                return true
            end
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5034 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 5201, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif arg1:GetSpecialEffectActivateInterruptType(0) == 5039 then
            if arg1:GetNumber(6) >= 1 then
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_EndureAttack, 1, 3031, TARGET_ENE_0, 9999, 0, 0, 0, 0)
                    return true
                end
            else
                arg1:SetNumber(6, 1)
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_InactivateSpecialEffect) and arg1:GetSpecialEffectInactivateInterruptType(0) == 3510020 then
        arg1:DeleteObserve(1)
    end
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) and arg1:IsInsideObserve(1) and arg1:HasSpecialEffectId(TARGET_SELF, 3510020) then
        arg2:ClearSubGoal()
        arg1:AddTopGoal(GOAL_COMMON_AttackImmediateAction, 2, 20006, TARGET_SELF, 9999, 0, 0, 0, 0)
        arg1:DeleteObserve(1)
        return true
    end
    if Interupt_Use_Item(arg1, 5, 10) then
        arg1:Replanning()
        return true
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        return arg0.Damaged(arg1, arg2)
    end
    return false
    
end

Goal.Damaged = function (arg0, arg1, arg2)
    local f44_local0 = arg0:GetRandam_Int(1, 100)
    local f44_local1 = arg0:GetDist(TARGET_ENE_0)
    local f44_local2 = 15
    local f44_local3 = 9920
    if arg0:HasSpecialEffectId(TARGET_SELF, 3510020) then
        arg1:ClearSubGoal()
        arg0:AddTopGoal(GOAL_COMMON_AttackImmediateAction, 2, 20006, TARGET_SELF, 9999, 0, 0, 0, 0)
        return true
    end
    
end

Goal.Kengeki_Activate = function (arg0, arg1, arg2)
    local f45_local0 = ReturnKengekiSpecialEffect(arg1)
    if f45_local0 == 0 then
        return false
    end
    local f45_local1 = {}
    local f45_local2 = {}
    local f45_local3 = {}
    Common_Clear_Param(f45_local1, f45_local2, f45_local3)
    local f45_local4 = arg1:GetDist(TARGET_ENE_0)
    local f45_local5 = arg1:GetSp(TARGET_SELF)
    if f45_local5 <= 0 then
        f45_local1[26] = 100
    elseif arg1:GetStringIndexedNumber("KengekiID") == 200200 then
        if f45_local4 >= 10 then
            f45_local1[26] = 100
        elseif f45_local4 <= 0.2 then
            f45_local1[26] = 100
        else
            f45_local1[3] = 100
        end
    elseif arg1:GetStringIndexedNumber("KengekiID") == 200201 then
        if f45_local4 >= 10 then
            f45_local1[26] = 100
        elseif f45_local4 <= 0.2 then
            f45_local1[26] = 100
        else
            f45_local1[4] = 100
        end
    elseif arg1:GetStringIndexedNumber("KengekiID") == 200205 then
        if f45_local4 >= 10 then
            f45_local1[26] = 100
        elseif f45_local4 <= 0.2 then
            f45_local1[26] = 100
        else
            f45_local1[1] = 100
        end
    elseif arg1:GetStringIndexedNumber("KengekiID") == 200206 then
        if f45_local4 >= 10 then
            f45_local1[26] = 100
        elseif f45_local4 <= 0.2 then
            f45_local1[26] = 100
        else
            f45_local1[2] = 100
        end
    elseif arg1:GetStringIndexedNumber("KengekiID") == 200210 then
        if f45_local4 >= 10 then
            f45_local1[26] = 100
        elseif f45_local4 <= 0.2 then
            f45_local1[26] = 100
        else
            f45_local1[7] = 100
        end
    elseif arg1:GetStringIndexedNumber("KengekiID") == 200211 then
        if f45_local4 >= 10 then
            f45_local1[26] = 100
        elseif f45_local4 <= 0.2 then
            f45_local1[26] = 100
        else
            f45_local1[8] = 100
        end
    elseif arg1:GetStringIndexedNumber("KengekiID") == 200215 then
        if f45_local4 >= 10 then
            f45_local1[26] = 100
        elseif f45_local4 <= 0.2 then
            f45_local1[26] = 100
        else
            f45_local1[5] = 100
        end
    elseif arg1:GetStringIndexedNumber("KengekiID") == 200216 then
        if f45_local4 >= 10 then
            f45_local1[26] = 100
        elseif f45_local4 <= 0.2 then
            f45_local1[26] = 100
        else
            f45_local1[6] = 100
        end
    end
    f45_local2[1] = REGIST_FUNC(arg1, arg2, arg0.Kengeki01)
    f45_local2[2] = REGIST_FUNC(arg1, arg2, arg0.Kengeki02)
    f45_local2[3] = REGIST_FUNC(arg1, arg2, arg0.Kengeki03)
    f45_local2[4] = REGIST_FUNC(arg1, arg2, arg0.Kengeki04)
    f45_local2[5] = REGIST_FUNC(arg1, arg2, arg0.Kengeki05)
    f45_local2[6] = REGIST_FUNC(arg1, arg2, arg0.Kengeki06)
    f45_local2[7] = REGIST_FUNC(arg1, arg2, arg0.Kengeki07)
    f45_local2[8] = REGIST_FUNC(arg1, arg2, arg0.Kengeki08)
    f45_local2[50] = REGIST_FUNC(arg1, arg2, arg0.NoAction)
    local f45_local6 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    return Common_Kengeki_Activate(arg1, arg2, f45_local1, f45_local2, f45_local6, f45_local3)
    
end

Goal.Kengeki01 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3050, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki02 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3055, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki03 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3060, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki04 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3065, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki05 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3070, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki06 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3075, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki07 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3085, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki08 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3085, TARGET_ENE_0, 9999, 0, 0)
    
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


