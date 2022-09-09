// NOMBRE: Juan David Góngora Díaz
// ID: 000243384
// Correo: juand.gongorad@upb.edu.co

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
@EMPTY
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
@bool
M=0

@RECT
0;JMP

(HORIZONTAL)
@20480
D=A

@coord
M=D

@32
D=A

@cont
M=D
@1
D=A

@salto
M=D

@color  
M=-1
@bool
M=1

@RECT
0;JMP

(RECT)
@coord
D=M

@coord2
M=D

(PAINT)
@cont
D=M 

@END
D;JEQ

@color  
D=M

@coord2
A=M 
M=D

@cont
M=M-1

@salto
D=M

@coord2
M=M+D

@PAINT
0;JMP

(EMPTY)
@16384
D=A

@coord
M=D

@8192
D=A

@cont 
M=D
@1
D=A

@salto
M=D

@color  
M=0

@RECT
0;JMP

(END)
@bool
D=M 

@HORIZONTAL
D;JEQ 
   
@INICIO
0;JMP