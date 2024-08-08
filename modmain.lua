local TUNING = GLOBAL.TUNING


TUNING.OLDAGE_HEALTH_SCALE = TUNING.WANDA_OLDAGER / GetModConfigData("health")

TUNING.POCKETWATCH_HEAL_COOLDOWN = GetModConfigData("ageless_watch_cooldown")
TUNING.POCKETWATCH_HEAL_HEALING = GetModConfigData("ageless_watch_healing")

TUNING.POCKETWATCH_REVIVE_COOLDOWN = GetModConfigData("second_change_watch_cooldown")
TUNING.POCKETWATCH_WARP_COOLDOWN = GetModConfigData("backstep_cooldown")
TUNING.POCKETWATCH_RECALL_COOLDOWN = GetModConfigData("backtrek_watch_cooldown")
