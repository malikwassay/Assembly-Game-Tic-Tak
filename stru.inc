

.model small
.stack
.data
	x1 db "x"
	alreadymsg db "space already taken"
	space db "                         "
    message   db "    |    |    ", "$"
	
	message2  db "--------------", "$"
.code


	set_cursor proc
      mov  ah, 2                  
      mov  bh, 0                  
      int  10h                    
      RET
	set_cursor endp
    structure    proc
    	mov dl,30
	mov dh,6
	call set_cursor
        mov   ax,seg message
        mov   ds,ax
        mov   ah,09
        lea   dx,message
        
       ; mov   ax,4c00h
       int   21h
	   
    mov DL, 10      ;printing new line
    mov AH, 02h
    int 21h
    mov DL, 13
    mov AH, 02h
    int 21h
    
	mov dl,30
	mov dh,7
	call set_cursor
	mov   ax,seg message
        mov   ds,ax
        mov   ah,09
        lea   dx,message
        
       ; mov   ax,4c00h
       int   21h
	   
    mov DL, 10      ;printing new line
    mov AH, 02h
    int 21h
    mov DL, 13
    mov AH, 02h
    int 21h
	
	mov dl,30
	mov dh,8
	call set_cursor
	mov   ax,seg message2
        mov   ds,ax
        mov   ah,09
        lea   dx,message2
        
       ; mov   ax,4c00h
       int   21h
	   
    mov DL, 10      ;printing new line
    mov AH, 02h
    int 21h
    mov DL, 13
    mov AH, 02h
    int 21h
	
	mov dl,30
	mov dh,9
	call set_cursor
	mov   ax,seg message
        mov   ds,ax
        mov   ah,09
        lea   dx,message
        
       ; mov   ax,4c00h
       int   21h
	   
    mov DL, 10      ;printing new line
    mov AH, 02h
    int 21h
    mov DL, 13
    mov AH, 02h
    int 21h
	
	
	mov dl,30
	mov dh,10
	call set_cursor
	mov   ax,seg message
        mov   ds,ax
        mov   ah,09
        lea   dx,message
        
       ; mov   ax,4c00h
       int   21h
	   
    mov DL, 10      ;printing new line
    mov AH, 02h
    int 21h
    mov DL, 13
    mov AH, 02h
    int 21h
	
	
	mov dl,30
	mov dh,11
	call set_cursor
	mov   ax,seg message2
        mov   ds,ax
        mov   ah,09
        lea   dx,message2
        
       ; mov   ax,4c00h
       int   21h
	   
    mov DL, 10      ;printing new line
    mov AH, 02h
    int 21h
    mov DL, 13
    mov AH, 02h
    int 21h
	mov dl,30
	mov dh,12
	call set_cursor
	mov   ax,seg message
        mov   ds,ax
        mov   ah,09
        lea   dx,message
        
       ; mov   ax,4c00h
       int   21h
	   
    mov DL, 10      ;printing new line
    mov AH, 02h
    int 21h
    mov DL, 13
    mov AH, 02h
    int 21h
	
	
	mov dl,30
	mov dh,13
	call set_cursor
	mov   ax,seg message
        mov   ds,ax
        mov   ah,09
        lea   dx,message
        
       ; mov   ax,4c00h
       int   21h
	   
    mov DL, 10      ;printing new line
    mov AH, 02h
    int 21h
    mov DL, 13
    mov AH, 02h
    int 21h
    
    
	ret
	
		
    structure    endp
    