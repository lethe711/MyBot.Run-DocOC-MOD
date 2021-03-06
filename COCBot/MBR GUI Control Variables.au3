; #FUNCTION# ====================================================================================================================
; Name ..........: MBR GUI Control Variables
; Description ...: This file Includes several files in the current script and all Declared variables, constant, or create an array.
; Syntax ........: #include , Global
; Parameters ....: $action_groupe, $group_de_controle
; Return values .: None
; Author ........: Boju(2016)
; Modified ......: MR.ViPER (11-2016), CodeSlinger69 (2017)
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015-2017
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......:
; Link ..........: https://github.com/MyBotRun/MyBot/wiki
; Example .......: No
; ===============================================================================================================================
#include-once

Global $groupSearchDB = "", $groupHerosDB = "", $groupSearchAB = "", $groupHerosAB = "", $groupSpellsDB = "", $groupSpellsAB = "", $groupSearchTS = ""

;Attack
Global $groupAttackDB = "", $groupAttackDBSpell = "", $groupIMGAttackDB = "", $groupIMGAttackDBSpell = "", $groupAttackAB = "", $groupAttackABSpell = "", _
	   $groupIMGAttackAB = "", $groupIMGAttackABSpell = "", $groupAttackTS = "", $groupAttackTSSpell = "", $groupIMGAttackTS = "", $groupIMGAttackTSSpell = ""


;End Battle
Global $groupEndBattkeDB = "", $groupEndBattkeAB = "", $groupKingSleeping = "", $groupQueenSleeping = "", $groupWardenSleeping = "", $groupCloseWhileTraining = "", _
	   $grpTrainTroops = "", $grpCookSpell = ""

;Spell
Global $groupLightning = "", $groupHeal = "", $groupRage = "", $groupJumpSpell = "", $groupFreeze = "", $groupClone = "", $groupIcnLightning = "", $groupIcnHeal = "", _
	   $groupIcnRage = "", $groupIcnJumpSpell = "", $groupIcnFreeze = "", $groupIcnClone = ""

;Dark Spell
Global $groupPoison = "", $groupEarthquake = "", $groupHaste = "", $groupSkeleton = "", $groupIcnPoison = "", $groupIcnEarthquake = "", $groupIcnHaste = "", _
	   $groupIcnSkeleton = "", $groupListSpells = ""

;TH Level
Global $groupListTHLevels = ""

;League
Global $groupLeague = ""

; Groups of controls
Global $aTabControlsVillage, $aTabControlsDonate, $aTabControlsUpgrade, $aTabControlsNotify
Global $aTabControlsAttack, $aTabControlsArmy, $aTabControlsSearch, $aTabControlsDeadbase, $aTabControlsActivebase, $aTabControlsTHSnipe, $aTabControlsAttackOptions
Global $aTabControlsStrategies, $aTabControlsBot, $aTabControlsMOD, $aTabControlsMODSwitch, $aTabControlsStats
Global $oAlwaysEnabledControls = ObjCreate("Scripting.Dictionary")

Func InitializeControlVariables()
   $groupSearchDB = $g_hGrpDBFilter&"#"&$g_hCmbDBMeetGE&"#"&$g_hTxtDBMinGold&"#"&$g_hPicDBMinGold&"#"&$g_hTxtDBMinElixir&"#"&$g_hPicDBMinElixir&"#"& _
				    $g_hTxtDBMinGoldPlusElixir&"#"&$g_hPicDBMinGPEGold&"#"&$g_hChkDBMeetDE&"#"&$g_hTxtDBMinDarkElixir&"#"&$g_hPicDBMinDarkElixir&"#"&$g_hChkDBMeetTrophy&"#"& _
				    $g_hTxtDBMinTrophy&"#"&$g_hPicDBMinTrophies&"#"&$g_hChkDBMeetTH&"#"&$g_hCmbDBTH&"#"&$g_hPicDBMaxTH10&"#"&$g_hChkDBMeetTHO&"#"& _
				    $g_ahChkMeetOne[$DB]&"#"& _
				    $g_ahChkMaxMortar[$DB]&"#"&$g_ahCmbWeakMortar[$DB]&"#"&$g_ahPicWeakMortar[$DB]&"#"&$g_ahChkMaxWizTower[$DB]&"#"&$g_ahCmbWeakWizTower[$DB]&"#"& _
				    $g_ahPicWeakWizTower[$DB]&"#"& _
				    $g_ahChkMaxXBow[$DB]&"#"&$g_ahCmbWeakXBow[$DB]&"#"&$g_ahPicWeakXBow[$DB]&"#"&$g_ahChkMaxInferno[$DB]&"#"&$g_ahCmbWeakInferno[$DB]&"#"& _
				    $g_ahPicWeakInferno[$DB]&"#"&$g_ahChkMaxEagle[$DB]&"#"&$g_ahCmbWeakEagle[$DB]&"#"&$g_ahPicWeakEagle[$DB]
   $groupHerosDB = $g_hPicDBHeroesWait&"#"&$g_hTxtDBHeroesWait&"#"&$g_hChkDBKingWait&"#"&$g_hChkDBQueenWait&"#"&$g_hChkDBWardenWait&"#"&$g_hPicDBKingWait&"#"& _
				   $g_hPicDBQueenWait&"#"&$g_hPicDBWardenWait

   $groupSearchAB = $g_hGrpABFilter&"#"&$g_hCmbABMeetGE&"#"&$g_hTxtABMinGold&"#"&$g_hPicABMinGold&"#"&$g_hTxtABMinElixir&"#"&$g_hPicABMinElixir&"#"& _
				    $g_hTxtABMinGoldPlusElixir&"#"&$g_hPicABMinGPEGold&"#"&$g_hChkABMeetDE&"#"&$g_hTxtABMinDarkElixir&"#"&	$g_hPicABMinDarkElixir&"#"&$g_hChkABMeetTrophy&"#"& _
				    $g_hTxtABMinTrophy&"#"&$g_hPicABMinTrophies&"#"&$g_hChkABMeetTH&"#"&$g_hCmbABTH&"#"&$g_hPicABMaxTH10&"#"&$g_hChkABMeetTHO&"#"& _
				    $g_ahChkMeetOne[$LB]&"#"& _
				    $g_ahChkMaxMortar[$LB]&"#"&$g_ahCmbWeakMortar[$LB]&"#"&$g_ahPicWeakMortar[$LB]&"#"&$g_ahChkMaxWizTower[$LB]&"#"&$g_ahCmbWeakWizTower[$LB]&"#"& _
					$g_ahPicWeakWizTower[$LB]&"#"&$g_ahChkMaxXBow[$LB]&"#"&$g_ahCmbWeakXBow[$LB]&"#"&$g_ahPicWeakXBow[$LB]&"#"&$g_ahChkMaxInferno[$LB]&"#"& _
					$g_ahCmbWeakInferno[$LB]&"#"&$g_ahPicWeakInferno[$LB]&"#"&$g_ahChkMaxEagle[$LB]&"#"&$g_ahCmbWeakEagle[$LB]&"#"&$g_ahPicWeakEagle[$LB]
   $groupHerosAB = $g_hPicABHeroesWait&"#"&$g_hTxtABHeroesWait&"#"&$g_hChkABKingWait&"#"&$g_hChkABQueenWait&"#"&$g_hChkABWardenWait&"#"&$g_hPicABKingWait&"#"& _
				   $g_hPicABQueenWait&"#"&$g_hPicABWardenWait

   $groupSpellsDB = $g_hChkDBSpellsWait&"#"&$g_hPicDBLightSpellWait&"#"&$g_hPicDBHealSpellWait&"#"&$g_hPicDBRageSpellWait&"#"&$g_hPicDBJumpSpellWait&"#"& _
				    $g_hPicDBFreezeSpellWait&"#"&$g_hPicDBPoisonSpellWait&"#"&$g_hPicDBEarthquakeSpellWait&"#"&$g_hPicDBHasteSpellWait
   $groupSpellsAB = $g_hChkABSpellsWait&"#"&$g_hPicABLightSpellWait&"#"&$g_hPicABHealSpellWait&"#"&$g_hPicABRageSpellWait&"#"&$g_hPicABJumpSpellWait&"#"& _
				    $g_hPicABFreezeSpellWait&"#"&$g_hPicABPoisonSpellWait&"#"&$g_hPicABEarthquakeSpellWait&"#"&$g_hPicABHasteSpellWait

   $groupSearchTS = $g_hGrpTSFilter&"#"&$g_hCmbTSMeetGE&"#"&$g_hTxtTSMinGold&"#"&$g_hPicTSMinGold&"#"&$g_hTxtTSMinElixir&"#"&$g_hPicTSMinElixir&"#"& _
				    $g_hTxtTSMinGoldPlusElixir&"#"&$g_hPicTSMinGPEGold&"#"&$g_hChkTSMeetDE&"#"&$g_hTxtTSMinDarkElixir&"#"&$g_hPicTSMinDarkElixir&"#"& _
					$g_hLblAddTiles&"#"&$g_hLblAddTiles2&"#"&$g_hLblSWTTiles&"#"&$g_hTxtSWTTiles&"#"&$g_hLblTHadd&"#"&$g_hTxtTHaddTiles

   ;Attack
   $groupAttackDB = $g_hCmbDBAlgorithm&"#"&$g_hCmbDBSelectTroop&"#"&$g_hChkDBKingAttack&"#"&$g_hChkDBQueenAttack&"#"&$g_hChkDBWardenAttack&"#"&$g_hChkDBDropCC&"#"& _
				    $g_hChkDBLightSpell&"#"&$g_hChkDBHealSpell&"#"&$g_hChkDBRageSpell&"#"&$g_hChkDBJumpSpell&"#"&$g_hChkDBFreezeSpell&"#"&$g_hChkDBPoisonSpell&"#"& _
					$g_hChkDBEarthquakeSpell&"#"&$g_hChkDBHasteSpell&"#"&$g_hChkDBSkeletonSpell&"#"&$g_hChkDBCloneSpell
   $groupAttackDBSpell = $g_hChkDBLightSpell&"#"&$g_hChkDBHealSpell&"#"&$g_hChkDBRageSpell&"#"&$g_hChkDBJumpSpell&"#"&$g_hChkDBFreezeSpell&"#"&$g_hChkDBPoisonSpell&"#"& _
						 $g_hChkDBEarthquakeSpell&"#"&$g_hChkDBHasteSpell&"#"&$g_hChkDBSkeletonSpell&"#"&$g_hChkDBCloneSpell
   $groupIMGAttackDB = $g_hPicDBKingAttack&"#"&$g_hPicDBQueenAttack&"#"&$g_hPicDBWardenAttack&"#"&$g_hPicDBDropCC&"#"&$g_hPicDBLightSpell&"#"&$g_hPicDBHealSpell&"#"& _
					   $g_hPicDBRageSpell&"#"&$g_hPicDBJumpSpell&"#"&$g_hPicDBFreezeSpell&"#"&$g_hPicDBPoisonSpell&"#"&$g_hPicDBEarthquakeSpell&"#"&$g_hPicDBHasteSpell
   $groupIMGAttackDBSpell = $g_hPicDBLightSpell&"#"&$g_hPicDBHealSpell&"#"&$g_hPicDBRageSpell&"#"&$g_hPicDBJumpSpell&"#"&$g_hPicDBFreezeSpell&"#"&$g_hPicDBPoisonSpell&"#"& _
						    $g_hPicDBEarthquakeSpell&"#"&$g_hPicDBHasteSpell&"#"&$g_hPicDBSkeletonSpell&"#"&$g_hPicDBCloneSpell

   $groupAttackAB = $g_hCmbDBAlgorithm&"#"&$g_hCmbABSelectTroop&"#"&$g_hChkABKingAttack&"#"&$g_hChkABQueenAttack&"#"&$g_hChkABWardenAttack&"#"&$g_hChkABDropCC&"#"& _
				    $g_hChkABLightSpell&"#"&$g_hChkABHealSpell&"#"&$g_hChkABRageSpell&"#"&$g_hChkABJumpSpell&"#"&$g_hChkABFreezeSpell&"#"&$g_hChkABPoisonSpell&"#"& _
					$g_hChkABEarthquakeSpell&"#"&$g_hChkABHasteSpell&"#"&$g_hChkABSkeletonSpell&"#"&$g_hChkABCloneSpell
   $groupAttackABSpell = $g_hChkABLightSpell&"#"&$g_hChkABHealSpell&"#"&$g_hChkABRageSpell&"#"&$g_hChkABJumpSpell&"#"&$g_hChkABFreezeSpell&"#"&$g_hChkABPoisonSpell&"#"& _
						 $g_hChkABEarthquakeSpell&"#"&$g_hChkABHasteSpell&"#"&$g_hChkABSkeletonSpell&"#"&$g_hChkABCloneSpell
   $groupIMGAttackAB = $g_hPicABKingAttack&"#"&$g_hPicABQueenAttack&"#"&$g_hPicABWardenAttack&"#"&$g_hPicABDropCC&"#"&$g_hPicABLightSpell&"#"&$g_hPicABHealSpell&"#"& _
					   $g_hPicABRageSpell&"#"&$g_hPicABJumpSpell&"#"&$g_hPicABFreezeSpell&"#"&$g_hPicABPoisonSpell&"#"&$g_hPicABEarthquakeSpell&"#"&$g_hPicABHasteSpell
   $groupIMGAttackABSpell = $g_hPicABLightSpell&"#"&$g_hPicABHealSpell&"#"&$g_hPicABRageSpell&"#"&$g_hPicABJumpSpell&"#"&$g_hPicABFreezeSpell&"#"&$g_hPicABPoisonSpell&"#"& _
						    $g_hPicABEarthquakeSpell&"#"&$g_hPicABHasteSpell&"#"&$g_hPicABSkeletonSpell&"#"&$g_hPicABCloneSpell

   $groupAttackTS = $g_hGrpABAttack&"#"&$g_hLblAttackTHType&"#"&$g_hCmbAttackTHType&"#"&$g_hLblTSSelectTroop&"#"&$g_hCmbTSSelectTroop&"#"& _
				    $g_hLblTSSelectSpecialTroop&"#"&$g_hChkTSKingAttack&"#"&$g_hChkTSQueenAttack&"#"&$g_hChkTSWardenAttack&"#"&$g_hChkTSDropCC&"#"&$g_hChkTSLightSpell&"#"& _
				    $g_hChkTSHealSpell&"#"&$g_hChkTSRageSpell&"#"&$g_hChkTSJumpSpell&"#"&$g_hChkTSFreezeSpell&"#"&$g_hChkTSPoisonSpell&"#"&$g_hChkTSEarthquakeSpell&"#"& _
				    $g_hChkTSHasteSpell
   $groupAttackTSSpell = $g_hChkTSLightSpell&"#"&$g_hChkTSHealSpell&"#"&$g_hChkTSRageSpell&"#"&$g_hChkTSJumpSpell&"#"&$g_hChkTSFreezeSpell&"#"& _
						 $g_hChkTSPoisonSpell&"#"&$g_hChkTSEarthquakeSpell&"#"&$g_hChkTSHasteSpell
   $groupIMGAttackTS = $g_hPicTSKingAttack&"#"&$g_hPicTSQueenAttack&"#"&$g_hPicTSWardenAttack&"#"&$g_hPicTSDropCC&"#"&$g_hPicTSLightSpell&"#"& _
					   $g_hPicTSHealSpell&"#"&$g_hPicTSRageSpell&"#"&$g_hPicTSJumpSpell&"#"&$g_hPicTSFreezeSpell&"#"&$g_hPicTSPoisonSpell&"#"&$g_hPicTSEarthquakeSpell&"#"& _
					   $g_hPicTSHasteSpell
   $groupIMGAttackTSSpell = $g_hPicTSLightSpell&"#"&$g_hPicTSHealSpell&"#"&$g_hPicTSRageSpell&"#"&$g_hPicTSJumpSpell&"#"&$g_hPicTSFreezeSpell&"#"& _
						    $g_hPicTSPoisonSpell&"#"&$g_hPicTSEarthquakeSpell&"#"&$g_hPicTSHasteSpell


   ;End Battle
   $groupEndBattkeDB = $g_hGrpDBEndBattle&"#"&$g_hChkStopAtkDBNoLoot1&"#"&$g_hLblStopAtkDBNoLoot1a&"#"&$g_hTxtStopAtkDBNoLoot1&"#"&$g_hLblStopAtkDBNoLoot1b&"#"& _
					   $g_hChkStopAtkDBNoLoot2&"#"&$g_hChkStopAtkDBNoLoot2&"#"&$g_hLblStopAtkDBNoLoot2a&"#"&$g_hTxtStopAtkDBNoLoot2&"#"&$g_hLblStopAtkDBNoLoot2b&"#"& _
					   $g_hLblDBMinRerourcesAtk2&"#"&$g_hTxtDBMinGoldStopAtk2&"#"&$g_hPicDBMinGoldStopAtk2&"#"&$g_hTxtDBMinElixirStopAtk2&"#"&$g_hPicDBMinElixirStopAtk2&"#"& _
					   $g_hTxtDBMinDarkElixirStopAtk2&"#"&$g_hPicDBMinDarkElixirStopAtk2&"#"&$g_hChkDBEndNoResources&"#"&$g_hChkDBEndOneStar&"#"&$g_hChkDBEndTwoStars
   $groupEndBattkeAB = $g_hGrpABEndBattle&"#"&$g_hChkStopAtkABNoLoot1&"#"&$g_hLblABTimeStopAtka&"#"&$g_hTxtStopAtkABNoLoot1&"#"&$g_hLblABTimeStopAtk&"#"& _
					   $g_hChkStopAtkABNoLoot2&"#"&$g_hChkStopAtkABNoLoot2&"#"&$g_hLblABTimeStopAtk2a&"#"&$g_hTxtStopAtkABNoLoot2&"#"&$g_hLblABTimeStopAtk2&"#"& _
					   $g_hLblABMinRerourcesAtk2&"#"&$g_hTxtABMinGoldStopAtk2&"#"&$g_hPicABMinGoldStopAtk2&"#"&$g_hTxtABMinElixirStopAtk2&"#"&$g_hPicABMinElixirStopAtk2&"#"& _
					   $g_hTxtABMinDarkElixirStopAtk2&"#"&$g_hPicABMinDarkElixirStopAtk2&"#"&$g_hChkABEndNoResources&"#"&$g_hChkABEndOneStar&"#"&$g_hChkABEndTwoStars

   $groupKingSleeping = $g_hPicDBKingSleepWait&"#"&$g_hPicABKingSleepWait&"#"&$g_hPicChkKingSleepWait
   $groupQueenSleeping = $g_hPicDBQueenSleepWait&"#"&$g_hPicABQueenSleepWait&"#"&$g_hPicChkQueenSleepWait
   $groupWardenSleeping = $g_hPicDBWardenSleepWait&"#"&$g_hPicABWardenSleepWait&"#"&$g_hPicChkWardenSleepWait

   $groupCloseWhileTraining = $g_hChkCloseWithoutShield&"#"&$g_hChkCloseEmulator&"#"&$g_hPicCloseWaitTrain&"#"&$g_hChkRandomClose&"#"&$g_hPicCloseWaitStop&"#"& _
							  $g_hRdoCloseWaitExact&"#"&$g_hPicCloseWaitExact&"#"&$g_hRdoCloseWaitRandom&"#"&$g_hCmbCloseWaitRdmPercent&"#"&$g_hLblCloseWaitRdmPercent
   $grpTrainTroops = $g_ahTxtTrainArmyTroopCount[$eTroopBarbarian]&"#"&$g_ahTxtTrainArmyTroopCount[$eTroopArcher]&"#"&$g_ahTxtTrainArmyTroopCount[$eTroopGiant]&"#"& _
					 $g_ahTxtTrainArmyTroopCount[$eTroopGoblin]&"#"&$g_ahTxtTrainArmyTroopCount[$eTroopWallBreaker]&"#"&$g_ahTxtTrainArmyTroopCount[$eTroopBalloon]&"#"& _
					 $g_ahTxtTrainArmyTroopCount[$eTroopWizard]&"#"&$g_ahTxtTrainArmyTroopCount[$eTroopHealer]&"#"&$g_ahTxtTrainArmyTroopCount[$eTroopDragon]&"#"& _
					 $g_ahTxtTrainArmyTroopCount[$eTroopPekka]&"#"&$g_ahTxtTrainArmyTroopCount[$eTroopBabyDragon]&"#"&$g_ahTxtTrainArmyTroopCount[$eTroopMiner]&"#"& _
					 $g_ahTxtTrainArmyTroopCount[$eTroopMinion]&"#"&$g_ahTxtTrainArmyTroopCount[$eTroopHogRider]&"#"&$g_ahTxtTrainArmyTroopCount[$eTroopValkyrie]&"#"& _
					 $g_ahTxtTrainArmyTroopCount[$eTroopGolem]&"#"&$g_ahTxtTrainArmyTroopCount[$eTroopWitch]&"#"&$g_ahTxtTrainArmyTroopCount[$eTroopLavaHound]&"#"& _
					 $g_ahTxtTrainArmyTroopCount[$eTroopBowler]
   $grpCookSpell = $g_ahTxtTrainArmySpellCount[$eSpellLightning]&"#"&$g_ahTxtTrainArmySpellCount[$eSpellHeal]&"#"&$g_ahTxtTrainArmySpellCount[$eSpellRage]&"#"& _
				   $g_ahTxtTrainArmySpellCount[$eSpellJump]&"#"&$g_ahTxtTrainArmySpellCount[$eSpellFreeze]&"#"&$g_ahTxtTrainArmySpellCount[$eSpellClone]&"#"& _
				   $g_ahTxtTrainArmySpellCount[$eSpellPoison]&"#"&$g_ahTxtTrainArmySpellCount[$eSpellEarthquake]&"#"&$g_ahTxtTrainArmySpellCount[$eSpellHaste]&"#"& _
				   $g_ahTxtTrainArmySpellCount[$eSpellSkeleton]

   ;Spell
   $groupLightning = $g_ahPicTrainArmySpell[$eSpellLightning]&"#"&$g_ahTxtTrainArmySpellCount[$eSpellLightning]&"#"&$g_ahLblTrainArmySpellLevel[$eSpellLightning]
   $groupHeal = $g_ahPicTrainArmySpell[$eSpellHeal]&"#"&$g_ahTxtTrainArmySpellCount[$eSpellHeal]&"#"&$g_ahLblTrainArmySpellLevel[$eSpellHeal]
   $groupRage = $g_ahPicTrainArmySpell[$eSpellRage]&"#"&$g_ahTxtTrainArmySpellCount[$eSpellRage]&"#"&$g_ahLblTrainArmySpellLevel[$eSpellRage]
   $groupJumpSpell = $g_ahPicTrainArmySpell[$eSpellJump]&"#"&$g_ahTxtTrainArmySpellCount[$eSpellJump]&"#"&$g_ahLblTrainArmySpellLevel[$eSpellJump]
   $groupFreeze = $g_ahPicTrainArmySpell[$eSpellFreeze]&"#"&$g_ahTxtTrainArmySpellCount[$eSpellFreeze]&"#"&$g_ahLblTrainArmySpellLevel[$eSpellFreeze]
   $groupClone = $g_ahPicTrainArmySpell[$eSpellClone]&"#"&$g_ahTxtTrainArmySpellCount[$eSpellClone]&"#"&$g_ahLblTrainArmySpellLevel[$eSpellClone]
   ;Groups for If Level is '0'
   $groupIcnLightning = $g_ahPicTrainArmySpell[$eSpellLightning]&"#"&$g_ahLblTrainArmySpellLevel[$eSpellLightning]
   $groupIcnHeal = $g_ahPicTrainArmySpell[$eSpellHeal]&"#"&$g_ahLblTrainArmySpellLevel[$eSpellHeal]
   $groupIcnRage = $g_ahPicTrainArmySpell[$eSpellRage]&"#"&$g_ahLblTrainArmySpellLevel[$eSpellRage]
   $groupIcnJumpSpell = $g_ahPicTrainArmySpell[$eSpellJump]&"#"&$g_ahLblTrainArmySpellLevel[$eSpellJump]
   $groupIcnFreeze = $g_ahPicTrainArmySpell[$eSpellFreeze]&"#"&$g_ahLblTrainArmySpellLevel[$eSpellFreeze]
   $groupIcnClone = $g_ahPicTrainArmySpell[$eSpellClone]&"#"&$g_ahLblTrainArmySpellLevel[$eSpellClone]

   ;Dark Spell
   $groupPoison = $g_ahPicTrainArmySpell[$eSpellPoison]&"#"&$g_ahTxtTrainArmySpellCount[$eSpellPoison]&"#"&$g_ahLblTrainArmySpellLevel[$eSpellPoison]
   $groupEarthquake = $g_ahPicTrainArmySpell[$eSpellEarthquake]&"#"&$g_ahTxtTrainArmySpellCount[$eSpellEarthquake]&"#"&$g_ahLblTrainArmySpellLevel[$eSpellEarthquake]
   $groupHaste = $g_ahPicTrainArmySpell[$eSpellHaste]&"#"&$g_ahTxtTrainArmySpellCount[$eSpellHaste]&"#"&$g_ahLblTrainArmySpellLevel[$eSpellHaste]
   $groupSkeleton = $g_ahPicTrainArmySpell[$eSpellSkeleton]&"#"&$g_ahTxtTrainArmySpellCount[$eSpellSkeleton]&"#"&$g_ahLblTrainArmySpellLevel[$eSpellSkeleton]
   ;Groups for If Level is '0'
   $groupIcnPoison = $g_ahPicTrainArmySpell[$eSpellPoison]&"#"&$g_ahLblTrainArmySpellLevel[$eSpellPoison]
   $groupIcnEarthquake = $g_ahPicTrainArmySpell[$eSpellEarthquake]&"#"&$g_ahLblTrainArmySpellLevel[$eSpellEarthquake]
   $groupIcnHaste = $g_ahPicTrainArmySpell[$eSpellHaste]&"#"&$g_ahLblTrainArmySpellLevel[$eSpellHaste]
   $groupIcnSkeleton = $g_ahPicTrainArmySpell[$eSpellSkeleton]&"#"&$g_ahLblTrainArmySpellLevel[$eSpellSkeleton]

   $groupListSpells = $groupLightning&"#"&$groupHeal&"#"&$groupRage&"#"&$groupJumpSpell&"#"&$groupFreeze&"#"&$groupClone&"#"&$groupPoison&"#"& _
					  $groupEarthquake&"#"&$groupHaste&"#"&$groupSkeleton

   ;TH Level
   $groupListTHLevels = $g_ahPicTHLevels[4]&"#"&$g_ahPicTHLevels[5]&"#"&$g_ahPicTHLevels[6]&"#"&$g_ahPicTHLevels[7]&"#"&$g_ahPicTHLevels[8]&"#"& _
						$g_ahPicTHLevels[9]&"#"&$g_ahPicTHLevels[10]&"#"&$g_ahPicTHLevels[11]

   ;League
   $groupLeague = $g_ahPicLeague[$eLeagueUnranked]&"#"&$g_ahPicLeague[$eLeagueBronze]&"#"&$g_ahPicLeague[$eLeagueSilver]&"#"&$g_ahPicLeague[$eLeagueGold] &"#"& _
				  $g_ahPicLeague[$eLeagueCrystal]&"#"&$g_ahPicLeague[$eLeagueMaster]&"#"&$g_ahPicLeague[$eLeagueChampion]&"#"&$g_ahPicLeague[$eLeagueTitan]&"#"& _
				  $g_ahPicLeague[$eLeagueLegend]

   ; Groups of controls
   Dim $aTabControlsVillage = [$g_hGUI_VILLAGE_TAB, $g_hGUI_VILLAGE_TAB_ITEM1, $g_hGUI_VILLAGE_TAB_ITEM2, $g_hGUI_VILLAGE_TAB_ITEM3, $g_hGUI_VILLAGE_TAB_ITEM4, $g_hGUI_VILLAGE_TAB_ITEM5]
   Dim $aTabControlsDonate = [$g_hGUI_DONATE_TAB, $g_hGUI_DONATE_TAB_ITEM1, $g_hGUI_DONATE_TAB_ITEM2, $g_hGUI_DONATE_TAB_ITEM3]
   Dim $aTabControlsUpgrade = [$g_hGUI_UPGRADE_TAB, $g_hGUI_UPGRADE_TAB_ITEM1, $g_hGUI_UPGRADE_TAB_ITEM2, $g_hGUI_UPGRADE_TAB_ITEM3, $g_hGUI_UPGRADE_TAB_ITEM4, $g_hGUI_UPGRADE_TAB_ITEM5]
   Dim $aTabControlsNotify = [$g_hGUI_NOTIFY_TAB, $g_hGUI_NOTIFY_TAB_ITEM2, $g_hGUI_NOTIFY_TAB_ITEM6]

   Dim $aTabControlsAttack = [$g_hGUI_ATTACK_TAB, $g_hGUI_ATTACK_TAB_ITEM1, $g_hGUI_ATTACK_TAB_ITEM2, $g_hGUI_ATTACK_TAB_ITEM3]

   Dim $aTabControlsArmy = [$g_hGUI_TRAINARMY_TAB, $g_hGUI_TRAINARMY_TAB_ITEM1, $g_hGUI_TRAINARMY_TAB_ITEM2, $g_hGUI_TRAINARMY_TAB_ITEM3, $g_hGUI_TRAINARMY_TAB_ITEM4]
   Dim $aTabControlsSearch = [$g_hGUI_SEARCH_TAB, $g_hGUI_SEARCH_TAB_ITEM1, $g_hGUI_SEARCH_TAB_ITEM2, $g_hGUI_SEARCH_TAB_ITEM3, $g_hGUI_SEARCH_TAB_ITEM4, $g_hGUI_SEARCH_TAB_ITEM5]
   Dim $aTabControlsDeadbase = [$g_hGUI_DEADBASE_TAB, $g_hGUI_DEADBASE_TAB_ITEM1, $g_hGUI_DEADBASE_TAB_ITEM2, $g_hGUI_DEADBASE_TAB_ITEM3, $g_hGUI_DEADBASE_TAB_ITEM4]
   Dim $aTabControlsActivebase = [$g_hGUI_ACTIVEBASE_TAB, $g_hGUI_ACTIVEBASE_TAB_ITEM1, $g_hGUI_ACTIVEBASE_TAB_ITEM2, $g_hGUI_ACTIVEBASE_TAB_ITEM3]
   Dim $aTabControlsTHSnipe = [$g_hGUI_THSNIPE_TAB, $g_hGUI_THSNIPE_TAB_ITEM1, $g_hGUI_THSNIPE_TAB_ITEM2, $g_hGUI_THSNIPE_TAB_ITEM3]
   Dim $aTabControlsAttackOptions = [$g_hGUI_ATTACKOPTION_TAB, $g_hGUI_ATTACKOPTION_TAB_ITEM1, $g_hGUI_ATTACKOPTION_TAB_ITEM2, $g_hGUI_ATTACKOPTION_TAB_ITEM3,  $g_hGUI_ATTACKOPTION_TAB_ITEM4,  $g_hGUI_ATTACKOPTION_TAB_ITEM5]
   Dim $aTabControlsStrategies = [$g_hGUI_STRATEGIES_TAB, $g_hGUI_STRATEGIES_TAB_ITEM1, $g_hGUI_STRATEGIES_TAB_ITEM2]

   Dim $aTabControlsBot = [$g_hGUI_BOT_TAB, $g_hGUI_BOT_TAB_ITEM1, $g_hGUI_BOT_TAB_ITEM2, $g_hGUI_BOT_TAB_ITEM3, $g_hGUI_BOT_TAB_ITEM4]
   Dim $aTabControlsStats = [$g_hGUI_STATS_TAB, $g_hGUI_STATS_TAB_ITEM1, $g_hGUI_STATS_TAB_ITEM2, $g_hGUI_STATS_TAB_ITEM3, $g_hGUI_STATS_TAB_ITEM4]
   Dim $aTabControlsMOD = [$g_hGUI_MOD_TAB, $g_hGUI_MOD_TAB_ITEM1, $g_hGUI_MOD_TAB_ITEM2, $g_hGUI_MOD_TAB_ITEM3, $g_hGUI_MOD_TAB_ITEM4, $g_hGUI_MOD_TAB_ITEM5]
   Dim $aTabControlsMODSwitch = [$g_hGUI_MOD_SWITCH_TAB, $g_hGUI_MOD_SWITCH_TAB_ITEM1, $g_hGUI_MOD_SWITCH_TAB_ITEM2]

	; always enabled / unchanged controls during enabling/disabling all GUI controls function
	$oAlwaysEnabledControls($g_hChkUpdatingWhenMinimized) = 1
	$oAlwaysEnabledControls($g_hChkHideWhenMinimized) = 1
	$oAlwaysEnabledControls($g_hChkDebugClick) = 1
	$oAlwaysEnabledControls($g_hChkDebugSetlog) = 1
	$oAlwaysEnabledControls($g_hChkDebugDisableZoomout) = 1
	$oAlwaysEnabledControls($g_hChkDebugDisableVillageCentering) = 1
	$oAlwaysEnabledControls($g_hChkDebugDeadbaseImage) = 1
	$oAlwaysEnabledControls($g_hChkDebugOCR) = 1
	$oAlwaysEnabledControls($g_hChkDebugImageSave) = 1
	$oAlwaysEnabledControls($g_hChkdebugBuildingPos) = 1
	$oAlwaysEnabledControls($g_hChkdebugTrain) = 1
	$oAlwaysEnabledControls($g_hChkDebugOCRDonate) = 1
	$oAlwaysEnabledControls($g_hBtnTestTrain) = 1
	$oAlwaysEnabledControls($g_hBtnTestDonateCC) = 1
	$oAlwaysEnabledControls($g_hBtnTestRequestCC) = 1
	$oAlwaysEnabledControls($g_hBtnTestAttackBar) = 1
	$oAlwaysEnabledControls($g_hBtnTestClickDrag) = 1
	$oAlwaysEnabledControls($g_hBtnTestImage) = 1
	$oAlwaysEnabledControls($g_hBtnTestVillageSize) = 1
	$oAlwaysEnabledControls($g_hBtnTestDeadBase) = 1
	$oAlwaysEnabledControls($g_hBtnTestDeadBaseFolder) = 1
	$oAlwaysEnabledControls($g_hBtnTestTHimgloc) = 1
	$oAlwaysEnabledControls($g_hBtnTestimglocTroopBar) = 1
	$oAlwaysEnabledControls($g_hBtnTestQuickTrainsimgloc) = 1
	$oAlwaysEnabledControls($g_hChkdebugAttackCSV) = 1
	$oAlwaysEnabledControls($g_hChkMakeIMGCSV) = 1
	$oAlwaysEnabledControls($g_hBtnTestAttackCSV) = 1
	$oAlwaysEnabledControls($g_hBtnTestFindButton) = 1
	$oAlwaysEnabledControls($g_hTxtTestFindButton) = 1
	$oAlwaysEnabledControls($g_hBtnTestCleanYard) = 1
	$oAlwaysEnabledControls($g_hLblSmartLightningUsed) = 1
	$oAlwaysEnabledControls($g_hLblSmartZap) = 1
	$oAlwaysEnabledControls($g_hLblSmartEarthQuakeUsed) = 1
	$oAlwaysEnabledControls($g_hBtnTestConfigSave) = 1
	$oAlwaysEnabledControls($g_hBtnTestConfigRead) = 1
	$oAlwaysEnabledControls($g_hBtnTestConfigApply) = 1

	$oAlwaysEnabledControls($g_hBtnMakeScreenshot) = 1
	$oAlwaysEnabledControls($g_hDivider) = 1

	$oAlwaysEnabledControls($g_hTabMain) = 1
	$oAlwaysEnabledControls($g_hTabLog) = 1
	$oAlwaysEnabledControls($g_hTabVillage) = 1
	$oAlwaysEnabledControls($g_hTabAttack) = 1
	$oAlwaysEnabledControls($g_hTabBot) = 1
	$oAlwaysEnabledControls($g_hTabMOD) = 1
	$oAlwaysEnabledControls($g_hTabAbout) = 1

	For $i in $aTabControlsVillage
		$oAlwaysEnabledControls($i) = 1
	Next
	For $i in $aTabControlsDonate
		$oAlwaysEnabledControls($i) = 1
	Next
	For $i in $aTabControlsUpgrade
		$oAlwaysEnabledControls($i) = 1
	Next
	For $i in $aTabControlsNotify
		$oAlwaysEnabledControls($i) = 1
	Next
	For $i in $aTabControlsAttack
		$oAlwaysEnabledControls($i) = 1
	Next
	For $i in $aTabControlsArmy
		$oAlwaysEnabledControls($i) = 1
	Next
	For $i in $aTabControlsSearch
		$oAlwaysEnabledControls($i) = 1
	Next
	For $i in $aTabControlsDeadbase
		$oAlwaysEnabledControls($i) = 1
	Next
	For $i in $aTabControlsActivebase
		$oAlwaysEnabledControls($i) = 1
	Next
	For $i in $aTabControlsTHSnipe
		$oAlwaysEnabledControls($i) = 1
	Next
	For $i in $aTabControlsAttackOptions
		$oAlwaysEnabledControls($i) = 1
	Next
	For $i in $aTabControlsStrategies
		$oAlwaysEnabledControls($i) = 1
	Next
	For $i in $aTabControlsBot
		$oAlwaysEnabledControls($i) = 1
	Next
	For $i in $aTabControlsStats
		$oAlwaysEnabledControls($i) = 1
	Next
	For $i in $aTabControlsMOD
		$oAlwaysEnabledControls($i) = 1
	Next
	For $i in $aTabControlsMODSwitch
		$oAlwaysEnabledControls($i) = 1
	Next

EndFunc