function TopGoal_Activate(arg0, arg1)
    
end

function TopGoal_Update(arg0, arg1)
    return GOAL_RESULT_Continue
    
end

function TopGoal_Terminate(arg0, arg1)
    
end

function TopGoal_Interupt(arg0, arg1)
    if arg0:IsInterupt(INTERUPT_CANNOT_MOVE) then
        local f4_local0 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__CannotMoveAction)
        if arg0:IsTouchBreakableObject() and f4_local0 >= 0 and arg0:IsLookToTarget(POINT_CurrRequestPosition, 90) then
            arg1:ClearSubGoal()
            arg1:AddSubGoal(GOAL_COMMON_NonspinningAttack, -1, f4_local0, TARGET_NONE, DIST_None)
            return true
        end
    end
    if arg0:IsInterupt(INTERUPT_CANNOT_MOVE_DisableInterupt) then
        local f4_local0 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__CannotMoveAction)
        if arg0:IsTouchBreakableObject() and f4_local0 >= 0 and arg0:IsLookToTarget(POINT_CurrRequestPosition, 90) then
            arg1:AddSubGoal_Front(GOAL_COMMON_NonspinningAttack, -1, f4_local0, TARGET_NONE, DIST_None)
            return true
        end
    end
    if arg0:IsInterupt(INTERUPT_HitEnemyWall) then
        local f4_local0 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__backhomeBattleDist)
        local f4_local1 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__maxBackhomeDist)
        local f4_local2 = arg0:GetDist(TARGET_ENE_0)
        local f4_local3 = arg0:GetMovePointEffectRange()
        local f4_local4 = arg0:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__BackHomeLife_OnHitEnemyWall)
        if f4_local4 > 0 then
            local f4_local5 = arg0:GetDist_Point(POINT_INITIAL)
            if f4_local1 <= f4_local3 or f4_local0 <= f4_local2 then
                if f4_local5 <= 1 then
                    arg1:ClearSubGoal()
                    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, f4_local4, TARGET_ENE_0, 999, TARGET_ENE_0, true, -1)
                    return true
                else
                    arg1:ClearSubGoal()
                    local f4_local6 = arg1:AddSubGoal(GOAL_COMMON_BackToHome_With_Parry, f4_local4)
                    f4_local6:SetTargetRange(COMMON_OBSERVE_SLOT_FINISH_BACKHOME, f4_local0, 999)
                    return true
                end
            end
        end
    end
    if arg0:IsInterupt(INTERUPT_TargetOutOfRange) and arg0:IsTargetOutOfRangeInterruptSlot(COMMON_OBSERVE_SLOT_FINISH_BACKHOME) then
        arg0:Replanning()
        return true
    end
    if arg0:IsInterupt(INTERUPT_WanderedOffPathRepath) then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_Wait, 0.1, TARGET_SELF, 0, 0, 0)
        return true
    end
    return false
    
end

function TopGoal_Update(arg0, arg1)
    return GOAL_RESULT_Continue
    
end


