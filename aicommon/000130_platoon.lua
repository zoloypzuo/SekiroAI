function Platoon000130_Activate(arg0)
    arg0:SetEnablePlatoonMove(true)
    arg0:SetFormationType(0, 2)
    arg0:SetFormationParam(0, 0, 0)
    arg0:SetFormationParam(1, -1, -1)
    arg0:SetFormationParam(2, 1, -1)
    arg0:SetFormationParam(3, -1, -3)
    arg0:SetFormationParam(4, 1, -3)
    arg0:SetFormationParam(5, -1, -5)
    arg0:SetBaseMoveRate(0, 4)
    
end

function Platoon000130_Deactivate(arg0)
    
end

function Platoon000130_Update(arg0)
    Platoon_Common_Act(arg0)
    
end


