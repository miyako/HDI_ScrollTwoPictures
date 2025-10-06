
Case of 
	: (Form event code:C388=On Load:K2:1)
		
		C_PICTURE:C286(vPict1)
		C_PICTURE:C286(vPict2)
		
		$file1:=Get 4D folder:C485(Current resources folder:K5:16)+"Sample_1.jpg"
		$file2:=Get 4D folder:C485(Current resources folder:K5:16)+"Sample_2.jpg"
		
		READ PICTURE FILE:C678($file1; vPict1)
		READ PICTURE FILE:C678($file2; vPict2)
		
		
End case 
