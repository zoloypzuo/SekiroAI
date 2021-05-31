RegisterTableGoal(GOAL_COMMON_YousumiAct, "YousumiAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_COMMON_YousumiAct, true)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_YousumiAct, 0, "??????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_YousumiAct, 1, "???p?x", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_YousumiAct, 2, "????p?x", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_YousumiAct, 3, "?p???I?t?Z?b?g", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_YousumiAct, 4, "?????S?[???????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_YousumiAct, 5, "??????S?[???????", 0)
Goal.Activate = function (arg0, arg1, arg2)
    local f1_local0 = arg2:GetParam(0)
    local f1_local1 = arg2:GetParam(1)
    local f1_local2 = arg2:GetParam(2)
    local f1_local3 = arg2:GetParam(3)
    local f1_local4 = arg2:GetParam(4)
    local f1_local5 = arg2:GetParam(5)
    if f1_local4 == 0 then
        f1_local4 = 1
    end
    if f1_local5 == 0 then
        f1_local5 = 2.5
    end
    local f1_local6 = arg2:GetLife()
    local f1_local7 = arg1:GetDist(TARGET_ENE_0)
    local f1_local8 = arg1:GetDistYSigned(TARGET_ENE_0)
    local f1_local9 = 1
    local f1_local10 = 30
    local f1_local11 = f1_local8 / math.sin(math.rad(f1_local1))
    local f1_local12 = f1_local8 / math.sin(math.rad(f1_local2))
    local f1_local13 = arg1:GetRandam_Int(0, 1)
    local f1_local14 = true
    local f1_local15 = 2.5
    local f1_local16 = -1
    if f1_local3 == 9910 then
        f1_local16 = 9910
    end
    local f1_local17 = SpaceCheck_SidewayMove(arg1, arg2, 1)
    if f1_local17 == 0 then
        f1_local13 = 0
    elseif f1_local17 == 1 then
        f1_local13 = 1
    elseif f1_local17 == 2 then

    else

    end
    local f1_local18 = TARGET_ENE_0
    if arg1:CheckDoesExistPathWithSetPoint(TARGET_ENE_0, AI_DIR_TYPE_F, 0, 0) == false then
        f1_local18 = POINT_UnreachTerminate
        f1_local7 = arg1:GetDist_Point(POINT_UnreachTerminate)
        f1_local15 = 0.5
    end
    if arg1:GetStringIndexedNumber("Reach_EndOnFailedPath") == 1 then
        arg1:SetStringIndexedNumber("Reach_EndOnFailedPath", 0)
    elseif f1_local10 <= f1_local7 then
        arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1.5, f1_local18, f1_local10 - 0.5, TARGET_SELF, false, f1_local16)
    elseif f1_local8 > 0 then
        if f1_local12 <= f1_local7 then
            if f1_local7 <= f1_local15 then

            elseif f1_local7 - f1_local12 >= 5 and f1_local0 == false then
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1.5, f1_local18, f1_local15, TARGET_SELF, false, f1_local16)
            else
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, f1_local18, f1_local15, TARGET_SELF, true, f1_local16)
            end
        elseif f1_local7 <= f1_local11 then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
                if SpaceCheck(arg1, arg2, 180, 1.5) == true then
                    arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, f1_local4, TARGET_ENE_0, 50, TARGET_ENE_0, true, f1_local16)
                end
            elseif SpaceCheck(arg1, arg2, 0, 0.5) == true then
                arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, f1_local4, TARGET_ENE_0, 50, TARGET_ENE_0, true, f1_local16)
            else
                arg2:AddSubGoal(GOAL_COMMON_Turn, 3, TARGET_ENE_0, 0, 0, 0, 0)
            end
        end
    elseif SpaceCheck(arg1, arg2, 0, 0.5) == false then
        arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, f1_local4, TARGET_ENE_0, 50, TARGET_ENE_0, true, f1_local16)
    elseif f1_local7 <= f1_local15 then

    elseif SpaceCheck(arg1, arg2, 0, 4) == true and f1_local0 == false then
        arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1.5, f1_local18, f1_local15, TARGET_SELF, false, f1_local16)
    elseif SpaceCheck(arg1, arg2, 0, 3) == true then
        arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, f1_local18, f1_local15, TARGET_SELF, true, f1_local16)
    else

    end
    
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
    
end

Goal.Terminate = function (arg0, arg1, arg2)
    
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_MovedEnd_OnFailedPath) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_Wait_On_FailedPath, 0.5, 0.1)
        return true
    end
    return false
    
end


