.386
	.model flat,stdcall
	.stack 4096
	ExitProcess PROTO, dwExitCode:DWORD
	

	include C:\irvine\Irvine32.inc


	.data
		MAX = 100
		stringIn BYTE MAX+1 DUP(?), 0
                string1 BYTE MAX+1 DUP(?), 0
                string2 BYTE MAX+1 DUP(?), 0
   		SYM_ADD BYTE '+'
		SYM_SUB BYTE '-'
		SYM_MUL BYTE '*'
		SYM_DIV BYTE '/'
    		CURR_SYM_ADD BYTE '+'
		CURR_SYM_MUL BYTE '*'
    		RES_ADD DWORD 0
		RES_MUL DWORD 1
		PARSE_RES DWORD 0
               .code
               main PROC
                lea edx, stringIn
                 mov ecx, MAX+1
                call ReadString

                main ENDP
                

                splitByAdd PROC
                xor esi, esi
                xor edi, edi
                

               LOOP1:
	          mov cl, [edx + esi]
	          CMP cl, 0
	          JE End_Cont
		  End_Cont:
	          push esi
	          push edi
	          push edx
	          push ecx
	          call splitByMul

                splitByAdd ENDP 

                splitByMul PROC

                 MOV RES_MUL, 1
                 xor esi, esi
                 xor edi, edi
                 xor ebx, ebx
                 xor ecx, ecx
                 lea edx, string2
              LOOP1:
	         mov bl, [string1 + esi]
                 cmp bl, SYM_MUL
	         JE MUL_Cont
	         cmp bl, SYM_DIV
	         JE DIV_Cont
                 CMP bl, 0
	         JE End_Cont
                 mov [string2 + edi], bl
	         inc ecx
                 Inc_lbl: inc esi
	         inc edi
	       JMP LOOP1
	