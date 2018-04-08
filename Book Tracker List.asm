.stack 100h
.model small
.data
    msg1 db 10,13,'     * * * * * * * * * * * * * * * * * * * * * *$'
    msg2 db 10,13,'     * * *                                 * * *$'  
    msg3 db 10,13,'     * *                                     * *$' 
    msg4 db 10,13,'     *           DIU Blood Group Finder        *$'
    msg5 db 10,13,'     * *                                     * *$' 
    msg6 db 10,13,'     * * *                                 * * *$' 
    msg7 db 10,13,'     * * * * * * * * * * * * * * * * * * * * * *$'
    msg8 db 10,13,'     * * * * * * * * * * * * * * * * * * * * * *$' 
    msg9 db 10,13,'     * * *                                 * * *$'  
    msg10 db 10,13,'     * *                                     * *$' 
    msg11 db 10,13,'     *            Blood Group List             *$'
    msg12 db 10,13,'     *            1. A+                        *$'
    msg13 db 10,13,'     *            2. B+                        *$'
    msg14 db 10,13,'     *            3. AB+                       *$'
    msg15 db 10,13,'     *            4. AB-                       *$'
    msg16 db 10,13,'     *            5. O+                        *$'
    msg17 db 10,13,'     *            6. O-                        *$'
    msg18 db 10,13,'     * *                                     * *$' 
    msg19 db 10,13,'     * * *                                 * * *$' 
    msg20 db 10,13,'     * * * * * * * * * * * * * * * * * * * * * *$'
    msg21 db 10,10,13,'     Choose Option ( 1 - 6 ) : $'
    msg22 db 10,13,'     *    Name       : $'
    msg23 db 10,13,'     *    ID         : $'
    msg24 db 10,13,'     *    Contact    : $' 
    msg25 db '     Amir Sohel      *$'
    msg26 db '     161-15-874          *$'
    msg27 db '     01815756798         *$'
    msg28 db '     Razibul Hasan Mithu  *$'
    msg29 db '     152-15-563         *$'
    msg30 db '     01790269668        *$'
    msg31 db '     Effat Ara Daijy     *$'
    msg32 db '     152-15-574         *$'
    msg33 db '     01679968026        *$'
    msg34 db '     Ismail Hossain      *$'
    msg35 db '     152-15-568         *$'
    msg36 db '     01607926968        *$'
    msg37 db '     Jakaria Nur      *$'
    msg38 db '     152-15-535         *$'
    msg39 db '     01680269679        *$'
    msg40 db '     Badhan Karmakar     *$'
    msg41 db '     152-15-549         *$'
    msg42 db '     01792696860        *$'
    msg43 db 10,10,13,'     Do You Want To Continue? ( Y / N ) : $'
    msg44 db 10,10,13,'     Invalid Input! $'     
        
    
    
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    ;----- Start of Printing the Title Box -----
    
    mov ah,9
    lea dx,msg1
    int 21h
    
    mov ah,9
    lea dx,msg2
    int 21h
    
    mov ah,9
    lea dx,msg3
    int 21h
    
    mov ah,9
    lea dx,msg4
    int 21h    
    
    mov ah,9
    lea dx,msg5
    int 21h    
    
    mov ah,9
    lea dx,msg6
    int 21h    
    
    mov ah,9
    lea dx,msg7
    int 21h    
    
    ;----- End of Printing the Title Box -----
    
    ;----- Start of Printing the Menu/List Box ----- 
    
    mainmenu:
    
    mov ah,9
    lea dx,msg8
    int 21h    
    
    mov ah,9
    lea dx,msg9
    int 21h    
    
    mov ah,9
    lea dx,msg10
    int 21h     
    
    mov ah,9
    lea dx,msg11
    int 21h     
    
    mov ah,9
    lea dx,msg12
    int 21h     
    
    mov ah,9
    lea dx,msg13
    int 21h     
    
    mov ah,9
    lea dx,msg14
    int 21h     
    
    mov ah,9
    lea dx,msg15
    int 21h
    
    mov ah,9
    lea dx,msg16
    int 21h
    
    mov ah,9
    lea dx,msg17
    int 21h
    
    mov ah,9
    lea dx,msg18
    int 21h
    
    mov ah,9
    lea dx,msg19
    int 21h
    
    mov ah,9
    lea dx,msg20
    int 21h
    
    mov ah,9
    lea dx,msg21
    int 21h
    
    ;----- End of Printing the Menu/List Box -----
    
    mov ah,1            ;Input for choosing option
    int 21h
    
    mov bl,al           ;Move input to BL register 
    
    cmp bl,'1'          ;Comparing with option 1
    je one
    
    cmp bl,'2'          ;Comparing with option 2
    je two
    
    cmp bl,'3'          ;Comparing with option 3
    je three
    
    cmp bl,'4'          ;Comparing with option 4
    je four
    
    cmp bl,'5'          ;Comparing with option 5
    je five
    
    cmp bl,'6'          ;Comparing with option 6
    je six
    
    jmp invalid1        ;Jump to invalid level if any invalid input detected
    
    ;----- Start of Level one -----
    
    one: 
        mov ah,2
        mov dl,0ah
        int 21h
        mov dl,0dh
        int 21h
        
        mov ah,9
        lea dx,msg7
        int 21h
        
        mov ah,9
        lea dx,msg2
        int 21h
        
        mov ah,9
        lea dx,msg3
        int 21h
        
        mov ah,9
        lea dx,msg12
        int 21h
        
        mov ah,9
        lea dx,msg22    ;Printing Necessesary Details Level one and so on all other level
        int 21h
        
        mov ah,9
        lea dx,msg25
        int 21h
        
        mov ah,9
        lea dx,msg23
        int 21h     
        
        mov ah,9
        lea dx,msg26
        int 21h
        
        mov ah,9
        lea dx,msg24
        int 21h     
        
        mov ah,9
        lea dx,msg27
        int 21h  
        
        mov ah,9
        lea dx,msg5
        int 21h
        
        mov ah,9
        lea dx,msg6
        int 21h
           
        mov ah,9
        lea dx,msg7
        int 21h   
        
        jmp continue    ;Go to continue level to check continue or not     
        
    ;----- End of Level one ----- 
    
    ;----- Start of Level two -----
        
    two:
        mov ah,2
        mov dl,0ah
        int 21h
        mov dl,0dh
        int 21h
        
        mov ah,9
        lea dx,msg7
        int 21h
        
        mov ah,9
        lea dx,msg2
        int 21h
        
        mov ah,9
        lea dx,msg3
        int 21h
        
        mov ah,9
        lea dx,msg13
        int 21h
        
        mov ah,9
        lea dx,msg22
        int 21h
        
        mov ah,9
        lea dx,msg28
        int 21h
        
        mov ah,9
        lea dx,msg23
        int 21h     
        
        mov ah,9
        lea dx,msg29
        int 21h
        
        mov ah,9
        lea dx,msg24
        int 21h     
        
        mov ah,9
        lea dx,msg30
        int 21h  
        
        mov ah,9
        lea dx,msg5
        int 21h
        
        mov ah,9
        lea dx,msg6
        int 21h
           
        mov ah,9
        lea dx,msg7
        int 21h  
        
        jmp continue
        
    ;----- End of Level two -----
    
    ;----- Start of Level three -----
    
    three:  
        mov ah,2
        mov dl,0ah
        int 21h
        mov dl,0dh
        int 21h
        
        mov ah,9
        lea dx,msg7
        int 21h
        
        mov ah,9
        lea dx,msg2
        int 21h
        
        mov ah,9
        lea dx,msg3
        int 21h
        
        mov ah,9
        lea dx,msg14
        int 21h
        
        mov ah,9
        lea dx,msg22
        int 21h
        
        mov ah,9
        lea dx,msg31
        int 21h
        
        mov ah,9
        lea dx,msg23
        int 21h     
        
        mov ah,9
        lea dx,msg32
        int 21h
        
        mov ah,9
        lea dx,msg24
        int 21h     
        
        mov ah,9
        lea dx,msg33
        int 21h  
        
        mov ah,9
        lea dx,msg5
        int 21h
        
        mov ah,9
        lea dx,msg6
        int 21h
           
        mov ah,9
        lea dx,msg7
        int 21h   
        
        jmp continue
    
    ;----- End of Level three -----
    
    ;----- Start of Level four ----- 
     
    four:    
        mov ah,2
        mov dl,0ah
        int 21h
        mov dl,0dh
        int 21h
        
        mov ah,9
        lea dx,msg7
        int 21h
        
        mov ah,9
        lea dx,msg2
        int 21h
        
        mov ah,9
        lea dx,msg3
        int 21h
        
        mov ah,9
        lea dx,msg15
        int 21h
        
        mov ah,9
        lea dx,msg22
        int 21h
        
        mov ah,9
        lea dx,msg34
        int 21h
        
        mov ah,9
        lea dx,msg23
        int 21h     
        
        mov ah,9
        lea dx,msg35
        int 21h
        
        mov ah,9
        lea dx,msg24
        int 21h     
        
        mov ah,9
        lea dx,msg36
        int 21h  
        
        mov ah,9
        lea dx,msg5
        int 21h
        
        mov ah,9
        lea dx,msg6
        int 21h
           
        mov ah,9
        lea dx,msg7
        int 21h 
        
        jmp continue
    
    ;----- End of Level four -----
    
    ;----- Start of Level five -----   
    
    five:  
        mov ah,2
        mov dl,0ah
        int 21h
        mov dl,0dh
        int 21h
        
        mov ah,9
        lea dx,msg7
        int 21h
        
        mov ah,9
        lea dx,msg2
        int 21h
        
        mov ah,9
        lea dx,msg3
        int 21h
        
        mov ah,9
        lea dx,msg16
        int 21h
        
        mov ah,9
        lea dx,msg22
        int 21h
        
        mov ah,9
        lea dx,msg37
        int 21h
        
        mov ah,9
        lea dx,msg23
        int 21h     
        
        mov ah,9
        lea dx,msg38
        int 21h
        
        mov ah,9
        lea dx,msg24
        int 21h     
        
        mov ah,9
        lea dx,msg39
        int 21h  
        
        mov ah,9
        lea dx,msg5
        int 21h
        
        mov ah,9
        lea dx,msg6
        int 21h
           
        mov ah,9
        lea dx,msg7
        int 21h 
        
        jmp continue                
        
    ;----- End of Level five -----

    ;----- Start of Level six -----
    
    six:  
        mov ah,2
        mov dl,0ah
        int 21h
        mov dl,0dh
        int 21h
        
        mov ah,9
        lea dx,msg7
        int 21h
        
        mov ah,9
        lea dx,msg2
        int 21h
        
        mov ah,9
        lea dx,msg3
        int 21h
        
        mov ah,9
        lea dx,msg17
        int 21h
        
        mov ah,9
        lea dx,msg22
        int 21h
        
        mov ah,9
        lea dx,msg40
        int 21h
        
        mov ah,9
        lea dx,msg23
        int 21h     
        
        mov ah,9
        lea dx,msg41
        int 21h
        
        mov ah,9
        lea dx,msg24
        int 21h     
        
        mov ah,9
        lea dx,msg42
        int 21h  
        
        mov ah,9
        lea dx,msg5
        int 21h
        
        mov ah,9
        lea dx,msg6
        int 21h
           
        mov ah,9
        lea dx,msg7
        int 21h 
        
        jmp continue
        
    ;----- Start of Level six ----- 
    
    ;----- Start of Level continue -----
    
    continue:
        mov ah,9
        lea dx,msg43
        int 21h 
        
        mov ah,1        ;Take input to choose option ( Y / N )
        int 21h
        
        mov bl,al       ;moved the value of al to bl resigter
        
        cmp bl,'Y'      ;Comparing with Y
        je mainmenu
        
        cmp bl,'N'      ;Comparing with N
        je exit 
        
        jmp invalid     ;Goto Invalid if none of are availabe as Student 
        
    ;----- End of Level continue -----
    
    ;----- Start of Level invalid -----
    
    invalid:
        mov ah,9
        lea dx,msg44
        int 21h
        
        jmp continue
        
    ;----- End of Level invalid -----
    
    ;----- Start of Level invalid1 -----
        
    invalid1:
        mov ah,9
        lea dx,msg44
        int 21h
        
        jmp mainmenu                    
        
    ;----- End of Level invalid1 -----   
    
    exit:   ;Exit Level   
    
    main endp
end main
