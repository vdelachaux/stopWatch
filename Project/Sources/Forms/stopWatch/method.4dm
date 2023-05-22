var $e : Object
$e:=FORM Event:C1606

Case of 
		
		//______________________________________________________
	: ($e.code=On Load:K2:1)
		
		Form:C1466.run:=False:C215
		Form:C1466.watch:=0
		OBJECT SET ENABLED:C1123(*; "reset"; False:C215)
		
		//______________________________________________________
	: ($e.code=On Clicked:K2:4)
		
		Case of 
				
				//……………………………………………………………………………
			: ($e.objectName="start")
				
				If (Form:C1466.run)
					
					Form:C1466.run:=False:C215
					OBJECT SET TITLE:C194(*; $e.objectName; "Start")
					OBJECT SET ENABLED:C1123(*; "reset"; True:C214)
					SET TIMER:C645(0)
					
				Else 
					
					Form:C1466.run:=True:C214
					OBJECT SET TITLE:C194(*; $e.objectName; "Stop")
					OBJECT SET ENABLED:C1123(*; "reset"; False:C215)
					SET TIMER:C645(60)
					
				End if 
				
				//……………………………………………………………………………
			: ($e.objectName="reset")
				
				Form:C1466.watch:=0
				OBJECT SET ENABLED:C1123(*; "reset"; False:C215)
				
				//……………………………………………………………………………
		End case 
		
		//______________________________________________________
	: ($e.code=On Timer:K2:25)
		
		Form:C1466.watch+=1
		
		//______________________________________________________
End case 

OBJECT SET VALUE:C1742("watch"; Form:C1466.watch)