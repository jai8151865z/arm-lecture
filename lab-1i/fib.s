	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	@ ADD/MODIFY CODE BELOW
	@ PROLOG
	push {r3, r4, r5, r6, lr}

	mov r3, #4294967295
	mov r4, #1
	mov r5, #0
   	mov r6, #0

	LOOP:
		add r6, r4, r3
		mov r3, r4
		mov r4, r6
		add r5, r5, #1
		cmp r5, r0
		ble LOOP

	mov r0, r4


	pop {r3, r4, r5, r6, pc}		@EPILOG

	

	.size fibonacci, .-fibonacci
	.end
