__CONFIG _CP_OFF & _WDT_OFF & _PWRTE_ON & _XT_OSC
LIST P=16F84A

INCLUDE <P16F84A.INC>


	org 00h

	bsf STATUS, RP0  ; RP0=1, accedemos al banco 1
	movlw b'00011111'
	movwf TRISA ;configuramos 5 lineas del puerto A como entradas
	clrf TRISB ;el puerto B como salida
	bcf STATUS, RP0 ; RP0=0, volvemos al banco 0

Inicio
	movf PORTA, 0 ; mueve el contenido del puerto A a w
	movwf PORTB ; mueve lo de w al puerto B
	goto Inicio
	
	
end
