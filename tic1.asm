include stru.inc
include welcome.inc

.model small
.stack
.data

		filename db "scores.txt",0
		ones db "a"
		twos db "q"
		threes db "a"
		fours db "a"
		fives db "q"
		sixs db "a"
		sevs db "a"
		eigs db "q"
		nins db "a"
		oness db "a"
		
		one db 1
		two db 1
		three db 1
		four db 1
		five db 1
		six db 1
		sev db 1
		eig db 1
		nin db 1
		handler dw ? 
		
		oop db "a"
		
		count db 0
		
		draw  db "Match Draw", "$"
		
		plx db "Player x wins","$"
		plo db "Player 0 wins","$"


		 

.code

chkverx proc
back12:
	cmp oness,"x"
	JE back123
	jmp back21
back123:
	cmp fours,"x"
	je	back1233
	jmp back21
	
back1233:
	cmp sevs,"x"
	Je end5
	jmp back21
	
	
	
	
back21:
	cmp twos,"x"
	JE back212
	jmp back31
back212:
	cmp fives,"x"
	je back221
	jmp back31
back221:
	cmp eigs,"x"
	JE end5
	jmp back31
	
	

	
back31:
	cmp threes,"x"
	JE back313
	ret
back313:
	cmp sixs,"x"
	je back331
	ret
back331:
	cmp nins,"x"
	JE end5
	ret

end5:
  mov  ah, 3ch
  mov  cx, 0
  mov  dx, offset filename
  int  21h  

;PRESERVE FILE HANDLER RETURNED.
  mov  handler, ax

;WRITE STRING.
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 13  ;STRING LENGTH.
  mov  dx, offset plx
  int  21h

;CLOSE FILE (OR DATA WILL BE LOST).
  mov  ah, 3eh
  mov  bx, handler
  int  21h




	mov dl,29
	mov dh,15
	call set_cursor
		mov   ax,seg plx
        mov   ds,ax
        mov   ah,09
        lea   dx,plx
        
       ; mov   ax,4c00h
       int   21h
	MOV AH, 4CH                  ; return control to DOS
     INT 21H
	ret

chkverx endp





chkdiagx proc
	cmp oness,"x"
	JE Bacck
	jmp Bacck2
Bacck:
	cmp fives,"x"
	Je bacck1
	jmp Bacck2
bacck1:
	cmp nins,"x"
	JE end4
	jmp Bacck2
	
Bacck2:
	cmp threes,"x"
	JE Bacck22
	ret
Bacck22:
	cmp fives,"x"
	je bacck222
	ret
	
bacck222:
	cmp sevs,"x"
	je end4
	ret
	
end4:

  mov  ah, 3ch
  mov  cx, 0
  mov  dx, offset filename
  int  21h  

;PRESERVE FILE HANDLER RETURNED.
  mov  handler, ax

;WRITE STRING.
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 13  ;STRING LENGTH.
  mov  dx, offset plx
  int  21h

;CLOSE FILE (OR DATA WILL BE LOST).
  mov  ah, 3eh
  mov  bx, handler
  int  21h





mov dl,29
	mov dh,15
	call set_cursor
		mov   ax,seg plx
        mov   ds,ax
        mov   ah,09
        lea   dx,plx
        
       ; mov   ax,4c00h
       int   21h
	MOV AH, 4CH                  ; return control to DOS
     INT 21H
	ret


chkdiagx endp

chkdiag proc
	cmp oness,"0"
	JE nexxt
	jmp nexxt2
nexxt:
	cmp fives,"0"
	Je Nexxt2
nexxt1:
	cmp nins,"0"
	JE end3
	jmp nexxt2
	
nexxt2:
	cmp threes,"0"
	JE nexxt22
	ret
nexxt22:
	cmp fives,"0"
	je nexxt222
	ret
	
nexxt222:
	cmp sevs,"0"
	je end3
	ret
	
end3:

  mov  ah, 3ch
  mov  cx, 0
  mov  dx, offset filename
  int  21h  

;PRESERVE FILE HANDLER RETURNED.
  mov  handler, ax

;WRITE STRING.
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 13  ;STRING LENGTH.
  mov  dx, offset plo
  int  21h

;CLOSE FILE (OR DATA WILL BE LOST).
  mov  ah, 3eh
  mov  bx, handler
  int  21h




mov dl,29
	mov dh,15
	call set_cursor
	    mov   ax,seg plo
        mov   ds,ax
        mov   ah,09
        lea   dx,plo
        
       ; mov   ax,4c00h
       int   21h
	MOV AH, 4CH                  ; return control to DOS
     INT 21H
	ret


chkdiag endp


chkver proc
next12:
	cmp oness,"0"
	JE next123
	jmp next21
Next123:
	cmp fours,"0"
	je	Next1233
	jmp next21
	
Next1233:
	cmp sevs,"0"
	Je end2
	
	
	
	
next21:
	cmp twos,"0"
	JE next212
	jmp next31
Next212:
	cmp fives,"0"
	je next221
	jmp next31
next221:
	cmp eigs,"0"
	JE end2
	jmp next31
	
	

	
Next31:
	cmp threes,"0"
	JE next313
	ret
next313:
	cmp sixs,"0"
	je next331
	ret
next331:
	cmp nins,"0"
	JE end2
	ret

end2:

  mov  ah, 3ch
  mov  cx, 0
  mov  dx, offset filename
  int  21h  

;PRESERVE FILE HANDLER RETURNED.
  mov  handler, ax

;WRITE STRING.
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 13 ;STRING LENGTH.
  mov  dx, offset plo
  int  21h

;CLOSE FILE (OR DATA WILL BE LOST).
  mov  ah, 3eh
  mov  bx, handler
  int  21h






mov dl,29
	mov dh,15
	call set_cursor
	    mov   ax,seg plo
        mov   ds,ax
        mov   ah,09
        lea   dx,plo
        
       ; mov   ax,4c00h
       int   21h
	MOV AH, 4CH                  ; return control to DOS
     INT 21H
	ret

chkver endp

chkhorx proc	
	cmp oness,"x"
	JE back
	jmp back2
back:
	cmp twos,"x"
	JE back1
	jmp back2
back1:
	cmp threes,"x"
	JE end6
	jmp back2
back2:
	cmp fours,"x"
	je	back22
	jmp back3
back22:
	cmp fives,"x"
	je back222
	jmp back3
back222:
	cmp sixs,"x"
	je end6
	jmp back3
	
back3:
	cmp sevs,"x"
	Je back33
	ret
back33:
	cmp eigs,"x"
	JE back333
	ret
back333:
	cmp nins,"x"
	JE end6
	ret


end6:

  mov  ah, 3ch
  mov  cx, 0
  mov  dx, offset filename
  int  21h  

;PRESERVE FILE HANDLER RETURNED.
  mov  handler, ax

;WRITE STRING.
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 13  ;STRING LENGTH.
  mov  dx, offset plx
  int  21h

;CLOSE FILE (OR DATA WILL BE LOST).
  mov  ah, 3eh
  mov  bx, handler
  int  21h




mov dl,29
	mov dh,15
	call set_cursor
		mov   ax,seg plx
        mov   ds,ax
        mov   ah,09
        lea   dx,plx
        
       ; mov   ax,4c00h
       int   21h
	MOV AH, 4CH                  ; return control to DOS
     INT 21H
	ret
		 
chkhorx endp








chkhor proc	
	cmp oness,"0"
	JE next
	jmp next2
next:
	cmp twos,"0"
	JE next1
	jmp next2
Next1:
	cmp threes,"0"
	JE end1
	jmp next2
Next2:
	cmp fours,"0"
	je	Next22
	jmp next3
Next22:
	cmp fives,"0"
	je next222
	jmp next3
next222:
	cmp sixs,"0"
	je end1
	jmp next3
	
Next3:
	cmp sevs,"0"
	Je next33
	ret
next33:
	cmp eigs,"0"
	JE next333
	ret
next333:
	cmp nins,"0"
	JE end1
	ret


end1:

  mov  ah, 3ch
  mov  cx, 0
  mov  dx, offset filename
  int  21h  

;PRESERVE FILE HANDLER RETURNED.
  mov  handler, ax

;WRITE STRING.
  mov  ah, 40h
  mov  bx, handler
  mov  cx, 13  ;STRING LENGTH.
  mov  dx, offset plo
  int  21h

;CLOSE FILE (OR DATA WILL BE LOST).
  mov  ah, 3eh
  mov  bx, handler
  int  21h




mov dl,29
	mov dh,15
	call set_cursor
		mov   ax,seg plo
        mov   ds,ax
        mov   ah,09
        lea   dx,plo
        
       ; mov   ax,4c00h
	int   21h
	MOV AH, 4CH                  ; return control to DOS
	INT 21H
     ret
		 
chkhor endp

x proc
		inc count
		 MOV AH, 2                    ; display the character '@'.
		 MOV DL, "x"
		 INT 21H
	     ret
o proc
		inc count
		 MOV AH, 2                    ; display the character '@'.
		 MOV DL, "0"
		 INT 21H
	     ret	
	
	
main proc
	call cls
	call welcome
	call structure
	
	mov  cl,0
start:
	call chkver
	call chkverx
	call chkhorx
	call chkhor
	call chkdiag
	call chkdiagx
	cmp count,9
	JE ending
	Jmp con
ending:
	mov dl,29
	mov dh,15
	call set_cursor
		mov   ax,seg draw
        mov   ds,ax
        mov   ah,09
        lea   dx,draw
        ;mov   ax,4c00h
       int   21h
	MOV AH, 4CH                  ; return control to DOS
     INT 21H


start1:
	jmp start
	 

con:
	 mov dl,15
	 mov dh,29
	 call set_cursor
     MOV AH, 1                    ; read a character
     INT 21H
     MOV BL, AL 	 ; save input character into BL
	 mov oop,bl
     MOV AH, 2                    ; carriage return
     MOV DL, 0DH          
     INT 21H
     MOV DL, 0AH                  ; line feed
     INT 21H
	cmp bl,"1"
	JE L1
	cmp bl,"2"
	JE a2
	cmp bl,"3"
	JE a3
	cmp bl,"4"
	JE a4
	cmp bl,"5"
	JE a5
	cmp bl,"6"
	JE a6
	cmp bl,"7"
	JE a
	cmp bl,"8"
	JE a1
	cmp bl,"9"
	JE a9
	cmp bl,"&"
	JNE start1
	
	
xcall:
	call x
	mov cl,1
	jmp start
ocall:
	call o
	mov cl,0
	jmp start
 a5:
	jmp L5
a3:
	jmp L3
	
L1:

	mov dl,31
	mov dh,7
	call set_cursor
	cmp one,0
	JE b1
	cmp cl,0
	mov one,0
	JE L11
	mov oness,"0"
	call o
	mov cl,0
	jmp start

L11:
	mov oness,"x"
	jmp xcall

a2:
	jmp L2
a9:
	jmp L9
a6:
	jmp L6
a4:
	jmp L4
a:
	jmp L7
	
b1:
	jmp start
L33:
	mov threes,"x"
	jmp xcall
	
a1:
	jmp L8
L2:

	mov dl,37
	mov dh,7
	call set_cursor
	cmp two,0
	JE b1
	cmp cl,0
	mov two,0
	JE L22
	mov twos,"0"
	call o
	mov cl,0
	jmp start
L22:
	mov twos,"x"
	jmp xcall
b2:
	jmp start

	
L3:

	mov dl,42
	mov dh,7
	call set_cursor
	cmp three,0
	JE b1
	cmp cl,0
	mov three,0
	JE L33
	mov threes,"0"
	call o
	mov cl,0
	jmp start
	
L4:

	mov dl,31
	mov dh,10
	call set_cursor
	cmp four,0
	JE b2
	cmp cl,0
	mov four,0
	JE L44
	mov fours,"0"
	call o
	mov cl,0
	jmp start

L44:
	mov fours,"x"
	jmp xcall1
	
xcall1:
	call x
	mov cl,1
	jmp start
ocall1:
	call o
	mov cl,0
	jmp start

L5:
	mov dl,37
	mov dh,10
	call set_cursor
	cmp five,0
	JE b3
	cmp cl,0
	mov five,0
	JE L55
	mov fives,"0"
	call o
	mov cl,0
	jmp start

L55:
	mov fives,"x"
	jmp xcall1
	

L6:

	mov dl,42
	mov dh,10
	call set_cursor
	cmp six,0
	JE b3
	cmp cl,0
	mov six,0
	JE L66
	mov sixs,"0"
	call o
	mov cl,0
	jmp start
	
L66:
	mov sixs,"x"
	jmp xcall
b3:
	jmp start
	
xcall2:
	jmp xcall1
L7:
	mov dl,31
	mov dh,13
	call set_cursor
	cmp sev,0
	JE b3
	cmp cl,0
	mov sev,0
	JE L77
	mov sevs,"0"
	call o
	mov cl,0
	jmp start
	
L77:
	mov sevs,"x"
	jmp xcall
	
L8:

	mov dl,37
	mov dh,13
	call set_cursor
	cmp eig,0
	JE b3
	cmp cl,0
	mov eig,0
	JE L88
	mov eigs,"0"
	call o
	mov cl,0
	jmp start
	
L88:
	mov eigs,"x"
	jmp xcall2

L9:

	mov dl,42
	mov dh,13
	call set_cursor
	cmp nin,0
	JE b3
	cmp cl,0
	mov nin,0
	JE L99
	mov nins,"0"
	call o
	mov cl,0
	jmp start
	
L99:
	mov nins,"x"
	jmp xcall2
	
	mov dl,
	mov dh,7
	call set_cursor
main endp

end main
