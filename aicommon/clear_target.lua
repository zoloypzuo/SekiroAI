REGISTER_DBG_GOAL_PARAM(GOAL_COMMON_ClearTarget, 0, "?N???A???^?[?Q?b?g", 0)
REGISTER_GOAL_UPDATE_TIME(GOAL_COMMON_ClearTarget, 0, 0)
REGISTER_GOAL_NO_INTERUPT(GOAL_COMMON_ClearTarget, true)
function ClearTarget_Activate(arg0, arg1)
    local f1_local0 = arg1:GetParam(0)
    if f1_local0 == AI_TARGET_TYPE__NORMAL_ENEMY then
        arg0:ClearEnemyTarget()
    elseif f1_local0 == AI_TARGET_TYPE__SOUND then
        arg0:ClearSoundTarget()
    elseif f1_local0 == AI_TARGET_TYPE__MEMORY_ENEMY then
        arg0:ClearLastMemoryTargetPos()
    elseif f1_local0 == AI_TARGET_TYPE__INDICATION_POS then
        arg0:ClearIndicationPosTarget()
    elseif f1_local0 == AI_TARGET_TYPE__CORPSE_POS then
        arg0:ClearCorpsePosTarget()
    end
    arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_SELF, 0, 0, 0)
    
end

function ClearTarget_Update(arg0, arg1, arg2)
    return GOAL_RESULT_Success
    
end

function ClearTarget_Terminate(arg0, arg1)
    
end

function ClearTarget_Interupt(arg0, arg1)
    return false
    
end


