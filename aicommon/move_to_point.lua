RegisterTableGoal(GOAL_COMMON_MoveToPoint, "MoveToPoint")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_COMMON_MoveToPoint, true)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_MoveToPoint, 0, "?|?C???g?G???e?B?e?BID", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_MoveToPoint, 1, "???B???•c??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_MoveToPoint, 2, "??????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_MoveToPoint, 3, "??????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_MoveToPoint, 4, "?K?[?h???", 0)
Goal.Activate = function (arg0, arg1, arg2)
    arg1:SetEventMoveTarget(arg2:GetParam(0))
    arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, arg2:GetLife(), POINT_EVENT, arg2:GetParam(1), arg2:GetParam(2), arg2:GetParam(3), arg2:GetParam(4))
    
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    end
    return GOAL_RESULT_Continue
    
end

RegisterTableGoal(GOAL_COMMON_MoveToMultiPoint, "GOAL_COMMON_MoveToMultiPoint")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_COMMON_MoveToMultiPoint, true)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_MoveToMultiPoint, 0, "???B???•c??", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_MoveToMultiPoint, 1, "??????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_MoveToMultiPoint, 2, "??????", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_MoveToMultiPoint, 3, "?K?[?h???", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_MoveToMultiPoint, 4, "?|?C???g1", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_MoveToMultiPoint, 5, "?|?C???g2", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_MoveToMultiPoint, 6, "?|?C???g3", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_MoveToMultiPoint, 7, "?|?C???g4", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_MoveToMultiPoint, 8, "?|?C???g5", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_MoveToMultiPoint, 9, "?|?C???g6", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_MoveToMultiPoint, 10, "?|?C???g7", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_MoveToMultiPoint, 11, "?|?C???g8", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_MoveToMultiPoint, 12, "?|?C???g9", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_MoveToMultiPoint, 13, "?|?C???g10", 0)
Goal.Activate = function (arg0, arg1, arg2)
    local f3_local0 = 1
    for f3_local1 = 5, 13, 1 do
        if arg2:GetParam(f3_local1) == nil or arg2:GetParam(f3_local1) <= 0 then
            arg2:SetNumber(0, f3_local1 - 1)
            f3_local0 = 0
            break
        end
    end
    if f3_local0 == 1 then
        arg2:SetNumber(0, 13)
    end
    local f3_local1 = 9999
    local f3_local2 = -1
    for f3_local3 = 4, arg2:GetNumber(0) - 1, 1 do
        arg1:SetEventMoveTarget(arg2:GetParam(f3_local3))
        local f3_local6 = arg1:GetDist(POINT_EVENT)
        if f3_local6 < f3_local1 then
            f3_local1 = f3_local6
            f3_local2 = f3_local3
        end
    end
    for f3_local3 = f3_local2, arg2:GetNumber(0), 1 do
        arg2:AddSubGoal(GOAL_COMMON_MoveToPoint, arg2:GetLife(), arg2:GetParam(f3_local3), arg2:GetParam(0), arg2:GetParam(1), arg2:GetParam(2), arg2:GetParam(3))
    end
    
end

Goal.Update = function (arg0, arg1, arg2)
    if arg2:GetSubGoalNum() <= 0 then
        if arg1:GetDist(arg2:GetParam(arg2:GetNumber(0))) <= arg2:GetParam(0) then
            return GOAL_RESULT_Success
        else
            local f4_local0 = 9999
            local f4_local1 = -1
            for f4_local2 = 4, arg2:GetNumber(0), 1 do
                arg1:SetEventMoveTarget(arg2:GetParam(f4_local2))
                local f4_local5 = arg1:GetDist(POINT_EVENT)
                if f4_local5 < f4_local0 then
                    f4_local0 = f4_local5
                    f4_local1 = f4_local2
                end
            end
            for f4_local2 = f4_local1, arg2:GetNumber(0), 1 do
                arg2:AddSubGoal(GOAL_COMMON_MoveToPoint, arg2:GetLife(), arg2:GetParam(f4_local2), arg2:GetParam(0), arg2:GetParam(1), arg2:GetParam(2), arg2:GetParam(3))
            end
        end
    end
    return GOAL_RESULT_Continue
    
end


