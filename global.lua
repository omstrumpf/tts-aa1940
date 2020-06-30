-- Axis & Allies 1940 Global Scripting
--
-- Battle Board: counts hits automatically based on dice zones
-- Spawning: units, chits, etc. bound to numpad keys. color/power aware.
-- Income: Buttons to collect income for the turn, including national objectives and bonus income

------ BAG GUIDS
trashBag = "c0a4e5"

chitBagAxis = "1a0ff7"
chitBagAllies = "f5fe52"

diceBagAxis = "45bb1d"
diceBagAllies = "855803"

controlMarkerBags = {
    Germany = "4c50aa",
    Russia = "eb8ab7",
    Japan = "36d8f4",
    America = "1d0c20",
    China = "0ad37d",
    UKEurope = "34c46a",
    UKPacific = "d30991",
    Italy = "40795c",
    ANZAC = "957100",
    France = "aa2976",
}

infantryBags = {
    Germany = "349428",
    Russia = "4fc1da",
    Japan = "62c152",
    America = "69507b",
    China = "cc0d76",
    UKEurope = "6b8e3e",
    UKPacific = "c358fe",
    Italy = "bb6130",
    ANZAC = "54c4a9",
    France = "bd5542",
}

artilleryBags = {
    Germany = "842439",
    Russia = "462803",
    Japan = "64d7cd",
    America = "579060",
    China = "9ae340",
    UKEurope = "75d4c9",
    UKPacific = "529a8e",
    Italy = "eb0f94",
    ANZAC = "019bae",
    France = "a7ac87",
}

mechInfantryBags = {
    Germany = "04faf5",
    Russia = "f91628",
    Japan = "19a6e3",
    America = "f67f28",
    China = nil,
    UKEurope = "fe8d81",
    UKPacific = "9db942",
    Italy = "51b194",
    ANZAC = "a7e4cc",
    France = "39dcb5",
}

tankBags = {
    Germany = "ffd943",
    Russia = "28504e",
    Japan = "6f8dd0",
    America = "648afb",
    China = nil,
    UKEurope = "7b855f",
    UKPacific = "122994",
    Italy = "df0240",
    ANZAC = "1302b1",
    France = "9590ce",
}

fighterBags = {
    Germany = "5e2851",
    Russia = "43ac06",
    Japan = "567b4f",
    America = "6b2477",
    China = "a4c464",
    UKEurope = "80329e",
    UKPacific = "66c5bf",
    Italy = "64f5d0",
    ANZAC = "34cc71",
    France = "661574",
}

tacBomberBags = {
    Germany = "a2fc5e",
    Russia = "bc9568",
    Japan = "a8430b",
    America = "0023af",
    China = nil,
    UKEurope = "0bc43f",
    UKPacific = "a9c7a5",
    Italy = "0fc895",
    ANZAC = "99d278",
    France = "873b86",
}

------ INCOME TRACKING GUIDS
incomeCounters = {
    Germany = "3ba250",
    Russia = "a1d66b",
    Japan = "7e5daa",
    America = "62ebe8",
    China = "b71561",
    UKEurope = "d8621d",
    UKPacific = "45eed5",
    Italy = "b25fab",
    ANZAC = "526dff",
    France = "95ef6e",
}

totalIncomeCounters = {
    Germany = "58592d",
    Russia = "153429",
    Japan = "fc04aa",
    America = "abeb00",
    China = "f532b5",
    UKEurope = "fe6e46",
    UKPacific = "7272f8",
    Italy = "c0ce8b",
    ANZAC = "bf51bd",
    France = "482983",
}

ipcCounters = {
    Germany = "7c0498",
    Russia = "c29511",
    Japan = "03c2a5",
    America = "d484dc",
    China = "3bfaa1",
    UKEurope = "a3deb5",
    UKPacific = "e983c7",
    Italy = "d6ab0c",
    ANZAC = "5a38c1",
    France = "40d53c",
}

collectIncomeButtons = {
  Germany = "fcbe97",
  Russia = "412cd8",
  Japan = "52e8b7",
  America = "f98df1",
  China = "8dc26b",
  UKEurope = "83a872",
  UKPacific = "8930b4",
  Italy = "29c3f4",
  ANZAC = "400b83",
  France = "767c84",
}

------ National Objective GUIDS
-- GUID, Value, OneTime, MultiChip
nationalObjectiveZones = {
    Germany = {
        {"afd1c8", 5, false, false},
        {"86b04d", 5, false, false},
        {"fb1a0d", 5, false, false},
        {"73656d", 5, false, false},
        {"d51007", 5, false, false},
        {"58ebfd", 2, false, false},
        {"241d74", 2, false, false},
        {"63204e", 2, false, false},
        {"d1a044", 5, false, false},
        {"ef2d73", 5, false, false},
    },
    Italy = {
        {"aed939", 5, false, false},
        {"9974c5", 5, false, false},
        {"c2f4a7", 5, false, false},
        {"5ef8bc", 2, false, false},
        {"a64c0e", 2, false, false},
        {"0f321a", 2, false, false},
    },
    Japan = {
        {"e6e534", 5, false, false},
        {"c577bb", 5, false, false},
        {"950407", 5, false, false},
        {"75ab2b", 5, false, false},
        {"c27396", 5, false, false},
        {"4661a1", 5, false, false},
        {"4ebb33", 10, false, false},
    },
    Russia = {
        {"4339ab", 5, false, false},
        {"bc479c", 3, false, true},
        {"447276", 10, true, false},
    },
    UKEurope = {
        {"243162", 5, false, false},
    },
    UKPacific = {
        {"9afda0", 5, false, false},
    },
    America = {
        {"20a536", 10, false, false},
        {"5390a3", 5, false, false},
        {"7b2fb6", 5, false, false},
        {"ab3fbd", 5, false, false},
        {"5ec66f", 5, false, false},
    },
    China = {
        {"4d0abb", 6, false, false},
    },
    ANZAC = {
        {"5532d0", 5, false, false},
        {"235154", 5, false, false},
    },
    France = {},
}

------ BATTLE GUIDS
battleZones = {
    {"462970", 1},
    {"16cfc1", 2},
    {"ee82b8", 3},
    {"6b504c", 4},
}

hitCounterAxis = "2bb9b7"
hitCounterAllies = "0b8c9e"

------ POWERS
powers = {
    "Germany",
    "Russia",
    "Japan",
    "America",
    "China",
    "UKEurope",
    "UKPacific",
    "Italy",
    "ANZAC",
    "France"
}

colorToPower = {
    White = "Germany",
    Red = "Russia",
    Orange = "Japan",
    Green = "America",
    Purple = "China",
    Yellow = "UKEurope",
    Brown = "Italy",
    Teal = "ANZAC",
    Blue = "France",
}

colorToTeam = {
  White = "Axis",
  Red = "Allies",
  Orange = "Axis",
  Green = "Allies",
  Purple = "Allies",
  Yellow = "Allies",
  Brown = "Axis",
  Teal = "Allies",
  Blue = "Allies",
}

powerToTeam = {
    Germany = "Axis",
    Russia = "Allies",
    Japan = "Axis",
    America = "Allies",
    China = "Allies",
    UKEurope = "Allies",
    UKPacific = "Allies",
    Italy = "Axis",
    ANZAC = "Allies",
    France = "Allies",
}

powerToString = {
    Germany = "Germany",
    Russia = "Russia",
    Japan = "Japan",
    America = "America",
    China = "China",
    UKEurope = "UK (europe)",
    UKPacific = "UK (pacific)",
    Italy = "Italy",
    ANZAC = "ANZAC",
    France = "France"
}

------ OBJECT SPAWNING
local function placeMiniatureFromBag(bag, position, rotation)
    if not bag then
        return
    end

    local rotation1 = rotation or {0, 0, 0}

    local raisedPosition = {position[1], position[2] + 2, position[3]}

    getObjectFromGUID(bag).takeObject({
            position = raisedPosition,
            smooth = false,
            rotation = rotation1
    })
end

------ INCOME TRACKING
local function isFaceUp(obj)
    local rotation = obj.getRotation()
    local z = rotation[3]

    return (z > -15 and z < 15)
end

-- Returns the face-up tracker chip with the largest stack
local function findFaceUpTracker(objs)
    local ret = nil

    for _, obj in ipairs(objs) do
        local name = obj.getName()

        if string.match(name, "Tracker") and isFaceUp(obj) then
            if (not ret) or ret.getQuantity() < obj.getQuantity() then
              ret = obj
            end
        end
    end

    return ret
end

local function countBonusIncome(power, doFlip)
  local bonusIncome = 0
  local oneTimeIncome = 0

  for _, zoneData in ipairs(nationalObjectiveZones[power]) do
      local zoneObjects = getObjectFromGUID(zoneData[1]).getObjects()
      local amount = zoneData[2]
      local oneTime = zoneData[3]
      local multiChip = zoneData[4]

      local faceUp = findFaceUpTracker(zoneObjects)

      if faceUp then
          if oneTime then
              oneTimeIncome = oneTimeIncome + amount

              if doFlip then
                  faceUp.flip()
              end
          elseif multiChip and faceUp.getQuantity() > 0 then
              bonusIncome = bonusIncome + (amount * faceUp.getQuantity())
          else
              bonusIncome = bonusIncome + amount
          end
      end
  end

  return {bonusIncome, oneTimeIncome}
end

function broadcastString(data)
    broadcastToAll(data.message, data.params or nil)
end

local function collectIncome(power)
    local incomeCounter = getObjectFromGUID(incomeCounters[power]).Counter
    local ipcCounter = getObjectFromGUID(ipcCounters[power]).Counter

    local bonusIncomeTable = countBonusIncome(power, true)

    local baseIncome = incomeCounter.getValue()
    local bonusIncome = bonusIncomeTable[1]
    local oneTimeIncome = bonusIncomeTable[2]

    ipcCounter.setValue(ipcCounter.getValue() + baseIncome + bonusIncome + oneTimeIncome)

    broadcastToAll(powerToString[power] .. " collects " .. baseIncome + bonusIncome .. " IPCs. " .. baseIncome .. " from Territories, " .. bonusIncome .. " from National Objectives.")

    if oneTimeIncome > 0 then
        local message = powerToString[power] .. " collects an additional " .. oneTimeIncome .. " IPCs for a one-time bonus!"

        Timer.create({
            identifier = tostring(math.random()),
            function_name = "broadcastString",
            parameters = {message = message},
            delay = 2
        })
    end
end

function updateIPCTotals()
  for power, counterGUID in pairs(totalIncomeCounters) do
      local bonusIncomeTable = countBonusIncome(power, false)

      local counter = getObjectFromGUID(counterGUID).Counter
      local productionIncome = getObjectFromGUID(incomeCounters[power]).Counter.getValue()

      local value = productionIncome + bonusIncomeTable[1] + bonusIncomeTable[2]

      counter.setValue(value)
  end
end

function collectIncomeBtn(obj, string_player_color, alt_click)
    if alt_click then
        return
    end

    for _, power in ipairs(powers) do
        if obj.guid == collectIncomeButtons[power] then
            collectIncome(power)
            return
        end
    end

    print("Scripting error: power not found")
end

------ BATTLE STRIP
function updateBattleTotals()
    local axisTotal = 0
    local alliesTotal = 0

    -- Ensure that we only count each die once, in case a die is sitting on the borders of multiple zones
    local countedDice = {}

    for i, zoneData in pairs(battleZones) do
        local zone = getObjectFromGUID(zoneData[1])
        local threshold = zoneData[2]

        for i, die in ipairs(zone.getObjects()) do
            if countedDice[die.getGUID()] == nil then
                countedDice[die.getGUID()] = true

                if die.getName() == "Axis Die" and die.getRotationValue() <= threshold then
                    axisTotal = axisTotal + 1
                elseif die.getName() == "Ally Die" and die.getRotationValue() <= threshold then
                    alliesTotal = alliesTotal + 1
                end
            end
        end
    end

    getObjectFromGUID(hitCounterAxis).Counter.setValue(axisTotal)
    getObjectFromGUID(hitCounterAllies).Counter.setValue(alliesTotal)
end

------ DELETE FUNCTION
local function deleteSelected(player)
    local objs = {}

    for _,o in ipairs(player.getSelectedObjects()) do objs[#objs+1] = o end
    for _,o in ipairs(player.getHoldingObjects()) do objs[#objs+1] = o end

    if player.getHoverObject() then
        objs[#objs+1] = player.getHoverObject()
    end

    local trashBag = getObjectFromGUID(trashBag)

    for _,o in ipairs(objs) do
        if not o.getLock() then
            trashBag.putObject(o)
        end
    end
end

------ TTS CALLBACKS
function onLoad()
    for power, buttonGUID in pairs(collectIncomeButtons) do
        local buttonObj = getObjectFromGUID(buttonGUID)

        buttonObj.createButton({
            click_function = "collectIncomeBtn",
            scale = {15, 15, 15}
        })
    end

    Timer.create({
        identifier = "Battle Board Timer",
        function_name = "updateBattleTotals",
        delay = 0.1,
        repetitions = 0,
    })

    Timer.create({
        identifier = "Income Tracking Timer",
        function_name = "updateIPCTotals",
        delay = 0.5,
        repetitions = 0,
    })
end

function onScriptingButtonDown(index, playerColor)
    local position = Player[playerColor].getPointerPosition()
    local power = colorToPower[playerColor]
    local team = colorToTeam[playerColor]

    if index == 10 then -- Numpad 0: delete
        deleteSelected(Player[playerColor])
    elseif index == 1 then -- Numpad 1: Dice
        if team == "Axis" then
            placeMiniatureFromBag(diceBagAxis, position, {0, 0, 180})
        elseif team == "Allies" then
            placeMiniatureFromBag(diceBagAllies, position, {0, 0, 180})
        end
    elseif index == 2 then -- Numpad 2: Control Marker
        placeMiniatureFromBag(controlMarkerBags[power], position)
    elseif index == 3 then -- Numpad 3: Chit
        if team == "Axis" then
            placeMiniatureFromBag(chitBagAxis, position)
        elseif team == "Allies" then
            placeMiniatureFromBag(chitBagAllies, position)
        end
    elseif index == 4 then -- Numpad 4: Infantry
        placeMiniatureFromBag(infantryBags[power], position)
    elseif index == 5 then -- Numpad 5: Artillery
        placeMiniatureFromBag(artilleryBags[power], position)
    elseif index == 6 then -- Numpad 6: Mechanized Infantry
        placeMiniatureFromBag(mechInfantryBags[power], position)
    elseif index == 7 then -- Numpad 7: Tank
        placeMiniatureFromBag(tankBags[power], position)
    elseif index == 8 then -- Numpad 8: Fighter
        placeMiniatureFromBag(fighterBags[power], position)
    elseif index == 9 then -- Numpad 9: Tactical Bomber
        placeMiniatureFromBag(tacBomberBags[power], position)
    end
end
