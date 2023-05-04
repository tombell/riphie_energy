local A, L = ...

local LibStub = LibStub
local LSM = LibStub("LibSharedMedia-3.0")

L.cfg = {
  height = 6,
  width = 184,

  pos = { a1 = "BOTTOM", a2 = "CENTER", af = "UIParent", x = 0, y = -155 },

  texture = LSM:Fetch("statusbar", "SkullflowerGradient2"),

  text = {
    enable = true,
    font = LSM:Fetch("font", "Expressway"),
    size = 12,
    pos = { a1 = "CENTER", a2 = "CENTER", af = "energyBar", x = 0, y = 0 },
  },

  colors = {
    bg = { 0 / 255, 0 / 255, 0 / 255, 1 },

    -- TODO: update colors
    mana = { 0 / 255, 190 / 255, 230 / 255, 1 },
    rage = { 255 / 255, 0 / 255, 0 / 255, 1 },
    focus = { 230 / 255, 140 / 255, 60 / 255, 1 },
    energy = { 246 / 255, 222 / 255, 32 / 255, 1 },
    runicpower = { 65 / 255, 65 / 255, 65 / 255, 1 },
    lunarpower = { 65 / 255, 65 / 255, 65 / 255, 1 },
    maelstrom = { 0 / 255, 127 / 255, 255 / 255, 1 },
    insanity = { 65 / 255, 65 / 255, 65 / 255, 1 },
    fury = { 255 / 255, 110 / 255, 30 / 255, 1 },
    pain = { 255 / 255, 110 / 255, 30 / 255, 1 },
  },
}

L.F = {}

local function UpdateConfiguration()
  local _, class = UnitClass("player")

  if class == "DEMONHUNTER" then
    L.cfg.width = 353
    L.cfg.pos.y = -154.5
  end

  if class == "EVOKER" then
    L.cfg.width = 353
    L.cfg.pos.y = -154.5
  end

  if class == "ROGUE" then
    if IsSpellKnown(277925) then
      L.cfg.width = 353
    else
      L.cfg.width = 314
    end
  end

  if class == "WARRIOR" then
    L.cfg.width = 353
  end
end
L.F.UpdateConfiguration = UpdateConfiguration
