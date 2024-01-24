local function IsValidOwner(inst, owner)
    return owner:HasTag("OtherworldlyDog")
end

local function OnCheckOwner(inst, self)
    self.checkownertask = nil
    local owner = inst.components.inventoryitem:GetGrandOwner()
    if owner == nil or owner.components.inventory == nil then
        return
    elseif not IsValidOwner(inst, owner) then
        self:Drop()
        inst:PushEvent("axerejectedowner", owner)
    end
end

local function OnChangeOwner(inst, owner)
    local self = inst.components.otherworldlystead
    if self.currentowner == owner then
        return
    elseif self.currentowner ~= nil and self.oncontainerpickedup ~= nil then
        inst:RemoveEventCallback("onputininventory", self.oncontainerpickedup, self.currentowner)
        self.oncontainerpickedup = nil
    end

    if self.checkownertask ~= nil then
        self.checkownertask:Cancel()
        self.checkownertask = nil
    end

    self.currentowner = owner

    if owner == nil then
        return
    elseif owner.components.inventoryitem ~= nil then
        self.oncontainerpickedup = function()
            if self.checkownertask ~= nil then
                self.checkownertask:Cancel()
            end
            self.checkownertask = inst:DoTaskInTime(0, OnCheckOwner, self)
        end
        inst:ListenForEvent("onputininventory", self.oncontainerpickedup, owner)
    end
    self.checkownertask = inst:DoTaskInTime(0, OnCheckOwner, self)
end

local OtherworldlyStead = Class(function(self, inst)
    self.inst = inst

    self.currentowner = nil --inventoryitem owner
    self.oncontainerpickedup = nil
    self.checkownertask = nil


    inst:ListenForEvent("onputininventory", OnChangeOwner)
    inst:ListenForEvent("ondropped", OnChangeOwner)
end)

function OtherworldlyStead:Drop()
    local owner = self.inst.components.inventoryitem:GetGrandOwner()
    if owner ~= nil and owner.components.inventory ~= nil then
        owner.components.inventory:DropItem(self.inst, true, true)
    end
end

return OtherworldlyStead
