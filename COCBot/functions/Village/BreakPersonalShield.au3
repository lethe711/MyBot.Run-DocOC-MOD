
; #FUNCTION# ====================================================================================================================
; Name ..........: BreakPersonalShield
; Description ...: Function to break shield and personal guard
; Syntax ........: BreakPersonalShield()
; Parameters ....: none
; Return values .: none
; ...............: Sets @error if buttons not found properly and sets @extended with string error message
; Author ........: MonkeyHunter (2016-01)
; Modified ......:
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015-2017
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......:
; Link ..........: https://github.com/MyBotRun/MyBot/wiki
; Example .......: No
; ===============================================================================================================================

Func BreakPersonalShield()

	If _CheckPixel($aRemoveShldButton, $g_bCapturePixel) Then ; check for old version CoC app, warn and return if not udpated.
		Setlog("Oops, Need to have latest CoC installed!", $COLOR_ERROR)
		Setlog("New Personal Guard info window not avialable!", $COLOR_ERROR)
		SetError(1)
		Return
	EndIf

	If $g_iDebugSetlog = 1 Then Setlog("Checking if Shield available", $COLOR_INFO)
	If $g_iDebugSetlog = 1 Then Setlog("Have shield pixel color: " & _GetPixelColor($aHaveShield, $g_bCapturePixel) & " :" & _CheckPixel($aHaveShield, $g_bCapturePixel), $COLOR_DEBUG)
	If _CheckPixel($aHaveShield, $g_bCapturePixel) Then ; check for shield
		If IsMainPage() Then ; check for main page
			PureClickP($aShieldInfoButton)
			If _Sleep($iPersonalShield1) Then ; wait for break shield window
				SetError(2) ; set error conditions to return to runbot if stop/pause
				Return
			EndIf
			Local $result = ClickRemove("Shield") ; click remove shield
			If ($result = False) Or @error Then ; check for errors
				SetError(3, "shield remove button not found", "")
				Return
			EndIf
			$result = ClickOkay("Shield") ; Confirm remove shield
			If ($result = False) Or @error Then
				SetError(4, "shield Okay button not found", "")
				Return
			EndIf
			Setlog("Shield removed", $COLOR_SUCCESS)
		EndIf
	Else
		If $g_iDebugSetlog = 1 Then Setlog("No shield available", $COLOR_SUCCESS)
	EndIf

	If _Sleep($iPersonalShield1) Then ; wait for break shield window
		SetError(2) ; set error conditions to return to runbot if stop/pause
		Return
	EndIf

	If $g_iDebugSetlog = 1 Then Setlog("Checking if Personal Guard available", $COLOR_INFO)
	If $g_iDebugSetlog = 1 Then Setlog("Have guard pixel color: " & _GetPixelColor($aHavePerGuard, $g_bCapturePixel) & " :" & _CheckPixel($aHavePerGuard, $g_bCapturePixel), $COLOR_DEBUG)
	If _CheckPixel($aHavePerGuard, $g_bCapturePixel) Then ; check for personal guard timer
		If IsMainPage() Then
			PureClickP($aShieldInfoButton)
			If _Sleep($iPersonalShield1) Then ; wait for break guard window
				SetError(2) ; set error conditions to return to runbot if stop
				Return
			EndIf
			Local $result = ClickRemove("Guard") ; remove shield
			If ($result = False) Or @error Then ; check for errors
				SetError(5, "guard remove button not found")
				Return
			EndIf
			$result = ClickOkay("Guard") ; Confirm remove shield
			If ($result = False) Or @error Then
				SetError(6, "guard Okay button not found")
				Return
			EndIf
			Setlog("Guard removed", $COLOR_SUCCESS)
		EndIf
	Else
		If $g_iDebugSetlog = 1 Then Setlog("No guard available", $COLOR_SUCCESS)
	EndIf

EndFunc   ;==>BreakPersonalShield
