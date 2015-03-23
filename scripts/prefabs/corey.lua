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
  Asset("ANIM", "anim/corey.zip"),
  Asset("ANIM", "anim/ghost_corey_build.zip"),
}
-- Player prefabs
local prefabs = {

}
-- Player starting inventory
local start_inv = {

}

-- Initialization for host and client
local common_postinit = function(inst)

end

-- Initialization for host only
local master_postinit = function(inst)
  -- TODO: Stat things here
end

return MakePlayerCharacter("corey", prefabs, assets, common_postinit, master_postinit, start_inv)
