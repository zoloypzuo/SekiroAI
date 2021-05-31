function Platoon000110_Activate(arg0)
    arg0:SetEnablePlatoonMove(true)
    arg0:SetFormationType(0, 2)
    arg0:SetFormationParam(0, 0, 0)
    arg0:SetFormationParam(1, 0, 0)
    arg0:SetFormationParam(2, 2, -1)
    arg0:SetFormationParam(3, 0, -3)
    arg0:SetFormationParam(4, 2, -4)
    arg0:SetFormationParam(5, 1, -7)
    arg0:SetBaseMoveRate(0, 1.5)
    
end

function Platoon000110_Deactivate(arg0)
    
end

function Platoon000110_Update(arg0)
    Platoon_Common_Act(arg0)
    
end


