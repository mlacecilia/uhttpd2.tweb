#include "lib/tweb/tweb.ch"

function main()

    LOCAL o, oWeb
	
	DEFINE WEB oWeb TITLE 'Test Get Btn' 
	
	//	We need to specify the relative root path
	//	The reason is that being an index directory ( "\examples" ) and executing html/prg directly, 
	//	the system needs to know where the root path is.
	
		oWeb:cRootRelative = '../'		
		
	//	--------------------------------------------------------------------------------------------	
	
		DEFINE FORM o OF oWeb 
			o:lDessign 	:= .T.
			
		INIT FORM o  		
			
			ROWGROUP o 			
				GET VALUE '123' BUTTON 'Search' ACTION "alert('Search')" OF o
			ENDROW o		
			
		ENDFORM o	
	
	INIT WEB oWeb RETURN
	
retu nil