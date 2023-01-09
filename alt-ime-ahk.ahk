; 右 Alt キー、左 Ctrl キーの空打ちで IME の OFF/ON を切り替える
;
; 右 Alt キーの空打ちで IME を「かな」に切り替え
; 左 Ctrl キーの空打ちで IME を「英数」に切り替え
; Alt, Ctrl キーを押している間に他のキーを打つと通常の Alt キーとして動作

#Include IME.ahk

; 左 Ctlr 空打ちで IME を OFF
~LControl up::
	If (A_Priorkey == "LControl")
	{
		IME_SET(0)
		return
	}
	Return

; 右 Alt 空打ちで IME を ON
RAlt up::
	If (A_Priorkey == "RAlt")
	{
		IME_SET(1)
		return
	}
	Return
