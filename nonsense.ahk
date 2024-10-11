global word := [
    ["attractive","agreeable","angry","big","bald","ambitious","bewildered","colossal","beautiful","fat","skinny","silly","small","short","chubby"], ;adjective 1
    ["people","history","way","art","world","information","map","family","health","computer","phone","knowledge","friend","land","approval"], ;noun 2
    ["accept","accuse","achieve","blow","communicate","exist","go","imagine","generate","burn","destroy","drinks","eat","love","behave"], ;verb 3
    ["fatally","accidentally","anxiously","hungrily","often","unnaturally","silently","soon","painfully","too","greedily","hard","rapidly","quickly","poorly"], ;adverb 4
    ["me","us","we","he","mine","myself","I","my","your","our","everyone","no one","somewhat","nobody","such"] ;pronouns 5
]

!q:: {
    Sleep 100
    rng1 := Random(1,5)
    rng2 := Random(1,15)
    rng3 := Random(1,2)
    count := 0
	count2 := 0
	count3 := Random(50, 100)
	roblox := 0
	fast := 0
	all := ""
	ToolTip("NONSENSE!")
    while !GetKeyState("q","P") {
		if GetKeyState("r","P") {
			roblox := 1
			ToolTip("ROBLOX NONSENSE CHATTER!")
		} else if GetKeyState("s","P") {
			roblox := 0
			fast := 1
			ToolTip("ALOT OF TEXT NONSENSE TYPER!")
		}
		if(fast != 1) {
        Sleep Random(100,200)
		if(roblox = 1) {
			Sleep 250
		}
		}
        rng3 := Random(1,2)
        rng2 := Random(1,15)
        switch rng1 {
            case 1:
                if(rng3 = 2) {
                    rng1 := 2
                } else if(rng3 = 1) {
                    rng1 := 5
                } else {
                    rng1 := 4
                }
            case 2:
                rng1 := 3
            case 3:
                if(rng3 = 2) {
                    rng1 := 4
                } else {
                    rng1 := 2
                }
            case 4:
                if(rng3 = 2) {
                    rng1 := 5
                } else if(rng3 = 1) {
                    rng1 := 2
                } else {
                    rng1 := 1
                }
            case 5:
                if(rng3 = 2) {
                    rng1 := 2
                } else if(rng3 = 1) {
                    rng1 := 1
                } else {
                    rng1 := 3
                }
        }
		if(fast != 1) {
        SendText(word[rng1][rng2] " ")
		} else if(count >= count3 && Random(1,5) = 1) {
			roblox := 0
			SendText(all)
			all := ""
			count := 0
			Sleep 500
			Send("{Enter}")
			count3 := Random(50, 100)
		} else {
			roblox := 0
			count2++
			all := all " " word[rng1][rng2]
			if(count2 >= 10) {
				Sleep 500
				SendText(all)
				all := ""
				count2 := 0
			}
		}
        count++
        if(((Random(1,15) = 1 && count >= 10) || (count >= 50 || (roblox = 1 && count >= 10)) || (roblox = 1 && Random(1,5) = 1 && count >= 3)) && fast != 1) { 
			if(roblox = 1) {
				Sleep 250
			}
            Send("{Enter}")
            count := 0
			if(roblox = 1) {
				Sleep 500
				Send("/")
			}
        }
    }
	ToolTip()
}

tutorial() {
	MsgBox("NONSENSE MACRO TUTORIAL!`n`nPRESS CONTROL T TO VIEW TUTORIAL!`n`nPRESS ALT Q TO START NONSENSE!`n`nWHILE IN NONSENSE U CAN HOLD R TO MAKE IT WORK IN ROBLOX!`n`nIF YOU HOLD S WHILE IN NONSENSE IT WILL TYPE ALOT OF NONSENSE!`n`nHOLD Q TO EXIT NONSENSE!`n`nPRESS CONTROL E TO EXIT THIS MACRO!")
}

^e:: {
	MsgBox("EXITED NONSENSE MACRO!")
	ExitApp
}

^t:: { ;tutorial 
	tutorial()
}
tutorial()