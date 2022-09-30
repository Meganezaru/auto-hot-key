; 左右 Alt キーの空打ちで IME の OFF/ON を切り替える
;
; 右 Alt キーの空打ちで IME を「かな」に切り替え
; 左 Alt キーの空打ちで IME を「英数」に切り替え
; Alt キーを押している間に他のキーを打つと通常の Alt キーとして動作
;
; Author:     karakaram   http://www.karakaram.com/alt-ime-on-off

#Include IME.ahk

; Razer Synapseなど、キーカスタマイズ系のツールを併用しているときのエラー対策
#MaxHotkeysPerInterval 350

; 上部メニューがアクティブになるのを抑制
*~LAlt::Send {Blind}{vk07}
*~RAlt::Send {Blind}{vk07}

; 左 Alt 空打ちで IME を OFF、左 Alt 2回押しで、無変換してIME OFF
LAlt::
	KeyWait,LAlt,T0.5
	If (ErrorLevel)
	{
		Send,{LAlt Down}
		KeyWait,LAlt
		Send,{LAlt Up}
		Return
	}
	KeyWait,LAlt,D T0.2
	If (ErrorLevel)
	{
		KeyWait,LAlt
        IME_SET(0)
		Return
	}
	KeyWait,LAlt
    if (IME_GetConverting() > -1)
    {
		;ToDo: 本来は、IME ONを確認すべきだが、Windows10では確認関数が動作しないため、簡易的に一律F10キー押下とIME OFFを行う
        Send,{F10}
		IME_SET(0)
    }
	Return

; 右 Alt 空打ちで IME を ON
RAlt::
	KeyWait,RAlt,T0.5
	If (ErrorLevel)
	{
		Send,{RAlt Down}
		KeyWait,RAlt
		Send,{RAlt Up}
		Return
	}
	KeyWait,RAlt,D T0.2
	If (ErrorLevel)
	{
		KeyWait,RAlt
        IME_SET(1)
		Return
	}
	KeyWait,RAlt
	Return
