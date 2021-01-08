.386
	.model flat,stdcall
	.stack 4096
	ExitProcess PROTO, dwExitCode:DWORD
	

	include C:\irvine\Irvine32.inc


	.data
		MAX = 100
		stringIn BYTE MAX+1 DUP(?), 0
    SYM_ADD BYTE '+'
		SYM_SUB BYTE '-'
		SYM_MUL BYTE '*'
		SYM_DIV BYTE '/'
    CURR_SYM_ADD BYTE '+'
		CURR_SYM_MUL BYTE '*'
    RES_ADD DWORD 0
		RES_MUL DWORD 1
		PARSE_RES DWORD 0
