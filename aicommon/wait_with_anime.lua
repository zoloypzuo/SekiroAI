REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_WaitWithAnime, 0, "?A?j??ID", 0)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_WaitWithAnime, 1, "??????", 1)
function WaitWithAnime_Activate(arg0, arg1)
    local f1_local0 = arg1:GetParam(0)
    local f1_local1 = arg1:GetParam(1)
    arg1:AddSubGoal(GOAL_COMMON_AttackNonCancel, arg1:GetLife(), f1_local0, f1_local1, 9999, 0, -1)
    
end

function WaitWithAnime_Update(arg0, arg1)
    return GOAL_RESULT_Continue
    
end

function WaitWithAnime_Terminate(arg0, arg1)
    
end

function WaitWithAnime_Interupt(arg0, arg1)
    return false
    
end


