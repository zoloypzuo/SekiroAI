RegisterTableGoal(GOAL_COMMON_FlexibleSideWayMove, "FlexibleSideWayMove")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_COMMON_FlexibleSideWayMove, true)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_FlexibleSideWayMove, 0, "???D??x", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_FlexibleSideWayMove, 1, "?E?D??x", 1)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_FlexibleSideWayMove, 2, "??????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_FlexibleSideWayMove, 3, "???S????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_FlexibleSideWayMove, 4, "????p?x", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_FlexibleSideWayMove, 5, "?h??m??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_FlexibleSideWayMove, 6, "?????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_FlexibleSideWayMove, 7, "??™¦??", 0)
Goal.Activate = function (arg0, arg1, arg2)
    local f1_local0 = arg2:GetParam(2)
    local f1_local1 = arg1:GetDist(f1_local0)
    local f1_local2 = arg2:GetParam(6)
    local f1_local3 = arg2:GetParam(7)
    local f1_local4 = arg2:GetParam(5)
    if f1_local1 < f1_local2 or f1_local3 < f1_local1 then
        return 
    end
    local f1_local5 = {}
    local f1_local6 = {}
    local f1_local7 = {AI_DIR_TYPE_L, AI_DIR_TYPE_R}
    local f1_local8 = {-90, 90}
    local f1_local9 = arg2:GetParam(3)
    local f1_local10 = arg2:GetParam(4)
    for f1_local11 = 0, 1, 1 do
        if arg2:GetParam(f1_local11) >= 0 then
            local f1_local14 = table.getn(f1_local5) + 1
            for f1_local15 = 1, f1_local14 - 1, 1 do
                if f1_local5[f1_local15] < arg2:GetParam(f1_local11) then
                    f1_local14 = f1_local15
                    break
                end
            end
            local f1_local15 = table
            f1_local15 = f1_local15.insert
            local f1_local16 = f1_local5
            f1_local15(f1_local16, f1_local14, arg2:GetParam(f1_local11))
            f1_local15 = table
            f1_local15 = f1_local15.insert
            f1_local16 = f1_local6
            f1_local15(f1_local16, f1_local14, f1_local11 + 1)
        end
    end
    local f1_local11 = -1
    local f1_local12 = arg1:GetRandam_Float(0, 100)
    if f1_local12 < f1_local4 then
        f1_local11 = 9910
    end
    for f1_local12 = 1, 2, 1 do
        for f1_local15 = 1, table.getn(f1_local5), 1 do
            local f1_local18 = f1_local7[f1_local6[f1_local15]]
            if arg1:IsExistMeshOnLine(TARGET_SELF, f1_local18, f1_local9) and (not arg1:IsExistChrOnLineSpecifyAngle(TARGET_SELF, f1_local8[f1_local6[f1_local15]], f1_local9, AI_SPA_DIR_TYPE_TargetF) or f1_local12 == 2) then
                if f1_local18 == AI_DIR_TYPE_L then
                    arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg2:GetLife(), f1_local0, 0, f1_local10, true, true, f1_local11, 1)
                elseif f1_local18 == AI_DIR_TYPE_R then
                    arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg2:GetLife(), f1_local0, 1, f1_local10, true, true, f1_local11, 1)
                end
                return 
            end
        end
    end
    
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    end
    local f2_local0 = arg2:GetParam(2)
    local f2_local1 = arg1:GetDist(f2_local0)
    local f2_local2 = arg2:GetParam(6)
    local f2_local3 = arg2:GetParam(7)
    if f2_local1 < f2_local2 or f2_local3 < f2_local1 then
        return GOAL_RESULT_Success
    end
    return GOAL_RESULT_Continue
    
end


