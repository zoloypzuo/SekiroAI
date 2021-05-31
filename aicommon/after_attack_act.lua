RegisterTableGoal(GOAL_COMMON_AfterAttackAct, "AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_COMMON_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local f1_local0 = arg1:GetDist(TARGET_ENE_0)
    if f1_local0 >= arg1:GetStringIndexedNumber("DistMin_AAA") and arg1:GetStringIndexedNumber("DistMax_AAA") >= f1_local0 then
        local f1_local1 = arg1:IsInsideTarget(TARGET_ENE_0, arg1:GetStringIndexedNumber("BaseDir_AAA"), arg1:GetStringIndexedNumber("Angle_AAA"))
        if f1_local1 == false then

        else
            f1_local1 = -1
            if arg1:GetRandam_Int(1, 100) <= arg1:GetStringIndexedNumber("Odds_Guard_AAA") then
                f1_local1 = 9910
            end
            local f1_local2 = arg1:GetRandam_Int(0, 1)
            local f1_local3 = arg1:GetTeamRecordCount(COORDINATE_TYPE_SideWalk_L, TARGET_ENE_0, 4)
            local f1_local4 = arg1:GetTeamRecordCount(COORDINATE_TYPE_SideWalk_R, TARGET_ENE_0, 4)
            if f1_local4 < f1_local3 then
                f1_local2 = 1
            elseif f1_local3 < f1_local4 then
                f1_local2 = 0
            end
            local f1_local5 = arg1:GetStringIndexedNumber("Odds_NoAct_AAA") + arg1:GetStringIndexedNumber("Odds_BackAndSide_AAA") + arg1:GetStringIndexedNumber("Odds_Back_AAA") + arg1:GetStringIndexedNumber("Odds_Backstep_AAA") + arg1:GetStringIndexedNumber("Odds_Sidestep_AAA") + arg1:GetStringIndexedNumber("Odds_BitWait_AAA") + arg1:GetStringIndexedNumber("Odds_BsAndSide_AAA") + arg1:GetStringIndexedNumber("Odds_BsAndSs_AAA")
            local f1_local6 = 0 + arg1:GetStringIndexedNumber("Odds_NoAct_AAA")
            local f1_local7 = f1_local6 + arg1:GetStringIndexedNumber("Odds_BackAndSide_AAA")
            local f1_local8 = f1_local7 + arg1:GetStringIndexedNumber("Odds_Back_AAA")
            local f1_local9 = f1_local8 + arg1:GetStringIndexedNumber("Odds_Backstep_AAA")
            local f1_local10 = f1_local9 + arg1:GetStringIndexedNumber("Odds_Sidestep_AAA")
            local f1_local11 = f1_local10 + arg1:GetStringIndexedNumber("Odds_BitWait_AAA")
            local f1_local12 = f1_local11 + arg1:GetStringIndexedNumber("Odds_BsAndSide_AAA")
            local f1_local13 = f1_local12 + arg1:GetStringIndexedNumber("Odds_BsAndSs_AAA")
            local f1_local14 = arg1:GetRandam_Int(1, f1_local5)
            if f1_local14 > 0 and f1_local14 <= f1_local6 then

            elseif f1_local6 < f1_local14 and f1_local14 <= f1_local7 then
                local f1_local15 = arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, arg1:GetStringIndexedNumber("BackAndSide_BackLife_AAA"), TARGET_ENE_0, arg1:GetStringIndexedNumber("BackAndSide_BackDist_AAA"), TARGET_ENE_0, true, f1_local1)
                f1_local15 = f1_local15:SetTargetRange(30, arg1:GetStringIndexedNumber("DistMin_Inter_AAA"), arg1:GetStringIndexedNumber("DistMax_Inter_AAA"))
                f1_local15:SetTargetAngle(30, arg1:GetStringIndexedNumber("BaseAng_Inter_AAA"), arg1:GetStringIndexedNumber("Ang_Inter_AAA"))
                f1_local15 = arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetStringIndexedNumber("BackAndSide_SideLife_AAA"), TARGET_ENE_0, f1_local2, arg1:GetStringIndexedNumber("BackAndSide_SideDir_AAA"), true, true, f1_local1)
                f1_local15 = f1_local15:SetTargetRange(30, arg1:GetStringIndexedNumber("DistMin_Inter_AAA"), arg1:GetStringIndexedNumber("DistMax_Inter_AAA"))
                f1_local15:SetTargetAngle(30, arg1:GetStringIndexedNumber("BaseAng_Inter_AAA"), arg1:GetStringIndexedNumber("Ang_Inter_AAA"))
            elseif f1_local7 < f1_local14 and f1_local14 <= f1_local8 then
                arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, arg1:GetStringIndexedNumber("BackLife_AAA"), TARGET_ENE_0, arg1:GetStringIndexedNumber("BackDist_AAA"), TARGET_ENE_0, true, f1_local1)
            elseif f1_local8 < f1_local14 and f1_local14 <= f1_local9 then
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg1:GetStringIndexedNumber("Dist_BackStep"))
            elseif f1_local9 < f1_local14 and f1_local14 <= f1_local10 then
                arg2:AddSubGoal(GOAL_EnemyStepLR, 5, TARGET_ENE_0, arg1:GetStringIndexedNumber("Dist_SideStep"))
            elseif f1_local10 < f1_local14 and f1_local14 <= f1_local11 then
                arg2:AddSubGoal(GOAL_COMMON_Wait, arg1:GetRandam_Float(0.5, 1), 0, 0, 0, 0)
            elseif f1_local11 < f1_local14 and f1_local14 <= f1_local12 then
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg1:GetStringIndexedNumber("Dist_BackStep"))
                local f1_local15 = arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetStringIndexedNumber("BsAndSide_SideLife_AAA"), TARGET_ENE_0, f1_local2, arg1:GetStringIndexedNumber("BsAndSide_SideDir_AAA"), true, true, f1_local1)
                f1_local15 = f1_local15:SetTargetRange(30, arg1:GetStringIndexedNumber("DistMin_Inter_AAA"), arg1:GetStringIndexedNumber("DistMax_Inter_AAA"))
                f1_local15:SetTargetAngle(30, arg1:GetStringIndexedNumber("BaseAng_Inter_AAA"), arg1:GetStringIndexedNumber("Ang_Inter_AAA"))
            elseif f1_local12 < f1_local14 and f1_local14 <= f1_local13 then
                arg2:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, arg1:GetStringIndexedNumber("Dist_BackStep"))
                arg2:AddSubGoal(GOAL_EnemyStepLR, 5, TARGET_ENE_0, arg1:GetStringIndexedNumber("Dist_SideStep"))
            else

            end
        end
    end
    
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    end
    if arg2:GetLife() <= 0 then
        return GOAL_RESULT_Success
    end
    return GOAL_RESULT_Continue
    
end

Goal.Interrupt_TargetOutOfRange = function (arg0, arg1, arg2, arg3)
    if arg3 == 30 then
        arg2:ClearSubGoal()
        return true
    end
    return false
    
end

Goal.Interrupt_TargetOutOfAngle = function (arg0, arg1, arg2, arg3)
    if arg3 == 30 then
        arg2:ClearSubGoal()
        return true
    end
    return false
    
end


