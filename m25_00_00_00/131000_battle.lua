RegisterTableGoal(GOAL_Genpeimusya_katana_131000_Battle, "GOAL_Genpeimusya_katana_131000_Battle")
REGISTER_GOAL_NO_UPDATE(GOAL_Genpeimusya_katana_131000_Battle, true)
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
    local f2_local5 = arg1:GetDist(TARGET_FRI_0)
    local f2_local6 = Check_ReachAttack(arg1, 0)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    Set_ConsecutiveGuardCount_Interrupt(arg1)
    if arg1:HasSpecialEffectId(TARGET_SELF, 200032) then
        arg2:AddSubGoal(GOAL_Genpeimusya_yumi_131020_Battle, -1)
        return true
    end
    if arg0:Kengeki_Activate(arg1, arg2) then
        return 
    end
    if Common_ActivateAct(arg1, arg2) then

    elseif arg1:HasSpecialEffectId(TARGET_SELF, 3131031) then
        f2_local0[19] = 100
    elseif f2_local6 ~= POSSIBLE_ATTACK then
        if f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            f2_local0[27] = 100
        elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            f2_local0[27] = 100
        elseif f2_local6 == UNREACH_ATTACK then
            if not not arg1:HasSpecialEffectId(TARGET_SELF, 5020) or arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
                f2_local0[19] = 100
            else
                f2_local0[27] = 100
            end
        elseif f2_local6 == REACH_ATTACK_TARGET_HIGH_POSITION then
            f2_local0[2] = 100
            f2_local0[11] = 100
            f2_local0[27] = 100
        elseif f2_local6 == REACH_ATTACK_TARGET_LOW_POSITION then
            f2_local0[2] = 100
            f2_local0[11] = 100
            f2_local0[27] = 100
        else
            f2_local0[27] = 100
        end
    elseif arg1:CheckDoesExistPath(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 0) == false then
        if not not arg1:HasSpecialEffectId(TARGET_SELF, 5020) or arg1:HasSpecialEffectId(TARGET_SELF, 5021) then
            f2_local0[19] = 100
        else
            f2_local0[27] = 100
        end
    elseif not arg1:IsExistMeshOnLine(TARGET_ENE_0, AI_DIR_TYPE_ToB, f2_local3) and f2_local3 >= 3 then
        f2_local0[29] = 100
    elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
        KankyakuAct(arg1, arg2)
    elseif f2_local4 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if TorimakiAct(arg1, arg2) then
            f2_local0[3] = 100
        end
    elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        f2_local0[21] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 3131000) then
        if f2_local3 >= 5.5 then
            f2_local0[17] = 100
            f2_local0[23] = 100
        else
            f2_local0[9] = 100
            f2_local0[15] = 30
        end
    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, COMMON_SP_EFFECT_PC_BREAK) and arg1:HasSpecialEffectId(TARGET_SELF, 200051) then
        f2_local0[17] = 100
    elseif f2_local3 >= 7 then
        f2_local0[3] = 100
        f2_local0[4] = 100
        f2_local0[12] = 100
        f2_local0[16] = 100
        if arg1:HasSpecialEffectId(TARGET_SELF, 200051) then
            f2_local0[17] = 100
        end
    elseif f2_local3 >= 5 then
        f2_local0[3] = 100
        f2_local0[4] = 100
        f2_local0[12] = 100
        f2_local0[16] = 100
        if arg1:HasSpecialEffectId(TARGET_SELF, 200051) then
            f2_local0[17] = 100
        end
    elseif f2_local3 >= 3 then
        f2_local0[2] = 100
        f2_local0[11] = 100
        f2_local0[13] = 100
        if arg1:HasSpecialEffectId(TARGET_SELF, 200051) then
            f2_local0[15] = 100
        end
    else
        f2_local0[2] = 100
        f2_local0[6] = 100
        f2_local0[11] = 100
        f2_local0[13] = 100
        f2_local0[14] = 100
        if arg1:HasSpecialEffectId(TARGET_SELF, 200051) then
            f2_local0[15] = 100
        end
    end
    if arg1:GetNumber(NUMBER_SLOWWAYMOVE) == 1 then
        f2_local0[23] = 9999
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 200051) then
        f2_local0[2] = 0
        f2_local0[16] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5020) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 3131030) then
            f2_local0[20] = 0
        elseif f2_local3 >= 3 then
            f2_local0[20] = 500
        end
    end
    if arg1:IsFinishTimer(0) == false then
        f2_local0[1] = 0
        f2_local0[8] = 0
    elseif arg1:IsFinishTimer(1) == false then
        f2_local0[6] = 0
        f2_local0[11] = 0
        f2_local0[14] = 0
    end
    if SpaceCheck(arg1, arg2, 45, 2) == false and SpaceCheck(arg1, arg2, -45, 2) == false then
        f2_local0[22] = 0
    end
    if SpaceCheck(arg1, arg2, 90, 1) == false and SpaceCheck(arg1, arg2, -90, 1) == false then
        f2_local0[23] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 3) == false then
        f2_local0[5] = 0
        f2_local0[6] = 0
        f2_local0[11] = 0
        f2_local0[14] = 0
        f2_local0[24] = 0
    end
    if SpaceCheck(arg1, arg2, 180, 1) == false then
        f2_local0[25] = 0
    end
    f2_local0[1] = SetCoolTime(arg1, arg2, 3000, 8, f2_local0[1], 1)
    f2_local0[2] = SetCoolTime(arg1, arg2, 3001, 15, f2_local0[2], 1)
    f2_local0[3] = SetCoolTime(arg1, arg2, 3002, 30, f2_local0[3], 1)
    f2_local0[4] = SetCoolTime(arg1, arg2, 3003, 15, f2_local0[4], 1)
    f2_local0[5] = SetCoolTime(arg1, arg2, 3011, 15, f2_local0[5], 1)
    f2_local0[6] = SetCoolTime(arg1, arg2, 3002, 15, f2_local0[6], 1)
    f2_local0[7] = SetCoolTime(arg1, arg2, 3022, 15, f2_local0[7], 1)
    f2_local0[8] = SetCoolTime(arg1, arg2, 3009, 15, f2_local0[8], 1)
    f2_local0[10] = SetCoolTime(arg1, arg2, 3009, 15, f2_local0[10], 1)
    f2_local0[11] = SetCoolTime(arg1, arg2, 3022, 15, f2_local0[11], 1)
    f2_local0[12] = SetCoolTime(arg1, arg2, 3012, 15, f2_local0[12], 1)
    f2_local0[13] = SetCoolTime(arg1, arg2, 3000, 15, f2_local0[13], 1)
    f2_local0[14] = SetCoolTime(arg1, arg2, 3013, 15, f2_local0[14], 1)
    f2_local0[15] = SetCoolTime(arg1, arg2, 3001, 15, f2_local0[15], 1)
    f2_local0[16] = SetCoolTime(arg1, arg2, 3015, 15, f2_local0[16], 1)
    f2_local0[30] = SetCoolTime(arg1, arg2, 3000, 5, f2_local0[30], 20)
    f2_local0[31] = SetCoolTime(arg1, arg2, 3001, 5, f2_local0[31], 20)
    f2_local0[32] = SetCoolTime(arg1, arg2, 3002, 5, f2_local0[32], 20)
    f2_local0[33] = SetCoolTime(arg1, arg2, 3020, 5, f2_local0[33], 1)
    f2_local0[34] = SetCoolTime(arg1, arg2, 3020, 20, f2_local0[34], 1)
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
    f2_local1[19] = REGIST_FUNC(arg1, arg2, arg0.Act19)
    f2_local1[20] = REGIST_FUNC(arg1, arg2, arg0.Act20)
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
    f2_local1[31] = REGIST_FUNC(arg1, arg2, arg0.Act31)
    f2_local1[32] = REGIST_FUNC(arg1, arg2, arg0.Act32)
    f2_local1[33] = REGIST_FUNC(arg1, arg2, arg0.Act33)
    f2_local1[34] = REGIST_FUNC(arg1, arg2, arg0.Act34)
    local f2_local7 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    Common_Battle_Activate(arg1, arg2, f2_local0, f2_local1, f2_local7, f2_local2)
    
end

Goal.Act02 = function (arg0, arg1, arg2)
    local f3_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f3_local1 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 99
    local f3_local2 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 100
    local f3_local3 = 0
    local f3_local4 = 0
    local f3_local5 = 1.5
    local f3_local6 = 3
    Approach_Act_Flex(arg0, arg1, f3_local0, f3_local1, f3_local2, f3_local3, f3_local4, f3_local5, f3_local6)
    local f3_local7 = 0
    local f3_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 9999, f3_local7, f3_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act03 = function (arg0, arg1, arg2)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = 0
    local f4_local2 = 0
    local f4_local3 = arg0:GetRandam_Int(1, 100)
    local f4_local4 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f4_local5 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    if f4_local0 >= 8 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3042, TARGET_ENE_0, 9999, f4_local1, f4_local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3040, TARGET_ENE_0, 9999, f4_local1, f4_local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 9999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3040, TARGET_ENE_0, 9999, f4_local1, f4_local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 9999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act04 = function (arg0, arg1, arg2)
    local f5_local0 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f5_local1 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF) + 99
    local f5_local2 = 8.5 - arg0:GetMapHitRadius(TARGET_SELF) + 100
    local f5_local3 = 0
    local f5_local4 = 0
    local f5_local5 = 1.5
    local f5_local6 = 3
    Approach_Act_Flex(arg0, arg1, f5_local0, f5_local1, f5_local2, f5_local3, f5_local4, f5_local5, f5_local6)
    local f5_local7 = 0
    local f5_local8 = 0
    local f5_local9 = arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 9999, f5_local7, f5_local8, 0, 0)
    f5_local9:TimingSetNumber(1, arg0:GetNumber(1) + 1, AI_TIMING_SET__ACTIVATE)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act06 = function (arg0, arg1, arg2)
    local f6_local0 = arg0:GetDist(TARGET_ENE_0)
    local f6_local1 = 0
    local f6_local2 = 0
    local f6_local3 = arg0:GetRandam_Int(1, 100)
    local f6_local4 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f6_local5 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3045, TARGET_ENE_0, 9999, f6_local1, f6_local2, 0, 0)
    if f6_local3 <= 50 then
        local f6_local6 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 9999, 0, 0)
        f6_local6:TimingSetNumber(1, arg0:GetNumber(1) + 4, AI_TIMING_SET__ACTIVATE)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3042, TARGET_ENE_0, 9999, f6_local1, f6_local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 9999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, 9999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act09 = function (arg0, arg1, arg2)
    local f7_local0 = arg0:GetDist(TARGET_ENE_0)
    local f7_local1 = 0
    local f7_local2 = 0
    local f7_local3 = arg0:GetRandam_Int(1, 100)
    if f7_local3 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3044, TARGET_ENE_0, 9999, f7_local1, f7_local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3045, TARGET_ENE_0, 9999, f7_local1, f7_local2, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3045, TARGET_ENE_0, 9999, f7_local1, f7_local2, 0, 0)
    end
    arg0:SetNumber(1, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act11 = function (arg0, arg1, arg2)
    local f8_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f8_local1 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 99
    local f8_local2 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 100
    local f8_local3 = 0
    local f8_local4 = 0
    local f8_local5 = 1.5
    local f8_local6 = 3
    local f8_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f8_local0, f8_local1, f8_local2, f8_local3, f8_local4, f8_local5, f8_local6)
    local f8_local8 = 0
    local f8_local9 = 0
    local f8_local10 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3022, TARGET_ENE_0, f8_local10, f8_local8, f8_local9, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3023, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3044, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act12 = function (arg0, arg1, arg2)
    local f9_local0 = arg0:GetDist(TARGET_ENE_0)
    local f9_local1 = 0
    local f9_local2 = 0
    local f9_local3 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    if f9_local0 <= 6 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3042, TARGET_ENE_0, 9999, f9_local1, f9_local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 9999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3023, TARGET_ENE_0, 9999, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3042, TARGET_ENE_0, 9999, f9_local1, f9_local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3040, TARGET_ENE_0, 9999, f9_local1, f9_local2, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 9999, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3023, TARGET_ENE_0, 9999, 0, 0)
    end
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act13 = function (arg0, arg1, arg2)
    local f10_local0 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local f10_local1 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 99
    local f10_local2 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 100
    local f10_local3 = 0
    local f10_local4 = 0
    local f10_local5 = 1.5
    local f10_local6 = 3
    local f10_local7 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, f10_local0, f10_local1, f10_local2, f10_local3, f10_local4, f10_local5, f10_local6)
    local f10_local8 = 0
    local f10_local9 = 0
    local f10_local10 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 9999, f10_local8, f10_local9, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, 9999, 0, 0)
    local f10_local11 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3023, TARGET_ENE_0, 9999, 0, 0)
    f10_local11:TimingSetTimer(1, 5, AI_TIMING_SET__UPDATE_SUCCESS)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act14 = function (arg0, arg1, arg2)
    local f11_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f11_local1 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 99
    local f11_local2 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 100
    local f11_local3 = 0
    local f11_local4 = 0
    local f11_local5 = 1.5
    local f11_local6 = 3
    local f11_local7 = arg0:GetRandam_Int(1, 100)
    local f11_local8 = 0
    local f11_local9 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3044, TARGET_ENE_0, 9999, f11_local8, f11_local9, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act15 = function (arg0, arg1, arg2)
    local f12_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f12_local1 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 99
    local f12_local2 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 100
    local f12_local3 = 0
    local f12_local4 = 0
    local f12_local5 = 1.5
    local f12_local6 = 3
    Approach_Act_Flex(arg0, arg1, f12_local0, f12_local1, f12_local2, f12_local3, f12_local4, f12_local5, f12_local6)
    local f12_local7 = 0
    local f12_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, 9999, f12_local7, f12_local8, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act16 = function (arg0, arg1, arg2)
    local f13_local0 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f13_local1 = 12 - arg0:GetMapHitRadius(TARGET_SELF) + 99
    local f13_local2 = 12 - arg0:GetMapHitRadius(TARGET_SELF) + 100
    local f13_local3 = 0
    local f13_local4 = 0
    local f13_local5 = 1.5
    local f13_local6 = 3
    Approach_Act_Flex(arg0, arg1, f13_local0, f13_local1, f13_local2, f13_local3, f13_local4, f13_local5, f13_local6)
    local f13_local7 = 0
    local f13_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3015, TARGET_ENE_0, 9999, f13_local7, f13_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act17 = function (arg0, arg1, arg2)
    local f14_local0 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local1 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local2 = 12 - arg0:GetMapHitRadius(TARGET_SELF)
    local f14_local3 = 0
    local f14_local4 = 0
    local f14_local5 = 1.5
    local f14_local6 = 3
    Approach_Act_Flex(arg0, arg1, f14_local0, f14_local1, f14_local2, f14_local3, f14_local4, f14_local5, f14_local6)
    local f14_local7 = 0
    local f14_local8 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3018, TARGET_ENE_0, 9999, f14_local7, f14_local8, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act19 = function (arg0, arg1, arg2)
    local f15_local0 = arg0:GetDist(TARGET_ENE_0)
    local f15_local1 = 0
    local f15_local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3031, TARGET_ENE_0, 9999, f15_local1, f15_local2, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act20 = function (arg0, arg1, arg2)
    local f16_local0 = arg0:GetDist(TARGET_ENE_0)
    local f16_local1 = 0
    local f16_local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3044, TARGET_ENE_0, 9999, f16_local1, f16_local2, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3031, TARGET_ENE_0, 9999, f16_local1, f16_local2, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act21 = function (arg0, arg1, arg2)
    local f17_local0 = 3
    local f17_local1 = 45
    arg1:AddSubGoal(GOAL_COMMON_Turn, f17_local0, TARGET_ENE_0, f17_local1, -1, GOAL_RESULT_Success, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act22 = function (arg0, arg1, arg2)
    local f18_local0 = 3
    local f18_local1 = 0
    local f18_local2 = 5202
    if SpaceCheck(arg0, arg1, -45, 2) == true then
        if SpaceCheck(arg0, arg1, 45, 2) == true then
            if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
                f18_local2 = 5202
            else
                f18_local2 = 5203
            end
        else
            f18_local2 = 5202
        end
    elseif SpaceCheck(arg0, arg1, 45, 2) == true then
        f18_local2 = 5203
    else

    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f18_local0, f18_local2, TARGET_ENE_0, f18_local1, AI_DIR_TYPE_R, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act23 = function (arg0, arg1, arg2)
    local f19_local0 = arg0:GetDist(TARGET_ENE_0)
    local f19_local1 = arg0:GetSp(TARGET_SELF)
    local f19_local2 = 20
    local f19_local3 = arg0:GetRandam_Int(1, 100)
    local f19_local4 = -1
    local f19_local5 = 0
    if SpaceCheck(arg0, arg1, -90, 1) == true then
        if SpaceCheck(arg0, arg1, 90, 1) == true then
            if arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_R, 180, 999) then
                f19_local5 = 1
            else
                f19_local5 = 0
            end
        else
            f19_local5 = 0
        end
    elseif SpaceCheck(arg0, arg1, 90, 1) == true then
        f19_local5 = 1
    else

    end
    local f19_local6 = 3
    local f19_local7 = arg0:GetRandam_Int(30, 45)
    arg0:SetNumber(10, f19_local5)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f19_local6, TARGET_ENE_0, f19_local5, f19_local7, true, true, f19_local4)
    arg0:SetNumber(0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act24 = function (arg0, arg1, arg2)
    local f20_local0 = arg0:GetDist(TARGET_ENE_0)
    local f20_local1 = 3
    local f20_local2 = 0
    local f20_local3 = 5201
    if SpaceCheck(arg0, arg1, 180, 2) == true and SpaceCheck(arg0, arg1, 180, 4) == true then
        if f20_local0 > 4 then

        else
            f20_local3 = 5211
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, f20_local1, f20_local3, TARGET_ENE_0, f20_local2, AI_DIR_TYPE_B, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Act25 = function (arg0, arg1, arg2)
    local f21_local0 = arg0:GetRandam_Float(2, 4)
    local f21_local1 = arg0:GetRandam_Float(5, 7)
    local f21_local2 = arg0:GetDist(TARGET_ENE_0)
    local f21_local3 = -1
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f21_local0, TARGET_ENE_0, f21_local1, TARGET_ENE_0, true, f21_local3)
    arg0:SetNumber(0, 0)
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
    if YousumiAct_SubGoal(arg0, arg1, true, 60, 30) == false then
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
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.5, TARGET_SELF, 0, 0, 0)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    arg0:SetNumber(10, f23_local1)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, f23_local1, arg0:GetRandam_Int(30, 45), true, true, -1)
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
    if f24_local0 <= 3 then
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, f24_local1, TARGET_ENE_0, f24_local5, f24_local3, true, true, f24_local4)
    elseif f24_local0 <= 8 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f24_local2, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f24_local2, TARGET_ENE_0, 8, TARGET_SELF, false, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act29 = function (arg0, arg1, arg2)
    local f25_local0 = 3
    if arg0:HasSpecialEffectId(TARGET_SELF, 3131000) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f25_local0, TARGET_ENE_0, 6, TARGET_SELF, false, -1)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, f25_local0, TARGET_ENE_0, 3, TARGET_SELF, false, -1)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
    
end

Goal.Act30 = function (arg0, arg1, arg2)
    local f26_local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local f26_local1 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 99
    local f26_local2 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF) + 100
    local f26_local3 = 0
    local f26_local4 = 0
    local f26_local5 = 1.5
    local f26_local6 = 3
    local f26_local7 = arg0:GetRandam_Int(1, 100)
    local f26_local8 = 0
    local f26_local9 = 0
    local f26_local10 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3012, TARGET_ENE_0, 9999, f26_local8, f26_local9, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3023, TARGET_ENE_0, 9999, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, 9999, 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local f27_local0 = arg1:GetSpecialEffectActivateInterruptType(0)
    local f27_local1 = arg1:GetSp(TARGET_ENE_0)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    end
    if not arg1:HasSpecialEffectId(TARGET_SELF, 200004) then
        return false
    end
    if arg1:IsInterupt(INTERUPT_ParryTiming) then
        return arg0.Parry(arg1, arg2, 50, 0)
    end
    if Interupt_PC_Break(arg1) then
        arg1:Replanning()
        return true
    end
    if arg1:IsInterupt(INTERUPT_GuardBreak) and arg1:HasSpecialEffectId(TARGET_SELF) == 5026 and arg1:HasSpecialEffectId(TARGET_SELF, 200050) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(45, 60), true, true, -1)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and f27_local0 == 5025 and arg1:HasSpecialEffectId(TARGET_SELF, 200050) and f27_local1 <= 5 then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(45, 60), true, true, -1)
        return true
    end
    if arg1:IsInterupt(INTERUPT_ShootImpact) and arg0.ShootReaction(arg1, arg2) then
        return true
    end
    return false
    
end

Goal.Parry = function (arg0, arg1, arg2, arg3)
    local f28_local0 = arg0:GetDist(TARGET_ENE_0)
    local f28_local1 = GetDist_Parry(arg0)
    local f28_local2 = arg0:GetRandam_Int(1, 100)
    local f28_local3 = arg0:GetRandam_Int(1, 100)
    local f28_local4 = arg0:GetRandam_Int(1, 100)
    local f28_local5 = arg0:HasSpecialEffectId(TARGET_ENE_0, 109970)
    local f28_local6 = arg0:HasSpecialEffectId(TARGET_ENE_0, COMMON_SP_EFFECT_PC_ATTACK_RUSH)
    local f28_local7 = -1
    if arg0:HasSpecialEffectId(TARGET_SELF, 221000) then
        f28_local7 = 0
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 221001) then
        f28_local7 = 1
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 221002) then
        f28_local7 = 2
    end
    if arg0:IsFinishTimer(AI_TIMER_PARRY_INTERVAL) == false then
        return false
    end
    if f28_local7 == -1 then
        return false
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 220062) then
        return false
    end
    if not not arg0:HasSpecialEffectId(TARGET_ENE_0, 110450) or not not arg0:HasSpecialEffectId(TARGET_ENE_0, 110501) or arg0:HasSpecialEffectId(TARGET_ENE_0, 110500) then
        return false
    end
    arg0:SetTimer(AI_TIMER_PARRY_INTERVAL, 0.1)
    if arg2 == nil then
        arg2 = 50
    end
    if arg3 == nil then
        arg3 = 0
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 220062) then
        return false
    end
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) and arg0:IsInsideTargetEx(TARGET_ENE_0, TARGET_SELF, AI_DIR_TYPE_F, 90, f28_local1) then
        if f28_local6 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3100, TARGET_ENE_0, 9999, 0)
            return true
        elseif f28_local5 then
            if arg0:IsTargetGuard(TARGET_SELF) and ReturnKengekiSpecialEffect(arg0) == false then
                return false
            elseif f28_local7 == 2 then
                return false
            elseif f28_local7 == 1 then
                if f28_local2 <= 50 then
                    arg1:ClearSubGoal()
                    arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3101, TARGET_ENE_0, 9999, 0)
                    return true
                end
            elseif f28_local7 == 0 and f28_local2 <= 100 then
                arg1:ClearSubGoal()
                arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3101, TARGET_ENE_0, 9999, 0)
                return true
            end
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 5027) then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3102, TARGET_ENE_0, 9999, 0)
            return true
        elseif f28_local3 <= Get_ConsecutiveGuardCount(arg0) * arg2 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3101, TARGET_ENE_0, 9999, 0)
            return true
        else
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.3, 3100, TARGET_ENE_0, 9999, 0)
            return true
        end
    else
        return false
    end
    
end

Goal.Damaged = function (arg0, arg1, arg2)
    local f29_local0 = 3
    if SpaceCheck(arg0, arg1, 180, 2) then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, f29_local0, 5201, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 0)
        return true
    end
    return false
    
end

Goal.ShootReaction = function (arg0, arg1)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_EndureAttack, 0.1, 3100, TARGET_ENE_0, 9999, 0)
    return true
    
end

Goal.Kengeki_Activate = function (arg0, arg1, arg2)
    local f31_local0 = ReturnKengekiSpecialEffect(arg1)
    if f31_local0 == 0 then
        return false
    end
    local f31_local1 = {}
    local f31_local2 = {}
    local f31_local3 = {}
    Common_Clear_Param(f31_local1, f31_local2, f31_local3)
    local f31_local4 = arg1:GetDist(TARGET_ENE_0)
    local f31_local5 = arg1:GetSp(TARGET_SELF)
    if f31_local5 <= 0 then
        f31_local1[50] = 100
    else
        if f31_local0 == 200228 then
            if arg1:GetNumber(3) == 0 then
                f31_local1[10] = 10
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 200051) then
                f31_local1[21] = 10
                f31_local1[11] = 10
            else
                f31_local1[11] = 10
            end
        elseif f31_local0 == 200200 then
            if f31_local4 >= 3.5 then
                f31_local1[3] = 100
                f31_local1[50] = 100
            elseif f31_local4 <= 0.2 then
                f31_local1[50] = 100
            else
                f31_local1[1] = 100
                f31_local1[2] = 100
                f31_local1[50] = 100
            end
        elseif f31_local0 == 200201 then
            if f31_local4 >= 3.5 then
                f31_local1[3] = 100
                f31_local1[50] = 100
            elseif f31_local4 <= 0.2 then
                f31_local1[50] = 100
            else
                f31_local1[3] = 100
                f31_local1[4] = 100
            end
        elseif f31_local0 == 200205 then
            if f31_local4 >= 3.5 then
                f31_local1[50] = 100
            elseif f31_local4 <= 0.2 then
                f31_local1[50] = 100
            else
                f31_local1[1] = 20
                f31_local1[2] = 100
                f31_local1[50] = 100
            end
        elseif f31_local0 == 200206 then
            if f31_local4 >= 3.5 then
                f31_local1[50] = 100
            elseif f31_local4 <= 0.2 then
                f31_local1[50] = 100
            else
                f31_local1[3] = 100
                f31_local1[4] = 100
                f31_local1[50] = 100
            end
        elseif f31_local0 == 200215 or f31_local0 == 200210 then
            if f31_local4 >= 3.5 then
                f31_local1[50] = 100
            elseif f31_local0 == 200210 then
                f31_local1[7] = 1000
            else
                f31_local1[5] = 100
                f31_local1[6] = 100
            end
        elseif f31_local0 == 200216 or f31_local0 == 200211 then
            if f31_local4 >= 3.5 then
                f31_local1[50] = 100
            elseif f31_local0 == 200211 then
                f31_local1[5] = 1000
            else
                f31_local1[5] = 100
                f31_local1[6] = 100
            end
        else
            f31_local1[50] = 100
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5020) and not f31_local0 == 200228 then
            if arg1:HasSpecialEffectId(TARGET_SELF, 3131030) then
                f31_local1[20] = 0
            elseif f31_local4 >= 3 then
                f31_local1[20] = 100
            end
        end
        if SpaceCheck(arg1, arg2, 180, 3) == false then
            f31_local1[1] = 0
            f31_local1[3] = 0
            f31_local1[5] = 0
            f31_local1[6] = 0
        end
    end
    if arg1:IsFinishTimer(10) == false and not f31_local0 == 200228 then
        f31_local1[4] = 10
    end
    f31_local2[1] = REGIST_FUNC(arg1, arg2, arg0.Kengeki01)
    f31_local2[2] = REGIST_FUNC(arg1, arg2, arg0.Kengeki02)
    f31_local2[3] = REGIST_FUNC(arg1, arg2, arg0.Kengeki03)
    f31_local2[4] = REGIST_FUNC(arg1, arg2, arg0.Kengeki04)
    f31_local2[5] = REGIST_FUNC(arg1, arg2, arg0.Kengeki05)
    f31_local2[6] = REGIST_FUNC(arg1, arg2, arg0.Kengeki06)
    f31_local2[7] = REGIST_FUNC(arg1, arg2, arg0.Kengeki07)
    f31_local2[8] = REGIST_FUNC(arg1, arg2, arg0.Kengeki08)
    f31_local2[10] = REGIST_FUNC(arg1, arg2, arg0.Kengeki10)
    f31_local2[11] = REGIST_FUNC(arg1, arg2, arg0.Kengeki11)
    f31_local2[20] = REGIST_FUNC(arg1, arg2, arg0.Kengeki20)
    f31_local2[21] = REGIST_FUNC(arg1, arg2, arg0.Kengeki21)
    f31_local2[50] = REGIST_FUNC(arg1, arg2, arg0.NoAction)
    local f31_local6 = REGIST_FUNC(arg1, arg2, arg0.ActAfter_AdjustSpace)
    return Common_Kengeki_Activate(arg1, arg2, f31_local1, f31_local2, f31_local6, f31_local3)
    
end

Goal.Kengeki01 = function (arg0, arg1, arg2)
    local f32_local0 = 0
    local f32_local1 = 0
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3044, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki02 = function (arg0, arg1, arg2)
    local f33_local0 = 0
    local f33_local1 = 0
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3001, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki03 = function (arg0, arg1, arg2)
    local f34_local0 = 0
    local f34_local1 = 0
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3044, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki04 = function (arg0, arg1, arg2)
    local f35_local0 = 0
    local f35_local1 = 0
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3014, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetTimer(10, 10)
    
end

Goal.Kengeki05 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3044, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3013, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(2, 1)
    
end

Goal.Kengeki06 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3045, TARGET_ENE_0, 9999, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 9999, 0, 0)
    arg0:SetNumber(2, 0)
    
end

Goal.Kengeki07 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3012, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki08 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3085, TARGET_ENE_0, 9999, 0, 0)
    
end

Goal.Kengeki10 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local f40_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3060, TARGET_ENE_0, 9999, 0, 0)
    f40_local0:TimingSetTimer(0, 8, AI_TIMING_SET__ACTIVATE)
    arg0:SetNumber(3, 1)
    
end

Goal.Kengeki11 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    local f41_local0 = arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 1, 3061, TARGET_ENE_0, 9999, 0, 0)
    f41_local0:TimingSetTimer(0, 8, AI_TIMING_SET__ACTIVATE)
    arg0:SetNumber(3, 0)
    
end

Goal.Kengeki20 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3044, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3031, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
    
end

Goal.Kengeki21 = function (arg0, arg1, arg2)
    arg1:ClearSubGoal()
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3063, TARGET_ENE_0, 9999, TurnTime, FrontAngle, 0, 0)
    
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


