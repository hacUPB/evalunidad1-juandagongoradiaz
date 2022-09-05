// NOMBRE: Juan David Góngora Díaz
// ID: 000243384
// CORREO: juan.gongorad@upb.edu.co


(INICIO)
		@KBD
		D=M
		@84
		D=D-A
		@VERTICAL
		D;JEQ

		@KBD
		D=M
		@67
		D=D-A
		@VACIAR
		D;JEQ

		@INICIO
		0;JMP



(VERTICAL)
		@16400 
		D=A 
		@coord
		M=D
		@256 
		D=A
		@cont
		M=D
		@32
		D=A
		@salto
		M=D
		@256
		D=A
		@color
		M=D         

		@coord
		D=M
		@pscreen
		M=D
		@PINTAR
		0;JMP

(HORIZONTAL)

		@20480
		D=A
		@coord       
		M=D
		@32
		D=A
		@cont2
		M=D
		@1
		D=A
		@salto2
		M=D
		@color2
		M=-1
		
		@coord         
		D=M
		@pscreen
		M=D
		@LIMPIAR
		0;JMP

(PINTAR)
		@cont
		D=M
		@HORIZONTAL
		D;JEQ

		@color
		D=M
		@pscreen
		A=M
		M=D

		@cont
		M=M-1

		@salto
		D=M

		@pscreen
		M=M+D

		@PINTAR
		0;JMP

(VACIAR)
		@16384
		D=A
		@coord        
		M=D
		@8192
		D=A
		@cont2
		M=D
		@1
		D=A
		@salto2
		M=D
		@color2
		M=0
		@coord         
		D=M
		@pscreen
		M=D
		@LIMPIAR
		0;JMP

(LIMPIAR)
		@cont2
		D=M
		@END
		D;JEQ

		@color2
		D=M
		@pscreen
		A=M
		M=D

		@cont2
		M=M-1

		@salto2
		D=M

		@pscreen
		M=M+D

		@LIMPIAR
		0;JMP



(END)
		@INICIO
		0;JMP