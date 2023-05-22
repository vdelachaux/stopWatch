var $e : Object
$e:=FORM Event:C1606

Case of 
		//______________________________________________________
	: ($e.code=On Load:K2:1)
		
		OBJECT SET VALUE:C1742("Clock"; 0)
		
		OBJECT SET ENABLED:C1123(*; "stop"; False:C215)
		OBJECT SET ENABLED:C1123(*; "reset"; False:C215)
		
		//______________________________________________________
	: ($e.code=On Timer:K2:25)
		
		OBJECT SET ENABLED:C1123(*; "reset"; True:C214)
		OBJECT SET ENABLED:C1123(*; "reset"; True:C214)
		
		OBJECT SET VALUE:C1742("Clock"; OBJECT Get value:C1743("Clock")+60)
		
		//______________________________________________________
End case 