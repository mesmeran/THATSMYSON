local f = CreateFrame("Frame")
f:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
f:SetScript("OnEvent", function(self, event)
    self:PlaySoundOnDeath(event, CombatLogGetCurrentEventInfo())
end)

function f:PlaySoundOnDeath(event, ...)
    local timestamp, subevent, _, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags = ...

    if subevent == "UNIT_DIED"  and destName == "Millton" then
        PlaySoundFile("Interface/AddOns/THATSMYSON/sounds/THATSMYSON.mp3", "Master")
    end
end