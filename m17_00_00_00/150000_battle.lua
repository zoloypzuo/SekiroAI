RegisterTableGoal(GOAL_MurabitoZombie_sude_150000_Battle, "GOAL_MurabitoZombie_sude_150000_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_MurabitoZombie_sude_150000_Battle, true)
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
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 106020)
    if arg1:HasSpecialEffectId(TARGET_SELF, 3150100) then
        if not not arg1:HasSpecialEffectId(TARGET_ENE_0, 108030) or not not arg1:HasSpecialEffectId(TARGET_ENE_0, 110030) or not not arg1:HasSpecialEffectId(TARGET_ENE_0, 110060) or not not arg1:HasSpecialEffectId(TARGET_ENE_0, 110010) or arg1:HasSpecialEffectId(TARGET_ENE_0, 110032) then
            f2_local0[17] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
            f2_local0[15] = 100
        else
            f2_local0[16] = 100
        end
    elseif Common_ActivateAct(arg1, arg2) then

    elseif arg1:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 0) == false then
        if arg1:HasSpecialEffectId(TARGET_SELF, 3150014) then
            f2_local0[6] = 100
        else
            f2_local0[4] = 100
            f2_local0[27] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 3150014) then
        if f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            if f2_local3 >= 10 then
                f2_local0[6] = 100
            elseif f2_local3 >= 6 then
                f2_local0[6] = 100
            elseif f2_local3 > 2 then
                f2_local0[6] = 100
            else
                f2_local0[1] = 100
            end
        elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            if f2_local3 >= 10 then
                f2_local0[6] = 100
            elseif f2_local3 >= 6 then
                f2_local0[6] = 100
            elseif f2_local3 > 2 then
                f2_local0[6] = 100
            else
                f2_local0[1] = 100
            end
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
            f2_local0[21] = 100
            f2_local0[22] = 1
        elseif f2_local3 >= 10 then
            f2_local0[6] = 100
        elseif f2_local3 >= 6 then
            f2_local0[6] = 100
        elseif f2_local3 > 2 then
            f2_local0[6] = 100
        else
            f2_local0[1] = 100
            f2_local0[3] = 200
            f2_local0[6] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 3150015) then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
            f2_local0[21] = 100
        elseif f2_local3 >= 7 then
            f2_local0[40] = 100
        else
            f2_local0[6] = 100
            f2_local0[28] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 3150011) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 3150060) then
            if f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
                if f2_local3 >= 10 then
                    f2_local0[11] = 100
                elseif f2_local3 >= 6 then
                    f2_local0[11] = 100
                elseif f2_local3 > 2 then
                    f2_local0[11] = 100
                else
                    f2_local0[1] = 100
                end
            elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
                if f2_local3 >= 10 then
                    f2_local0[11] = 100
                elseif f2_local3 >= 6 then
                    f2_local0[11] = 100
                elseif f2_local3 > 2 then
                    f2_local0[11] = 100
                else
                    f2_local0[1] = 100
                end
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
                f2_local0[21] = 100
                f2_local0[22] = 1
            elseif f2_local3 >= 10 then
                f2_local0[11] = 100
            elseif f2_local3 >= 6 then
                f2_local0[11] = 100
            elseif f2_local3 > 2 then
                f2_local0[11] = 100
            else
                f2_local0[1] = 100
            end
        elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            if f2_local3 >= 10 then
                f2_local0[2] = 100
            elseif f2_local3 >= 6 then
                f2_local0[2] = 100
            elseif f2_local3 > 2 then
                f2_local0[2] = 100
            else
                f2_local0[2] = 100
            end
        elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            if f2_local3 >= 10 then
                f2_local0[2] = 100
            elseif f2_local3 >= 6 then
                f2_local0[2] = 100
            elseif f2_local3 > 2 then
                f2_local0[2] = 100
            else
                f2_local0[1] = 150
                f2_local0[2] = 100
            end
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
            f2_local0[21] = 100
            f2_local0[22] = 1
        elseif f2_local3 >= 10 then
            f2_local0[2] = 100
        elseif f2_local3 >= 5 then
            f2_local0[2] = 100
        elseif f2_local3 > 2 then
            f2_local0[2] = 100
        else
            f2_local0[1] = 100
            f2_local0[2] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 3150060) then
        if f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            if KankyakuAct(arg1, arg2, -1, 50) then
                f2_local0[5] = 100
                f2_local0[22] = 100
            end
        elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            if TorimakiAct(arg1, arg2) then
                f2_local0[5] = 100
                f2_local0[10] = 50
                f2_local0[11] = 100
                f2_local0[12] = 50
                f2_local0[22] = 50
            end
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
            f2_local0[21] = 100
            f2_local0[22] = 1
        elseif f2_local3 >= 10 then
            f2_local0[10] = 0
            f2_local0[11] = 700
            f2_local0[12] = 200
        elseif f2_local3 >= 5 then
            f2_local0[10] = 100
            f2_local0[11] = 500
            f2_local0[12] = 300
        elseif f2_local3 > 3 then
            f2_local0[10] = 700
            f2_local0[11] = 0
            f2_local0[12] = 300
        else
            f2_local0[3] = 200
            f2_local0[10] = 600
            f2_local0[11] = 0
            f2_local0[24] = 200
        end
    elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        if KankyakuAct(arg1, arg2, -1, 50) then
            f2_local0[2] = 200
            f2_local0[5] = 100
            f2_local0[22] = 100
        end
    elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if TorimakiAct(arg1, arg2, -1, 50) then
            f2_local0[1] = 50
            f2_local0[2] = 300
            f2_local0[3] = 50
            f2_local0[5] = 200
            f2_local0[22] = 50
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        f2_local0[21] = 100
        f2_local0[22] = 1
    elseif f2_local3 >= 10 then
        f2_local0[1] = 100
        f2_local0[2] = 700
        f2_local0[3] = 200
    elseif f2_local3 >= 5 then
        f2_local0[1] = 100
        f2_local0[2] = 600
        f2_local0[3] = 300
    elseif f2_local3 > 3 then
        f2_local0[1] = 300
        f2_local0[2] = 300
        f2_local0[3] = 200
        f2_local0[24] = 200
    else
        f2_local0[1] = 500
        f2_local0[2] = 100
        f2_local0[3] = 200
        f2_local0[24] = 200
    end
    if arg1:IsInsideTargetRegion(TARGET_ENE_0, 1502295) and not arg1:IsInsideTargetRegion(TARGET_SELF, 1502295) then
        f2_local0[36] = 300
    end
    if SpaceCheck(arg1, arg2, 45, 2) == false and SpaceCheck(arg1, arg2, -45, 2) == false then
        f2_local0[22] = 0
    end
    if SpaceCheck(arg1, arg2, 90, 1) == false and SpaceCheck(arg1, arg2, -45, 1) == false then
        f2_local0[23] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 2) == false then
        f2_local0[24] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 1) == false then
        f2_local0[25] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 5, f2_local0[1], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 12, f2_local0[3], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3010, 5, f2_local0[10], 1)
    f2_local0[36] = SetCoolTime(arg1, arg2, 20000, 10, f2_local0[36], 0)
    f2_local1[1] = REGIST_FUNC(arg1, arg2, arg0.Act01)
    f2_local1[2] = REGIST_FUNC(arg1, arg2, arg0.Act02)
    f2_local1[3] = REGIST_FUNC(arg1, arg2, arg0.Act03)
    f2_local1[4] = REGIST_FUNC(arg1, arg2, arg0.Act04)
    f2_local1[5] = REGIST_FUNC(arg1, arg2, arg0.Act05)
    f2_local1[6] = REGIST_FUNC(arg1, arg2, arg0.Act06)
    f2_local1[10] = REGIST_FUNC(arg1, arg2, arg0.Act10)
    f2_local1[11] = REGIST_FUNC(arg1, arg2, arg0.Act11)
    f2_local1[12] = REGIST_FUNC(arg1, arg2, arg0.Act12)
    f2_local1[15] = REGIST_FUNC(arg1, arg2, arg0.Act15)
    f2_local1[16] = REGIST_FUNC(arg1, arg2, arg0.Act16)
    f2_local1[17] = REGIST_FUNC(arg1, arg2, arg0.Act17)
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
    f2_local1[35] = REGIST_FUNC(arg1, arg2, arg0.Act35)
    f2_local1[36] = REGIST_FUNC(arg1, arg2, arg0.Act36)
    f2_local1[40] = REGIST_FUNC(arg1, arg2, arg0.Act40)
    local f2_local5 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local5, f2_local2)
    
end

Goal.Act01 = function (arg0, arg1, arg2)
    local f3_local0 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetRandam_Float(0, 2.5) - 0.8
    local f3_local1 = f3_local0 - 1
    local f3_local2 = f3_local0 + 1
    local f3_local3 = 100
    local f3_local4 = 0
    local f3_local5 = 1.5
    local f3_local6 = 2
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 0
    local f3_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 9999, f3_local7, f3_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    local f4_local0 = 0
    local f4_local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 9999, f4_local0, f4_local1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f5_local0 = 6 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetRandam_Float(0, 2.5) - 0.8
    local f5_local1 = f5_local0
    local f5_local2 = f5_local0 + 15
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 1.5
    local f5_local6 = 2
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 0
    local f5_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 9999, f5_local7, f5_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act04 = function (arg0, arg1, arg2)
    local f6_local0 = 0
    local f6_local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 9999, f6_local0, f6_local1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act05 = function (arg0, arg1, arg2)
    local f7_local0 = 0
    local f7_local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, 9999, f7_local0, f7_local1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act06 = function (arg0, arg1, arg2)
    local f8_local0 = 0
    local f8_local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 9999, f8_local0, f8_local1, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act10 = function (arg0, arg1, arg2)
    local f9_local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetRandam_Float(0, 2.5) - 0.8
    local f9_local1 = f9_local0
    local f9_local2 = f9_local0 + 1
    local f9_local3 = 100
    local f9_local4 = 0
    local f9_local5 = 1.5
    local f9_local6 = 2
    Approach_Act_Flex(arg0, arg1, f9_local0, f9_local1, f9_local2, f9_local3, f9_local4, f9_local5, f9_local6)
    local f9_local7 = 2.2 - arg0:GetMapHitRadius(TARGET_SELF) + 0.5
    local f9_local8 = 0
    local f9_local9 = 0
    local f9_local10 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3010, TARGET_ENE_0, f9_local7, f9_local8, f9_local9, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act11 = function (arg0, arg1, arg2)
    local f10_local0 = 12 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetRandam_Float(0, 2.5) - 0.8
    local f10_local1 = f10_local0
    local f10_local2 = f10_local0 + 1
    local f10_local3 = 100
    local f10_local4 = 0
    local f10_local5 = 1.5
    local f10_local6 = 2
    if not arg0:HasSpecialEffectId(TARGET_SELF, 3150011) then
        Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    end
    local f10_local7 = 0
    local f10_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 9999, f10_local7, f10_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act12 = function (arg0, arg1, arg2)
    local f11_local0 = 6.1 - arg0:GetMapHitRadius(TARGET_SELF) + arg0:GetRandam_Float(0, 2.5) - 0.8
    local f11_local1 = f11_local0
    local f11_local2 = f11_local0 + 1
    local f11_local3 = 100
    local f11_local4 = 0
    local f11_local5 = 1.5
    local f11_local6 = 2
    Approach_Act_Flex(arg0, arg1, f11_local0, f11_local1, f11_local2, f11_local3, f11_local4, f11_local5, f11_local6)
    local f11_local7 = 0
    local f11_local8 = 0
    local f11_local9 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, DistToAtt1, f11_local7, f11_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act15 = function (arg0, arg1, arg2)
    local f12_local0 = 0
    local f12_local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 9999, f12_local0, f12_local1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act16 = function (arg0, arg1, arg2)
    local f13_local0 = -1
    local f13_local1 = 0
    local f13_local2 = 0
    local f13_local3 = arg0:GetDist(TARGET_ENE_0)
    local f13_local4 = 0.2
    if f13_local4 <= f13_local3 then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 20011, TARGET_ENE_0, 9999, f13_local1, f13_local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 2, 20010, TARGET_ENE_0, 9999, f13_local1, f13_local2, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act17 = function (arg0, arg1, arg2)
    local f14_local0 = 0
    local f14_local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 20010, TARGET_ENE_0, 9999, f14_local0, f14_local1, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act21 = function (arg0, arg1, arg2)
    local f15_local0 = 3
    local f15_local1 = 45
    arg1:AddSubGoal(GOAL_COMMON_Turn, f15_local0, TARGET_ENE_0, f15_local1, -1, GOAL_RESULT_Success, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act22 = function (arg0, arg1, arg2)
    local f16_local0 = 3
    local f16_local1 = 0
    local f16_local2 = arg0:GetDist(TARGET_FRI_0)
    local f16_local3 = arg0:GetRandam_Int(1, 100)
    if SpaceCheck(arg0, arg1, -45, 2) == true and SpaceCheck(arg0, arg1, 45, 2) == true and f16_local2 >= 2.5 then
        if f16_local3 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f16_local0, 5212, TARGET_ENE_0, f16_local1, AI_DIR_TYPE_L, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f16_local0, 5213, TARGET_ENE_0, f16_local1, AI_DIR_TYPE_R, 0)
        end
    elseif arg0:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_R, 100) and SpaceCheck(arg0, arg1, -45, 2) == true and f16_local2 <= 2.5 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f16_local0, 5212, TARGET_ENE_0, f16_local1, AI_DIR_TYPE_L, 0)
    elseif arg0:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_L, 100) and SpaceCheck(arg0, arg1, 45, 2) == true and f16_local2 <= 2.5 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f16_local0, 5213, TARGET_ENE_0, f16_local1, AI_DIR_TYPE_R, 0)
    elseif SpaceCheck(arg0, arg1, -45, 2) == true and SpaceCheck(arg0, arg1, 45, 2) == true then
        if f16_local3 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f16_local0, 5212, TARGET_ENE_0, f16_local1, AI_DIR_TYPE_L, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f16_local0, 5213, TARGET_ENE_0, f16_local1, AI_DIR_TYPE_R, 0)
        end
    elseif SpaceCheck(arg0, arg1, -45, 2) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f16_local0, 5212, TARGET_ENE_0, f16_local1, AI_DIR_TYPE_L, 0)
    elseif SpaceCheck(arg0, arg1, 45, 2) == true then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f16_local0, 5213, TARGET_ENE_0, f16_local1, AI_DIR_TYPE_R, 0)
    else

    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act23 = function (arg0, arg1, arg2)
    local f17_local0 = arg0:GetDist(TARGET_ENE_0)
    local f17_local1 = arg0:GetDist(TARGET_FRI_0)
    local f17_local2 = arg0:GetSp(TARGET_SELF)
    local f17_local3 = 20
    local f17_local4 = arg0:GetRandam_Int(1, 100)
    local f17_local5 = -1
    local f17_local6 = arg0:GetRandam_Int(0, 1)
    if arg0:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_R, 100) and SpaceCheck(arg0, arg1, -90, 1) == true and f17_local1 <= 2.5 then
        f17_local6 = 0
    elseif arg0:IsInsideTarget(TARGET_FRI_0, AI_DIR_TYPE_L, 100) and SpaceCheck(arg0, arg1, 90, 1) == true and f17_local1 <= 2.5 then
        f17_local6 = 1
    end
    local f17_local7 = 3
    local f17_local8 = arg0:GetRandam_Int(30, 45)
    arg0:SetNumber(10, f17_local6)
    local f17_local9 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f17_local7, TARGET_ENE_0, f17_local6, f17_local8, true, true, f17_local5)
    f17_local9:TimingSetTimer(2, 4, UPDATE_SUCCESS)
    GetWellSpace_Odds = 100
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
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act25 = function (arg0, arg1, arg2)
    local f19_local0 = arg0:GetRandam_Float(2, 4)
    local f19_local1 = arg0:GetRandam_Float(1, 3)
    local f19_local2 = arg0:GetDist(TARGET_ENE_0)
    local f19_local3 = -1
    if SpaceCheck(arg0, arg1, 180, 1) == true then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f19_local0, TARGET_ENE_0, f19_local1, TARGET_ENE_0, true, f19_local3)
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
    local f21_local0 = arg0:GetDist(TARGET_ENE_0)
    local f21_local1 = arg0:GetDistYSigned(TARGET_ENE_0)
    local f21_local2 = f21_local1 / math.tan(math.deg(30))
    local f21_local3 = arg0:GetRandam_Int(0, 1)
    if f21_local1 >= 3 then
        if f21_local2 + 1 <= f21_local0 then
            if SpaceCheck(arg0, arg1, 0, 4) == true then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.1, TARGET_ENE_0, f21_local2, TARGET_SELF, false, -1)
            elseif SpaceCheck(arg0, arg1, 0, 3) == true then
                arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_ENE_0, f21_local2, TARGET_SELF, true, -1)
            end
        elseif f21_local0 <= f21_local2 - 1 then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, f21_local2, TARGET_ENE_0, true, -1)
        end
    elseif SpaceCheck(arg0, arg1, 0, 4) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.1, TARGET_ENE_0, 0, TARGET_SELF, false, -1)
    elseif SpaceCheck(arg0, arg1, 0, 3) == true then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 0.5, TARGET_ENE_0, 0, TARGET_SELF, true, -1)
    elseif SpaceCheck(arg0, arg1, 0, 1) == false then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 0.5, TARGET_ENE_0, 999, TARGET_ENE_0, true, -1)
    end
    arg0:SetNumber(10, f21_local3)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f21_local3, arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act28 = function (arg0, arg1, arg2)
    local f22_local0 = arg0:GetDist(TARGET_ENE_0)
    local f22_local1 = arg0:GetRandam_Float(1, 3.5)
    local f22_local2 = 1.5
    local f22_local3 = arg0:GetRandam_Int(30, 45)
    local f22_local4 = -1
    local f22_local5 = arg0:GetRandam_Int(0, 1)
    if f22_local0 <= 8 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f22_local1, TARGET_ENE_0, f22_local5, f22_local3, true, true, f22_local4)
    elseif f22_local0 <= 10 and not arg0:HasSpecialEffectId(TARGET_SELF, 3150011) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f22_local2, TARGET_ENE_0, 7.9, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f22_local2, TARGET_ENE_0, 9.9, TARGET_SELF, false, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act29 = function (arg0, arg1, arg2)
    local f23_local0 = arg0:GetDist(TARGET_ENE_0)
    local f23_local1 = 7
    local f23_local2 = 0
    local f23_local3 = arg0:GetRandam_Float(1, 3.5)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f23_local3, TARGET_ENE_0, f23_local1, TARGET_ENE_0, true, -1)
    
end

Goal.Act30 = function (arg0, arg1, arg2)
    local f24_local0 = 3.5
    local f24_local1 = arg0:GetRandam_Int(30, 45)
    local f24_local2 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f24_local2 = 0
            else
                f24_local2 = 1
            end
        else
            f24_local2 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f24_local2 = 1
    else

    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f24_local0, TARGET_ENE_0, f24_local2, f24_local1, true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act35 = function (arg0, arg1, arg2)
    local f25_local0 = arg0:GetDist(TARGET_ENE_0)
    local f25_local1 = arg0:GetRandam_Int(1, 100)
    local f25_local2 = arg0:GetRandam_Int(0, 1)
    local f25_local3 = arg0:GetRandam_Float(2, 3.5)
    local f25_local4 = 3
    local f25_local5 = 0
    local f25_local6 = arg0:GetDist(TARGET_FRI_0)
    local f25_local7 = arg0:GetRandam_Int(1, 100)
    local f25_local8 = arg0:GetRandam_Float(6.5, 7.5)
    local f25_local9 = arg0:GetRandam_Float(5.5, 6.5)
    local f25_local10 = 999
    local f25_local11 = 100
    if f25_local0 >= 10 then
        Approach_Act(arg0, arg1, f25_local8, f25_local10, 0, 3)
    elseif f25_local0 >= 5 then

    elseif f25_local0 >= 3.5 then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 3, TARGET_ENE_0, f25_local8, TARGET_ENE_0, false, 9910)
    elseif f25_local7 <= 60 then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 5201, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
    end
    local f25_local12 = arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f25_local3, TARGET_ENE_0, f25_local2, arg0:GetRandam_Int(30, 45), true, true, 9910)
    f25_local12:TimingSetTimer(2, 4, UPDATE_SUCCESS)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act36 = function (arg0, arg1, arg2)
    local f26_local0 = -0.5
    local f26_local1 = arg0:GetRandam_Int(1, 100)
    if f26_local1 <= 34 then
        arg0:SetEventMoveTarget(1502296)
    elseif f26_local1 <= 67 then
        arg0:SetEventMoveTarget(1502297)
    else
        arg0:SetEventMoveTarget(1502298)
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, POINT_EVENT, f26_local0, POINT_EVENT, false, -1)
    
end

Goal.Act40 = function (arg0, arg1, arg2)
    local f27_local0 = 3
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f27_local0, TARGET_ENE_0, 6.9, TARGET_SELF, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f28_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        return arg0.Damaged(arg1, arg2)
    end
    
end

Goal.Parry = function (arg0, arg1, arg2)
    local f29_local0 = arg0:GetHpRate(TARGET_SELF)
    local f29_local1 = arg0:GetDist(TARGET_ENE_0)
    local f29_local2 = arg0:GetSp(TARGET_SELF)
    local f29_local3 = arg0:GetRandam_Int(1, 100)
    local f29_local4 = 0
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
    local f30_local0 = arg0:GetHpRate(TARGET_SELF)
    local f30_local1 = arg0:GetDist(TARGET_ENE_0)
    local f30_local2 = arg0:GetSp(TARGET_SELF)
    local f30_local3 = arg0:GetRandam_Int(1, 100)
    local f30_local4 = 0
    if f30_local3 <= 33 then
        arg1:ClearSubGoal()
        local f30_local5 = arg1:AddSubGoal(GOAL_COMMON_SpinStep, StepLife, 5211, TARGET_ENE_0, TurnTime, AI_DIR_TYPE_B, 0)
        f30_local5:TimingSetTimer(3, 6, UPDATE_SUCCESS)
        return true
    elseif f30_local3 <= 67 then

    else

    end
    return false
    
end

Goal.ActAfter_AdjustSpace = function (arg0, arg1, arg2)
    if not arg0:HasSpecialEffectId(TARGET_SELF, 3150100) then
        arg1:AddSubGoal(GOAL_MurabitoZombie_sude_150000_AfterAttackAct, 10)
    end
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

RegisterTableGoal(GOAL_MurabitoZombie_sude_150000_AfterAttackAct, "GOAL_MurabitoZombie_sude_150000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_MurabitoZombie_sude_150000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local f34_local0 = arg1:GetDist(TARGET_ENE_0)
    local f34_local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    local f34_local2 = arg1:GetHpRate(TARGET_SELF)
    local f34_local3 = {}
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 160) then
        f34_local3[1] = 100
        f34_local3[2] = 0
        f34_local3[3] = 0
    elseif f34_local0 >= 7 then
        f34_local3[1] = 100
        f34_local3[2] = 0
        f34_local3[3] = 0
    elseif f34_local0 >= 3 then
        f34_local3[1] = 30
        f34_local3[2] = 45
        f34_local3[3] = 25
    else
        f34_local3[1] = 30
        f34_local3[2] = 20
        f34_local3[3] = 50
    end
    local f34_local4 = SelectOddsIndex(arg1, f34_local3)
    if f34_local4 == 1 then

    elseif f34_local4 == 2 then
        arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(0, 1), TARGET_ENE_0, arg1:GetRandam_Int(1.5, 3), arg1:GetRandam_Int(30, 45), true, true, -1)
    elseif f34_local4 == 3 then
        arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, arg1:GetRandam_Int(1.5, 3), TARGET_ENE_0, 7, TARGET_ENE_0, true, -1)
    end
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end


