#Requires AutoHotkey v2.0

#HotIf !WinActive( "ahk_exe code.exe" )

$`:: {
	dhw := DetectHiddenWindows( false )

	list := WinGetList( "ahk_exe code.exe" )

	if WinActive( "ahk_exe code.exe" ) {
		Send "{`}"
		return
	}

	for i in list {
		if is_window_here(i) {
			if WinGetMinMax(i) = -1
				WinRestore(i)
			WinActivate(i)
			DetectHiddenWindows( dhw )
			return
		}
	}

	DetectHiddenWindows( dhw )

	Run( "code", "", "Hide" )
}

#HotIf

is_window_here( i ) {
	static CLSID_VirtualDesktopManager := "{AA509086-5CA9-4C25-8F95-589D3C07B48A}"
	static IID_IVirtualDesktopManager  := "{A5CD92FF-29BE-454C-8D04-D82879FB3F1B}"

	vdm := ComObject( CLSID_VirtualDesktopManager, IID_IVirtualDesktopManager )
	here := 0
	ComCall( 3, vdm, "Ptr", i, "Int*", &here )

	return here != 0
}
