
Global w.a, x.a, resultat.a, i.a, ReponseDonne.s, Min.a

min = 2

Declare TableGo()

Procedure Gadget()
  StringGadget(#StrName,10,10,100,30,"")
  ButtonGadget(#BtnValName,120,10,50,30,"Valider")
  TextGadget(#TxtName,10,50,100,30,"Nom",#PB_Text_Center); | #PB_Text_Border)
  TextGadget(#TxtTable,180,10,100,30,"",#PB_Text_Center | #PB_Text_Border)
  StringGadget(#StrTable,290,10,100,30,"")
  TextGadget(#TxtReponsse,290,50,100,30,"Réponse",#PB_Text_Center)
  ButtonGadget(#BtnValTable,400,10,50,30,"Valider")
  TextGadget(#TxtTableExplication,180,50,100,30,"La table demandée")
EndProcedure

Procedure ChoisieTable()
  w = Random(12,Min)
  x = Random(12,Min)
  resultat = x*w
EndProcedure

Procedure Go()
  Name.s
  Name =  GetGadgetText(#StrName)
  SetGadgetText(#TxtName,Name)
  TableGo()
EndProcedure

Procedure TableGo()
  If i = 15
    Select MessageRequester("Fin","Tu as fait 15 multiplications."+Chr(10)+"Veux-tu continuer ?",#PB_MessageRequester_YesNo )
      Case #PB_MessageRequester_Yes : i = 0
      Case #PB_MessageRequester_No : End
    EndSelect
  Else
    ChoisieTable()
    SetGadgetText(#TxtTable,Str(w)+" X "+Str(x))
    ;Debug w
    ;Debug x
    ;Debug resultat
    i = i+1
  EndIf
EndProcedure

Procedure Verification()
  ReponseDonne = GetGadgetText(#StrTable)
  If Val(ReponseDonne) = resultat
    MessageRequester("Oui","C'est juste !")
  Else
    MessageRequester("Non","C'est faux."+Chr(10)+"La bonne réponse est : "+resultat)
  EndIf
  TableGo()
EndProcedure






; IDE Options = PureBasic 5.70 LTS (Windows - x86)
; CursorPosition = 3
; Folding = q
; EnableXP