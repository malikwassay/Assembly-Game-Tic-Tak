.model small
.stack
.data
	press db "Press any key to continue...","$"
	
	aa db "	 __      __       .__                              ", "$"
	b db "	/  \    /  \ ____ |  |   ____  ____   _____   ____ ", "$"
	cc db "	\   \/\/   // __ \|  | _/ ___\/  _ \ /     \_/ __ \", "$"
	d db "	 \        /\  ___/|  |_\  \__(  <_> )  Y Y  \  ___/", "$"
	e db "	  \__/\  /  \___  >____/\___  >____/|__|_|  /\___  >", "$"
	f db "	       \/       \/          \/            \/     \/ ", "$"
	
	g db "		            __          ", "$"
	h db "		          _/  |_  ____  ", "$"
	i db "		          \   __\/  _ \ ", "$"
	j db "		           |  | (  <_> )", "$"
	k db "		           |__|  \____/ ", "$"
	
	l db "___________.__         ___________               ___________            ", "$"
	m db "\__    ___/|__| ____   \__    ___/____    ____   \__    ___/___   ____  ", "$"
	n db "  |    |   |  |/ ___\    |    |  \__  \ _/ ___\    |    | /  _ \_/ __ \ ", "$"
	oo db "  |    |   |  \  \___    |    |   / __ \\  \___    |    |(  <_> )  ___/ ", "$"
	p db "  |____|   |__|\___  >   |____|  (____  /\___  >   |____| \____/ \___  >", "$"
	q db "                   \/                 \/     \/                      \/ ", "$"
	
	
.code

cls proc
	mov ah, 00
	mov al, 02
	int 10h
	ret
cls endp


welcome    proc
    	mov   ax,seg aa
        mov   ds,ax
        mov   ah,09
        lea   dx,aa
        
       ; mov   ax,4c00h
       int   21h
	   
    mov DL, 10      ;printing new line
    mov AH, 02h
    int 21h
    
    
    mov   ax,seg b
            mov   ds,ax
            mov   ah,09
            lea   dx,b
            
           ; mov   ax,4c00h
           int   21h
    	   
        mov DL, 10      ;printing new line
        mov AH, 02h
    int 21h
    
    mov   ax,seg cc
            mov   ds,ax
            mov   ah,09
            lea   dx,cc
            
           ; mov   ax,4c00h
           int   21h
    	   
        mov DL, 10      ;printing new line
        mov AH, 02h
    int 21h
    
    mov   ax,seg d
            mov   ds,ax
            mov   ah,09
            lea   dx,d
            
           ; mov   ax,4c00h
           int   21h
    	   
        mov DL, 10      ;printing new line
        mov AH, 02h
    int 21h
    
    mov   ax,seg e
            mov   ds,ax
            mov   ah,09
            lea   dx,e
            
           ; mov   ax,4c00h
           int   21h
    	   
        mov DL, 10      ;printing new line
        mov AH, 02h
    int 21h
    
    mov   ax,seg f
            mov   ds,ax
            mov   ah,09
            lea   dx,f
            
           ; mov   ax,4c00h
           int   21h
    	   
        mov DL, 10      ;printing new line
        mov AH, 02h
    int 21h
    
    mov   ax,seg g
            mov   ds,ax
            mov   ah,09
            lea   dx,g
            
           ; mov   ax,4c00h
           int   21h
    	   
        mov DL, 10      ;printing new line
        mov AH, 02h
    int 21h
    
    mov   ax,seg h
            mov   ds,ax
            mov   ah,09
            lea   dx,h
            
           ; mov   ax,4c00h
           int   21h
    	   
        mov DL, 10      ;printing new line
        mov AH, 02h
    int 21h
    
    mov   ax,seg i
            mov   ds,ax
            mov   ah,09
            lea   dx,i
            
           ; mov   ax,4c00h
           int   21h
    	   
        mov DL, 10      ;printing new line
        mov AH, 02h
    int 21h
    
    mov   ax,seg j
            mov   ds,ax
            mov   ah,09
            lea   dx,j
            
           ; mov   ax,4c00h
           int   21h
    	   
        mov DL, 10      ;printing new line
        mov AH, 02h
    int 21h
    
    mov   ax,seg k
            mov   ds,ax
            mov   ah,09
            lea   dx,k
            
           ; mov   ax,4c00h
           int   21h
    	   
        mov DL, 10      ;printing new line
        mov AH, 02h
    int 21h
    
    mov   ax,seg l
            mov   ds,ax
            mov   ah,09
            lea   dx,l
            
           ; mov   ax,4c00h
           int   21h
    	   
        mov DL, 10      ;printing new line
        mov AH, 02h
    int 21h
    
    mov   ax,seg m
            mov   ds,ax
            mov   ah,09
            lea   dx,m
            
           ; mov   ax,4c00h
           int   21h
    	   
        mov DL, 10      ;printing new line
        mov AH, 02h
    int 21h
    
    mov   ax,seg n
            mov   ds,ax
            mov   ah,09
            lea   dx,n
            
           ; mov   ax,4c00h
           int   21h
    	   
        mov DL, 10      ;printing new line
        mov AH, 02h
    int 21h
    
    mov   ax,seg oo
            mov   ds,ax
            mov   ah,09
            lea   dx,oo
            
           ; mov   ax,4c00h
           int   21h
    	   
        mov DL, 10      ;printing new line
        mov AH, 02h
    int 21h
    
    mov   ax,seg p
            mov   ds,ax
            mov   ah,09
            lea   dx,p
            
           ; mov   ax,4c00h
           int   21h
    	   
        mov DL, 10      ;printing new line
        mov AH, 02h
    int 21h
    
    mov   ax,seg q
            mov   ds,ax
            mov   ah,09
            lea   dx,q
            
           ; mov   ax,4c00h
           int   21h
    	   
        mov DL, 10      ;printing new line
        mov AH, 02h
    int 21h
    
    mov   ax,seg press
            mov   ds,ax
            mov   ah,09
            lea   dx,press
            
           ; mov   ax,4c00h
           int   21h
    	   
        mov DL, 10      ;printing new line
        mov AH, 02h    
    
    
    MOV AH, 1                    ; read a character
     INT 21H
    call cls
    
        
    ret
welcome endp