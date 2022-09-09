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
		@VACIO
		D;JEQ

		@INICIO
		0;JMP

(VACIO)
		@16384
		D=A
		@COORD1
		M=D
		@8192
		D=A
		@CONT1
		M=D
		@1
		D=A
		@SALTO1
		M=D
		@COLOR1
		M=0
		@COORD1
		D=M
		@PSCREEN
		M=D
		@BORRAR
		0;JMP

(VERTICAL)
		@16400 
		D=A 
		@COORD
		M=D
		@256 
		D=A
		@CONT
		M=D
		@32
		D=A
		@SALTO
		M=D
		@256
		D=A
		@COLOR
		M=D

		@COORD
		D=M
		@PSCREEN
		M=D
		@PINTAR
		0;JMP

(HORIZONTAL)

		@20480
		D=A
		@COORD1
		M=D
		@32
		D=A
		@CONT1
		M=D
		@1
		D=A
		@SALTO1
		M=D
		@COLOR1
		M=-1
		
		@COORD1
		D=M
		@PSCREEN
		M=D
		@BORRAR
		0;JMP

(PINTAR)
		@CONT
		D=M
		@HORIZONTAL
		D;JEQ

		@COLOR
		D=M
		@PSCREEN
		A=M
		M=D

		@CONT
		M=M-1

		@SALTO
		D=M

		@PSCREEN
		M=M+D

		@PINTAR
		0;JMP

(BORRAR)
		@CONT1
		D=M
		@FINAL
		D;JEQ

		@COLOR1
		D=M
		@PSCREEN
		A=M
		M=D

		@CONT1
		M=M-1

		@SALTO1
		D=M

		@PSCREEN
		M=M+D

		@BORRAR
		0;JMP

(FINAL)
		@INICIO
		0;JMP