function Platoon000120_Activate(arg0)
    arg0:SetEnablePlatoonMove(true)
    arg0:SetFormationType(0, 2)
    arg0:SetFormationParam(0, 0, 0)
    arg0:SetFormationParam(1, 0, 2)
    arg0:SetFormationParam(2, 1, 1)
    arg0:SetFormationParam(3, 2, 0)
    arg0:SetFormationParam(4, 1, -1)
    arg0:SetFormationParam(5, 0, -2)
    arg0:SetFormationParam(6, -1, -1)
    arg0:SetFormationParam(7, -2, 0)
    arg0:SetFormationParam(8, -1, 1)
    arg0:SetBaseMoveRate(0, 1.2)
    
end

function Platoon000120_Deactivate(arg0)
    
end

function Platoon000120_Update(arg0)
    Platoon_Common_Act(arg0)
    
end


