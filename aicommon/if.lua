REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_If, 0.5, 1)
REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_If, 1, "????p?R?[?hNo", 0)
function If_Activate(arg0, arg1)
    local f1_local0 = arg1:GetBattleGoalId()
    local f1_local1 = arg1:GetParam(0)
    local f1_local2 = "OnIf_"
    function _loadstring(arg0)
        local f5_local0, f5_local1 = loadstring("return function (arg) " .. arg0 .. " end", arg0)
        if f5_local0 then
            return f5_local0()
        else
            return f5_local0, f5_local1
        end
        
    end

    local f1_local3 = _loadstring(f1_local2 .. f1_local0 .. "(arg.ai, arg.goal, arg.codeNo)")
    class = {ai = arg0, goal = arg1, codeNo = f1_local1}
    f1_local3(class)
    
end

function If_Update(arg0, arg1)
    if arg1:GetSubGoalNum() <= 0 then
        return GOAL_RESULT_Success
    end
    return GOAL_RESULT_Continue
    
end

function If_Terminate(arg0, arg1)
    
end

REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_If, true)
function If_Interupt(arg0, arg1)
    return false
    
end


