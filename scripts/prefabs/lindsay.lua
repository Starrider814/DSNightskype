local MakePlayerCharacter = require "prefabs/player_common"

-- Player assets
local assets = {
  Asset("ANIM", "anim/player_basic.zip"),
  Asset("ANIM", "anim/player_idles_shiver.zip"),
  Asset("ANIM", "anim/player_actions.zip"),
  Asset("ANIM", "anim/player_actions_axe.zip"),
  Asset("ANIM", "anim/player_actions_pickaxe.zip"),
  Asset("ANIM", "anim/player_actions_shovel.zip"),
  Asset("ANIM", "anim/player_actions_blowdart.zip"),
  Asset("ANIM", "anim/player_actions_eat.zip"),
  Asset("ANIM", "anim/player_actions_item.zip"),
  Asset("ANIM", "anim/player_actions_uniqueitem.zip"),
  Asset("ANIM", "anim/player_actions_bugnet.zip"),
  Asset("ANIM", "anim/player_actions_fishing.zip"),
  Asset("ANIM", "anim/player_actions_boomerang.zip" ),
  Asset("ANIM", "anim/player_bush_hat.zip"),
  Asset("ANIM", "anim/player_attacks.zip"),
  Asset("ANIM", "anim/player_idles.zip"),
  Asset("ANIM", "anim/player_rebirth.zip"),
  Asset("ANIM", "anim/player_jump.zip"),
  Asset("ANIM", "anim/player_amulet_resurrect.zip"),
  Asset("ANIM", "anim/player_teleport.zip"),
  Asset("ANIM", "anim/wilson_fx.zip"),
  Asset("ANIM", "anim/player_one_man_band.zip"),
  Asset("ANIM", "anim/shadow_hands.zip"),
  Asset("SOUND", "sound/sfx.fsb"),
  Asset("SOUND", "sound/wilson.fsb"),
  -- TODO: Add the sound files for the character, and the beard for everyone who can grow beards

  -- Character specific files
  Asset("ANIM", "anim/lindsay.zip"),
  Asset("ANIM", "anim/ghost_lindsay_build.zip"),
}
-- Player prefabs
local prefabs = {

}
-- Player starting inventory
local start_inv = {

}

-- Initialization for host and client
local common_postinit = function(inst)
  inst.MiniMapEntity:SetIcon("lindsay.tex")
  inst:AddTag("bookbuilder")
end

-- Initialization for host only
local master_postinit = function(inst)
  -- Voice
  inst.soundsname = "wendy"

  -- Stats
  inst.components.health:SetMaxHealth(120)
  inst.components.hunger:SetMax(150)
  inst.components.hunger:SetRate(TUNING.WILSON_HUNGER_RATE * 1)
  inst.components.sanity:SetMax(200)

  -- Effects
  inst:AddComponent("reader")
  inst.components.sanity.night_drain_mult = (TUNING.WILSON_SANITY_MULT * 4) -- Afraid of the dark
  inst.components.sanity.neg_aura_mult = (TUNING.WILSON_SANITY_MULT * 2) -- Afraid of monsters
end

return MakePlayerCharacter("lindsay", prefabs, assets, common_postinit, master_postinit, start_inv)
