; 右 Alt キー、左 Ctrl キーの空打ちで IME の OFF/ON を切り替える
;
; 右 Alt キーの空打ちで IME を「かな」に切り替え
; 左 Ctrl キーの空打ちで IME を「英数」に切り替え
; Alt, Ctrl キーを押している間に他のキーを打つと通常の Alt キーとして動作

#Include IME.ahk

; 左 Ctlr 空打ちで IME を OFF
LCtrl::
	KeyWait,LCtrl,T0.3
	If (ErrorLevel == 0)
	{
		IME_SET(0)
		return
	}
	KeyWait,LCtrl
	Return

; 右 Alt 空打ちで IME を ON
RAlt::
	KeyWait,RAlt,T0.2
	If (ErrorLevel == 0)
	{
		IME_SET(1)
		return
	}
	KeyWait,RAlt
	Return
