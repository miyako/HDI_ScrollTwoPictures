
$event:=Form event code:C388

Case of 
		
	: (Form event code:C388=On Scroll:K2:57)
		OBJECT GET SCROLL POSITION:C1114(*; "Pict1"; $vPos; $hPos)
		OBJECT SET SCROLL POSITION:C906(*; "Pict2"; $vPos; $hPos; *)
		
End case 

