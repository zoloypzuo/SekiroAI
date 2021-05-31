function Approach_Act_Flex(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)
    if arg7 == nil then
        arg7 = 3
    end
    if arg8 == nil then
        arg8 = 8
    end
    if arg9 == nil then
        arg9 = 0
    end
    local f1_local0 = arg0:GetDist(TARGET_ENE_0)
    local f1_local1 = arg0:GetRandam_Int(1, 100)
    local f1_local2 = true
    if arg4 <= f1_local0 then
        f1_local2 = false
    elseif arg3 <= f1_local0 and f1_local1 <= arg5 then
        f1_local2 = false
    end
    if not not arg0:IsInsideTargetRegion(TARGET_SELF, COMMON_REGION_FORCE_WALK_M11_0) or arg0:IsInsideTargetRegion(TARGET_SELF, COMMON_REGION_FORCE_WALK_M11_1) then
        f1_local2 = true
    end
    local f1_local3 = -1
    local f1_local4 = arg0:GetRandam_Int(1, 100)
    if f1_local4 <= arg6 then
        f1_local3 = 9910
    end
    if f1_local2 == true then
        life = arg7
    else
        life = arg8
    end
    if arg2 <= f1_local0 or arg9 > 0 then
        if f1_local2 == true then
            arg2 = arg2 + arg0:GetStringIndexedNumber("AddDistWalk")
        else
            arg2 = arg2 + arg0:GetStringIndexedNumber("AddDistRun")
        end
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, life, TARGET_ENE_0, arg2, TARGET_SELF, f1_local2, f1_local3)
    end
    
end

function SpaceCheck(arg0, arg1, arg2, arg3)
    local f2_local0 = arg0:GetMapHitRadius(TARGET_SELF)
    local f2_local1 = arg0:GetExistMeshOnLineDistSpecifyAngleEx(TARGET_SELF, arg2, arg3 + f2_local0, AI_SPA_DIR_TYPE_TargetF, f2_local0, 0)
    if arg3 * 0.95 <= f2_local1 then
        return true
    else
        return false
    end
    
end

function InsideRange(arg0, arg1, arg2, arg3, arg4, arg5)
    return YSD_InsideRangeEx(arg0, arg1, arg2, arg3, arg4, arg5)
    
end

function InsideDir(arg0, arg1, arg2, arg3)
    return YSD_InsideRangeEx(arg0, arg1, arg2, arg3, -999, 999)
    
end

function YSD_InsideRangeEx(arg0, arg1, arg2, arg3, arg4, arg5)
    local f5_local0 = arg0:GetDist(TARGET_ENE_0)
    if arg4 <= f5_local0 and f5_local0 <= arg5 then
        local f5_local1 = arg0:GetToTargetAngle(TARGET_ENE_0)
        local f5_local2 = 0
        if arg2 < 0 then
            f5_local2 = -1
        else
            f5_local2 = 1
        end
        if not (arg2 + arg3 / -2 > f5_local1 or f5_local1 > arg2 + arg3 / 2) or arg2 + arg3 / -2 <= f5_local1 + 360 * f5_local2 and f5_local1 + 360 * f5_local2 <= arg2 + arg3 / 2 then
            return true
        else
            return false
        end
    else
        return false
    end
    
end

function SetCoolTime(arg0, arg1, arg2, arg3, arg4, arg5)
    if arg4 <= 0 then
        return 0
    elseif arg0:GetAttackPassedTime(arg2) <= arg3 then
        return arg5
    end
    return arg4
    
end

function SpaceCheckBeforeAct(arg0, arg1, arg2, arg3, arg4)
    if arg4 <= 0 then
        return 0
    elseif SpaceCheck(arg0, arg1, arg2, arg3) then
        return arg4
    else
        return 0
    end
    
end

function Counter_Act(arg0, arg1, arg2, arg3)
    local f8_local0 = 0.5
    if arg2 == nil then
        arg2 = 4
    end
    local f8_local1 = arg0:GetRandam_Int(1, 100)
    local f8_local2 = arg0:GetNumber(15)
    if arg0:IsInterupt(INTERUPT_Damaged) then
        arg0:SetTimer(15, 5)
        if f8_local2 == 0 then
            f8_local2 = arg2
        end
        arg0:SetNumber(15, f8_local2 * 2)
    end
    if f8_local2 >= 100 then
        arg0:SetNumber(15, 100)
    end
    if arg0:IsInterupt(INTERUPT_Damaged) and f8_local1 <= arg0:GetNumber(15) and arg0:GetTimer(14) <= 0 then
        arg0:SetTimer(14, 3)
        arg0:SetNumber(15, 0)
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_EndureAttack, f8_local0, arg3, TARGET_ENE_0, DIST_None, 0, 180, 0, 0)
        return true
    end
    return false
    
end

function ReactBackstab_Act(arg0, arg1, arg2, arg3, arg4)
    local f9_local0 = arg0:GetRandam_Int(1, 100)
    local f9_local1 = arg0:GetRandam_Int(1, 100)
    local f9_local2 = 3
    local f9_local3 = 6000
    local f9_local4 = 6002
    local f9_local5 = 6003
    if arg3 == nil then
        arg4 = 0
    end
    if arg0:IsInterupt(INTERUPT_BackstabRisk) then
        if f9_local0 <= arg4 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_StabCounterAttack, f9_local2, arg3, TARGET_ENE_0, DIST_None, 0, 180, 0, 0)
        elseif arg2 == 1 then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_SpinStep, f9_local2, f9_local3, TARGET_SELF, 0, AI_DIR_TYPE_F, 0)
        elseif arg2 == 2 then
            arg1:ClearSubGoal()
            if f9_local1 <= 50 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, f9_local2, f9_local4, TARGET_SELF, 0, AI_DIR_TYPE_L, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, f9_local2, f9_local5, TARGET_SELF, 0, AI_DIR_TYPE_R, 0)
            end
        elseif arg2 == 3 then
            arg1:ClearSubGoal()
            if f9_local1 <= 33 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, f9_local2, f9_local3, TARGET_SELF, 0, AI_DIR_TYPE_F, 0)
            elseif f9_local1 <= 66 then
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, f9_local2, f9_local4, TARGET_SELF, 0, AI_DIR_TYPE_L, 0)
            else
                arg1:AddSubGoal(GOAL_COMMON_SpinStep, f9_local2, f9_local5, TARGET_SELF, 0, AI_DIR_TYPE_R, 0)
            end
        end
        return false
    end
    
end

function Init_Pseudo_Global(arg0, arg1)
    arg0:SetStringIndexedNumber("Dist_SideStep", 5)
    arg0:SetStringIndexedNumber("Dist_BackStep", 5)
    arg0:SetStringIndexedNumber("AddDistWalk", 0)
    arg0:SetStringIndexedNumber("AddDistRun", 0)
    Init_AfterAttackAct(arg0, arg1)
    
end

function Init_AfterAttackAct(arg0, arg1)
    arg0:SetStringIndexedNumber("DistMin_AAA", -999)
    arg0:SetStringIndexedNumber("DistMax_AAA", 999)
    arg0:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg0:SetStringIndexedNumber("Angle_AAA", 360)
    arg0:SetStringIndexedNumber("Odds_Guard_AAA", 0)
    arg0:SetStringIndexedNumber("Odds_NoAct_AAA", 0)
    arg0:SetStringIndexedNumber("Odds_BackAndSide_AAA", 0)
    arg0:SetStringIndexedNumber("Odds_Back_AAA", 0)
    arg0:SetStringIndexedNumber("Odds_Backstep_AAA", 0)
    arg0:SetStringIndexedNumber("Odds_Sidestep_AAA", 0)
    arg0:SetStringIndexedNumber("Odds_BitWait_AAA", 0)
    arg0:SetStringIndexedNumber("Odds_BsAndSide_AAA", 0)
    arg0:SetStringIndexedNumber("Odds_BsAndSs_AAA", 0)
    arg0:SetStringIndexedNumber("DistMin_Inter_AAA", -999)
    arg0:SetStringIndexedNumber("DistMax_Inter_AAA", 999)
    arg0:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg0:SetStringIndexedNumber("Ang_Inter_AAA", 360)
    arg0:SetStringIndexedNumber("BackAndSide_BackLife_AAA", 2)
    arg0:SetStringIndexedNumber("BackAndSide_SideLife_AAA", arg0:GetRandam_Float(2.5, 3.5))
    arg0:SetStringIndexedNumber("BackLife_AAA", arg0:GetRandam_Float(2, 3))
    arg0:SetStringIndexedNumber("BsAndSide_SideLife_AAA", arg0:GetRandam_Float(2.5, 3.5))
    arg0:SetStringIndexedNumber("BackAndSide_BackDist_AAA", 1.5)
    arg0:SetStringIndexedNumber("BackDist_AAA", arg0:GetRandam_Float(2.5, 3.5))
    arg0:SetStringIndexedNumber("BackAndSide_SideDir_AAA", arg0:GetRandam_Int(45, 60))
    arg0:SetStringIndexedNumber("BsAndSide_SideDir_AAA", arg0:GetRandam_Int(45, 60))
    
end

function Update_Default_NoSubGoal(arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    end
    return GOAL_RESULT_Continue
    
end

function GuardGoalSubFunc_Activate(arg0, arg1, arg2)
    if 0 < arg2 then
        arg0:DoEzAction(arg1, arg2)
    end
    
end

function GuardGoalSubFunc_Update(arg0, arg1, arg2, arg3, arg4)
    if 0 < arg2 then
        if arg1:GetNumber(0) ~= 0 then
            return GOAL_RESULT_Failed
        elseif arg1:GetNumber(1) ~= 0 then
            return arg3
        end
    end
    if arg1:GetLife() <= 0 then
        if arg4 then
            return GOAL_RESULT_Success
        else
            return GOAL_RESULT_Failed
        end
    end
    return GOAL_RESULT_Continue
    
end

function GuardGoalSubFunc_Interrupt(arg0, arg1, arg2, arg3)
    if 0 < arg2 then
        if arg0:IsInterupt(INTERUPT_Damaged) then
            arg1:SetNumber(0, 1)
        elseif arg0:IsInterupt(INTERUPT_SuccessGuard) and arg3 ~= GOAL_RESULT_Continue then
            arg1:SetNumber(1, 1)
        end
    end
    return false
    
end


