;Commencer le 25/11/2020 à 13:35:07

IncludeFile "Enumeration.pb"
IncludeFile "Procedure.pb"

If OpenWindow(#Main,20,20,500,70,"Multiplication (Sans temps)")
  gadget()
Else
  MessageRequester("Erreur","Erreur de chargement de la page."+Chr(10)+"Merci de redémarer")
EndIf


Repeat
  Select WaitWindowEvent()
    Case  #PB_Event_CloseWindow : End
    Case #PB_Event_Gadget
      Select EventGadget()
        Case #BtnValName : Go()
        Case #BtnValTable : Verification()
      EndSelect
  EndSelect
ForEver

; IDE Options = PureBasic 5.70 LTS (Windows - x86)
; CursorPosition = 19
; EnableXP