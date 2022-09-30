; 左 Ctrl の動作を Mac 風にする AutoHotkey スクリプト 
;
; AutoHotkey: v1.1.22.07
; Author:     karakaram   http://www.karakaram.com/hhkb-pro2-windows-customize

#InstallKeybdHook
#UseHook
+#h::
	Send,{Left}
	return
+#j::
	Send,{Down}
	return
+#k::
	Send,{Up}
	return
+#l::
	Send,{Right}
	return

; 左 Ctrl の動作を Mac 風に
<^<!a::
	Send,{Home}
	return

+<^<!a::
	Send,+{Home}
	return

<^<!e::
	Send,{End}
	return

+<^<!e::
	Send,+{End}
	return

<^<!f::
	Send,{Right}
	return

+<^<!f::
	Send,+{Right}
	return

<^<!b::
	Send,{Left}
	return

+<^<!b::
	Send,+{Left}
	return

<^<!p::
	Send,{Up}
	return

+<^<!p::
	Send,+{Up}
	return

<^<!n::
	Send,{Down}
	return

+<^<!n::
	Send,+{Down}
	return

<^<!o::
	Send,{End}{Enter}
	return

<^<!h::
	Send,{Backspace}
	return

<^<!d::
	Send,{Right}{Backspace}
	return

<^<!k::
	Send,+{End}{Backspace}
	return
