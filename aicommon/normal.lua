function Normal_Activate(arg0, arg1)
    local f1_local0 = arg0:GetDist(TARGET_ENE_0)
    local f1_local1 = arg0:GetRandam_Int(1, 100)
    local f1_local2 = arg0:GetRandam_Int(1, 100)
    local f1_local3 = 2
    local f1_local4 = 4
    local f1_local5 = 0
    local f1_local6 = 3000
    local f1_local7 = 3000
    local f1_local8 = 3000
    local f1_local9 = 3
    local f1_local10 = 1
    local f1_local11 = 3
    local f1_local12 = 20
    local f1_local13 = 30
    local f1_local14 = 40
    local f1_local15 = 1.5
    local f1_local16 = 3.5
    local f1_local17 = 5.5
    local f1_local18 = 40
    local f1_local19 = 30
    local f1_local20 = 20
    local f1_local21 = 6
    local f1_local22 = 0
    local f1_local23 = 9
    local f1_local24 = 7
    local f1_local25 = 3
    if f1_local0 <= f1_local21 then
        if f1_local0 < f1_local3 then
            if f1_local1 <= f1_local12 then
                arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 5, TARGET_ENE_0, AI_DIR_TYPE_CENTER, f1_local9, TARGET_ENE_0, true)
            else
                arg1:AddSubGoal(GOAL_COMMON_Attack, 10, f1_local6, TARGET_ENE_0, DIST_Near, 0)
                if f1_local2 <= f1_local18 then
                    arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 5, TARGET_ENE_0, AI_DIR_TYPE_CENTER, f1_local15, TARGET_ENE_0, true)
                end
            end
        elseif f1_local0 < f1_local4 then
            if f1_local1 <= f1_local13 then
                arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 5, TARGET_ENE_0, AI_DIR_TYPE_CENTER, f1_local10, TARGET_ENE_0, true)
            else
                arg1:AddSubGoal(GOAL_COMMON_Attack, 10, f1_local7, TARGET_ENE_0, DIST_Near, 0)
                if f1_local2 <= f1_local19 then
                    arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 5, TARGET_ENE_0, AI_DIR_TYPE_CENTER, f1_local16, TARGET_ENE_0, true)
                end
            end
        elseif f1_local1 <= f1_local14 then
            arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 5, TARGET_ENE_0, AI_DIR_TYPE_CENTER, f1_local11, TARGET_ENE_0, true)
        else
            arg1:AddSubGoal(GOAL_COMMON_Attack, 10, f1_local8, TARGET_ENE_0, DIST_Near, 0)
            if f1_local2 <= f1_local20 then
                arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 5, TARGET_ENE_0, AI_DIR_TYPE_CENTER, f1_local17, TARGET_ENE_0, true)
            end
        end
    elseif f1_local0 <= f1_local23 then
        arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 10, TARGET_ENE_0, AI_DIR_TYPE_CENTER, f1_local25, TARGET_ENE_0, true)
    else
        arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 10, TARGET_ENE_0, AI_DIR_TYPE_CENTER, f1_local24, TARGET_ENE_0, false)
        arg1:AddSubGoal(GOAL_COMMON_MoveToSomewhere, 10, TARGET_ENE_0, AI_DIR_TYPE_CENTER, f1_local25, TARGET_ENE_0, true)
    end
    
end

function Normal_Update(arg0, arg1)
    return GOAL_RESULT_Continue
    
end

function Normal_Terminate(arg0, arg1)
    
end

function Normal_Interupt(arg0, arg1)
    local f4_local0 = arg0:GetDist(TARGET_ENE_0)
    local f4_local1 = arg0:GetRandam_Int(1, 100)
    local f4_local2 = arg0:GetRandam_Int(1, 100)
    local f4_local3 = 3
    local f4_local4 = 50
    local f4_local5 = 9910
    local f4_local6 = 3
    local f4_local7 = 50
    local f4_local8 = 3300
    local f4_local9 = 3
    local f4_local10 = 75
    local f4_local11 = 3300
    local f4_local12 = 3
    local f4_local13 = 40
    local f4_local14 = 3000
    if arg0:IsInterupt(INTERUPT_FindAttack) and f4_local0 <= f4_local3 and f4_local1 <= f4_local4 then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_Guard, 5, f4_local5, TARGET_ENE_0, 0, 0)
        return true
    end
    if arg0:IsInterupt(INTERUPT_MissSwing) and f4_local0 < f4_local6 and f4_local1 <= f4_local7 then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_Attack, 5, f4_local8, TARGET_ENE_0, DIST_Near, 0)
        return true
    end
    if arg0:IsInterupt(INTERUPT_GuardBreak) and f4_local0 < f4_local9 and f4_local1 <= f4_local10 then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_Attack, 5, f4_local11, TARGET_ENE_0, DIST_Near, 0)
        return true
    end
    if arg0:IsInterupt(INTERUPT_GuardFinish) and f4_local0 < f4_local12 and f4_local1 <= f4_local13 then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_Attack, 5, f4_local14, TARGET_ENE_0, DIST_Near, 0)
        return true
    end
    return false
    
end


