; -----------------------------------------------------------------------------
; A 64-bit function that returns the maximum value of its three 64-bit integer
; arguments.  The function has signature:
;
;   int64_t maxofthree(int64_t x, int64_t y, int64_t z)
;
; Note that the parameters have already been passed in rdi, rsi, and rdx.  We
; just have to return the value in rax.
; -----------------------------------------------------------------------------

        global  minofthree
        section .text
minofthree:
        mov     rax, rdi                ; result (rax) initially holds x
        cmp     rsi, rax                ; is y less than x?
        cmovl   rax, rsi                ; if so, set result to y
        cmp     rdx, rax                ; is min(x,y) greater than z?
        cmovl   rax, rdx                ; if so, set result to z
        ret                             ; the min will be in rax