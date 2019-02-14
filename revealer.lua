function RevealIndex(index:number, level:number)
    local pVis = PlayersVisibility[Game.GetLocalPlayer()];
    pVis:ChangeVisibilityCount(index, level or 1);
end

function RevealPlot(plot:table, level:number)
    RevealIndex(plot:GetIndex(), level);
end

function RevealAll(level:number)
    for index = 0, Map.GetPlotCount()-1, 1 do
        RevealIndex(index, level);
    end
end

print "revealing map"
--RevealAll(0);  -- explore all
RevealAll(1);  -- reveal all
