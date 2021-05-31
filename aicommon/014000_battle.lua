guardId = 0
function DS2PGTest14000_Battle_Activate(arg0, arg1)
    if arg0:GetDist(TARGET_ENE_0) < 1 then
        arg1:AddSubGoal(GOAL_COMMON_ComboAttack, 10, NPC_ATK_NormalR, TARGET_ENE_0, 3, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, AI_DIR_TYPE_CENTER, TARGET_SELF, false, -1)
    end
    
end

function DS2PGTest14000_Battle_Update(arg0, arg1)
    if arg0:GetDist(TARGET_ENE_0) > 20 then
        return GOAL_RESULT_Success
    end
    return GOAL_RESULT_Continue
    
end

function DS2PGTest14000_Battle_Terminate(arg0, arg1)
    
end

function DS2PGTest14000_Battle_Interupt(arg0, arg1)
    
end


