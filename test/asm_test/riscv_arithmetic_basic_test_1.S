.include "user_define.h"
.globl _start
.section .text
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x15, h0_start
jalr x0, x15, 0
h0_start:
                  li x14, 0x40001104
                  csrw 0x301, x14
kernel_sp:        
                  la x30, kernel_stack_end

trap_vec_init:    
                  la x14, mtvec_handler
                  ori x14, x14, 0
                  csrw 0x305, x14 # MTVEC

mepc_setup:       
                  la x14, init
                  csrw 0x341, x14

init_machine_mode:
                  li x14, 0x1e00
                  csrw 0x300, x14 # MSTATUS
                  li x14, 0x0
                  csrw 0x304, x14 # MIE
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x80000000
                  li x2, 0x0
                  li x3, 0x3
                  li x4, 0x80000000
                  li x5, 0xab6c56b8
                  li x6, 0x80000000
                  li x7, 0x0
                  li x8, 0x7
                  li x9, 0x80000000
                  li x10, 0x14ea40ec
                  li x11, 0xf81e47ab
                  li x12, 0x80000000
                  li x13, 0x2
                  li x14, 0xa
                  li x15, 0xfb90b327
                  li x16, 0x80000000
                  li x17, 0x80000000
                  li x18, 0x80000000
                  li x19, 0x80000000
                  li x20, 0x36dd128a
                  li x21, 0xf3eba18f
                  li x22, 0x0
                  li x23, 0x0
                  li x24, 0xa08831e2
                  li x25, 0x0
                  li x26, 0xf8ba2199
                  li x27, 0x1
                  li x28, 0x0
                  li x29, 0x3
                  la x31, user_stack_end
main:             li         t4, 0x0 #start riscv_int_numeric_corner_stream_34
                  li         t3, 0x0
                  li         s11, 0x0
                  li         t0, 0x1
                  li         s9, 0x0
                  li         s10, 0x1
                  li         s7, 0x51571e07
                  li         a0, 0x0
                  li         s8, 0x0
                  li         s0, 0x3466bdaa
                  mul         zero, a1, gp
                  add         s8, s2, s10
                  mulhsu      a7, t3, s8
                  rem         a7, t3, s6
                  c.mv        a7, s9
                  c.sub       a1, a3
                  c.lui       tp, 28
                  div         a6, ra, t6
                  nop
                  c.addi16sp  sp, 256
                  add         s11, t1, t0
                  auipc       zero, 1009186
                  auipc       zero, 262210
                  addi        s5, s4, -512
                  c.sub       a3, a3
                  div         sp, zero, t3
                  c.add       t1, a7
                  li         t4, 0x720fc317 #start riscv_int_numeric_corner_stream_20
                  li         t3, 0x653676f3
                  li         s8, 0x1
                  li         s11, 0x1
                  li         s10, 0x0
                  li         ra, 0x1
                  li         s2, 0x0
                  li         sp, 0x1
                  li         a0, 0x1
                  li         s9, 0x0
                  c.add       t2, s5
                  add         s4, a3, a6
                  c.add       s10, s4
                  sub         s2, ra, s10
                  nop
                  auipc       tp, 330984
                  c.nop
                  c.mv        s8, a2
                  c.addi      s11, 19
                  mulh        a6, t2, a5
                  c.addi4spn  a3, sp, 576
                  c.sub       a4, a3
                  addi        sp, s2, 487
                  c.li        ra, 21
                  auipc       s2, 277556
                  c.addi      s7, 18
                  nop
                  c.nop
                  c.lui       ra, 21
                  c.addi      s7, 14
                  lui         s2, 359516
                  c.lui       t1, 4
                  c.li        ra, -1
                  div         s4, a4, ra
                  c.sub       s1, a3
                  c.nop
                  c.addi      t4, -1
                  rem         s10, s4, s2 #end riscv_int_numeric_corner_stream_20
                  li         t4, 0x28ef7469 #start riscv_int_numeric_corner_stream_11
                  li         t3, 0x0
                  li         s11, 0x2b8f75e0
                  li         a4, 0x247d2629
                  li         s10, 0x1ee50158
                  li         a3, 0x1
                  li         s8, 0x0
                  li         s4, 0x400b6d43
                  li         s9, 0x0
                  li         sp, 0x1
                  addi        t0, t2, -423
                  divu        a7, a4, sp
                  div         s10, a3, t1
                  divu        zero, a7, s10
                  auipc       s9, 666224
                  mulhu       s6, t1, t0
                  rem         s11, a0, ra
                  c.nop
                  lui         a2, 827616
                  c.li        gp, 20
                  c.sub       a3, a3
                  c.lui       tp, 10
                  auipc       t1, 426305
                  c.mv        tp, a7
                  nop
                  c.addi16sp  sp, -16
                  c.add       s0, tp
                  c.sub       a3, a3
                  add         t1, s10, t3
                  c.addi      a4, 31
                  c.addi16sp  sp, 80
                  addi        zero, s6, -1994
                  divu        tp, s10, zero
                  sub         t0, s9, t2 #end riscv_int_numeric_corner_stream_11
                  li         t4, 0x1 #start riscv_int_numeric_corner_stream_17
                  li         t3, 0x1
                  li         s11, 0x0
                  li         a1, 0x0
                  li         s3, 0x0
                  li         s6, 0x6948c7b6
                  li         t0, 0x0
                  li         s10, 0x0
                  li         a7, 0x0
                  li         s8, 0x0
                  c.addi      a1, -1
                  nop
                  c.addi      s0, 15
                  c.nop
                  c.addi      tp, 30
                  c.nop
                  mul         s11, s6, s11
                  c.addi4spn  a3, sp, 192
                  mulhsu      s4, a5, gp
                  c.sub       a3, a4
                  c.sub       a3, a3
                  add         t4, s11, a2
                  mulhsu      a6, s11, t3
                  lui         s0, 171768
                  div         t0, s10, t3 #end riscv_int_numeric_corner_stream_17
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_13
                  li         t3, 0x0
                  li         s11, 0x0
                  li         s8, 0x60428023
                  li         a0, 0x0
                  li         s10, 0x0
                  li         a4, 0x0
                  li         s9, 0x0
                  li         a7, 0x0
                  li         tp, 0x1
                  c.addi4spn  a4, sp, 672
                  c.addi16sp  sp, 432
                  mulhu       zero, t5, t6
                  div         t4, t0, a0
                  c.addi      s4, 15
                  mulh        t0, a2, sp
                  sub         t0, s9, a2
                  mulh        ra, sp, a4
                  mulhsu      s6, t6, t0
                  div         zero, tp, s10
                  div         s11, s4, sp
                  nop
                  div         s0, t5, t3
                  addi        t3, s4, 900
                  lui         s0, 965953
                  mul         s10, gp, gp
                  rem         s11, s3, ra
                  addi        s6, s6, 846
                  div         tp, ra, s3
                  lui         zero, 1040396
                  lui         t2, 261696
                  c.addi      s7, -1
                  c.mv        a4, a4
                  mul         s9, s6, s0
                  sub         gp, s6, s8
                  c.addi16sp  sp, 16
                  li         a3, 0x0 #start riscv_int_numeric_corner_stream_9
                  li         a0, 0x83171af
                  li         a2, 0x0
                  li         s9, 0x0
                  li         ra, 0x0
                  li         tp, 0x1
                  li         t0, 0x1
                  li         sp, 0x1
                  li         t2, 0x0
                  li         s10, 0x1
                  sub         t2, a0, t2
                  auipc       t4, 783138
                  c.lui       ra, 18
                  add         s3, zero, sp
                  mulhsu      a2, a7, a4
                  addi        s1, s2, 1407
                  mul         a1, s5, tp
                  rem         s1, s2, s1
                  mulhsu      s1, s0, gp
                  c.sub       a3, a3
                  c.li        ra, 26
                  rem         t2, s5, zero
                  addi        s10, s8, -1342
                  c.addi16sp  sp, 96
                  nop
                  c.sub       a3, a3
                  c.lui       ra, 17
                  addi        s1, a3, 196
                  rem         tp, s7, t6
                  mulhsu      a1, t3, t1
                  c.nop
                  c.add       s3, t3
                  add         t2, s10, a1
                  mul         a3, zero, s1
                  c.addi      t3, 17
                  c.addi      s5, 31
                  li         t4, 0x1 #start riscv_int_numeric_corner_stream_0
                  li         s2, 0x0
                  li         t3, 0x0
                  li         a6, 0x0
                  li         gp, 0x0
                  li         s11, 0x45532989
                  li         s10, 0x0
                  li         s8, 0x0
                  li         a1, 0x0
                  li         s9, 0x0
                  c.add       a4, a6
                  lui         t4, 427601
                  nop
                  c.nop
                  rem         s2, s5, s5
                  c.lui       a3, 21
                  add         a7, zero, s11
                  c.addi4spn  a3, sp, 384
                  nop
                  add         a3, s8, a6
                  rem         s2, s1, s10
                  c.sub       a3, a3
                  c.addi      s2, -1
                  c.addi16sp  sp, 16
                  addi        a6, t1, -2001
                  nop
                  mulh        tp, s9, t5
                  mulh        zero, tp, t6
                  c.sub       a3, a3
                  mulhsu      zero, s5, s9 #end riscv_int_numeric_corner_stream_0
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_21
                  li         a0, 0x0
                  li         s11, 0x0
                  li         s7, 0x0
                  li         t3, 0x1
                  li         s10, 0x1
                  li         s9, 0x6c456b77
                  li         s1, 0x0
                  li         s8, 0x1
                  li         a6, 0x0
                  rem         s9, s1, a6
                  add         t0, a5, a6
                  c.addi      sp, 17
                  c.mv        ra, t3
                  c.addi4spn  a3, sp, 832
                  addi        a3, s8, -1772
                  mul         zero, s4, sp
                  c.addi4spn  a1, sp, 64
                  mulhsu      a1, t0, tp
                  c.li        t2, 15
                  c.add       t3, tp
                  c.mv        a6, s8
                  mulhu       a3, s7, gp
                  auipc       s3, 914814
                  mulh        s0, a3, a6
                  c.lui       s11, 19
                  c.addi4spn  a4, sp, 864
                  c.li        t0, 18
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_14
                  li         gp, 0x1174fb28
                  li         a7, 0x7a2da445
                  li         t3, 0x0
                  li         s10, 0x0
                  li         s5, 0x1
                  li         s2, 0x0
                  li         s11, 0x1
                  li         s9, 0x1
                  li         s8, 0x1
                  div         s6, a3, zero
                  mulhsu      sp, t3, s2
                  c.li        s9, -1
                  rem         a6, s2, a5
                  c.nop
                  mulh        a4, a4, s1
                  divu        s10, t0, s1
                  c.addi16sp  sp, 432
                  c.mv        ra, s5
                  c.lui       a1, 17
                  mul         s0, a3, a6
                  div         s9, s2, a1
                  rem         zero, s3, t0
                  c.addi      s11, 1
                  div         s9, ra, tp
                  c.add       ra, t4
                  mulh        s10, s9, s6
                  mulh        s8, s5, s1
                  divu        a4, s4, a4
                  c.addi16sp  sp, 192
                  auipc       t2, 264705
                  c.addi4spn  a0, sp, 320
                  c.mv        t3, gp
                  add         s6, a5, sp
                  c.add       s6, a4
                  c.addi4spn  a3, sp, 384
                  mulhu       s2, a3, a0
                  mulhu       s9, s7, s0
                  divu        s2, s9, a1 #end riscv_int_numeric_corner_stream_14
                  li         t4, 0x74239004 #start riscv_int_numeric_corner_stream_19
                  li         t3, 0x35aa9f2c
                  li         s11, 0x1
                  li         s10, 0x0
                  li         s9, 0x1
                  li         tp, 0x0
                  li         s8, 0x0
                  li         a0, 0x1
                  li         s1, 0x1
                  li         s2, 0x1
                  div         s7, s0, a5
                  c.li        ra, -1
                  c.sub       a3, a3
                  c.nop
                  c.nop
                  c.add       s3, s3
                  nop
                  nop
                  c.sub       a3, a3
                  lui         t2, 124609
                  mulhsu      t4, s6, s4
                  auipc       sp, 50702
                  c.lui       gp, 28
                  mulhu       zero, s9, sp
                  auipc       sp, 171923
                  mulhu       s9, s8, sp
                  mulhu       s3, t5, zero
                  rem         a3, s1, tp
                  add         s7, sp, t5
                  mulhu       a6, a4, s11 #end riscv_int_numeric_corner_stream_19
                  li         t4, 0x1 #start riscv_int_numeric_corner_stream_4
                  li         t3, 0x1
                  li         s9, 0x1
                  li         t2, 0x1
                  li         a0, 0x2a4887c7
                  li         s10, 0x1
                  li         s11, 0x1
                  li         a1, 0x0
                  li         s6, 0x6fc5a055
                  li         s8, 0x288640db
                  c.addi      s10, 27
                  mulh        zero, tp, s0
                  c.lui       s2, 2
                  addi        tp, a5, -787
                  nop
                  c.lui       a2, 2
                  nop
                  mul         t2, s4, s5
                  div         zero, t3, t2
                  divu        t1, a7, a1
                  mul         s2, a6, t5
                  mulhu       s5, a4, t1
                  mul         sp, s3, a5
                  c.lui       s11, 21
                  c.mv        gp, t3
                  c.addi4spn  a3, sp, 192
                  c.lui       s3, 30
                  sub         zero, s6, tp
                  c.nop
                  c.lui       s9, 23
                  li         t4, 0x3b9efe7 #start riscv_int_numeric_corner_stream_12
                  li         t3, 0x8f48c9f
                  li         s11, 0x0
                  li         s9, 0x1
                  li         s10, 0x0
                  li         a0, 0x0
                  li         a1, 0x1
                  li         s3, 0x0
                  li         gp, 0x0
                  li         s8, 0x0
                  mulhu       a1, s8, s1
                  c.addi      s9, 6
                  rem         a4, s5, s8
                  c.addi16sp  sp, -16
                  c.sub       a2, a3
                  c.sub       a3, a3
                  c.add       a3, t3
                  c.mv        t1, a7
                  c.addi4spn  a3, sp, 320
                  c.add       t1, a0
                  c.nop
                  nop
                  mulhsu      a2, a1, s9
                  div         a6, s10, s2
                  rem         t4, s7, tp
                  c.addi16sp  sp, -16
                  divu        t0, gp, t2
                  add         s2, s8, t0
                  nop
                  lui         s7, 1041598
                  c.addi4spn  a3, sp, 640
                  c.add       s8, s3
                  auipc       t1, 880135
                  c.sub       a3, a5
                  c.addi16sp  sp, -16
                  c.addi4spn  a3, sp, 128
                  add         s3, t0, s9
                  c.mv        s0, s11
                  sub         s11, gp, a5 #end riscv_int_numeric_corner_stream_12
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_30
                  li         t3, 0x0
                  li         s11, 0x1
                  li         t2, 0x0
                  li         a2, 0x4483d39d
                  li         gp, 0x0
                  li         s3, 0x0
                  li         a6, 0x1
                  li         a1, 0x0
                  li         s8, 0x6fc074c6
                  mulhsu      s8, s0, ra
                  sub         s10, ra, t5
                  mulhsu      s4, a0, s10
                  c.sub       a1, a3
                  c.sub       a3, a3
                  mulh        t3, t2, gp
                  mulh        t3, s3, zero
                  c.li        a4, -1
                  c.lui       a4, 9
                  c.nop
                  sub         ra, t1, s11
                  divu        s11, tp, t6
                  addi        s2, a7, 1738
                  c.addi      s3, -1
                  nop
                  c.addi      t4, 15
                  c.li        s11, 31
                  c.addi4spn  s0, sp, 832
                  c.li        gp, 24
                  addi        s10, a5, 1768 #end riscv_int_numeric_corner_stream_30
                  sltu        s3, t1, s4
                  c.li        gp, -1
                  c.sub       a3, s1
                  and         s6, a3, a4
                  srai        s8, zero, 26
                  and         s10, s7, gp
                  c.xor       a3, a3
                  sub         zero, a5, a5
                  or          s8, gp, s7
                  c.addi16sp  sp, -16
                  mul         gp, s4, a0
                  sll         s7, a6, gp
                  mulhu       s0, s0, s7
                  sub         a6, s10, s5
                  c.xor       a3, a3
                  srai        t3, ra, 30
                  xor         a1, t6, a7
                  sra         t1, a4, s8
                  mul         a0, gp, a7
                  srai        zero, s0, 4
                  add         zero, sp, t1
                  c.mv        sp, s10
                  auipc       a3, 216820
                  c.addi4spn  a3, sp, 64
                  div         a2, ra, a5
                  c.addi      a3, -1
                  srl         a3, a4, t1
                  c.srli      a3, 12
                  c.sub       a3, a5
                  c.li        sp, 0
                  slt         zero, a6, s7
                  srai        t2, s8, 23
                  c.slli      a7, 5
                  c.addi16sp  sp, -16
                  slt         a0, ra, s4
                  auipc       a3, 227180
                  divu        t0, gp, s3
                  c.addi16sp  sp, -16
                  div         a4, s3, s9
                  c.addi      tp, -1
                  c.li        s0, -1
                  mul         a3, t1, s3
                  divu        s6, ra, s3
                  c.addi      t4, -1
                  mulhsu      s5, sp, s6
                  c.xor       a3, a3
                  c.addi16sp  sp, 144
                  c.add       ra, tp
                  mulhu       sp, a7, a3
                  xor         a2, a2, s10
                  div         s2, tp, s1
                  sltiu       sp, a4, -2048
                  slti        gp, a2, -490
                  slt         a1, a3, s9
                  xor         sp, sp, s5
                  divu        s0, tp, t2
                  c.or        a3, a3
                  c.and       a3, a0
                  c.xor       a3, a3
                  srl         a7, zero, s1
                  xori        sp, t5, 1236
                  sltu        zero, s11, s11
                  divu        s6, s11, t1
                  c.srai      a3, 19
                  srli        s2, s7, 8
                  nop
                  c.or        a2, a3
                  sll         s1, s1, a0
                  c.and       a3, s0
                  srl         s8, s6, t4
                  nop
                  c.sub       a4, a3
                  c.addi      a4, -1
                  and         t3, zero, t2
                  c.mv        s11, ra
                  mulh        s10, a3, t2
                  ori         s1, s6, 851
                  nop
                  srl         s10, s5, zero
                  c.andi      a3, 6
                  c.add       a1, a0
                  c.or        a3, a3
                  c.add       t1, a4
                  srai        tp, s7, 13
                  lui         zero, 1045534
                  ori         s11, s9, 467
                  addi        s1, zero, 1378
                  c.srli      a3, 12
                  mulhu       s5, a4, a1
                  xori        zero, s7, -455
                  div         a6, t6, a4
                  and         tp, a3, a1
                  sltiu       a7, s7, 23
                  sll         gp, ra, ra
                  slli        a7, t3, 30
                  mulhsu      s0, s10, s0
                  c.addi      a7, 16
                  sub         s3, s11, a5
                  nop
                  mulhsu      t0, ra, s11
                  ori         t2, s7, -1967
                  c.lui       s0, 8
                  c.and       a3, a2
                  ori         s1, tp, -1130
                  srli        s9, t6, 14
                  c.addi      a0, -1
                  add         s11, t3, s11
                  srl         a0, a4, s4
                  auipc       s7, 179728
                  mul         s4, s4, s9
                  ori         a6, zero, 1574
                  c.and       a0, a3
                  nop
                  srl         s11, s3, a3
                  nop
                  c.srai      a3, 9
                  c.srli      a3, 28
                  addi        zero, s10, 971
                  mul         tp, tp, s8
                  c.andi      a3, 0
                  mulhsu      s10, t2, s1
                  nop
                  divu        a2, s6, s0
                  andi        ra, ra, 1630
                  sltu        a2, t6, gp
                  auipc       a0, 696582
                  sra         t4, s3, a6
                  c.srai      a3, 16
                  c.add       s2, s4
                  c.srli      a3, 8
                  mulhu       a2, t5, a4
                  c.add       a7, t2
                  add         t3, a2, s0
                  sltiu       zero, a2, 47
                  sra         sp, s10, s2
                  mulh        a2, a1, s7
                  c.addi      s11, -1
                  srai        t1, t0, 19
                  divu        s6, a7, tp
                  sra         a7, s8, ra
                  slt         t3, t6, ra
                  c.nop
                  c.addi16sp  sp, -16
                  c.sub       a3, a3
                  add         zero, s1, a5
                  divu        s7, t0, t3
                  sll         s11, s11, s8
                  srai        s8, s3, 25
                  auipc       a3, 252134
                  xori        s11, tp, 1152
                  andi        a3, sp, 1943
                  c.add       s8, sp
                  sltiu       t1, ra, -1775
                  nop
                  div         tp, s11, s10
                  srai        a6, s10, 9
                  sub         s8, s11, a5
                  sltiu       s7, gp, -179
                  c.addi4spn  a3, sp, 64
                  c.addi      ra, 14
                  xori        zero, t4, -1429
                  c.add       a3, gp
                  mulh        a4, s11, t1
                  sll         ra, a4, s9
                  c.addi16sp  sp, 288
                  nop
                  div         s3, a4, t0
                  lui         s3, 280573
                  c.addi4spn  a3, sp, 640
                  lui         a7, 705920
                  srli        s4, s1, 11
                  mulh        s0, a5, a1
                  and         s9, s6, s3
                  addi        a3, s5, 1720
                  xori        s3, s11, -1068
                  c.slli      s10, 1
                  c.slli      tp, 27
                  c.srli      a3, 28
                  c.addi16sp  sp, -16
                  mulh        s10, t4, a5
                  ori         a7, t4, 1725
                  c.sub       a3, a4
                  ori         s8, a1, 240
                  c.addi4spn  a3, sp, 304
                  slti        tp, s11, -658
                  srai        gp, s5, 21
                  srli        t2, zero, 8
                  srl         tp, s10, a5
                  nop
                  c.sub       a3, a3
                  rem         gp, s9, t2
                  c.sub       a3, a3
                  c.addi4spn  a3, sp, 608
                  c.addi16sp  sp, 240
                  div         gp, a7, t2
                  sltu        a2, s1, sp
                  c.addi      s1, 6
                  divu        a1, a2, a2
                  slti        ra, t6, 507
                  add         sp, t6, gp
                  c.nop
                  div         s11, s8, t0
                  c.mv        ra, s9
                  c.mv        s9, s11
                  andi        a7, s9, -1998
                  c.and       a3, a3
                  ori         a2, sp, 962
                  c.li        a2, 0
                  lui         a0, 461963
                  c.srai      a3, 14
                  rem         a1, a6, t6
                  c.andi      a3, 1
                  addi        a7, a2, 329
                  sll         zero, a5, a2
                  mulhsu      a7, a6, s2
                  c.mv        s7, s5
                  lui         a7, 147447
                  c.li        ra, -1
                  lui         s1, 98343
                  c.slli      s4, 16
                  c.and       a3, s0
                  c.srai      a3, 25
                  c.xor       a3, a3
                  c.slli      a4, 14
                  auipc       s5, 471149
                  addi        a4, s3, 1386
                  c.sub       a3, a3
                  auipc       t0, 515228
                  slt         t4, s0, a0
                  xor         t0, gp, t5
                  c.addi      s3, -1
                  sltu        t0, s7, a5
                  slt         s4, s8, a4
                  rem         s1, t0, a4
                  c.nop
                  rem         s1, s11, a2
                  and         zero, s6, ra
                  srl         s1, gp, a2
                  mulh        t3, a3, t6
                  or          s7, t6, s9
                  mulhu       t3, t3, s8
                  divu        s7, a0, a7
                  c.or        a0, a3
                  sltu        a0, s0, a4
                  c.srai      a3, 2
                  c.nop
                  divu        t4, a0, a2
                  slli        s11, a0, 21
                  c.add       ra, s10
                  slti        a4, a5, 1485
                  and         a4, t4, t6
                  slti        a0, t4, -1041
                  c.sub       a3, a3
                  auipc       s6, 77331
                  xor         s5, t4, a2
                  xor         s1, t4, a6
                  and         a7, ra, s8
                  lui         sp, 557812
                  c.sub       a3, a3
                  c.li        a4, -1
                  and         a6, t3, t0
                  mul         zero, t6, s10
                  c.slli      ra, 9
                  and         zero, s8, s4
                  mulh        t2, tp, a4
                  c.li        sp, 3
                  srl         t2, s11, s0
                  sra         a2, t5, t4
                  c.addi16sp  sp, 272
                  nop
                  sll         t3, a5, s6
                  xori        a2, t3, 907
                  sltiu       tp, ra, 1535
                  c.lui       s10, 26
                  c.add       t3, s2
                  sub         s0, a2, t6
                  mul         a0, a6, ra
                  c.add       a0, t0
                  c.and       a1, a3
                  mulhsu      a3, s2, sp
                  c.addi      s9, 23
                  srli        s7, sp, 23
                  c.mv        s1, s10
                  div         a1, s9, t4
                  c.slli      s1, 9
                  c.add       s6, a0
                  c.addi      ra, -1
                  and         t3, t5, s3
                  add         s1, s8, a3
                  srli        a3, a3, 27
                  slt         s9, tp, s1
                  srl         t1, t2, a6
                  srl         a6, gp, s7
                  addi        s8, s9, 1191
                  sltu        s11, s8, t0
                  or          s0, zero, a0
                  sltu        t4, t6, a5
                  xori        ra, s5, 601
                  slli        s1, a1, 1
                  slti        a3, t6, -1609
                  divu        t3, s3, tp
                  addi        zero, s7, 1544
                  c.addi4spn  a3, sp, 384
                  c.li        s9, -1
                  rem         s6, tp, sp
                  c.srli      s1, 4
                  div         a7, t2, gp
                  c.andi      a3, 6
                  c.addi16sp  sp, -16
                  c.and       a3, a4
                  lui         s9, 378912
                  c.mv        ra, t0
                  c.nop
                  mul         zero, s8, t0
                  add         gp, tp, a7
                  sltiu       t1, s11, -1750
                  c.lui       ra, 19
                  c.mv        a0, ra
                  slt         s7, t5, sp
                  c.addi16sp  sp, -16
                  mulhsu      s0, tp, s3
                  sub         t4, a4, s7
                  andi        s5, t4, 903
                  mulhu       s1, sp, s2
                  c.nop
                  div         s0, s4, gp
                  andi        t2, zero, 644
                  slt         s6, s8, a2
                  andi        zero, t0, 672
                  div         s5, sp, sp
                  addi        t2, t1, 894
                  sra         s10, zero, a2
                  xor         tp, a2, a0
                  c.addi      t2, -1
                  srl         s1, tp, s3
                  andi        zero, a1, 1821
                  divu        s11, t1, s10
                  sub         a2, a2, a0
                  lui         s5, 417701
                  and         s6, s6, a1
                  nop
                  mulhsu      s1, t2, s1
                  c.li        gp, -1
                  mul         zero, sp, s2
                  c.and       a3, a3
                  sra         ra, s4, a0
                  slt         a1, t1, s7
                  sltu        s11, s8, ra
                  and         tp, t1, a6
                  c.srli      a3, 22
                  sub         s5, s1, t6
                  div         zero, a5, a6
                  or          a2, zero, a0
                  c.lui       t3, 3
                  c.andi      a3, 4
                  or          zero, t3, ra
                  c.xor       a3, a0
                  c.xor       a3, a3
                  mul         zero, s7, t6
                  c.addi      sp, -1
                  or          s2, sp, gp
                  xori        a3, s1, -445
                  srl         s7, sp, t6
                  slli        zero, a7, 1
                  lui         s3, 84097
                  srai        tp, t4, 20
                  c.or        a3, a3
                  addi        ra, a0, -802
                  c.andi      a3, -1
                  c.xor       a3, a3
                  c.or        a3, a3
                  sll         a2, t2, ra
                  c.addi      s0, 2
                  c.and       a4, a2
                  c.slli      s11, 18
                  lui         s1, 536327
                  srai        zero, s0, 3
                  or          a7, a5, s5
                  c.srli      a3, 3
                  mul         gp, a5, a4
                  xori        gp, a6, -853
                  addi        a7, s10, -1052
                  div         s3, a2, tp
                  mulh        s8, s3, sp
                  c.or        a3, a0
                  xor         s9, s2, s7
                  andi        tp, tp, 1570
                  mulhsu      s11, t2, t6
                  sltiu       s3, s6, 21
                  c.addi      ra, 17
                  slli        s11, s9, 28
                  slli        s0, s8, 27
                  c.mv        s6, sp
                  mulhu       s1, s9, s3
                  c.sub       a3, a3
                  c.li        ra, -1
                  c.nop
                  divu        t3, s9, s0
                  ori         s10, a5, 785
                  addi        s0, a7, 1972
                  andi        zero, s4, -1850
                  sub         zero, ra, a7
                  c.lui       t2, 1
                  slt         s4, t3, gp
                  sltiu       t0, sp, -1980
                  rem         sp, a1, s5
                  sra         zero, s10, a3
                  c.add       s4, ra
                  c.or        a3, s1
                  c.andi      a2, 11
                  sll         s3, tp, a0
                  slt         s9, s8, a0
                  c.addi4spn  a3, sp, 896
                  c.or        a3, a3
                  srai        tp, t0, 9
                  nop
                  slt         a7, s7, t4
                  mulhsu      zero, a6, t0
                  c.slli      ra, 22
                  c.addi      t1, 23
                  div         s0, a1, s11
                  mulhsu      zero, s3, t2
                  c.and       a3, a3
                  c.srai      a3, 14
                  c.and       a3, a3
                  sltu        s0, s3, t0
                  c.lui       a1, 1
                  and         a2, a6, a7
                  sub         a3, a7, gp
                  mul         a6, t6, t4
                  mulhsu      gp, t2, a4
                  srl         s6, s5, s11
                  c.addi      ra, -1
                  srli        a7, t0, 0
                  sltiu       zero, t3, 453
                  c.and       a3, a3
                  auipc       a3, 691146
                  srl         s8, t1, a0
                  c.or        a2, a3
                  c.and       a3, a3
                  c.srli      a3, 12
                  auipc       ra, 348260
                  lui         gp, 528435
                  lui         a6, 115462
                  c.lui       s8, 16
                  c.mv        t3, s0
                  ori         a4, gp, 798
                  c.addi4spn  a4, sp, 832
                  c.addi      ra, -1
                  c.add       s11, s2
                  slli        ra, t6, 20
                  and         s8, s4, t4
                  sub         s0, a6, t3
                  c.nop
                  c.sub       a3, a3
                  divu        s1, t3, zero
                  xori        s6, s6, -439
                  c.srai      a3, 27
                  c.slli      s9, 25
                  sll         t1, s9, t2
                  xor         s3, t4, t6
                  srli        ra, a1, 6
                  sra         t0, a6, t3
                  xor         tp, s10, t0
                  addi        s8, tp, 1175
                  c.add       a2, ra
                  ori         s8, t3, 1514
                  xor         gp, a4, t4
                  mulhu       t0, a6, a1
                  c.lui       tp, 20
                  c.srli      a3, 1
                  andi        a1, s9, 1608
                  xori        ra, a5, 1230
                  sub         s6, t0, s8
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_10
                  li         gp, 0x72a1cf5
                  li         tp, 0x0
                  li         t3, 0x0
                  li         s7, 0x1f282c87
                  li         s3, 0x0
                  li         s6, 0x25b4f36
                  li         s11, 0x3dfa179f
                  li         sp, 0x0
                  li         a1, 0x1
                  c.sub       a3, a3
                  div         s8, s10, tp
                  c.addi16sp  sp, -16
                  c.addi4spn  a3, sp, 640
                  c.addi      s10, -1
                  c.addi4spn  a3, sp, 352
                  mulh        s1, t4, s2
                  c.li        ra, -1
                  c.mv        gp, s11
                  nop
                  mulh        zero, t5, a3
                  c.lui       ra, 14
                  div         s1, a6, s1
                  lui         s10, 1006848
                  divu        zero, t6, t0
                  add         s3, s1, ra
                  c.addi16sp  sp, 16
                  c.sub       a3, a3
                  c.addi4spn  a4, sp, 304
                  add         a7, t1, t3
                  lui         a6, 501011
                  c.sub       s1, a3
                  div         zero, zero, a6
                  add         sp, a0, gp #end riscv_int_numeric_corner_stream_10
                  mulhu       a6, s10, a6
                  slli        zero, t3, 4
                  c.addi4spn  a3, sp, 352
                  add         s9, tp, s8
                  c.nop
                  c.mv        s11, ra
                  rem         ra, tp, s3
                  rem         s10, t5, ra
                  c.andi      a3, -1
                  srai        zero, s1, 26
                  auipc       s1, 493392
                  c.addi4spn  a3, sp, 384
                  andi        s6, s6, 414
                  c.addi16sp  sp, 16
                  auipc       a4, 605823
                  c.add       ra, gp
                  c.nop
                  srai        t0, s9, 4
                  addi        t4, s11, 527
                  nop
                  div         s6, a7, t0
                  xor         t0, a5, a6
                  c.srli      a0, 9
                  sra         a2, s6, zero
                  addi        zero, a0, -2007
                  andi        a3, t1, -115
                  c.li        s11, -1
                  c.lui       ra, 7
                  and         a2, ra, a1
                  lui         tp, 578594
                  c.or        a3, a3
                  c.srai      a3, 4
                  c.sub       a3, a3
                  sra         s6, gp, s3
                  c.mv        t4, t3
                  srai        s11, t3, 7
                  c.mv        s1, tp
                  nop
                  rem         t3, t2, zero
                  c.mv        sp, t0
                  srai        a4, s0, 5
                  li         s4, 0x0 #start riscv_int_numeric_corner_stream_5
                  li         t4, 0x20ec39e7
                  li         s8, 0x1
                  li         s11, 0x0
                  li         t0, 0x0
                  li         s6, 0x0
                  li         s5, 0x1
                  li         t3, 0x1
                  li         s9, 0x1
                  li         a3, 0x40f50b5d
                  c.addi16sp  sp, -16
                  div         s7, a6, s1
                  c.sub       a3, a3
                  c.mv        s1, s1
                  add         zero, s5, a7
                  mulhu       s7, t4, s3
                  mulhsu      t1, s1, s3
                  divu        a1, t2, s6
                  c.nop
                  div         a3, s3, s7
                  c.addi4spn  a3, sp, 608
                  c.addi16sp  sp, 176
                  divu        a6, a7, t2
                  c.add       s2, t5
                  c.li        t2, -1
                  c.add       a7, t6
                  rem         a0, t3, s10
                  div         a1, a6, gp
                  div         s6, a6, a4
                  c.addi      s9, 4
                  mulh        s2, s1, a5
                  mulhu       t1, a3, s10
                  auipc       s11, 36034
                  sll         zero, s11, t4
                  add         a2, s4, ra
                  c.add       s11, s8
                  sra         s3, s3, a1
                  nop
                  c.or        a3, a3
                  c.or        a0, a3
                  add         s7, a5, a7
                  c.sub       a4, a3
                  c.xor       a3, a3
                  c.addi16sp  sp, 112
                  sub         s8, t5, s9
                  c.addi16sp  sp, 32
                  c.and       a3, a3
                  mulh        s5, t1, t3
                  c.andi      a3, 24
                  auipc       ra, 614574
                  ori         ra, a5, -1005
                  c.addi      ra, 5
                  c.srli      a3, 6
                  divu        s8, a2, zero
                  mulhu       t0, a4, a6
                  c.srli      a3, 4
                  xori        s5, s10, -633
                  c.xor       a1, a3
                  sub         zero, s1, s8
                  c.andi      a3, -1
                  sltiu       tp, t0, -644
                  auipc       s8, 199379
                  c.nop
                  sltiu       s7, s10, 86
                  div         zero, tp, s7
                  slti        s4, s0, 1496
                  mulh        a0, s9, gp
                  addi        ra, t6, -1884
                  slti        s11, t2, -1786
                  srai        s4, s7, 12
                  mulhu       ra, a4, t0
                  nop
                  slli        tp, ra, 1
                  srl         a6, s7, s3
                  c.add       t0, s4
                  mulhu       t3, s2, tp
                  c.srai      a3, 20
                  mul         a3, gp, ra
                  auipc       a7, 732410
                  mul         t2, s5, s1
                  rem         a6, gp, zero
                  c.srai      a3, 8
                  auipc       s6, 788710
                  c.slli      s11, 6
                  ori         s9, t3, -1029
                  srai        s1, t4, 26
                  nop
                  c.or        a3, a3
                  c.addi      s6, -1
                  auipc       zero, 871663
                  nop
                  add         zero, s0, t4
                  c.slli      a6, 17
                  divu        t3, ra, s7
                  srli        s5, gp, 6
                  c.and       a0, a3
                  srli        t0, t4, 14
                  c.or        a3, s1
                  mulh        zero, ra, t2
                  ori         s6, a3, -783
                  xori        zero, t0, 636
                  or          t4, a0, s10
                  auipc       zero, 710207
                  c.add       a1, a0
                  mulhu       s0, ra, zero
                  mul         a7, a6, a0
                  sra         gp, a3, s5
                  c.add       s1, a7
                  c.addi16sp  sp, -16
                  add         zero, t1, s1
                  slli        t4, a1, 29
                  sra         sp, s4, s2
                  xori        t2, s5, 1956
                  c.add       a3, t6
                  mulhsu      t3, a1, s0
                  lui         t4, 336620
                  c.xor       a3, a3
                  c.slli      s8, 19
                  sltiu       t1, gp, 1052
                  lui         a7, 617236
                  xori        s1, a7, -512
                  c.srai      a3, 20
                  c.andi      a3, 28
                  sltu        s6, a0, t4
                  c.or        a3, a3
                  ori         t1, t6, 1216
                  mulhu       s5, s2, s7
                  auipc       s1, 153150
                  slli        s9, s1, 6
                  slli        zero, t0, 20
                  sltu        s7, t5, gp
                  c.addi4spn  a3, sp, 640
                  sll         t2, a4, zero
                  srli        ra, a1, 18
                  andi        a6, s9, 16
                  andi        t4, s2, 2031
                  divu        s9, a7, t5
                  slli        gp, s0, 15
                  sll         a0, s11, a2
                  c.or        a3, a1
                  c.lui       t0, 13
                  c.srli      a3, 22
                  sra         a7, t4, a1
                  srai        t2, t2, 8
                  li         s3, 0x1 #start riscv_int_numeric_corner_stream_16
                  li         t4, 0x0
                  li         t3, 0x0
                  li         s11, 0x32c75b7e
                  li         a0, 0x0
                  li         s10, 0x1
                  li         a3, 0x0
                  li         s9, 0x1
                  li         a2, 0x0
                  li         s2, 0x0
                  c.nop
                  lui         zero, 306356
                  mulh        zero, s9, s0
                  sub         zero, ra, s1
                  mulhu       s9, a0, s5
                  addi        s0, s3, 2024
                  c.add       a3, s5
                  c.add       s0, t5
                  c.add       s2, t0
                  mulhu       s5, s7, t3
                  c.addi16sp  sp, 320
                  c.mv        s1, a5
                  nop
                  add         t4, a1, t1
                  divu        s8, a1, a0
                  c.nop
                  c.sub       a2, a3
                  c.li        a6, -1
                  c.mv        s7, t5
                  rem         tp, t2, s5
                  addi        s2, t1, -829
                  c.addi4spn  a3, sp, 640
                  div         s10, s11, a1
                  rem         a4, t2, gp
                  rem         s6, s2, s9
                  c.addi16sp  sp, -16
                  c.or        a3, a4
                  c.addi4spn  a2, sp, 128
                  c.or        a3, a3
                  addi        gp, a7, 1736
                  c.andi      a3, -1
                  divu        s0, a6, s0
                  sub         s1, a0, zero
                  srli        s7, s3, 16
                  c.or        a3, a3
                  andi        a0, s8, -1463
                  c.mv        t2, a4
                  sltiu       a3, s4, 1869
                  lui         zero, 465
                  c.sub       s1, a3
                  mulh        a4, t1, s8
                  c.lui       s6, 6
                  xori        a2, t0, -917
                  c.li        sp, 18
                  c.mv        s8, sp
                  c.addi      s7, -1
                  mulhsu      a6, t5, s2
                  slli        a1, sp, 9
                  c.sub       s1, a5
                  xor         zero, a7, tp
                  srai        a4, t1, 19
                  c.addi4spn  a3, sp, 192
                  div         a7, s0, a6
                  addi        zero, a2, 1292
                  c.sub       a0, a3
                  c.andi      a3, 1
                  or          a3, a2, t5
                  c.nop
                  c.slli      tp, 10
                  srai        t1, ra, 27
                  div         t3, s7, s10
                  or          a3, t6, sp
                  srai        t1, t4, 14
                  srai        a0, t2, 14
                  mul         s5, sp, t0
                  c.and       a3, a3
                  c.nop
                  c.lui       s6, 1
                  c.xor       a3, a5
                  auipc       zero, 687625
                  xori        t3, s7, 1489
                  c.mv        ra, t2
                  andi        a6, a1, 1075
                  srli        a1, t0, 4
                  mulhsu      t1, s3, s10
                  mulhu       s10, s9, s8
                  andi        t0, s11, -833
                  xori        zero, zero, -567
                  mulhsu      a3, t0, s7
                  auipc       s3, 754560
                  mulhu       a1, s9, s2
                  c.lui       ra, 2
                  lui         s9, 666808
                  slt         s0, t4, t6
                  sub         zero, s4, a0
                  rem         s6, a3, s0
                  lui         a7, 505711
                  lui         s5, 197604
                  rem         ra, a3, ra
                  div         a2, s4, a4
                  c.srli      a3, 23
                  sll         s7, s2, t5
                  rem         s10, t1, s3
                  srai        t3, sp, 4
                  sub         a1, s1, sp
                  andi        a3, zero, 251
                  slt         s11, s11, s7
                  mulh        ra, s4, a3
                  c.li        s8, -1
                  srli        t0, t5, 21
                  c.srai      a3, 11
                  divu        zero, t3, t6
                  c.andi      a3, -1
                  sll         t3, s7, s10
                  mul         t0, gp, s10
                  slti        a7, s5, -1535
                  c.xor       a3, a3
                  c.or        a3, a3
                  sltiu       s0, a3, -287
                  c.srai      a3, 18
                  c.srli      a3, 8
                  srai        s2, ra, 22
                  sub         t1, zero, a7
                  c.or        a3, a3
                  sub         s1, t0, s9
                  or          s6, a7, t6
                  c.srai      a3, 18
                  sltiu       s5, a4, 129
                  div         zero, sp, t1
                  divu        s5, a6, a2
                  c.add       s8, s0
                  and         s5, s4, a0
                  div         tp, t2, s6
                  sub         t3, a4, t4
                  c.srai      a3, 16
                  sra         ra, a1, a6
                  andi        a4, sp, 757
                  rem         zero, s10, s0
                  c.addi16sp  sp, -16
                  c.addi4spn  a3, sp, 832
                  add         s0, a7, a1
                  slti        t2, s3, 184
                  ori         s2, s3, 1776
                  c.andi      a3, 20
                  slt         a0, tp, t6
                  srl         tp, a1, s4
                  sub         a7, a2, t1
                  c.sub       a3, a3
                  srl         gp, a7, sp
                  c.srai      a3, 12
                  c.xor       a3, a3
                  c.addi      s5, -1
                  c.addi16sp  sp, 352
                  c.or        a3, a5
                  c.sub       a3, a2
                  auipc       s3, 906142
                  c.add       ra, s10
                  sltu        s8, s8, s4
                  auipc       zero, 957827
                  c.andi      a3, 1
                  c.addi16sp  sp, -16
                  c.nop
                  sra         a3, s10, s8
                  c.srai      s1, 6
                  c.slli      a0, 8
                  add         t2, s7, s2
                  div         s10, t0, gp
                  c.addi      t4, -1
                  lui         s0, 976814
                  c.srai      a3, 4
                  c.andi      a3, -1
                  srai        s8, t4, 6
                  ori         a7, s0, -116
                  sltu        a1, a6, s7
                  slli        a6, sp, 19
                  andi        a2, t6, -1338
                  sltiu       s11, a4, 297
                  lui         ra, 893428
                  sub         t1, a3, s1
                  sltiu       tp, t6, -1499
                  c.addi4spn  a3, sp, 320
                  c.nop
                  c.andi      a3, -1
                  slli        gp, s11, 3
                  ori         a7, s1, -1500
                  c.or        a3, a3
                  mulhu       a2, a0, s5
                  divu        a2, a0, gp
                  divu        sp, t5, ra
                  divu        s3, t0, s5
                  c.or        a3, a3
                  andi        zero, ra, -325
                  slti        t1, s8, -1221
                  srl         s11, s11, t1
                  auipc       a3, 981700
                  and         s0, s7, a0
                  c.slli      a4, 9
                  c.addi16sp  sp, 352
                  c.or        a1, a3
                  c.nop
                  c.xor       a3, a2
                  divu        s2, s11, gp
                  mulhsu      a1, s3, s11
                  srai        s2, t0, 0
                  c.lui       s5, 24
                  rem         zero, s8, t0
                  c.addi16sp  sp, -16
                  slli        t3, t0, 24
                  c.sub       a3, a3
                  srai        s3, t5, 28
                  srli        t0, t3, 25
                  c.xor       a3, a3
                  c.sub       a3, a3
                  lui         zero, 12930
                  mulhu       s3, s9, zero
                  c.mv        s10, s5
                  div         zero, t2, t5
                  c.slli      ra, 14
                  c.xor       a3, a3
                  addi        a6, ra, 217
                  slti        t3, a7, -2002
                  nop
                  lui         s6, 252355
                  c.srai      a3, 18
                  c.addi4spn  a3, sp, 320
                  rem         a0, s5, t6
                  mul         a7, a5, s3
                  sltu        s8, a7, s3
                  sub         s6, t3, s9
                  xori        s10, s1, -381
                  sra         a3, s0, t2
                  c.nop
                  c.li        s8, 4
                  addi        s2, s3, 1912
                  c.or        s1, a3
                  c.slli      a2, 11
                  srli        zero, sp, 16
                  add         a3, t4, a7
                  rem         s0, s10, s1
                  c.mv        s4, s10
                  c.lui       s2, 24
                  mulh        s5, t5, s5
                  c.srai      a4, 8
                  addi        sp, a2, 569
                  lui         zero, 999123
                  sra         a1, sp, s5
                  mulhu       s9, gp, t1
                  mulhu       tp, a1, s2
                  c.mv        s10, a6
                  c.li        ra, 24
                  c.addi16sp  sp, 256
                  c.li        s3, 16
                  srai        t3, a5, 15
                  c.mv        a3, t5
                  sltu        tp, tp, s5
                  or          gp, t1, s3
                  add         t1, t6, tp
                  c.add       ra, a2
                  and         zero, a1, ra
                  nop
                  c.add       ra, s0
                  c.andi      a3, 6
                  sra         s4, a5, tp
                  sub         s3, a7, s4
                  sltiu       a4, s7, -1504
                  slti        sp, a5, -391
                  andi        a1, t0, 1354
                  c.or        a3, a3
                  c.srai      s1, 18
                  lui         a3, 1003475
                  mulh        a3, ra, gp
                  sll         ra, s11, gp
                  c.slli      ra, 15
                  c.and       s0, a3
                  c.xor       a3, a3
                  lui         s9, 159454
                  xor         t4, s5, s10
                  auipc       s0, 16568
                  and         s1, a2, s8
                  c.addi      s5, -1
                  add         t2, a4, s9
                  add         zero, zero, t5
                  slli        t1, zero, 27
                  c.srai      a0, 21
                  sll         s11, t3, a6
                  mulhu       s11, s8, s7
                  mulh        sp, s8, a4
                  auipc       t2, 1029950
                  c.nop
                  andi        ra, a3, -1584
                  rem         zero, a3, t3
                  nop
                  xor         s0, tp, gp
                  nop
                  c.or        a3, a3
                  c.addi4spn  a0, sp, 624
                  nop
                  mulh        sp, t0, a1
                  c.lui       t3, 21
                  div         t0, a4, s8
                  mulhsu      s11, s1, s11
                  c.lui       a7, 30
                  slti        s9, s5, -401
                  c.srai      a3, 27
                  c.add       s2, s7
                  addi        a2, t2, -1447
                  c.addi      gp, -1
                  mul         a2, a5, t6
                  add         zero, t2, s9
                  c.or        a3, a3
                  c.lui       ra, 11
                  srl         s5, s2, s1
                  div         t3, ra, a4
                  mul         a2, a7, s6
                  c.xor       a3, a3
                  c.mv        s5, s2
                  xor         t1, t2, t3
                  auipc       t1, 590430
                  lui         s11, 588489
                  srl         s8, s6, s10
                  sub         s7, t1, t5
                  nop
                  c.addi4spn  a3, sp, 576
                  or          s4, t3, s8
                  sll         a6, tp, a1
                  c.addi      t1, -1
                  c.mv        s7, s3
                  xori        t1, s4, -1506
                  slti        t0, a0, -515
                  slti        t3, s0, -1373
                  mulhsu      zero, a5, gp
                  ori         zero, s8, -1714
                  or          a3, a4, a3
                  ori         tp, t3, -285
                  c.mv        a7, s3
                  srai        s5, t6, 8
                  c.nop
                  or          t1, t0, t0
                  c.srli      a3, 21
                  sll         s9, s3, t3
                  c.lui       s6, 25
                  nop
                  sltu        s5, s9, a0
                  c.addi4spn  a3, sp, 608
                  sub         zero, t1, a7
                  auipc       s6, 773804
                  lui         s2, 853737
                  c.andi      a3, -1
                  addi        t3, ra, -1296
                  mul         s8, ra, s6
                  ori         a2, s10, -569
                  c.andi      a3, -1
                  c.srai      a4, 30
                  mulh        s6, a1, a2
                  c.srli      a3, 16
                  c.sub       a3, a3
                  mul         s4, s3, s7
                  slli        gp, s6, 6
                  srl         a2, s6, a0
                  c.add       s2, s5
                  sub         s2, tp, a3
                  c.and       a3, a3
                  c.or        a2, a3
                  and         t2, t2, t1
                  add         a1, s10, a0
                  c.addi16sp  sp, -16
                  mulhsu      s11, s6, t0
                  c.slli      a1, 27
                  xor         t4, s6, a2
                  mulhu       zero, a0, s0
                  and         s3, a0, s2
                  addi        s5, t3, 333
                  c.li        a1, -1
                  or          zero, t6, s6
                  andi        s10, a5, 330
                  sltiu       sp, s7, 995
                  nop
                  c.sub       s0, a3
                  c.add       ra, gp
                  or          t0, a5, t5
                  sub         s0, s0, a3
                  sll         a4, s0, s2
                  divu        a7, s5, t3
                  c.lui       s0, 21
                  rem         zero, t1, s11
                  nop
                  c.addi16sp  sp, 80
                  c.srli      a3, 25
                  srli        s1, t6, 0
                  rem         s3, sp, t3
                  c.addi4spn  a3, sp, 128
                  c.addi      t4, -1
                  addi        t2, a0, -809
                  mul         s6, s10, s9
                  addi        s4, a3, 1334
                  c.add       ra, a6
                  addi        zero, s8, 1992
                  and         a6, sp, s0
                  sra         t0, ra, s11
                  slt         zero, a4, s0
                  mulhu       zero, a2, s10
                  mul         a7, t4, s4
                  c.slli      s6, 4
                  c.addi4spn  a3, sp, 384
                  srl         s2, s8, a6
                  sltu        t4, s10, s9
                  c.or        a3, a3
                  c.add       ra, s0
                  addi        s11, t6, 1248
                  and         zero, a5, a3
                  andi        zero, s0, -1038
                  c.addi4spn  a3, sp, 464
                  c.lui       s3, 2
                  sub         s11, zero, s1
                  srl         a7, t2, s8
                  sll         s2, a2, s11
                  sltiu       a0, s0, 8
                  andi        t3, gp, 1066
                  and         t3, sp, a3
                  c.add       ra, s8
                  sltiu       t1, a4, -1321
                  c.srai      a3, 16
                  c.add       ra, s7
                  slti        s11, s3, 218
                  c.lui       a0, 27
                  c.slli      s4, 18
                  c.srai      a3, 5
                  slt         zero, s8, t4
                  c.nop
                  rem         a1, t3, s1
                  xori        a7, a5, -1929
                  sll         t3, s10, t0
                  nop
                  c.mv        gp, t3
                  c.nop
                  c.andi      a3, -1
                  auipc       s11, 244492
                  div         t1, gp, s4
                  c.add       t2, s1
                  addi        s5, a5, -828
                  slli        s7, a6, 27
                  c.srli      a3, 31
                  c.slli      a2, 13
                  c.srli      a1, 25
                  slli        a3, s3, 14
                  mul         ra, a2, s4
                  c.mv        t3, s0
                  c.addi      s8, -1
                  mul         tp, tp, s2
                  slt         a4, s8, a5
                  c.andi      a3, 9
                  divu        zero, t0, a5
                  mul         s11, zero, t6
                  srl         ra, tp, a0
                  c.li        s9, -1
                  addi        tp, a7, 781
                  c.addi16sp  sp, -16
                  and         zero, s1, ra
                  c.addi4spn  a2, sp, 352
                  ori         t4, t1, 786
                  div         s4, t1, s0
                  srai        zero, s1, 1
                  mul         s2, sp, gp
                  sra         s3, a3, tp
                  c.lui       s1, 27
                  and         t3, s0, a0
                  add         a4, t0, ra
                  addi        s5, s3, 1215
                  mulh        ra, tp, t5
                  c.nop
                  slti        a6, s4, 353
                  c.li        s7, -1
                  c.lui       a7, 24
                  sltu        zero, s11, t3
                  auipc       t1, 106351
                  andi        s5, s9, -137
                  or          s5, ra, a0
                  mulhsu      a7, t5, sp
                  c.xor       a4, a3
                  rem         s9, a2, t4
                  c.addi      s10, 22
                  or          zero, s8, s9
                  c.addi4spn  a3, sp, 736
                  mulhu       t0, s3, s2
                  add         zero, ra, t1
                  andi        t3, zero, -1129
                  srli        s2, a6, 10
                  c.xor       a3, a3
                  xor         a3, sp, t0
                  c.add       ra, ra
                  sub         t1, sp, s7
                  sltu        tp, s10, gp
                  slli        s1, a2, 29
                  c.lui       s11, 25
                  add         a2, t6, s9
                  c.sub       a3, s0
                  mulh        s5, t0, s9
                  c.addi      s2, 21
                  slli        t3, t6, 18
                  sltu        s9, a2, tp
                  c.slli      s8, 20
                  sltiu       t0, a3, 596
                  auipc       ra, 1046587
                  c.nop
                  slti        s1, a1, -1640
                  sra         s1, a4, s10
                  auipc       s4, 396897
                  c.lui       ra, 1
                  c.li        sp, 30
                  sltiu       s7, ra, 939
                  nop
                  lui         sp, 1030762
                  c.andi      a3, -1
                  or          s8, t2, tp
                  c.or        a4, a3
                  mul         a4, a1, a1
                  sltiu       a3, a4, 676
                  div         tp, a0, t0
                  add         gp, s5, a1
                  mul         t3, a5, t2
                  xor         ra, s4, t6
                  lui         s5, 1001873
                  c.andi      a3, -1
                  sra         ra, t3, t1
                  slli        tp, t3, 4
                  c.andi      a3, -1
                  mulhu       a4, t0, a0
                  srli        s8, s3, 0
                  mulh        a7, s1, a5
                  c.srai      a3, 4
                  or          t4, s3, zero
                  slti        ra, t0, -195
                  c.srai      a3, 28
                  or          a6, t6, tp
                  srai        s8, a1, 12
                  mulh        a4, s5, s2
                  rem         s0, s6, s5
                  srl         tp, s5, gp
                  divu        t4, t4, a1
                  sltu        zero, s9, a1
                  slli        tp, s8, 26
                  auipc       zero, 775749
                  srai        s5, a5, 10
                  slli        ra, s3, 22
                  slli        s2, a2, 5
                  mulhu       s10, s5, s9
                  c.addi4spn  a3, sp, 144
                  c.srai      a3, 13
                  c.andi      a3, 30
                  c.nop
                  ori         s5, t3, 1554
                  mul         zero, t5, s7
                  mulh        t2, a7, a6
                  sll         tp, a3, s7
                  srai        a4, sp, 1
                  mulhsu      sp, tp, ra
                  c.lui       a1, 23
                  mulh        s6, s11, a1
                  c.li        ra, -1
                  or          a3, s6, t1
                  sub         t1, t6, a7
                  c.slli      ra, 18
                  sll         a4, s2, t0
                  c.sub       a3, a3
                  sub         ra, a3, s6
                  c.mv        s0, tp
                  divu        t1, tp, a2
                  div         a0, s9, t5
                  sltiu       t0, ra, -286
                  c.nop
                  c.nop
                  c.xor       s0, a3
                  c.lui       a2, 12
                  divu        a0, s10, s10
                  c.srai      a3, 13
                  divu        s4, a7, ra
                  srl         t3, s3, sp
                  slt         zero, t6, s0
                  c.lui       s9, 29
                  sub         a3, s4, zero
                  xor         s10, s6, s11
                  xori        s9, a5, 746
                  slti        s7, t6, 799
                  mulhsu      a4, s4, s8
                  srli        zero, zero, 15
                  mulhsu      a4, tp, a5
                  c.nop
                  and         zero, s4, a3
                  add         s3, s10, s2
                  lui         s5, 956997
                  c.and       a3, a5
                  c.nop
                  slli        s11, t2, 12
                  div         t0, t5, tp
                  divu        t2, t3, s5
                  nop
                  rem         s11, t5, s10
                  sub         tp, t4, s6
                  c.or        a3, a3
                  xori        zero, sp, -1654
                  or          s7, a2, t5
                  xor         tp, a5, s10
                  addi        t3, s10, -893
                  c.addi4spn  a3, sp, 320
                  xori        s6, zero, 651
                  c.addi      a3, -1
                  c.andi      a3, 22
                  or          s5, tp, t0
                  addi        s11, t0, 1158
                  c.and       a3, a3
                  c.xor       a3, a4
                  divu        s0, a5, a0
                  c.nop
                  mulh        s9, s11, a0
                  c.lui       ra, 23
                  add         s7, t6, ra
                  c.srli      a3, 27
                  sltiu       t1, a6, -529
                  or          zero, a4, t0
                  c.addi      s9, 20
                  c.and       a4, a0
                  c.srli      a3, 25
                  add         a1, s6, t6
                  sub         a7, a5, s10
                  c.sub       a2, a3
                  sra         gp, ra, s8
                  or          a7, a0, s0
                  c.mv        a0, s0
                  c.addi4spn  a3, sp, 704
                  andi        zero, s10, -1384
                  nop
                  c.andi      a3, -1
                  c.li        a3, -1
                  andi        a4, s11, 1623
                  sltiu       t1, s3, -1375
                  c.and       a1, a3
                  c.srli      a0, 19
                  mul         s11, tp, t2
                  srl         t0, t0, t6
                  c.srli      a2, 10
                  c.or        a3, a3
                  rem         s5, s9, a0
                  sub         s8, zero, t4
                  c.li        s2, -1
                  c.andi      a3, 31
                  slli        tp, t1, 1
                  xori        a2, s7, -1145
                  c.and       a4, a3
                  c.lui       gp, 18
                  c.srai      a3, 15
                  slli        s7, s9, 0
                  slti        s11, a7, 282
                  sub         s3, s11, t5
                  sub         s5, a1, s7
                  srl         s4, gp, s7
                  srli        ra, t1, 10
                  srl         s0, t4, s7
                  rem         t0, zero, t4
                  c.li        a0, 13
                  c.addi4spn  a3, sp, 128
                  c.mv        t4, s11
                  lui         t0, 662243
                  c.andi      a3, -1
                  slti        s5, a7, -610
                  div         t4, s5, s4
                  c.addi      gp, -1
                  srl         t3, s8, t0
                  xor         a4, s4, t1
                  sub         a7, s2, t1
                  rem         a6, s6, a7
                  srai        tp, s3, 12
                  sll         a6, s7, t4
                  xori        t0, gp, -1776
                  or          t1, a7, a2
                  or          zero, s6, t5
                  and         s3, a2, a3
                  c.add       s1, s2
                  c.or        a3, a3
                  sra         t0, s7, t4
                  c.or        a3, a3
                  add         a6, tp, a2
                  slli        t4, s10, 26
                  srai        zero, s1, 16
                  c.and       a3, a3
                  slt         a1, a2, s3
                  c.addi4spn  a3, sp, 576
                  sra         a0, a1, s8
                  mul         s3, tp, ra
                  c.srli      a3, 17
                  lui         s10, 994928
                  c.or        a3, a3
                  sltiu       s9, s1, -1973
                  sra         tp, zero, t0
                  c.and       a3, a3
                  c.srli      a3, 19
                  divu        t3, s7, gp
                  srai        a3, a2, 31
                  ori         s9, t2, -2026
                  c.srli      a3, 11
                  and         ra, s6, ra
                  srl         a3, a5, t2
                  sll         tp, a0, a2
                  slt         a3, s10, t3
                  c.andi      a3, 13
                  srli        a1, s9, 19
                  addi        t1, s7, 529
                  sltiu       s0, gp, -954
                  c.li        a4, 22
                  sltu        t4, s0, zero
                  srl         t0, t1, t4
                  srai        s8, s0, 22
                  slti        t3, s5, -1273
                  c.and       a3, a3
                  or          s5, t4, t1
                  sra         s5, t4, a5
                  c.mv        ra, a2
                  srli        zero, s10, 20
                  mulh        s11, s4, s6
                  c.nop
                  srai        s1, a6, 24
                  div         a3, t4, a2
                  c.addi      s3, -1
                  sltiu       ra, a5, 1383
                  nop
                  c.nop
                  or          s6, a0, s4
                  addi        zero, s5, -526
                  sub         s11, t0, a7
                  add         a2, a0, s8
                  c.srli      a3, 6
                  mulhu       s6, a0, a1
                  slli        s3, s4, 2
                  andi        s6, s9, -1193
                  c.slli      a7, 26
                  sub         tp, s10, ra
                  c.andi      a3, 10
                  or          ra, t0, s1
                  c.mv        s10, s2
                  sub         zero, t0, s11
                  c.slli      a0, 29
                  sub         sp, a4, t4
                  xori        s3, zero, -1878
                  mulhsu      t3, a2, s0
                  sltu        a0, a0, s7
                  c.or        a3, a2
                  nop
                  c.and       a3, a3
                  c.lui       s8, 14
                  xori        a3, a5, 1267
                  xori        gp, t6, -1214
                  sra         gp, s8, a2
                  c.add       ra, s5
                  c.xor       a3, a0
                  c.li        ra, -1
                  rem         t4, sp, s2
                  sltu        s6, a5, a4
                  c.sub       a3, a3
                  or          t1, t6, s2
                  or          s10, s9, t0
                  add         t3, s6, t1
                  c.xor       a3, a3
                  c.slli      s1, 22
                  mul         a6, t3, t6
                  c.li        t0, -1
                  c.or        a3, a3
                  slli        a1, a6, 5
                  c.lui       a7, 19
                  mulhu       s1, sp, s4
                  ori         t1, a6, -1964
                  sll         a4, a7, gp
                  or          s0, a5, s6
                  slti        s2, sp, 1565
                  andi        zero, ra, -413
                  c.addi4spn  a3, sp, 640
                  mul         s0, s10, a2
                  c.lui       ra, 27
                  xor         s0, zero, s2
                  c.srai      a3, 16
                  mulhsu      s0, t3, a6
                  mulh        zero, t2, t1
                  c.srai      a3, 13
                  srai        s3, t2, 23
                  mulhsu      gp, s11, a2
                  xori        s3, a2, -20
                  andi        s8, a2, 1257
                  sltiu       s0, a5, -604
                  mulhsu      zero, a4, s10
                  divu        s5, s7, a1
                  lui         a2, 743498
                  and         t1, s4, zero
                  addi        s9, a4, 916
                  sltu        s8, s9, tp
                  or          t2, ra, s7
                  sltu        t3, tp, ra
                  nop
                  c.slli      sp, 22
                  sra         zero, a4, s6
                  c.li        a6, -1
                  c.nop
                  addi        a2, t3, 1607
                  sub         a7, t6, s5
                  div         gp, a5, t4
                  sll         a1, s1, s9
                  c.xor       a3, a3
                  addi        a7, t1, -1813
                  lui         s2, 501403
                  c.slli      a0, 4
                  nop
                  slli        zero, t5, 22
                  sltu        a4, s6, s0
                  slli        t2, sp, 8
                  auipc       a2, 262735
                  sll         ra, tp, a2
                  and         a7, s4, a5
                  sll         t2, t3, s0
                  c.nop
                  c.xor       a3, a3
                  srai        s2, t6, 11
                  xori        s0, s3, 1727
                  div         a3, a5, s7
                  c.and       a3, a3
                  slt         gp, a2, t3
                  slt         a7, s7, t1
                  mulhu       ra, a4, s9
                  slli        t4, s5, 2
                  mulh        zero, ra, s10
                  ori         zero, a5, 1496
                  c.addi      t4, -1
                  mulhsu      t3, sp, a6
                  mulhsu      s4, a3, a5
                  mulh        s2, a4, t0
                  c.nop
                  c.srai      a3, 9
                  sub         s4, a7, zero
                  addi        a3, a0, -411
                  c.srli      s1, 9
                  c.add       s8, t2
                  lui         t2, 773948
                  and         zero, a4, t5
                  rem         ra, gp, s10
                  c.addi16sp  sp, 48
                  and         s11, t2, t1
                  slli        s0, t4, 15
                  xori        a1, t0, -614
                  srl         a6, s0, s10
                  auipc       t4, 14177
                  mulh        t3, tp, s3
                  mulhsu      gp, a5, a1
                  div         s8, a1, gp
                  srli        s9, s4, 3
                  sltu        a6, a2, a6
                  mul         s9, s5, sp
                  srli        a6, gp, 16
                  srli        ra, s2, 28
                  xor         sp, s3, gp
                  sra         s11, a5, ra
                  c.addi4spn  a3, sp, 112
                  or          a2, a3, a1
                  c.addi      s1, -1
                  sltu        t1, s5, t0
                  nop
                  sra         a1, s0, s11
                  c.sub       a3, a3
                  mulhsu      s11, s6, t6
                  addi        sp, s8, 1919
                  slti        t2, s4, 1421
                  slti        t3, zero, -1237
                  and         a4, t5, s7
                  c.sub       a3, a3
                  sra         t4, a6, s9
                  srai        s10, a1, 24
                  or          zero, t5, s0
                  c.nop
                  srli        zero, s0, 11
                  slt         t2, s3, t3
                  slli        s0, t2, 7
                  lui         ra, 445491
                  and         s9, s7, zero
                  mulh        s5, a6, s2
                  c.andi      a3, 12
                  divu        a6, a6, ra
                  c.nop
                  addi        s1, t1, 1036
                  addi        s4, a2, -1348
                  or          s2, s10, s4
                  srl         s7, t5, a6
                  xori        zero, t0, 573
                  div         s3, s6, a2
                  c.and       a3, a3
                  srl         s3, s3, s4
                  c.srli      a3, 4
                  rem         zero, zero, s3
                  mulhsu      a0, s11, ra
                  andi        s11, s9, -456
                  c.addi16sp  sp, -16
                  nop
                  or          tp, s5, t3
                  addi        tp, s1, 1838
                  c.add       s6, s1
                  mulh        a3, s6, s0
                  addi        zero, s2, 1153
                  c.andi      a3, 18
                  slli        a1, a4, 31
                  auipc       s6, 54416
                  c.sub       a3, a3
                  mul         a0, gp, t2
                  divu        t0, a0, s10
                  xori        s7, a3, -395
                  addi        s3, s9, 1638
                  mulhsu      a6, t2, s7
                  andi        s7, t2, 1002
                  and         s11, s2, ra
                  c.and       a3, s0
                  slti        a2, s8, -172
                  addi        t1, s4, -849
                  rem         tp, s9, t6
                  mulhu       zero, tp, s3
                  c.slli      a1, 17
                  c.srai      a3, 7
                  xori        s5, tp, -1560
                  srli        zero, s8, 7
                  or          zero, s11, a3
                  sll         a2, t1, a4
                  slli        s1, a3, 19
                  c.or        a3, a3
                  auipc       a1, 162973
                  slli        zero, gp, 10
                  c.nop
                  c.srli      a3, 26
                  or          a4, a0, tp
                  c.lui       s11, 20
                  c.mv        s1, s2
                  nop
                  slti        s10, ra, -1386
                  c.slli      t1, 17
                  mul         zero, a4, t3
                  srl         t0, a5, a1
                  sub         s4, s2, s8
                  c.lui       tp, 7
                  mulh        a7, t1, s9
                  c.li        a6, 0
                  c.slli      ra, 30
                  div         s10, s4, s1
                  srai        zero, tp, 6
                  sll         t1, a7, a1
                  div         s0, a1, s0
                  xori        a0, s1, 1463
                  srli        t1, s7, 10
                  c.li        a7, -1
                  add         t1, s8, t0
                  c.slli      s9, 17
                  ori         t3, t6, 1209
                  c.srli      a3, 30
                  srl         zero, a4, a3
                  c.srli      a3, 7
                  div         s8, s7, a5
                  c.or        a3, a3
                  c.or        a3, a3
                  sra         sp, s10, zero
                  slli        s5, tp, 31
                  sub         s10, t2, s4
                  c.lui       a3, 13
                  c.andi      s1, -1
                  c.and       s1, a3
                  c.slli      gp, 31
                  xor         gp, t0, gp
                  ori         s6, a1, -649
                  lui         a2, 720075
                  xor         gp, s5, a2
                  slt         zero, t6, s2
                  c.srli      a3, 11
                  c.mv        s8, a3
                  or          a1, t4, s2
                  c.and       a3, a3
                  c.addi4spn  a3, sp, 640
                  c.slli      a7, 8
                  ori         a1, s11, 1853
                  sltiu       s8, a4, 908
                  c.xor       a3, a3
                  rem         zero, ra, s0
                  srai        zero, t3, 21
                  rem         a2, a5, a4
                  or          s7, a1, t3
                  c.srai      a3, 27
                  c.slli      ra, 21
                  c.addi      a7, -1
                  c.addi4spn  s1, sp, 128
                  divu        tp, s3, s4
                  sub         zero, a6, s4
                  divu        a7, t1, s5
                  xori        s6, s4, -1905
                  mulhu       zero, s10, s10
                  mulhsu      s3, sp, s0
                  rem         tp, s0, t6
                  and         zero, s10, a1
                  lui         a4, 397925
                  c.sub       a3, a3
                  sltu        a4, a4, s8
                  xori        s9, a5, 509
                  add         s0, s0, a3
                  rem         tp, tp, s11
                  c.sub       a2, a3
                  xori        s9, s4, -1205
                  c.add       a2, t6
                  auipc       tp, 535375
                  c.srai      a3, 16
                  nop
                  c.andi      a3, 24
                  c.li        a6, -1
                  c.xor       a3, a3
                  sltu        t2, zero, tp
                  mulhsu      ra, s1, t5
                  auipc       a0, 858592
                  c.srli      s0, 3
                  nop
                  c.xor       s0, a3
                  c.addi4spn  a3, sp, 288
                  sra         s5, s8, s8
                  sub         zero, a0, a6
                  c.addi16sp  sp, 208
                  or          gp, zero, s10
                  ori         s1, s1, 1133
                  nop
                  sra         t2, s1, s6
                  sra         tp, s9, a6
                  c.mv        s0, s2
                  c.lui       s7, 1
                  c.sub       a3, a3
                  srai        t3, t2, 13
                  mulhu       zero, s7, s6
                  slti        s11, t4, 1726
                  c.li        s1, 7
                  c.and       a3, a3
                  divu        t3, a7, s7
                  c.addi4spn  a3, sp, 352
                  add         s9, t4, a7
                  mulh        zero, t1, a5
                  add         s8, s11, s8
                  srl         gp, sp, t5
                  srai        s8, t0, 23
                  add         zero, a6, a3
                  slli        ra, s3, 24
                  ori         tp, a0, 747
                  slt         a1, s9, a0
                  addi        a7, t6, -675
                  nop
                  c.addi16sp  sp, 128
                  c.and       a3, a3
                  mulhu       a1, t3, a1
                  add         zero, t5, t1
                  slt         s5, s6, s1
                  c.sub       a3, a3
                  c.lui       t0, 29
                  sub         s6, t3, s10
                  sltiu       s5, t5, -1533
                  c.addi4spn  a2, sp, 576
                  c.lui       t2, 16
                  c.srai      a3, 16
                  divu        a6, a3, s0
                  div         t1, a6, a3
                  auipc       gp, 530724
                  mulhsu      t1, gp, s0
                  nop
                  add         s2, s8, zero
                  xor         s2, a5, s6
                  srli        a4, a5, 17
                  c.add       ra, t1
                  srai        ra, s10, 17
                  slt         s9, a2, s0
                  mulh        zero, s9, t5
                  c.srai      a3, 5
                  c.lui       ra, 5
                  srl         zero, t5, s0
                  srai        t1, a2, 15
                  xori        ra, a7, -1531
                  mulhsu      a4, s7, t5
                  srl         s1, a3, zero
                  or          a6, s5, t5
                  c.addi4spn  a3, sp, 832
                  add         s5, s6, a1
                  c.nop
                  rem         ra, s9, t6
                  xori        s9, tp, 1113
                  c.li        a0, -1
                  c.lui       ra, 9
                  nop
                  srl         tp, tp, s10
                  sra         a3, a7, a2
                  c.addi16sp  sp, -16
                  auipc       s7, 902113
                  slt         s2, s1, s1
                  slt         zero, a1, a0
                  div         s11, t1, t0
                  c.srli      a3, 16
                  c.sub       a3, a3
                  c.srli      a3, 16
                  sub         s1, s10, t2
                  slt         zero, s6, zero
                  mulh        s10, t5, t1
                  c.srli      a3, 8
                  sub         a4, a7, ra
                  c.addi16sp  sp, -16
                  c.add       sp, ra
                  xor         s0, gp, s4
                  lui         s6, 474479
                  auipc       s2, 427007
                  c.srli      a3, 22
                  slti        tp, gp, -1012
                  c.lui       t1, 18
                  c.and       a3, a3
                  lui         a3, 561506
                  auipc       s9, 136737
                  lui         a1, 54393
                  slli        s4, t4, 3
                  addi        s0, s1, 1048
                  c.or        a3, a3
                  mulhsu      zero, zero, s2
                  mul         s3, s3, s8
                  nop
                  c.and       a4, a3
                  addi        tp, s0, 1464
                  sll         gp, zero, a0
                  divu        s5, t2, a3
                  and         s11, tp, a6
                  c.slli      ra, 25
                  c.and       a3, a3
                  c.mv        a3, a1
                  c.lui       s2, 23
                  c.mv        sp, tp
                  ori         s9, ra, -1508
                  c.li        s0, 23
                  div         s4, s6, a2
                  c.addi4spn  a3, sp, 128
                  c.mv        ra, ra
                  slt         a3, s9, s5
                  srli        zero, s9, 20
                  c.slli      gp, 15
                  xori        t0, s9, 155
                  slli        s7, s2, 30
                  slti        s0, a4, 1425
                  c.lui       s3, 19
                  sltu        s6, s9, zero
                  c.lui       a4, 13
                  c.andi      a3, -1
                  c.sub       a3, a3
                  c.srai      a3, 16
                  slli        s7, s0, 12
                  div         zero, s9, t3
                  c.srli      a3, 4
                  c.addi4spn  a3, sp, 896
                  slli        a7, t6, 19
                  sra         a2, s8, s6
                  xor         s10, a4, a1
                  andi        a4, zero, -1918
                  srai        s5, s0, 31
                  or          s4, t1, a4
                  ori         zero, a5, 944
                  c.srai      a3, 31
                  c.lui       a1, 28
                  mulhu       s7, a6, s3
                  c.srli      s1, 11
                  c.add       s6, s2
                  c.nop
                  auipc       a4, 197766
                  auipc       t1, 464175
                  sra         s11, zero, s2
                  c.srai      a2, 24
                  slt         zero, s2, a7
                  divu        a0, tp, t6
                  srli        ra, sp, 14
                  divu        t1, a1, s9
                  mul         s0, s4, a1
                  sub         t3, s10, t2
                  c.li        s0, 17
                  xor         t4, a6, s5
                  add         gp, s7, tp
                  c.addi4spn  a3, sp, 192
                  c.add       s11, t0
                  c.mv        sp, sp
                  slli        s2, tp, 27
                  c.lui       s3, 21
                  sltu        sp, a0, sp
                  sltu        s8, gp, s7
                  xori        zero, t0, -110
                  mulhsu      zero, a3, t3
                  srl         s2, s4, gp
                  div         s11, t5, s2
                  c.srli      a4, 13
                  c.addi16sp  sp, -16
                  sll         s4, s2, s4
                  c.addi16sp  sp, -16
                  lui         t0, 786215
                  slti        s11, ra, 1021
                  rem         t2, s4, a4
                  sll         t2, a6, s11
                  auipc       s1, 705367
                  c.add       ra, t4
                  c.addi16sp  sp, -16
                  sltu        a1, a0, s10
                  auipc       a4, 439223
                  c.mv        t4, s0
                  add         a0, t2, ra
                  slti        a4, s3, -757
                  div         sp, s5, s4
                  mulh        zero, a2, s2
                  sub         s2, s6, s8
                  c.srli      a3, 13
                  c.nop
                  srli        a3, s3, 14
                  c.andi      a3, 29
                  sra         s8, ra, s3
                  sra         a7, t6, t6
                  c.li        t0, -1
                  srai        s6, a4, 12
                  c.xor       a0, a3
                  c.mv        a1, t0
                  srl         zero, s8, zero
                  divu        s6, s8, s2
                  sll         s3, t6, t0
                  slt         s11, zero, s1
                  c.sub       a3, a3
                  c.li        s2, -1
                  c.addi      sp, 7
                  mulhsu      gp, t1, t3
                  c.or        a3, s1
                  c.xor       a3, a0
                  sll         tp, s1, sp
                  c.srai      a3, 16
                  sra         s7, t3, a1
                  addi        t2, t3, -806
                  c.andi      a3, -1
                  div         s8, t2, t1
                  c.andi      a3, -1
                  divu        a0, a5, s2
                  c.nop
                  mulhsu      s3, s9, s7
                  and         a6, a5, s9
                  srai        t2, s8, 18
                  lui         s1, 888527
                  srai        s9, tp, 13
                  c.addi      a6, 5
                  xor         zero, gp, s2
                  c.srai      a3, 23
                  c.and       a3, a2
                  mul         zero, s9, a5
                  c.and       a3, a3
                  mulh        s10, gp, a0
                  c.lui       a0, 11
                  mul         a0, t1, t3
                  c.sub       a3, a2
                  ori         zero, a4, -906
                  c.add       a7, ra
                  slli        tp, t1, 24
                  mul         t2, s7, a5
                  nop
                  xori        zero, a3, 1957
                  c.nop
                  slli        s5, tp, 14
                  add         s8, s5, a0
                  slt         s8, s10, t3
                  c.sub       a3, a3
                  slt         a4, s3, gp
                  xori        a0, a5, -324
                  c.or        a3, a3
                  andi        tp, s6, 1356
                  nop
                  c.lui       s5, 15
                  div         gp, a0, s2
                  slti        s7, t2, -56
                  c.lui       ra, 18
                  c.or        a3, a3
                  mul         s9, s7, zero
                  c.li        ra, -1
                  xori        a4, s4, 1288
                  mul         s11, s1, ra
                  c.slli      s11, 11
                  mul         a3, sp, s0
                  c.or        a4, a5
                  mulhu       s5, t5, sp
                  srli        s0, a1, 15
                  slli        t0, s8, 13
                  slli        a6, t4, 20
                  sll         ra, s8, gp
                  sltu        t3, t2, a0
                  auipc       a2, 983588
                  and         a7, s3, s0
                  c.addi      a6, -1
                  addi        s8, s3, -1147
                  mul         s8, sp, s9
                  mulhsu      t4, sp, s1
                  srl         s1, tp, a3
                  c.slli      s8, 31
                  div         s2, tp, a7
                  slti        a1, a2, -1504
                  sltu        zero, s1, tp
                  mul         t3, s2, s7
                  addi        s7, tp, 1550
                  andi        t3, a0, 1450
                  rem         s7, s1, sp
                  xori        a0, zero, -1594
                  divu        t2, ra, s8
                  c.andi      s1, 5
                  sll         s3, s4, a0
                  divu        t4, s8, s7
                  div         a0, t2, s5
                  add         s9, s7, s0
                  mul         t4, a3, s6
                  sll         s8, a0, t1
                  mulh        a0, s9, s7
                  auipc       sp, 685161
                  c.mv        sp, tp
                  c.nop
                  lui         tp, 835155
                  mulhu       zero, s7, sp
                  auipc       a2, 268593
                  lui         s11, 377460
                  c.sub       a3, a3
                  add         zero, a5, s2
                  lui         s1, 143523
                  c.xor       a3, a1
                  c.addi16sp  sp, 352
                  c.add       s1, s1
                  c.xor       a3, a3
                  c.srai      a3, 22
                  ori         t4, s3, 1615
                  xor         a2, s2, s6
                  c.lui       ra, 20
                  rem         a3, s9, t6
                  sub         s0, t1, s2
                  c.or        a3, a3
                  ori         s8, zero, -709
                  ori         s4, zero, -668
                  divu        a3, t3, tp
                  mulhsu      a6, s1, s3
                  c.add       s2, s0
                  mul         s0, s9, s10
                  xori        zero, t1, 1592
                  c.and       a3, a3
                  c.srai      a4, 2
                  sltu        a6, t3, s6
                  lui         tp, 398765
                  slli        t0, a1, 21
                  rem         a7, tp, zero
                  c.or        a3, a3
                  c.slli      ra, 29
                  andi        tp, s2, 1642
                  xor         a7, s4, a4
                  auipc       t1, 418870
                  c.andi      a4, 6
                  ori         s10, s5, -945
                  sll         s11, t1, t6
                  add         ra, s5, t6
                  c.addi16sp  sp, -16
                  lui         zero, 423922
                  c.addi      a7, 1
                  xori        t3, a7, -656
                  c.and       a0, a4
                  divu        s4, s11, tp
                  add         t1, s3, gp
                  sll         zero, s10, a3
                  c.and       a3, a3
                  c.or        a0, a3
                  c.addi16sp  sp, 144
                  nop
                  rem         zero, a2, a4
                  mulhu       t3, a0, a6
                  and         a3, t4, a0
                  srai        zero, t4, 22
                  c.andi      a3, 2
                  c.add       gp, s5
                  auipc       s1, 311147
                  c.lui       t4, 17
                  mulhsu      zero, a5, s3
                  c.srai      a3, 1
                  divu        zero, s7, ra
                  and         t4, s2, t4
                  c.mv        gp, s3
                  c.srai      a3, 21
                  and         s4, s6, t3
                  lui         zero, 454793
                  sll         s6, a4, s11
                  xor         a7, s3, t6
                  c.srai      s0, 18
                  c.lui       a6, 8
                  c.andi      a3, -1
                  sub         sp, t4, t2
                  c.and       a3, a3
                  and         s4, a4, a0
                  srl         s10, a3, a5
                  slli        ra, t6, 29
                  xori        a3, zero, -817
                  divu        zero, s0, t3
                  xori        s4, s3, 325
                  c.sub       a3, a3
                  ori         a3, a6, -1269
                  ori         sp, s4, 1861
                  c.lui       ra, 8
                  andi        s1, s11, -786
                  c.and       a3, a2
                  srl         s3, s1, s6
                  sub         a7, s5, s7
                  sltu        s6, s9, s0
                  slli        s3, s4, 1
                  c.srai      a3, 27
                  slti        a0, a7, -781
                  sltiu       s7, a2, -1248
                  srli        a0, s3, 19
                  auipc       t0, 336818
                  sra         s2, a7, a4
                  c.addi4spn  a3, sp, 336
                  mulhu       a0, a6, s7
                  slli        t4, t6, 15
                  c.li        s0, -1
                  li         t4, 0x1 #start riscv_int_numeric_corner_stream_29
                  li         a6, 0x0
                  li         t3, 0x0
                  li         tp, 0x1
                  li         s11, 0x1
                  li         s10, 0x218c1714
                  li         s2, 0x1
                  li         s3, 0x76fa49d6
                  li         a0, 0x25095480
                  li         s1, 0x5f8e441b
                  c.sub       a3, a3
                  lui         t1, 665696
                  sub         s4, s0, s9
                  mulh        s5, s4, gp
                  c.addi      s7, -1
                  mulh        s9, ra, s5
                  auipc       s9, 700750
                  addi        gp, s6, 1845
                  addi        t4, s5, 178
                  c.lui       a2, 3
                  addi        sp, zero, 853
                  c.addi      ra, 11
                  c.addi      s2, -1
                  div         s4, s10, a4
                  divu        t2, s5, s9
                  mulhsu      s9, t3, s4
                  c.nop
                  c.addi      s3, 5
                  c.addi16sp  sp, -16
                  divu        s10, t0, a0
                  mulhsu      s4, a1, t5
                  mulh        s4, zero, gp
                  lui         tp, 314316
                  mulh        a1, gp, a5
                  c.sub       a3, a3
                  c.li        a1, 0
                  c.srli      a3, 1
                  slti        a1, s6, -158
                  c.li        t1, -1
                  mulhu       s9, s9, s0
                  c.or        a4, a3
                  c.and       a3, a4
                  divu        t0, s8, t0
                  slti        ra, a4, 1515
                  srai        a7, a6, 31
                  mul         s0, a4, s10
                  slli        t0, tp, 15
                  c.addi16sp  sp, 272
                  nop
                  andi        s7, t2, 1772
                  mulhu       s1, s11, t1
                  sltu        a2, s0, s8
                  c.srli      a0, 29
                  srai        t2, t6, 5
                  addi        t1, t6, -1580
                  c.li        a1, 15
                  mulhu       a4, s4, a1
                  c.andi      a3, 0
                  sll         zero, s4, s4
                  xori        a0, s1, 1205
                  div         s10, s8, a4
                  c.addi16sp  sp, 176
                  c.nop
                  c.and       a3, a3
                  c.addi4spn  a3, sp, 64
                  add         a4, s3, a4
                  c.xor       a3, a3
                  c.srai      a3, 29
                  mulhu       s11, ra, a3
                  divu        s0, s5, s4
                  rem         gp, t1, a5
                  xor         s5, a6, ra
                  div         s6, zero, s10
                  c.xor       a3, a3
                  c.nop
                  mulhsu      sp, zero, gp
                  sltu        a4, s11, gp
                  auipc       s6, 660286
                  addi        s2, t3, -1146
                  c.xor       a2, a4
                  sra         s8, t5, a4
                  c.srli      a1, 30
                  nop
                  nop
                  c.sub       a3, a3
                  div         s1, a0, gp
                  divu        zero, t0, gp
                  c.andi      a3, -1
                  c.addi      ra, -1
                  nop
                  slli        tp, s0, 20
                  c.lui       s6, 4
                  c.add       s1, s9
                  srl         zero, t6, s10
                  mulhsu      t0, a0, s10
                  c.srli      a0, 10
                  c.addi4spn  a3, sp, 640
                  c.slli      s7, 25
                  auipc       t3, 227846
                  andi        a7, t3, 1015
                  lui         s10, 599040
                  xori        s6, s10, -1671
                  c.or        a3, a3
                  c.sub       a3, a3
                  sltiu       s9, s2, 1735
                  mul         zero, tp, s6
                  addi        zero, ra, 958
                  divu        t2, s1, s5
                  auipc       a1, 327733
                  auipc       t1, 750644
                  mulh        zero, gp, s2
                  rem         a4, t1, zero
                  xor         zero, s6, s5
                  c.mv        s7, a7
                  c.andi      a3, 21
                  slti        a7, s3, -1963
                  c.li        tp, 1
                  srli        s8, ra, 20
                  c.nop
                  c.addi      ra, 17
                  add         s6, a6, s6
                  add         s11, tp, a1
                  addi        a6, s9, -1922
                  c.nop
                  sltu        s5, t2, a0
                  sra         a1, a7, s2
                  mulhu       t0, a2, t2
                  nop
                  ori         sp, s2, -1967
                  c.srai      a3, 13
                  c.add       ra, s6
                  mul         s11, s7, t6
                  sra         s9, s0, a6
                  xori        s9, s3, 1835
                  c.mv        t4, t6
                  c.li        s10, 27
                  add         s0, s5, s2
                  c.mv        a4, s0
                  c.lui       t3, 25
                  c.mv        ra, s8
                  srli        gp, s4, 21
                  add         a3, t0, a4
                  divu        s5, a7, t0
                  c.addi16sp  sp, 432
                  c.srli      a3, 21
                  srl         a2, t6, s1
                  c.sub       a3, a3
                  sra         a2, a6, a1
                  c.add       a0, a4
                  c.and       a3, a3
                  c.sub       a3, a3
                  slli        s3, s9, 31
                  c.nop
                  add         zero, t3, a1
                  c.addi      s5, 11
                  mul         s6, a3, a3
                  or          a4, a6, gp
                  srl         s6, t4, gp
                  c.srli      a3, 10
                  srai        tp, s5, 30
                  addi        a7, a2, -731
                  and         s4, t3, a4
                  sll         a0, a5, s0
                  sltiu       zero, t2, -452
                  c.srai      a3, 15
                  addi        ra, a2, -1654
                  c.lui       s2, 27
                  slli        sp, a7, 22
                  or          s1, a5, s1
                  c.srli      a3, 28
                  srl         s4, gp, s3
                  andi        t0, sp, 53
                  auipc       gp, 1020557
                  xor         s8, a0, a3
                  srl         gp, t3, a7
                  add         ra, t3, s6
                  c.slli      s1, 1
                  xor         zero, t0, a4
                  c.xor       a3, a3
                  rem         t2, sp, s4
                  srli        t3, s4, 23
                  addi        s8, tp, 62
                  c.xor       a3, a3
                  ori         zero, t4, 1331
                  add         s1, s11, s8
                  xori        a0, s6, 1618
                  andi        ra, a2, 1518
                  c.nop
                  c.xor       a3, a3
                  xor         s0, s7, s7
                  div         t4, s3, t4
                  c.addi      s9, -1
                  srli        zero, t4, 9
                  sll         a1, s1, s10
                  lui         sp, 710382
                  or          a3, s4, a6
                  addi        a0, a6, -1754
                  c.nop
                  srai        s9, s0, 13
                  c.addi      ra, -1
                  slt         t3, s9, t3
                  c.slli      a7, 20
                  div         t4, t5, a2
                  mulhsu      a7, s6, a2
                  srai        a2, s2, 0
                  add         a6, tp, s11
                  addi        s0, a0, 1061
                  slli        s5, s4, 2
                  sltu        s6, gp, s3
                  sltu        a0, s0, s9
                  andi        a3, a1, 75
                  srli        s7, s4, 5
                  addi        t3, zero, 1932
                  mulhu       tp, tp, ra
                  or          ra, ra, zero
                  sra         a6, s0, t2
                  c.addi      ra, 22
                  srai        s2, gp, 30
                  c.sub       s0, a2
                  andi        s0, a4, -545
                  c.or        a3, a3
                  c.and       a3, a1
                  auipc       s10, 235538
                  xori        a3, t0, 592
                  srai        s9, s3, 20
                  divu        t1, a6, s0
                  lui         s8, 965531
                  add         s7, s4, s1
                  mulhu       t3, t6, s2
                  sltiu       t0, s2, 830
                  c.xor       a3, a5
                  c.addi      ra, 8
                  c.andi      a3, -1
                  c.addi4spn  a3, sp, 896
                  srai        a2, a3, 17
                  xori        t2, a2, 1675
                  divu        s3, s8, a5
                  mulhu       s6, t1, s5
                  sltiu       t4, s2, -1213
                  c.addi16sp  sp, 32
                  sltu        s3, s9, s0
                  rem         t3, t3, tp
                  slt         t0, t4, a3
                  add         s10, s4, a1
                  and         s8, s3, a4
                  sll         a4, s5, a2
                  divu        t1, t4, s0
                  c.lui       s9, 8
                  sra         t1, a4, t0
                  sltiu       a2, s1, 182
                  srli        s7, s2, 15
                  sra         s8, t3, a6
                  sll         t0, t1, t3
                  c.or        a3, a0
                  c.and       a3, s0
                  c.addi16sp  sp, 224
                  mul         a7, tp, a5
                  c.slli      s1, 10
                  c.lui       ra, 3
                  addi        sp, a2, 1581
                  c.or        a3, a1
                  c.sub       a3, a3
                  or          t3, t4, a3
                  slti        a0, a1, 1326
                  sltu        s8, t6, t6
                  srai        a0, sp, 24
                  sll         a0, s9, s11
                  add         t0, a0, s1
                  c.addi      ra, 2
                  c.mv        s3, t2
                  slti        t1, t5, -748
                  c.srli      a3, 22
                  c.andi      a3, -1
                  divu        zero, sp, t5
                  c.sub       a3, a3
                  rem         s9, tp, gp
                  c.srli      a3, 17
                  sra         t4, s11, a6
                  sll         s8, t0, s11
                  slt         a6, s6, s7
                  mulhsu      a1, sp, t6
                  xori        t2, s2, -247
                  or          a2, s7, t1
                  nop
                  c.addi16sp  sp, 368
                  auipc       s0, 550452
                  c.nop
                  c.sub       a3, a3
                  mul         a1, s3, s2
                  lui         a1, 298257
                  xor         t4, a6, s2
                  c.andi      a3, 31
                  srli        t4, a0, 5
                  c.nop
                  xor         zero, s3, s0
                  c.and       s0, a3
                  c.lui       ra, 23
                  li         t4, 0x1 #start riscv_int_numeric_corner_stream_15
                  li         s3, 0x1
                  li         t3, 0x1
                  li         tp, 0x0
                  li         s7, 0x0
                  li         s4, 0x0
                  li         s11, 0x0
                  li         s10, 0x3ae89334
                  li         s8, 0x0
                  li         s9, 0x0
                  rem         s1, a5, t3
                  c.mv        s5, a1
                  c.li        s10, -1
                  add         zero, s10, ra
                  c.addi4spn  a3, sp, 64
                  addi        t0, s0, -1391
                  c.lui       a4, 8
                  lui         sp, 243780
                  nop
                  c.nop
                  sub         s9, sp, s2
                  mulhsu      t0, s9, t0
                  mulhsu      zero, s3, sp
                  sub         s10, s2, a3
                  mulh        zero, s8, a3
                  mul         a4, s5, s7
                  c.addi      a7, 22
                  lui         a4, 935186
                  divu        a7, a1, a3
                  mulh        zero, s6, s0 #end riscv_int_numeric_corner_stream_15
                  srli        gp, s7, 3
                  c.nop
                  c.lui       s7, 29
                  li         t4, 0x1 #start riscv_int_numeric_corner_stream_35
                  li         t3, 0x1
                  li         s4, 0x0
                  li         sp, 0x7dca84b0
                  li         s11, 0x1
                  li         s10, 0x0
                  li         s2, 0x0
                  li         s8, 0x1
                  li         a0, 0x0
                  li         s3, 0x0
                  nop
                  auipc       sp, 590304
                  c.add       s6, sp
                  rem         s3, s6, a1
                  mul         s8, a2, a2
                  c.addi16sp  sp, -16
                  mulh        s11, t4, ra
                  c.nop
                  rem         s10, a4, ra
                  mul         a6, t3, s11
                  div         s2, t2, a5
                  rem         ra, s1, s1
                  addi        a0, s0, -442
                  div         s3, ra, s5
                  mulh        s3, t5, t4
                  c.mv        a1, s2
                  c.addi      a7, -1
                  auipc       s11, 933304
                  mulh        zero, a0, sp #end riscv_int_numeric_corner_stream_35
                  sub         a1, t4, t1
                  c.srai      a3, 25
                  nop
                  c.mv        ra, t2
                  c.srai      a3, 31
                  lui         s8, 596358
                  or          s11, a4, s11
                  c.li        ra, -1
                  srl         s5, a4, gp
                  nop
                  andi        sp, a3, -1399
                  c.nop
                  andi        t3, t6, 1325
                  slt         t4, t3, a4
                  c.lui       s7, 21
                  addi        s7, s8, 327
                  c.or        a3, a3
                  c.slli      a1, 12
                  c.srli      a3, 29
                  c.xor       a3, a3
                  or          s3, a6, sp
                  slti        zero, s6, 61
                  sll         t0, s2, a7
                  xori        s4, a1, -1109
                  c.addi16sp  sp, 336
                  slti        s5, s1, 885
                  add         t3, s8, gp
                  c.add       s4, s11
                  ori         t0, s2, -901
                  c.addi16sp  sp, -16
                  mulhu       zero, a7, tp
                  add         t2, s5, t0
                  mulhu       a2, sp, gp
                  divu        ra, a0, s1
                  sltiu       zero, t2, -1183
                  c.slli      ra, 29
                  c.addi4spn  a3, sp, 576
                  sltiu       s3, s10, 229
                  srl         s6, s4, s0
                  div         s1, s8, t5
                  c.sub       a3, a3
                  srl         s10, t2, s2
                  c.srli      a3, 16
                  sra         s4, s5, t4
                  add         t4, s0, t0
                  c.li        tp, -1
                  c.add       s10, s9
                  mulhu       t2, gp, tp
                  sub         zero, a5, sp
                  or          s0, s4, t5
                  slt         a4, t2, a0
                  sra         s2, s7, t1
                  divu        gp, t4, s10
                  auipc       a6, 532758
                  add         a2, a2, s6
                  sub         a7, s9, s6
                  c.xor       a3, a3
                  andi        a1, a1, 1609
                  mul         s5, s11, t5
                  c.sub       a3, a3
                  c.mv        ra, sp
                  sub         zero, a6, sp
                  c.andi      a3, -1
                  c.add       s10, s10
                  div         s1, t1, s4
                  xor         zero, a0, s3
                  nop
                  c.mv        ra, s3
                  andi        s9, a3, -549
                  slt         s8, s11, a3
                  sll         a2, t2, t2
                  div         a7, s4, s9
                  c.li        tp, 22
                  sra         s3, s4, gp
                  sltu        sp, a0, a4
                  xori        a7, ra, -680
                  c.mv        ra, t6
                  c.sub       a3, a3
                  sra         zero, s8, t0
                  add         s4, s1, tp
                  mulhu       s2, tp, s3
                  c.nop
                  srl         gp, gp, a6
                  c.xor       a3, a3
                  c.or        a3, a3
                  div         s3, gp, s2
                  div         s0, t6, t1
                  c.addi4spn  a3, sp, 688
                  c.sub       a3, a3
                  c.addi16sp  sp, 256
                  mulh        a2, a3, t2
                  c.addi4spn  a3, sp, 320
                  mulh        zero, t4, s6
                  srli        a4, a3, 14
                  slli        s8, s5, 19
                  c.slli      s2, 20
                  or          s10, tp, gp
                  addi        a7, t4, 1325
                  or          s3, s0, s5
                  ori         s10, s5, 1407
                  xor         s9, t1, a2
                  c.li        s5, -1
                  c.xor       a3, a3
                  mul         t2, s10, a7
                  c.xor       a1, a3
                  xori        t2, t6, -312
                  srli        a3, s7, 29
                  c.addi4spn  a3, sp, 128
                  xor         s6, s0, ra
                  srai        gp, s2, 24
                  sll         zero, t5, a1
                  sra         ra, s4, tp
                  c.or        a3, a3
                  div         s11, s4, ra
                  addi        t4, t2, -1274
                  c.lui       a6, 16
                  c.li        a6, 30
                  srai        t0, s5, 18
                  c.andi      a3, 20
                  c.lui       s1, 20
                  and         zero, a4, a6
                  srl         s2, a0, sp
                  nop
                  sltu        s9, a3, t3
                  c.srai      a3, 28
                  rem         s8, a4, a0
                  slt         s3, a6, s5
                  sub         s4, a7, t0
                  c.add       a1, s7
                  rem         s6, s5, a1
                  c.xor       a3, a3
                  sll         s9, t5, a0
                  c.addi16sp  sp, -16
                  c.andi      a3, -1
                  xori        zero, zero, -1341
                  c.addi4spn  a3, sp, 896
                  c.addi      s6, -1
                  addi        a6, zero, 499
                  c.and       a0, a3
                  slti        t1, sp, 1318
                  srai        s1, gp, 27
                  sub         s2, ra, s10
                  c.slli      ra, 11
                  c.srli      a3, 27
                  ori         s10, t5, 129
                  c.add       a4, s8
                  c.addi      s3, 30
                  c.mv        gp, a7
                  sub         s9, a7, a1
                  c.addi      a3, -1
                  c.sub       a3, a3
                  nop
                  c.srai      a3, 15
                  srai        a7, s10, 4
                  xor         s10, s2, s6
                  auipc       sp, 77608
                  c.li        ra, -1
                  andi        a4, a2, -340
                  mulh        zero, s0, s7
                  c.andi      a3, 21
                  c.addi4spn  a3, sp, 368
                  c.add       a6, s3
                  c.addi4spn  a3, sp, 784
                  xor         s9, s3, gp
                  c.addi4spn  a3, sp, 640
                  c.mv        t4, t2
                  slli        sp, a0, 17
                  sra         zero, zero, s4
                  c.nop
                  srl         t1, a4, s10
                  c.lui       gp, 15
                  slli        s4, s8, 0
                  srli        s6, s11, 1
                  srai        zero, t6, 26
                  c.xor       a3, a3
                  c.xor       a3, a3
                  srli        s3, t1, 4
                  c.lui       tp, 23
                  srl         a4, s9, a0
                  mulh        s10, a2, a0
                  mulhu       sp, t4, s10
                  c.xor       a3, a3
                  ori         zero, s3, 894
                  sll         s11, sp, a2
                  divu        t2, a7, t3
                  srl         s2, t4, a4
                  c.li        t1, 3
                  sltiu       s4, a0, -1960
                  lui         a3, 576161
                  c.andi      a3, -1
                  mul         tp, s1, t3
                  srli        a3, gp, 4
                  c.and       a3, a3
                  c.andi      a3, 27
                  mul         zero, s2, ra
                  mulh        s0, s3, s7
                  mulhu       a6, a4, s6
                  c.or        a3, a3
                  auipc       s0, 972889
                  div         gp, s7, a0
                  rem         a6, a6, t1
                  ori         s0, s9, 31
                  nop
                  c.sub       a3, a3
                  and         a0, t6, a0
                  xori        zero, t4, -578
                  slti        zero, a2, 605
                  sll         t3, t5, a3
                  c.nop
                  xor         s7, s8, s2
                  slli        s1, s9, 16
                  c.srli      a3, 1
                  c.andi      a3, -1
                  addi        s6, a2, 2014
                  mul         a0, a1, t1
                  srli        zero, ra, 29
                  c.andi      a3, -1
                  c.slli      tp, 27
                  sltu        zero, a3, s11
                  sub         t2, s3, t5
                  mulh        s7, a0, s10
                  c.and       a3, s0
                  c.lui       s1, 8
                  c.mv        a1, sp
                  nop
                  nop
                  slti        sp, tp, 1860
                  addi        tp, t3, 1450
                  srli        s0, a7, 26
                  nop
                  slti        s0, ra, 1765
                  mulh        s8, t6, a1
                  andi        s6, a7, 785
                  c.addi16sp  sp, 448
                  c.andi      a3, 16
                  sltu        gp, sp, a0
                  slti        s6, s10, -309
                  c.lui       ra, 26
                  andi        sp, s10, -1199
                  c.slli      s4, 1
                  div         s9, t5, zero
                  divu        s10, s3, s6
                  add         t2, t1, t1
                  auipc       s9, 708138
                  xor         s4, s4, zero
                  c.mv        s1, t2
                  c.and       a3, a3
                  sll         s8, a6, s7
                  sltu        s2, s9, s9
                  c.or        a2, s0
                  ori         s0, s5, -1328
                  slt         s10, a3, a1
                  c.andi      a3, -1
                  c.slli      s10, 17
                  c.addi16sp  sp, -16
                  nop
                  lui         zero, 396881
                  c.srli      a4, 14
                  xor         s4, t1, s4
                  auipc       zero, 739102
                  sub         a0, s6, tp
                  rem         zero, a0, s4
                  lui         zero, 1037507
                  c.addi4spn  a3, sp, 608
                  mul         s7, a7, s8
                  c.addi      s3, -1
                  mulh        a2, t1, s2
                  add         s6, s4, t2
                  c.slli      s5, 18
                  mulhu       s9, s1, s2
                  sltiu       s6, sp, -1036
                  nop
                  c.slli      tp, 19
                  c.slli      a3, 28
                  c.srli      a3, 15
                  c.srli      a3, 1
                  c.and       a3, a3
                  xori        a3, t2, 815
                  add         s2, t6, t5
                  srli        a0, s8, 9
                  c.slli      ra, 3
                  mulhsu      s1, s3, t5
                  c.srai      a0, 18
                  xor         s6, a0, t3
                  c.srli      a3, 27
                  div         sp, a1, zero
                  sltu        a0, s6, a1
                  mulh        a7, a6, t6
                  c.and       a3, a3
                  c.xor       a3, a3
                  srli        s1, zero, 3
                  sltu        s10, sp, a7
                  addi        s1, a0, 50
                  mulhu       s11, s10, s11
                  sltu        s3, t0, a4
                  nop
                  c.srli      a3, 3
                  ori         ra, a1, -1092
                  c.slli      s5, 29
                  c.srli      s0, 26
                  and         s5, t3, a2
                  andi        t0, t2, 884
                  c.andi      a3, -1
                  c.addi      a3, -1
                  sltu        ra, tp, a7
                  div         s3, a7, s5
                  sub         t3, t2, s11
                  c.lui       t0, 1
                  srli        a7, s7, 21
                  rem         sp, a5, t3
                  ori         zero, t1, 1700
                  mulhu       t2, t5, s8
                  srai        gp, s6, 14
                  c.addi4spn  a3, sp, 960
                  c.add       s5, s9
                  c.nop
                  auipc       tp, 18543
                  c.sub       a3, a3
                  nop
                  sub         s0, a0, a4
                  and         a1, sp, a7
                  addi        zero, s6, -1526
                  srl         a0, a6, s6
                  nop
                  nop
                  c.or        s0, a3
                  lui         a2, 43810
                  slti        a7, a7, -897
                  sub         s10, s4, s6
                  c.xor       a3, s0
                  slti        a3, s0, 2009
                  srl         sp, ra, t5
                  or          s5, a2, t6
                  lui         zero, 825211
                  sltu        t4, tp, a6
                  sll         s3, a6, t5
                  ori         sp, a4, 104
                  divu        s6, t0, zero
                  c.and       a3, a3
                  sltu        zero, sp, t5
                  slt         s6, a0, gp
                  ori         s3, s1, -1391
                  c.slli      ra, 24
                  c.mv        gp, tp
                  auipc       s0, 612386
                  c.addi      ra, 4
                  mul         zero, t4, s8
                  c.addi      t0, 4
                  c.slli      s11, 23
                  xori        a0, a2, -251
                  c.addi4spn  a4, sp, 704
                  slt         ra, s9, zero
                  c.addi16sp  sp, 496
                  sltu        t0, s5, a1
                  rem         zero, s8, gp
                  xori        tp, t1, -952
                  c.nop
                  c.xor       a3, s1
                  c.mv        ra, tp
                  or          s8, s4, s9
                  c.addi4spn  a2, sp, 688
                  sltu        a0, s7, s2
                  or          zero, s2, t6
                  c.srli      a3, 17
                  sll         s10, t5, s2
                  c.and       a1, a3
                  mul         s11, t2, s10
                  sra         t1, a7, ra
                  c.slli      ra, 26
                  slti        zero, s5, 1170
                  xori        zero, t2, -1623
                  addi        s9, t5, 293
                  slli        s10, zero, 6
                  mulh        s10, sp, a4
                  xor         s5, s11, ra
                  xor         s8, a5, s10
                  mul         ra, tp, s6
                  rem         a2, t5, s9
                  c.nop
                  srl         s8, a6, a3
                  c.mv        s8, a1
                  srai        t4, t3, 16
                  divu        a7, s5, a3
                  slti        s6, s1, 1541
                  nop
                  c.addi4spn  a3, sp, 832
                  c.li        s10, -1
                  srli        a1, a2, 11
                  and         t0, s5, t0
                  nop
                  c.li        s5, -1
                  c.xor       a3, a3
                  xori        s6, gp, 1690
                  c.or        a3, a2
                  ori         a0, s2, 680
                  sltiu       ra, s6, -2030
                  divu        t1, s8, gp
                  lui         zero, 998261
                  addi        s9, a5, -1783
                  mulhu       t0, s5, s10
                  ori         zero, a3, 1427
                  c.mv        ra, t6
                  srl         s2, s9, tp
                  andi        s5, s3, -176
                  rem         t2, s1, gp
                  addi        s10, a5, -1967
                  c.lui       ra, 28
                  c.add       tp, s4
                  c.li        s1, -1
                  c.addi16sp  sp, -16
                  or          s3, s3, tp
                  add         tp, s5, t6
                  c.srli      a1, 10
                  c.xor       a3, a3
                  sll         a7, t6, tp
                  auipc       s11, 59637
                  div         zero, s7, s5
                  c.slli      s10, 8
                  c.andi      a3, 9
                  slli        zero, s8, 10
                  lui         s10, 348523
                  mulh        sp, zero, t2
                  xori        sp, s8, 1501
                  xori        t0, ra, 1176
                  c.srai      a3, 30
                  c.li        ra, -1
                  c.li        s11, -1
                  mulhu       t1, a3, a7
                  mulhsu      t1, t2, tp
                  andi        a0, s10, 739
                  xori        sp, s1, 1456
                  c.li        ra, -1
                  mulhsu      sp, s6, s2
                  xori        zero, tp, 204
                  c.srli      a0, 31
                  c.mv        sp, t5
                  c.nop
                  c.and       a3, a0
                  xori        t2, a6, 826
                  sll         a6, a2, t3
                  srli        t4, s0, 9
                  sll         a3, s2, ra
                  c.lui       a4, 11
                  c.addi4spn  a3, sp, 960
                  andi        a7, s9, -102
                  auipc       t2, 409009
                  slt         s0, t0, s0
                  mul         a3, t3, s4
                  c.lui       a7, 3
                  srl         s0, t2, t5
                  c.nop
                  c.andi      a3, 15
                  mul         t1, s9, s11
                  c.xor       a3, a3
                  c.srai      a0, 30
                  or          sp, t1, t4
                  sll         a0, s5, a6
                  xor         a3, s3, s9
                  div         s11, a2, a7
                  c.li        a3, -1
                  sltu        gp, a3, s11
                  xor         gp, s4, s11
                  auipc       s8, 841038
                  sub         a0, t0, s7
                  srli        t3, s7, 3
                  sltiu       t3, s1, 1147
                  xor         zero, t5, s2
                  slti        a6, tp, 2021
                  lui         a7, 508410
                  sltu        t1, ra, a4
                  nop
                  c.addi      s0, 5
                  xor         a4, s10, t2
                  c.xor       a1, a3
                  srai        s10, s10, 25
                  slti        tp, t5, 1616
                  c.srli      a3, 23
                  c.add       t4, t5
                  sltu        s11, t1, a2
                  c.lui       t4, 10
                  div         a0, t6, ra
                  c.or        a3, a3
                  or          s10, s7, a2
                  c.sub       a3, a3
                  or          s2, s3, s1
                  c.or        a4, a3
                  or          t2, a0, gp
                  auipc       a7, 765060
                  c.andi      a3, -1
                  c.add       a0, s0
                  c.xor       a3, a3
                  c.andi      a3, -1
                  c.add       s2, t6
                  and         a1, a5, s3
                  add         zero, s8, t5
                  c.and       a3, a3
                  addi        t2, a5, 1740
                  auipc       ra, 279599
                  rem         s7, s3, s1
                  div         ra, s6, a4
                  c.srli      a3, 6
                  c.mv        a7, a6
                  srli        s7, a2, 11
                  c.addi16sp  sp, -16
                  slt         a7, a2, sp
                  c.xor       a3, a3
                  srai        t1, gp, 19
                  c.lui       t0, 17
                  sltu        s8, gp, s3
                  c.srai      a4, 4
                  c.addi4spn  a3, sp, 960
                  mulhu       a4, a0, s7
                  mulhsu      s10, s3, a6
                  sll         s5, t2, s6
                  rem         a4, ra, a1
                  sltu        s10, a6, a0
                  c.addi      ra, -1
                  divu        s2, s8, s0
                  c.xor       a3, a3
                  c.slli      s3, 17
                  c.mv        s6, a2
                  addi        s2, s5, 175
                  mulhu       t3, s10, tp
                  c.slli      s10, 29
                  c.addi      s5, 25
                  or          s0, a5, t0
                  c.xor       a3, a3
                  c.srli      a3, 8
                  c.sub       a0, a3
                  c.li        a6, 0
                  rem         tp, a6, s6
                  sub         a0, sp, s10
                  xor         a0, tp, s9
                  c.and       a3, a3
                  add         a3, t6, t2
                  sll         a2, t6, t3
                  xor         a6, s10, s2
                  c.addi4spn  a3, sp, 64
                  c.mv        t4, s11
                  sub         s7, ra, a0
                  xor         s8, t5, s11
                  sra         t4, a1, gp
                  c.lui       s10, 19
                  slt         s6, a7, gp
                  c.srai      a3, 8
                  mul         ra, a4, t6
                  c.slli      a7, 16
                  and         t2, a4, s1
                  c.li        t2, 14
                  add         zero, gp, gp
                  auipc       t1, 621296
                  srli        gp, t5, 29
                  srl         gp, s9, s9
                  lui         s5, 129266
                  sltiu       t4, t0, -488
                  auipc       s10, 705020
                  c.srli      a3, 28
                  add         a3, s4, s11
                  rem         s9, s0, a5
                  and         s6, t6, a6
                  or          s8, t2, s5
                  c.srai      a3, 19
                  c.addi      tp, 11
                  sub         zero, a0, s9
                  srai        s1, s0, 7
                  c.addi16sp  sp, -16
                  mulh        s9, sp, s2
                  or          a4, s11, s3
                  c.xor       a3, a3
                  c.xor       a3, a3
                  c.or        a3, a5
                  c.or        a3, a3
                  c.sub       a3, a1
                  c.and       a3, a5
                  lui         t2, 163931
                  andi        s4, t3, 359
                  c.addi      s2, -1
                  sll         s3, s4, t6
                  slt         ra, a5, sp
                  nop
                  c.lui       t3, 14
                  slt         a3, sp, t6
                  c.srli      a3, 20
                  sub         s7, s8, tp
                  c.addi      s2, -1
                  c.add       ra, gp
                  sltiu       t4, s9, -1291
                  xor         s11, t2, zero
                  sltiu       s5, s8, -1954
                  c.addi      s8, -1
                  c.add       t3, s7
                  c.addi4spn  a4, sp, 320
                  c.addi4spn  a3, sp, 416
                  c.or        a3, a3
                  c.addi16sp  sp, -16
                  sub         a1, s4, a7
                  c.xor       a3, a3
                  auipc       s8, 667245
                  c.xor       a3, a5
                  c.sub       s0, a3
                  auipc       t1, 70368
                  divu        zero, a1, s0
                  c.li        t2, -1
                  c.addi16sp  sp, 96
                  c.slli      a0, 27
                  c.sub       a3, a3
                  auipc       t3, 480573
                  c.mv        a7, s7
                  slli        s3, a5, 7
                  slti        a6, t3, 819
                  c.nop
                  mulh        t1, s8, t2
                  rem         zero, a7, gp
                  c.mv        a2, s1
                  sub         tp, a5, t6
                  c.andi      a3, 2
                  mulhu       zero, zero, s2
                  slt         tp, tp, s0
                  li         t4, 0x39a78497 #start riscv_int_numeric_corner_stream_31
                  li         a2, 0x338fe195
                  li         s11, 0x502db36a
                  li         s4, 0x0
                  li         s10, 0x0
                  li         s9, 0x13e91bf8
                  li         a0, 0x0
                  li         t3, 0x1
                  li         s7, 0x59900b6b
                  li         s2, 0x0
                  c.sub       a0, a3
                  mulh        ra, t4, t6
                  c.addi16sp  sp, 16
                  nop
                  rem         s11, sp, t0
                  div         s4, s8, s8
                  sub         a7, s4, s2
                  c.addi16sp  sp, 32
                  addi        a4, a7, -508
                  mulh        s11, ra, ra
                  rem         t0, t0, sp
                  div         a0, ra, s6
                  addi        tp, s10, -1670
                  c.lui       s2, 6
                  rem         zero, s3, t5
                  c.nop
                  sub         a3, a1, s6
                  addi        t0, t5, 1644
                  auipc       a3, 104664
                  c.addi      t4, -1
                  mulhsu      s10, a1, a5
                  c.lui       tp, 31
                  c.li        gp, 19
                  addi        zero, s0, -847 #end riscv_int_numeric_corner_stream_31
                  sltiu       sp, s3, -710
                  sub         a4, t6, a3
                  auipc       t4, 565308
                  addi        zero, s1, 935
                  c.and       a3, a3
                  c.mv        a3, s7
                  c.and       a3, a3
                  c.add       a3, s1
                  c.and       a3, a3
                  srli        zero, s2, 19
                  and         zero, a6, zero
                  mul         s0, a0, s5
                  c.sub       s0, a3
                  c.andi      a3, 2
                  ori         a6, s3, -718
                  auipc       gp, 20624
                  srai        s10, t0, 30
                  addi        s10, tp, 1220
                  c.addi      s7, 30
                  mulhsu      a6, a4, a4
                  c.addi4spn  a3, sp, 832
                  slti        a4, t0, 1437
                  c.andi      a3, -1
                  xor         zero, a7, t1
                  mulh        s4, sp, t6
                  sra         tp, zero, t5
                  mulhu       s1, t5, s6
                  and         s11, tp, s5
                  or          zero, a1, s7
                  c.andi      s0, -1
                  slt         zero, ra, a4
                  xor         a1, gp, sp
                  lui         s8, 295828
                  addi        tp, s2, -1155
                  srli        gp, s0, 13
                  c.slli      a1, 15
                  c.and       a3, a3
                  c.srli      a3, 19
                  c.sub       a3, a3
                  ori         t2, s7, -63
                  c.sub       a3, a3
                  slt         s7, s4, a1
                  and         s3, s1, s0
                  nop
                  addi        a7, s4, -533
                  or          a3, s5, t2
                  xori        s7, s1, 495
                  c.andi      a3, -1
                  lui         a4, 932270
                  srli        zero, zero, 17
                  c.sub       a3, a3
                  xori        tp, s11, 1438
                  srl         zero, s1, ra
                  mulh        t2, s3, a7
                  c.add       s0, t2
                  or          t2, t3, t1
                  divu        tp, s1, a7
                  auipc       s7, 562617
                  sll         s11, s3, a5
                  c.addi4spn  a3, sp, 448
                  or          t3, a5, sp
                  div         sp, s10, s5
                  sra         t0, s8, tp
                  auipc       a3, 566983
                  nop
                  divu        zero, tp, t0
                  sra         s9, t2, s6
                  c.srai      a3, 16
                  c.sub       a3, a3
                  ori         tp, tp, -1982
                  c.slli      s5, 4
                  slti        s0, t4, -1310
                  slli        a4, t1, 24
                  and         t2, a1, a5
                  andi        t4, a0, 212
                  c.lui       t0, 11
                  sltu        s10, t3, ra
                  c.lui       a7, 18
                  auipc       s2, 571730
                  c.addi4spn  a4, sp, 736
                  c.sub       a2, a5
                  c.addi4spn  a0, sp, 192
                  c.li        s11, -1
                  mulh        a7, a6, a4
                  c.addi      tp, -1
                  sub         a3, s1, a3
                  slti        t0, s11, 1733
                  srl         s4, s1, t2
                  sltu        s9, s7, t5
                  c.xor       a3, a3
                  rem         s2, s8, s2
                  auipc       a3, 925192
                  c.addi      a3, -1
                  mulh        s7, ra, t1
                  lui         t1, 524604
                  rem         s3, a3, a2
                  andi        s1, s10, 1104
                  xori        s2, tp, -1901
                  mulhu       s1, a2, s3
                  c.slli      s7, 27
                  c.sub       a3, a3
                  c.li        s3, -1
                  c.xor       a3, a3
                  divu        s5, a0, zero
                  slti        a3, a6, 968
                  and         gp, t3, zero
                  c.addi4spn  a3, sp, 128
                  c.li        gp, 2
                  auipc       s1, 1026487
                  c.addi      s11, 29
                  sll         tp, t2, tp
                  srli        s1, s4, 28
                  mulh        a6, s5, s11
                  srai        zero, a4, 9
                  add         sp, a2, s3
                  mulhu       a6, t6, a7
                  add         s9, t6, t1
                  add         a6, gp, s4
                  or          t4, a5, a5
                  div         s8, a3, a1
                  c.srai      a3, 7
                  rem         a3, s6, a5
                  add         zero, t4, t0
                  c.lui       s0, 29
                  c.srli      a3, 20
                  c.xor       a4, a3
                  and         s9, a2, a3
                  mulh        t3, a2, a0
                  slli        a6, t3, 10
                  c.or        a3, a2
                  ori         zero, s8, -1129
                  auipc       s6, 286203
                  srli        sp, t2, 30
                  c.sub       s0, a3
                  slti        sp, t1, 1488
                  divu        zero, s5, gp
                  sub         s6, t4, a5
                  c.addi16sp  sp, -16
                  mulhsu      t3, a7, s3
                  sltiu       gp, s11, 1846
                  c.addi16sp  sp, -16
                  auipc       zero, 631290
                  auipc       s3, 1936
                  c.xor       a3, a3
                  sltiu       a3, gp, -948
                  c.sub       a3, a3
                  c.or        s0, a4
                  c.slli      a6, 23
                  c.lui       ra, 1
                  c.add       tp, a1
                  mulhu       zero, t2, a6
                  rem         zero, a4, s5
                  nop
                  xori        a0, s10, 133
                  c.sub       a3, a3
                  slti        a7, s4, 512
                  c.lui       a6, 11
                  c.lui       s11, 1
                  mulh        t0, sp, s9
                  sra         t2, s6, s6
                  slli        s11, s9, 7
                  mulh        s4, s1, a2
                  sltu        ra, s1, s1
                  c.srai      a3, 22
                  mulh        a2, s2, zero
                  xor         a3, s2, ra
                  c.and       a2, a3
                  slli        s4, a3, 31
                  c.addi      s2, 15
                  c.addi      t2, 31
                  c.lui       a0, 5
                  c.slli      s3, 17
                  c.addi      t3, 9
                  andi        s6, s11, -508
                  add         zero, t5, s8
                  c.mv        s6, t1
                  div         tp, t5, s0
                  sub         t0, gp, s9
                  rem         s6, s8, s7
                  c.li        sp, 29
                  auipc       ra, 201952
                  srli        gp, t4, 7
                  slt         s2, ra, s2
                  mul         a1, a0, s6
                  auipc       a4, 529369
                  mulhu       gp, ra, s2
                  slti        t0, s10, 200
                  auipc       a6, 622530
                  c.li        a6, -1
                  c.xor       a3, a3
                  auipc       tp, 590322
                  sra         a6, a2, t1
                  c.nop
                  nop
                  lui         t3, 121747
                  c.slli      a3, 26
                  c.addi      a3, -1
                  add         t0, sp, s11
                  sll         s7, s6, s5
                  xor         zero, s1, a2
                  nop
                  mul         s5, s11, a6
                  c.add       a6, t2
                  c.xor       a3, a3
                  sub         gp, s3, s2
                  slti        s8, s11, 737
                  addi        zero, sp, 1296
                  c.add       a3, a4
                  auipc       s3, 632156
                  c.and       a3, a3
                  srl         s9, s8, a1
                  sll         a3, s6, zero
                  sltu        zero, a7, a4
                  c.or        a3, a3
                  c.lui       a1, 4
                  c.xor       a3, a3
                  xori        a7, t4, 42
                  c.addi16sp  sp, 352
                  xor         a1, a4, s9
                  slti        s8, s10, 1264
                  auipc       s10, 826482
                  srl         a2, s7, a7
                  or          gp, ra, a1
                  andi        t3, a7, -444
                  rem         a4, s10, sp
                  c.addi16sp  sp, -16
                  c.and       a3, a1
                  srai        s3, s0, 24
                  c.or        a3, a3
                  c.andi      a4, -1
                  c.addi16sp  sp, 448
                  slt         s0, sp, sp
                  divu        t2, a1, a0
                  c.slli      s9, 12
                  c.mv        t2, t1
                  c.addi      s10, 12
                  and         a4, t5, zero
                  andi        s11, a4, -80
                  mulhu       t3, s0, a3
                  or          s4, zero, t1
                  c.andi      a3, 20
                  auipc       s10, 437243
                  slli        zero, s6, 19
                  srai        t1, t1, 10
                  srli        sp, ra, 4
                  sll         zero, a4, a6
                  slt         a2, tp, ra
                  lui         t0, 596404
                  mulh        t1, zero, s7
                  c.srli      a3, 31
                  srai        s11, t6, 12
                  auipc       s5, 504976
                  mulh        a2, s1, a5
                  ori         s6, t4, -772
                  c.or        a3, a3
                  sra         sp, s10, t4
                  slli        sp, a0, 10
                  auipc       s9, 385046
                  and         s3, s4, t2
                  c.or        a3, a3
                  sub         t4, a0, s2
                  slti        s0, s8, -1894
                  sltu        a7, a6, a4
                  c.mv        t4, t6
                  srli        s4, sp, 26
                  c.addi4spn  a3, sp, 832
                  mulh        s3, s8, a0
                  c.andi      a3, 4
                  xori        a6, s9, 1710
                  c.sub       s0, a3
                  c.srli      a3, 4
                  mulhsu      a4, s3, t6
                  div         t0, a5, a3
                  mulhsu      a1, zero, sp
                  and         t2, a5, a0
                  sra         s10, t2, tp
                  mul         t4, s1, a5
                  mulh        t3, t6, zero
                  c.slli      sp, 2
                  sltiu       s0, t5, -1083
                  mul         s2, zero, t2
                  and         sp, s6, s3
                  sra         zero, s2, zero
                  srli        s3, s6, 14
                  c.mv        s1, t6
                  c.nop
                  c.or        a3, a3
                  c.addi4spn  a3, sp, 576
                  c.mv        s7, t5
                  srli        a3, s2, 3
                  sltiu       t2, s5, -1673
                  c.addi      a6, 24
                  c.srli      a3, 6
                  c.addi16sp  sp, 192
                  rem         zero, s11, t5
                  c.addi4spn  a3, sp, 960
                  sltiu       s0, s11, 692
                  sra         sp, a1, s4
                  rem         t1, gp, s4
                  c.or        a3, a3
                  srl         a2, s7, t4
                  rem         s9, sp, a2
                  mulh        a7, t4, a5
                  c.slli      s11, 19
                  mulhsu      t0, t5, t6
                  c.or        s0, a3
                  xor         tp, t0, a4
                  c.addi      s11, -1
                  nop
                  srl         t0, s10, a6
                  c.lui       t1, 22
                  sub         zero, s3, t3
                  sltu        s2, t0, a1
                  slt         s11, sp, a7
                  addi        s7, tp, 139
                  mulh        t2, t1, a5
                  c.sub       a3, a1
                  lui         a2, 623231
                  c.srli      a3, 10
                  srai        s10, a3, 7
                  auipc       a1, 991155
                  c.lui       ra, 4
                  add         zero, a6, a2
                  c.nop
                  sra         a3, a6, s2
                  add         a6, ra, s3
                  lui         a1, 714635
                  slli        s6, t5, 20
                  sub         a0, s10, s9
                  divu        s10, t5, s7
                  c.addi4spn  a3, sp, 640
                  c.addi16sp  sp, -16
                  c.sub       a3, a3
                  c.lui       s8, 31
                  srl         a3, s10, s11
                  or          a7, sp, t3
                  sltiu       a7, a5, 1432
                  srl         zero, s8, t4
                  c.addi16sp  sp, -16
                  c.li        s8, -1
                  mulh        a7, s9, zero
                  c.li        s4, -1
                  c.addi4spn  a3, sp, 672
                  slt         s2, s1, t0
                  xor         zero, t1, sp
                  c.or        a3, a3
                  c.add       tp, s1
                  add         s6, s8, a2
                  andi        s3, gp, -1345
                  slt         a7, a1, s11
                  sll         s1, s4, t2
                  sltiu       zero, s9, 1786
                  nop
                  mulhu       t4, s8, a0
                  rem         s4, s3, gp
                  slti        a3, t1, -813
                  lui         zero, 132899
                  srl         s0, a2, t6
                  mulhsu      s9, s0, s6
                  sltiu       s10, s7, 836
                  c.srli      a3, 31
                  c.lui       s0, 1
                  lui         s5, 319769
                  lui         zero, 372906
                  addi        t0, tp, 721
                  divu        tp, s6, a0
                  addi        t1, s8, -369
                  c.addi      a1, -1
                  c.lui       s7, 19
                  slti        t4, gp, -37
                  addi        a0, s4, 907
                  auipc       zero, 968896
                  sra         a6, a3, s8
                  c.addi16sp  sp, -16
                  mulhu       zero, t3, s10
                  c.xor       a3, a3
                  slti        s11, s7, 118
                  sltu        a2, sp, a3
                  c.or        a3, a3
                  c.sub       a3, a3
                  c.andi      s0, -1
                  mulh        a0, s1, a4
                  c.add       s4, a1
                  c.lui       s11, 12
                  sub         a2, a2, t5
                  c.nop
                  srl         s2, t3, s6
                  c.srli      a3, 31
                  c.xor       a3, a3
                  add         s9, t6, t6
                  li         t3, 0x1 #start riscv_int_numeric_corner_stream_23
                  li         s9, 0x0
                  li         s10, 0x0
                  li         t4, 0x23e3956d
                  li         a3, 0x1
                  li         a1, 0x0
                  li         tp, 0x0
                  li         s8, 0x0
                  li         s1, 0x1765d945
                  li         a2, 0x0
                  c.li        ra, -1
                  mulhu       a0, s3, sp
                  mulh        t3, s2, s6
                  c.lui       s0, 5
                  c.li        s9, -1
                  mulhu       tp, t1, s0
                  c.nop
                  mulhsu      s5, a7, a0
                  c.sub       a3, a3
                  auipc       t2, 159035
                  sub         s3, s6, a5
                  mul         a0, tp, s0
                  mulh        s1, t3, t5
                  c.addi16sp  sp, 400
                  c.li        ra, -1
                  add         a7, t5, s0
                  c.addi4spn  a3, sp, 704
                  mulhsu      sp, tp, a2
                  c.sub       a3, a3
                  c.nop
                  div         s3, s3, ra
                  c.li        a2, 7
                  sub         s0, ra, a6
                  srai        a7, a6, 1
                  div         t3, t1, a6
                  nop
                  andi        a1, t5, 378
                  andi        s9, s4, 1475
                  mulh        zero, s6, t0
                  c.srai      a3, 18
                  c.addi16sp  sp, 48
                  c.slli      s11, 28
                  c.lui       a7, 12
                  srai        s10, s8, 19
                  mul         zero, t6, t2
                  c.addi16sp  sp, 240
                  auipc       gp, 520251
                  c.addi      s9, -1
                  auipc       t1, 913483
                  add         s1, t5, t2
                  ori         s6, zero, 683
                  c.srai      a3, 22
                  lui         a4, 189461
                  li         t4, 0x1 #start riscv_int_numeric_corner_stream_6
                  li         t3, 0x0
                  li         s6, 0x691e58a4
                  li         a3, 0x1
                  li         s11, 0x0
                  li         s10, 0x36722a19
                  li         t2, 0x3a367089
                  li         s8, 0x0
                  li         t1, 0x53a88581
                  li         a6, 0x0
                  divu        s0, s11, gp
                  mulh        s4, tp, s9
                  c.add       a2, ra
                  divu        a2, t1, sp
                  lui         t3, 503004
                  mulhsu      s2, a7, a4
                  c.addi      s10, -1
                  div         s2, t2, a0
                  lui         s3, 499409
                  c.addi      s10, 4
                  c.addi16sp  sp, 144
                  mulhsu      zero, s7, s2
                  addi        t1, t2, 192
                  c.sub       a3, a3
                  rem         s2, t6, s10
                  c.sub       s1, a3
                  c.nop
                  div         gp, t0, ra
                  c.mv        ra, s10
                  nop
                  mul         t4, t5, a6
                  c.addi4spn  a3, sp, 320
                  c.nop
                  c.li        s6, 28
                  mulh        sp, s4, s10
                  c.lui       s11, 8
                  c.srli      a0, 29
                  divu        s5, a7, t3
                  and         a3, a5, s3
                  lui         s1, 685706
                  ori         t1, s1, 1670
                  andi        a0, t1, 643
                  lui         ra, 694787
                  auipc       s5, 436935
                  xori        t2, a4, -978
                  auipc       s7, 590559
                  c.nop
                  auipc       a6, 160773
                  c.sub       a3, a3
                  mul         t4, a2, ra
                  slt         sp, s0, a4
                  c.sub       a3, s1
                  xor         tp, a0, s7
                  sll         t1, gp, a7
                  xori        zero, gp, 671
                  sltu        a2, a4, s3
                  sltiu       s2, s11, 592
                  add         ra, t2, tp
                  sub         s2, ra, a4
                  c.addi16sp  sp, -16
                  c.nop
                  and         s10, t5, a6
                  c.slli      a2, 3
                  div         s6, s9, a1
                  rem         s11, s0, s3
                  c.lui       s7, 30
                  c.and       a3, a3
                  sll         s3, t2, s7
                  sra         a7, s11, a0
                  c.li        s9, -1
                  divu        s8, a4, t0
                  or          s3, a0, s4
                  div         a7, ra, s5
                  c.addi16sp  sp, 224
                  c.or        a3, a3
                  srl         s10, a7, s0
                  slli        a2, s8, 23
                  xor         zero, a0, s9
                  nop
                  c.add       a2, s6
                  ori         s0, tp, -1230
                  c.li        s5, 17
                  rem         s8, t6, s6
                  sub         t3, a4, s3
                  li         a3, 0x1 #start riscv_int_numeric_corner_stream_25
                  li         ra, 0x1
                  li         t4, 0x0
                  li         a0, 0x1
                  li         t3, 0x24c52028
                  li         s8, 0x1
                  li         s10, 0x0
                  li         s0, 0x52f55b52
                  li         s11, 0x0
                  li         s9, 0x0
                  c.mv        ra, t2
                  mulhsu      gp, s3, tp
                  c.li        s0, 16
                  addi        s10, zero, -764
                  c.sub       a4, a3
                  addi        sp, t5, 1346
                  sub         a4, a2, t1
                  div         s5, ra, gp
                  rem         s9, gp, s10
                  c.addi      t2, -1
                  c.nop
                  c.sub       a3, a4
                  c.addi16sp  sp, 80
                  c.addi4spn  a4, sp, 640
                  c.addi      a4, 11
                  add         a3, s8, a1
                  nop
                  c.sub       a3, a3
                  rem         t1, s0, s9 #end riscv_int_numeric_corner_stream_25
                  nop
                  c.slli      s6, 24
                  or          s1, tp, s6
                  mulh        s6, a1, gp
                  div         s3, s4, t1
                  srli        a3, a0, 28
                  c.slli      a2, 27
                  xori        a0, s1, 252
                  mulhu       s2, t0, t3
                  srli        a2, tp, 9
                  c.nop
                  mulh        t1, s3, s6
                  sltu        s8, s2, tp
                  slt         a3, s4, s0
                  sra         s4, a4, t2
                  c.addi4spn  a3, sp, 128
                  rem         gp, t6, s0
                  c.srai      a4, 15
                  divu        s0, t0, s10
                  c.or        a2, a3
                  srai        zero, s8, 5
                  slli        s4, ra, 29
                  sltu        ra, a1, s4
                  andi        s6, t5, 605
                  c.add       ra, a7
                  sltu        t3, s7, t6
                  c.and       s0, a3
                  srl         ra, s8, s8
                  mulh        sp, s4, a6
                  divu        t2, t5, t4
                  sltiu       t1, s8, 1689
                  divu        s1, s3, ra
                  c.addi      s5, 17
                  lui         s4, 736498
                  c.li        t4, -1
                  c.xor       a3, a3
                  c.add       s1, s4
                  div         s10, s7, s1
                  c.nop
                  div         s8, s3, a7
                  c.li        s3, 26
                  srli        s10, s7, 12
                  c.lui       t1, 9
                  ori         zero, t3, -1624
                  xor         s6, s8, t2
                  and         a4, s4, s11
                  c.andi      a3, 27
                  nop
                  srl         a6, t3, s1
                  mulhsu      zero, t5, t4
                  srli        a7, a0, 30
                  divu        s6, s7, a6
                  or          s4, s0, t3
                  sra         ra, tp, a1
                  mulh        a0, s6, s11
                  sltu        ra, a7, s3
                  rem         s9, s6, s0
                  add         zero, s9, s8
                  c.li        s4, -1
                  c.andi      a2, 19
                  c.lui       ra, 11
                  xori        s8, t2, 1438
                  mulhsu      a1, zero, s0
                  sll         s0, s4, t5
                  mulhsu      gp, s11, t6
                  c.addi16sp  sp, -16
                  nop
                  ori         zero, t0, 811
                  rem         s8, s9, a7
                  sltiu       a6, t1, 1756
                  c.add       a1, t3
                  xor         s8, zero, t0
                  divu        s10, a4, s0
                  srli        s8, t2, 10
                  c.and       a3, a3
                  div         t3, s3, t0
                  sub         s6, s9, s4
                  slli        zero, a1, 11
                  andi        t0, s0, 1891
                  c.li        s7, -1
                  sltu        s11, a2, s7
                  sra         s6, t3, t6
                  mulhu       sp, s2, s8
                  c.slli      a1, 1
                  add         zero, s5, s10
                  sra         s6, t2, t5
                  c.li        s4, 29
                  add         t3, s10, t6
                  add         s6, s10, s2
                  ori         zero, s9, 1949
                  srl         gp, t0, a0
                  c.mv        s8, gp
                  c.mv        t3, t5
                  c.slli      ra, 23
                  c.srai      a3, 13
                  c.li        s4, 16
                  mulhu       a7, s0, t0
                  and         a0, a3, s0
                  or          t3, t1, a3
                  c.addi4spn  a3, sp, 352
                  add         a0, gp, tp
                  sltu        s5, t2, s3
                  xori        s3, s2, -1505
                  ori         s5, s8, -1285
                  c.addi16sp  sp, 352
                  mulhsu      s2, t1, s2
                  c.or        a3, a3
                  xor         s6, s10, s7
                  c.mv        ra, a2
                  lui         a4, 663237
                  sra         gp, t6, t1
                  c.li        t4, 25
                  c.mv        tp, t4
                  c.mv        s8, t5
                  c.srli      a3, 24
                  mulh        t1, t0, s7
                  add         a1, tp, ra
                  c.andi      a3, -1
                  c.sub       a3, a3
                  srl         s1, t3, a7
                  slt         s10, s0, sp
                  sll         s11, s3, s11
                  c.addi16sp  sp, 272
                  divu        s11, gp, s5
                  ori         s9, a2, -1680
                  c.xor       a3, a3
                  or          ra, a2, s0
                  c.lui       ra, 28
                  c.addi16sp  sp, 32
                  lui         t1, 1048188
                  c.srai      a3, 18
                  srl         s11, t3, s3
                  c.or        a3, a3
                  c.andi      a3, -1
                  c.sub       a3, a0
                  c.xor       s1, a3
                  srl         a4, t6, a3
                  c.addi16sp  sp, -16
                  c.srai      a3, 13
                  c.xor       a3, a3
                  or          s6, t5, s6
                  c.nop
                  srai        s4, s1, 28
                  lui         s8, 536588
                  c.or        a3, a3
                  or          a0, s4, s6
                  slti        a7, s5, -1960
                  c.andi      a3, 8
                  srai        s2, s10, 29
                  addi        s8, zero, -2021
                  sltiu       s10, a0, 256
                  srli        zero, s7, 29
                  c.li        gp, -1
                  c.srai      a3, 10
                  mulhsu      s0, s1, tp
                  c.addi16sp  sp, 128
                  c.sub       a3, a3
                  mulhu       zero, t0, s9
                  addi        s1, s0, -1708
                  c.nop
                  or          s1, ra, t5
                  c.xor       a3, a3
                  sra         s3, s5, a3
                  auipc       s4, 713666
                  andi        s7, s3, 1182
                  mulhsu      s4, s2, t4
                  rem         s11, t1, a4
                  sra         zero, sp, a3
                  c.nop
                  mulhu       s4, t5, t1
                  divu        t0, a4, s7
                  c.lui       a7, 8
                  c.nop
                  c.addi16sp  sp, 224
                  add         s9, t2, t6
                  c.addi      s1, -1
                  sltu        a3, s6, s8
                  c.sub       a3, a3
                  c.or        a3, a2
                  c.addi      t2, 15
                  mulh        a4, s8, t6
                  xori        s8, s10, -613
                  srai        s2, s5, 2
                  nop
                  xori        s0, t2, 331
                  lui         t3, 490395
                  srl         s3, t0, t1
                  add         t0, sp, a3
                  sltu        s1, a0, sp
                  mulhu       a4, s1, t5
                  mulhsu      t4, s11, s1
                  div         ra, s9, s5
                  srai        s3, ra, 21
                  sra         a3, t0, s2
                  sltu        t4, s11, a5
                  addi        sp, s6, 357
                  c.srli      a3, 5
                  mulhu       t3, s0, gp
                  sub         t4, sp, t2
                  div         a3, s9, a3
                  c.nop
                  lui         sp, 539428
                  or          s3, a7, t0
                  c.mv        s10, tp
                  c.slli      ra, 9
                  ori         zero, a4, -738
                  srl         s6, s8, s7
                  sltiu       s3, tp, -1664
                  div         zero, t6, t2
                  c.lui       t0, 6
                  sub         t4, a7, s6
                  c.add       t1, ra
                  c.addi16sp  sp, 336
                  mulhu       ra, s6, t3
                  c.srli      a3, 1
                  c.addi      tp, -1
                  xori        t4, tp, -1318
                  xor         s11, s9, a1
                  mulhu       t2, t4, s6
                  slli        zero, ra, 10
                  mulhsu      s5, s0, t5
                  c.nop
                  srl         a3, t1, a7
                  c.srli      a3, 13
                  andi        s5, s3, -1831
                  mul         sp, t0, s8
                  c.addi16sp  sp, -16
                  c.sub       a1, a3
                  slti        a3, s8, -727
                  sub         zero, s9, tp
                  c.addi16sp  sp, 16
                  xor         s2, t3, t5
                  c.addi      ra, -1
                  divu        a0, t0, a0
                  nop
                  sub         zero, a2, a0
                  ori         a2, s7, -67
                  andi        s3, tp, -1849
                  c.addi      t0, -1
                  slti        s8, t2, 230
                  mulh        t2, t1, ra
                  slti        t1, s3, 740
                  c.addi16sp  sp, 432
                  srli        t1, a1, 7
                  div         t1, zero, s0
                  lui         s3, 153295
                  srai        zero, a5, 13
                  c.addi4spn  a3, sp, 48
                  srl         a7, t1, s8
                  c.srai      a3, 23
                  c.srli      a4, 28
                  srli        ra, t5, 16
                  c.add       a6, s11
                  srai        t1, a5, 10
                  c.andi      a3, 3
                  c.mv        ra, a7
                  srli        s7, s1, 16
                  c.mv        ra, a4
                  srl         a0, s1, s10
                  slt         s7, s6, s8
                  nop
                  c.addi16sp  sp, -16
                  mulh        s4, ra, s0
                  andi        a1, t0, -1768
                  andi        zero, s8, 158
                  sra         a7, s9, s3
                  divu        sp, t0, ra
                  nop
                  srai        zero, t1, 31
                  rem         s6, s8, s0
                  c.and       a3, a3
                  srl         s8, a4, t5
                  srli        s2, s3, 6
                  c.addi16sp  sp, 464
                  div         s9, zero, s3
                  c.mv        a2, t1
                  mulhsu      s5, a4, s0
                  c.mv        tp, a5
                  sra         gp, t2, a6
                  mulh        s5, a4, a5
                  sltiu       s0, s7, 549
                  lui         s11, 506230
                  c.addi16sp  sp, -16
                  lui         a6, 717524
                  slli        s6, s4, 8
                  sltiu       zero, s7, -870
                  c.srai      a3, 21
                  mul         t1, s2, a3
                  mulhsu      gp, a6, a1
                  divu        t0, a0, s3
                  c.xor       a1, a3
                  sll         zero, a1, a3
                  c.andi      a3, 6
                  c.li        s11, 31
                  add         s9, a0, t1
                  sll         s5, a6, t0
                  sll         s11, t6, zero
                  sltu        s9, s2, s4
                  srl         a0, t5, t5
                  and         tp, s3, a2
                  c.slli      s6, 31
                  mul         s10, a6, s8
                  mul         a6, s2, a5
                  c.nop
                  sub         a1, a5, t4
                  slli        s1, s10, 0
                  c.addi16sp  sp, 224
                  sll         a3, s6, a7
                  c.add       tp, s9
                  rem         zero, gp, s0
                  and         s11, gp, s9
                  addi        s6, a4, 1836
                  addi        a6, s6, -1989
                  c.li        a4, -1
                  c.or        a3, a3
                  mulh        s4, s0, t6
                  srli        a7, a1, 1
                  addi        s4, s10, 1450
                  srli        sp, s11, 16
                  srl         t4, a0, s7
                  mulhsu      a2, zero, a1
                  c.or        a3, a3
                  sll         a2, tp, t5
                  c.andi      a3, 8
                  addi        s4, t6, -1631
                  c.nop
                  c.and       a3, a3
                  nop
                  sltiu       sp, a7, 406
                  sltu        s2, t1, s1
                  c.addi      s7, -1
                  andi        a2, s1, -214
                  sra         s10, s5, s2
                  xori        a3, s5, 974
                  c.srai      a3, 20
                  c.xor       a3, a3
                  add         s9, s1, t6
                  divu        s11, s7, s3
                  andi        s6, a2, -2008
                  rem         s1, sp, tp
                  andi        a2, zero, 535
                  c.lui       ra, 30
                  c.addi16sp  sp, -16
                  mul         a3, s8, t1
                  add         t2, ra, s5
                  c.or        a1, a1
                  sll         a6, a3, s10
                  c.addi      s4, -1
                  c.xor       a3, a3
                  sra         s6, a0, a4
                  c.andi      s1, -1
                  c.mv        tp, tp
                  div         t4, s5, s3
                  c.add       a6, t0
                  lui         zero, 877160
                  divu        zero, a4, tp
                  add         s6, gp, a0
                  slt         a2, a1, s6
                  or          a0, t0, t1
                  add         a2, t1, sp
                  xor         t1, a1, a3
                  c.srli      a1, 15
                  slti        s0, t5, 1778
                  c.addi16sp  sp, 496
                  xori        s1, s3, 843
                  xor         a7, s4, s9
                  c.or        a3, a3
                  and         a3, t1, tp
                  mulh        s11, s5, a4
                  mul         a1, s9, sp
                  mulh        s4, tp, t3
                  auipc       ra, 202659
                  c.addi      s4, -1
                  mulhsu      zero, t4, t3
                  c.and       a3, a3
                  c.xor       a3, a3
                  xor         t1, a3, t2
                  sltiu       s1, tp, 1490
                  c.addi4spn  a0, sp, 320
                  c.add       s5, t1
                  slt         s4, t4, a5
                  c.xor       a3, a3
                  c.addi4spn  a3, sp, 864
                  c.xor       a1, a3
                  c.sub       a3, a3
                  c.or        a3, a3
                  sra         zero, s5, a5
                  mulhsu      zero, s3, s10
                  srl         a0, s6, zero
                  mulhu       s9, s10, s5
                  c.nop
                  or          t4, a1, s8
                  slti        sp, t0, 995
                  c.nop
                  mul         ra, s8, s7
                  slt         gp, s2, s9
                  sll         t0, a7, s1
                  sltu        s8, t2, t0
                  sltiu       a0, a6, -1771
                  or          s8, s2, tp
                  c.xor       a3, a3
                  slli        gp, a5, 22
                  c.addi16sp  sp, 496
                  sub         a2, s1, t4
                  xori        zero, a7, -1286
                  ori         s10, a1, 37
                  andi        s11, s11, -986
                  sltu        a2, s11, t0
                  c.addi4spn  a2, sp, 368
                  sll         zero, s1, s6
                  ori         gp, t2, 328
                  c.sub       a3, a5
                  c.sub       a3, a3
                  srl         s8, gp, a6
                  mul         s7, sp, ra
                  mul         s0, s9, zero
                  c.andi      a3, 19
                  c.srai      a3, 31
                  andi        t2, t1, 962
                  c.or        a3, a3
                  mulhu       gp, t2, a5
                  lui         t4, 482236
                  and         s3, a4, sp
                  lui         zero, 248823
                  sra         a3, s10, t3
                  slti        tp, s5, -871
                  c.li        s7, -1
                  slti        a0, t2, -37
                  c.add       tp, a4
                  c.addi16sp  sp, -16
                  mul         t2, gp, a6
                  c.nop
                  srl         a1, s1, a0
                  c.sub       a3, a3
                  slt         zero, t1, s4
                  c.andi      a3, 12
                  srai        t2, s4, 3
                  addi        s11, s0, 1623
                  xori        s0, t4, -514
                  sltu        gp, s7, t3
                  c.addi      a3, -1
                  and         t3, a0, s10
                  sra         gp, s8, a7
                  mul         gp, s2, gp
                  c.or        a3, a3
                  sltiu       a2, a3, -1053
                  mulh        t2, gp, s0
                  mulh        s11, s8, s9
                  srl         s9, s1, s6
                  c.lui       s2, 19
                  divu        a4, a6, a7
                  ori         tp, t1, -1148
                  srai        t0, a7, 9
                  mulh        t0, t1, t0
                  slti        tp, t1, 151
                  c.addi16sp  sp, -16
                  srai        a2, a5, 16
                  sll         s10, a6, s2
                  divu        s11, a2, s9
                  mul         tp, t4, s2
                  c.addi16sp  sp, -16
                  srai        s5, a3, 30
                  c.addi4spn  a3, sp, 864
                  ori         s5, s10, 2032
                  xor         a0, t3, a5
                  div         a6, a5, a2
                  c.nop
                  c.or        a3, a3
                  rem         t3, s7, a1
                  c.srai      a3, 23
                  sra         tp, a3, tp
                  mulhu       t3, t5, s0
                  lui         ra, 679302
                  c.and       a3, a3
                  c.addi      t1, -1
                  divu        a7, t0, s4
                  c.andi      a3, -1
                  c.addi      s1, -1
                  sra         a1, s7, t6
                  slli        s3, a0, 4
                  ori         s4, t3, 176
                  sltiu       t3, s11, 665
                  andi        s0, s11, 1766
                  ori         s11, t2, 126
                  rem         t0, a3, s7
                  lui         ra, 507207
                  sltiu       a7, t2, 1675
                  c.li        a6, 10
                  sub         s9, t5, s4
                  sra         t1, s11, t6
                  sltu        t3, sp, zero
                  slti        zero, s11, -868
                  sra         s8, a7, a6
                  add         zero, s1, t2
                  auipc       s9, 285571
                  andi        s9, t6, -540
                  c.addi16sp  sp, 176
                  and         zero, s2, t5
                  c.addi4spn  a3, sp, 64
                  c.li        s9, 24
                  c.li        a1, -1
                  c.mv        t4, t3
                  addi        zero, t0, -436
                  srli        a3, s5, 16
                  andi        t4, s6, 1253
                  c.andi      a3, -1
                  mulh        a0, zero, s7
                  mulh        zero, s3, s10
                  c.srli      a3, 25
                  mul         s6, s9, s7
                  addi        s4, s1, -500
                  c.mv        a0, a4
                  div         s2, t1, s1
                  slli        s5, s8, 22
                  mulhu       t1, t6, s11
                  nop
                  and         a1, s10, tp
                  slti        s11, gp, 686
                  and         s7, a3, t1
                  c.or        a3, a3
                  lui         a1, 977416
                  c.add       a1, s6
                  c.lui       a0, 29
                  slt         t4, a6, a6
                  addi        a1, s0, -1013
                  mul         s2, ra, t3
                  c.addi4spn  a3, sp, 944
                  c.or        a0, a1
                  srai        zero, a2, 29
                  c.lui       s6, 19
                  sub         a1, gp, a0
                  sub         zero, s1, s2
                  mulhsu      s10, s7, s0
                  c.lui       t3, 21
                  mulhu       ra, a3, a6
                  andi        a4, t4, 1616
                  c.add       s3, a6
                  and         t1, s11, s2
                  c.addi      t2, 11
                  c.nop
                  c.lui       t0, 17
                  c.slli      t3, 4
                  c.addi4spn  a3, sp, 384
                  c.nop
                  srli        a7, s9, 10
                  c.lui       s3, 3
                  mulhu       s11, ra, t2
                  sra         a0, s2, s1
                  lui         s7, 45746
                  c.add       ra, tp
                  srai        t0, a7, 17
                  c.addi      s9, 23
                  c.andi      a3, 17
                  slli        s2, s5, 17
                  rem         s9, t4, s11
                  c.add       t1, a2
                  nop
                  c.mv        a3, gp
                  c.nop
                  sltiu       t2, a0, -194
                  c.slli      a1, 11
                  lui         s7, 179769
                  auipc       s3, 535431
                  c.and       a3, a3
                  mulhsu      s6, t5, gp
                  srl         zero, a2, s2
                  andi        a2, s7, -1584
                  c.and       a4, a3
                  srli        s9, t3, 19
                  c.lui       s5, 2
                  divu        ra, a4, a0
                  c.sub       a1, a3
                  c.li        a1, 3
                  addi        s6, t2, 1996
                  c.andi      s0, -1
                  ori         s2, s4, 1993
                  xori        t3, t4, -81
                  c.srai      a3, 30
                  add         s10, s9, ra
                  srli        a2, s11, 8
                  c.and       a3, a1
                  divu        gp, s10, s2
                  c.li        a4, 24
                  add         s10, gp, a0
                  c.srli      a3, 4
                  c.srai      a3, 4
                  sltiu       a1, t0, 770
                  c.xor       a4, a3
                  mul         a2, t6, a0
                  c.slli      t4, 22
                  c.add       s11, a0
                  srl         gp, s1, s2
                  lui         s9, 635661
                  srai        a6, s0, 2
                  sltu        tp, sp, s3
                  add         a2, s8, s9
                  c.mv        t4, a0
                  rem         s3, a7, zero
                  xori        t0, t0, -2006
                  and         a0, a1, s9
                  c.addi16sp  sp, -16
                  mulh        zero, sp, t1
                  or          a7, s11, t0
                  andi        a6, sp, -1833
                  c.addi4spn  a3, sp, 384
                  c.andi      a3, 26
                  c.xor       s1, a3
                  xori        ra, gp, 538
                  c.slli      s0, 16
                  ori         s6, a7, -698
                  c.slli      a0, 14
                  li         a3, 0x0 #start riscv_int_numeric_corner_stream_2
                  li         t4, 0x1
                  li         a2, 0x7d9fcb14
                  li         t3, 0x7c7286e1
                  li         s11, 0x24d117ae
                  li         s3, 0x286df535
                  li         s2, 0x0
                  li         s9, 0x0
                  li         s10, 0x6b2ed5ec
                  li         s8, 0x0
                  divu        a7, a0, s11
                  c.addi16sp  sp, 48
                  nop
                  mul         s4, s4, t5
                  lui         a0, 221927
                  auipc       t0, 651640
                  sub         a6, s5, a7
                  mul         zero, a7, s5
                  c.nop
                  div         zero, t6, a0
                  c.addi4spn  a3, sp, 128
                  c.mv        a7, s8
                  c.addi      s2, 24
                  c.addi4spn  a3, sp, 640
                  c.addi      sp, 6
                  c.add       a3, gp
                  c.addi16sp  sp, -16
                  c.addi16sp  sp, -16
                  c.nop
                  addi        a1, s0, -260
                  auipc       sp, 324911
                  mul         a6, a7, zero
                  c.addi4spn  a4, sp, 608
                  div         ra, s6, t3
                  c.li        t4, 10
                  mulhu       t1, a0, s7
                  c.lui       a7, 10
                  c.mv        s10, sp
                  slti        s4, t5, 1735
                  srai        t2, tp, 13
                  slti        a6, t0, 1203
                  sra         zero, s7, s11
                  sltu        t4, a7, s6
                  c.sub       a3, a3
                  c.and       a3, a3
                  addi        zero, s8, 703
                  div         t1, ra, s10
                  and         a7, zero, ra
                  srai        s6, a0, 4
                  div         s3, gp, s5
                  sltiu       s7, t3, 1125
                  c.or        a3, a3
                  divu        zero, a4, s3
                  c.xor       a3, a3
                  c.addi      ra, -1
                  lui         a1, 1030640
                  ori         s3, t6, -308
                  and         tp, s2, a2
                  c.sub       a3, a3
                  sub         s11, a6, s3
                  sra         a7, s7, zero
                  sra         t4, tp, a1
                  srli        zero, s2, 14
                  sll         sp, sp, s5
                  divu        a0, s11, a0
                  c.andi      a3, -1
                  srl         t2, sp, s8
                  addi        tp, a7, 441
                  c.andi      a3, 23
                  div         t3, s11, t4
                  c.and       a3, a3
                  xor         s6, s8, s1
                  xor         zero, t1, s9
                  mul         gp, s3, t3
                  or          a6, a0, s11
                  xor         a2, s1, tp
                  slti        s9, t0, -190
                  sltu        zero, ra, t3
                  c.xor       a1, s0
                  and         s9, a5, s0
                  c.add       s6, s8
                  div         s2, t5, t0
                  mulh        tp, t2, a1
                  sll         s6, zero, s4
                  c.nop
                  divu        s0, a0, t3
                  sub         a6, s3, s10
                  c.lui       s9, 26
                  mul         t4, s5, t5
                  and         a6, t1, a3
                  div         t1, t6, s3
                  c.nop
                  c.srai      s0, 4
                  c.addi16sp  sp, 400
                  xor         t2, a1, s4
                  xor         s0, sp, t4
                  sltiu       s3, tp, -1710
                  c.xor       a3, a4
                  auipc       t0, 935471
                  srai        t1, a3, 18
                  sra         t4, s2, s2
                  mulh        gp, t3, s9
                  lui         s6, 276928
                  c.lui       ra, 22
                  addi        zero, s5, 877
                  slt         s9, s4, tp
                  c.or        a3, s0
                  c.mv        s5, s6
                  c.addi      tp, -1
                  c.xor       a3, a3
                  andi        s6, gp, -786
                  mulh        a6, zero, sp
                  c.slli      ra, 25
                  add         t1, t1, zero
                  c.add       ra, a3
                  and         t4, s4, zero
                  c.slli      s3, 1
                  mulhu       zero, s3, a6
                  c.and       s1, a3
                  slt         a6, a2, s2
                  c.or        a3, a3
                  c.addi16sp  sp, 432
                  or          t3, a3, t3
                  srai        a7, a1, 1
                  addi        t4, s0, 453
                  auipc       zero, 15130
                  ori         s6, a4, -441
                  andi        s4, s5, -141
                  sltu        t2, s6, t4
                  srl         s6, t0, a1
                  c.addi4spn  a3, sp, 128
                  c.srai      a3, 2
                  addi        s10, s8, 255
                  c.andi      a3, 23
                  div         gp, s3, a4
                  mulhu       a1, s7, s6
                  div         a2, a7, zero
                  c.or        a3, a3
                  add         zero, s8, t5
                  div         t1, s9, s3
                  c.xor       a3, s0
                  or          s7, s4, t6
                  lui         sp, 128242
                  mulhsu      t1, t1, s8
                  mulh        t1, a3, s1
                  lui         a1, 705764
                  c.add       s1, s1
                  mulhu       a1, s2, a1
                  c.srli      a3, 8
                  c.addi4spn  a3, sp, 832
                  slt         a0, s4, zero
                  c.addi4spn  a3, sp, 192
                  mul         s9, a7, t5
                  divu        s2, ra, gp
                  mulhu       sp, s9, a5
                  c.addi4spn  s1, sp, 960
                  mulhsu      zero, t3, sp
                  add         t4, a5, t4
                  c.srli      a2, 13
                  sltu        s11, s11, a4
                  c.addi      s2, 8
                  slti        ra, s7, -30
                  andi        a3, t1, 143
                  mulhsu      s1, s4, t3
                  srli        gp, tp, 19
                  xor         s6, gp, a4
                  c.li        t2, -1
                  c.and       a3, a3
                  c.xor       s1, a3
                  c.sub       a3, a3
                  xor         zero, t5, s2
                  lui         s9, 251325
                  c.addi      s5, 25
                  sra         ra, s8, s3
                  c.slli      s1, 12
                  c.addi      s8, 19
                  nop
                  c.lui       ra, 8
                  xori        s1, a0, 194
                  auipc       s6, 321575
                  mulhu       t0, s7, t3
                  slli        a1, s0, 9
                  andi        gp, s9, 1202
                  c.or        a3, a3
                  nop
                  mulhsu      t0, s8, s6
                  c.srli      a3, 7
                  sltiu       zero, a6, 1143
                  srli        t1, t6, 11
                  or          t1, t3, s3
                  mul         s7, a0, t1
                  andi        a7, s4, -1255
                  nop
                  c.addi16sp  sp, 192
                  c.addi16sp  sp, -16
                  add         a7, s8, ra
                  c.and       a3, a3
                  c.addi      s5, -1
                  auipc       t2, 1002464
                  slti        s8, t3, -1979
                  srli        s5, a2, 9
                  c.sub       a3, a3
                  mulhu       s3, t1, a7
                  sub         s6, sp, s5
                  add         gp, a4, a6
                  xori        s5, sp, 1511
                  c.mv        s3, s5
                  ori         s10, s9, -1947
                  sll         s6, t0, a6
                  andi        t4, s0, -207
                  c.addi16sp  sp, -16
                  mulhsu      s6, s0, t0
                  c.and       a3, a3
                  sub         zero, t0, s1
                  auipc       s5, 893225
                  c.srli      a3, 31
                  or          a1, s0, zero
                  c.andi      a3, -1
                  c.add       t2, tp
                  slt         t3, t5, ra
                  c.srai      s1, 18
                  sub         zero, s8, gp
                  or          s4, t1, gp
                  slt         sp, a0, a1
                  or          a0, s7, a6
                  auipc       s11, 854334
                  c.andi      a0, -1
                  c.xor       a3, s0
                  slt         a2, a6, gp
                  mul         t1, s11, tp
                  slt         a6, a5, a7
                  c.add       a0, t4
                  auipc       a7, 719843
                  lui         s1, 537935
                  or          zero, a2, a3
                  divu        zero, s2, s8
                  xor         s3, t6, t4
                  c.nop
                  c.slli      a3, 31
                  slti        sp, tp, -1441
                  c.slli      tp, 4
                  c.srai      a1, 6
                  slli        ra, t5, 7
                  mulhu       s9, a1, t6
                  nop
                  c.lui       a6, 15
                  c.nop
                  xori        gp, s6, 962
                  mulh        t4, s2, a6
                  addi        s9, t5, -1186
                  and         s6, s8, a0
                  c.srli      a3, 4
                  c.slli      s10, 7
                  slt         s4, a5, s11
                  c.add       s4, a3
                  or          tp, a6, tp
                  c.nop
                  xor         t3, t5, ra
                  div         a2, zero, s6
                  c.srai      a3, 1
                  c.add       ra, t6
                  c.addi16sp  sp, -16
                  xori        t2, a1, -676
                  or          a6, s4, zero
                  c.and       a3, a3
                  add         a2, s1, s0
                  or          s2, s0, s9
                  c.lui       s3, 19
                  c.xor       s1, a1
                  sub         s10, ra, s11
                  sltiu       zero, s9, 531
                  sub         zero, s3, a5
                  c.addi      ra, -1
                  nop
                  andi        s2, s7, 1484
                  c.slli      s7, 1
                  ori         a4, tp, 1799
                  c.mv        s9, s6
                  slti        tp, s11, -1862
                  c.slli      s3, 21
                  sll         a4, ra, a1
                  c.xor       a3, a3
                  c.lui       t4, 28
                  andi        s2, a0, 1282
                  srl         t0, s1, sp
                  c.and       a3, a3
                  slti        s1, s10, -379
                  c.addi4spn  a3, sp, 640
                  sll         gp, s3, a6
                  srl         a0, t0, a7
                  auipc       s11, 403290
                  andi        t2, t1, -1624
                  c.nop
                  add         s4, a2, a6
                  sltu        a0, sp, s1
                  mulhu       t4, s2, s2
                  mulhsu      a0, t5, a6
                  xori        s3, s1, 601
                  andi        a3, ra, -1350
                  divu        s11, zero, s7
                  xori        t3, s8, -1106
                  srai        a1, s10, 20
                  sltiu       a7, s11, -1272
                  slli        t4, s8, 24
                  srai        ra, s6, 31
                  auipc       zero, 914245
                  srli        t1, s4, 17
                  ori         s9, s2, 187
                  or          s10, s11, s9
                  c.addi16sp  sp, -16
                  slt         zero, s10, s11
                  c.srai      a3, 9
                  c.andi      a3, -1
                  sll         s9, s1, sp
                  andi        t2, ra, -339
                  nop
                  mulhu       a6, t1, s2
                  mul         a0, t0, a0
                  srai        a3, s9, 14
                  srli        s1, a3, 12
                  nop
                  xori        s3, a3, -992
                  c.or        a3, a4
                  add         s6, a1, a3
                  ori         s9, s1, 365
                  addi        a6, a5, 1948
                  addi        a3, s4, 1401
                  slli        t0, s0, 17
                  slli        zero, s0, 27
                  srli        s0, s6, 7
                  c.nop
                  add         a0, s2, ra
                  c.add       s5, t5
                  add         s1, s5, ra
                  c.or        a3, a3
                  add         s3, a2, s4
                  sub         s10, a6, gp
                  slti        zero, s9, 873
                  divu        s8, a0, s10
                  sltu        gp, t4, s0
                  slt         a7, s3, s9
                  mulhsu      s5, a1, ra
                  mulh        t2, s2, t6
                  srl         gp, t5, a6
                  slti        sp, s1, -1281
                  lui         s2, 295291
                  auipc       s6, 976651
                  divu        s7, t4, a7
                  c.lui       t4, 25
                  divu        a3, a3, t0
                  sltu        s0, s4, t1
                  mulh        s3, t0, s6
                  c.lui       ra, 28
                  c.li        a4, 11
                  c.srli      a3, 23
                  c.andi      a3, -1
                  andi        s7, s6, -1997
                  and         a1, t3, t1
                  ori         a0, t6, 1956
                  auipc       s9, 931045
                  sll         a3, s0, s5
                  divu        zero, s9, s7
                  sra         s9, a6, t2
                  and         a2, s2, s10
                  ori         s2, ra, -1693
                  rem         s7, s7, s1
                  xori        a7, a1, -1571
                  sltu        zero, s6, t1
                  c.mv        s0, a2
                  c.mv        sp, tp
                  sltu        zero, a3, s8
                  srai        zero, a0, 12
                  c.or        a3, a2
                  sltu        t0, t0, ra
                  xori        s9, s8, -738
                  mulhu       zero, s6, s10
                  slli        s0, gp, 27
                  c.sub       a3, a0
                  andi        s10, zero, -1681
                  srl         s9, s1, s2
                  mulhsu      s8, s2, t1
                  add         a6, a5, a1
                  c.addi      s7, 4
                  c.add       a7, a1
                  srli        t0, a1, 26
                  and         zero, s1, a5
                  c.addi4spn  a3, sp, 64
                  add         s4, t2, a5
                  c.add       tp, a6
                  c.slli      t1, 26
                  mul         zero, t1, s7
                  c.lui       gp, 19
                  c.srai      s1, 6
                  or          s7, zero, a1
                  sub         s6, t3, a7
                  c.addi      s7, -1
                  mulhsu      s9, ra, s5
                  c.add       s11, s1
                  andi        s0, sp, -1495
                  c.or        a3, a4
                  c.xor       a3, a3
                  c.lui       gp, 1
                  c.or        a3, a3
                  srl         s11, s9, s11
                  mulhsu      s5, a7, a5
                  c.sub       a3, a3
                  c.mv        tp, t3
                  srl         t1, s1, t0
                  nop
                  c.addi16sp  sp, 368
                  mul         sp, zero, s4
                  mulhsu      zero, t0, a4
                  and         zero, t5, s6
                  or          s6, s0, a7
                  slti        s4, sp, -1230
                  c.srai      a3, 19
                  auipc       s9, 354061
                  c.lui       t0, 1
                  c.nop
                  nop
                  c.li        s0, -1
                  srli        zero, t6, 19
                  sra         tp, sp, s10
                  add         s6, sp, a6
                  c.sub       s0, a3
                  ori         a1, zero, -868
                  or          t4, s2, t1
                  c.andi      a3, 29
                  c.lui       a4, 1
                  slti        a7, s8, 1602
                  c.addi4spn  a3, sp, 576
                  or          s7, gp, s6
                  auipc       a4, 823567
                  lui         sp, 670630
                  c.lui       a1, 2
                  slti        a6, tp, -1289
                  srai        a1, a0, 10
                  sltiu       s7, s8, -85
                  add         a4, a5, zero
                  sltu        s0, s2, t1
                  c.slli      t2, 24
                  slli        s6, t1, 24
                  add         t2, s5, gp
                  slt         s8, a5, t5
                  srai        t2, sp, 6
                  srli        zero, sp, 20
                  slti        s3, a0, -44
                  divu        gp, t2, s8
                  mulh        s5, a5, t5
                  mulhsu      a7, s4, a0
                  c.addi16sp  sp, -16
                  srl         s11, tp, a7
                  c.addi16sp  sp, 64
                  nop
                  mulhsu      s2, gp, t1
                  slti        s11, a3, 963
                  srl         a2, a6, s9
                  c.srli      a3, 25
                  c.srli      s0, 4
                  c.xor       a3, a3
                  addi        t3, s5, 1007
                  srl         t0, s5, t6
                  sub         s8, s1, tp
                  c.srli      a3, 31
                  sltu        a6, a7, a6
                  sra         s8, s8, s2
                  mul         zero, t0, t5
                  c.add       a4, a0
                  nop
                  srai        a1, t3, 5
                  c.mv        a7, ra
                  c.add       a1, s8
                  c.xor       s1, s1
                  c.srai      a3, 12
                  srli        s3, s8, 28
                  or          s8, s10, s6
                  slti        s0, a2, -931
                  c.addi16sp  sp, 48
                  lui         sp, 31219
                  and         s11, s5, a7
                  and         a6, s4, s0
                  mulh        s9, zero, s6
                  mulhsu      sp, s4, a5
                  nop
                  div         t1, s0, s6
                  rem         s6, s8, t6
                  srli        zero, s1, 28
                  mul         s10, ra, t2
                  srl         s11, s2, a7
                  c.add       t0, t4
                  c.add       t1, s0
                  addi        s8, ra, -27
                  c.addi4spn  a3, sp, 864
                  c.xor       a1, a3
                  c.addi      s1, 6
                  addi        a4, a0, -565
                  c.mv        s6, s10
                  xori        s7, s3, -1744
                  c.andi      a3, -1
                  mulh        s8, t3, t4
                  c.addi4spn  a4, sp, 896
                  mulhsu      sp, t0, ra
                  auipc       sp, 936158
                  and         s4, gp, s8
                  divu        zero, s7, sp
                  c.sub       a3, s0
                  or          a4, t6, s8
                  div         s1, a4, t6
                  auipc       zero, 858311
                  sub         a0, s10, s5
                  and         s3, a0, t6
                  divu        s2, s3, sp
                  c.addi4spn  a3, sp, 576
                  c.andi      a3, -1
                  mulh        s2, a0, tp
                  c.mv        s4, a3
                  mulhu       a0, a5, s6
                  c.xor       a3, a3
                  mulhsu      zero, sp, a2
                  c.mv        t2, tp
                  c.srai      a3, 26
                  slti        s11, s3, 1953
                  or          s3, t3, a3
                  xori        a4, gp, -1518
                  c.addi      a6, -1
                  sltiu       s9, s3, 783
                  nop
                  c.nop
                  c.add       t0, t5
                  c.srai      a3, 14
                  mulhsu      s3, t5, a1
                  lui         tp, 709010
                  xor         t0, t5, a0
                  andi        sp, a5, -1132
                  srli        s7, a2, 25
                  auipc       t4, 232721
                  srl         s7, a5, s1
                  mulhsu      zero, t5, s1
                  c.sub       a3, a3
                  c.lui       gp, 6
                  div         tp, s8, a0
                  srai        zero, t0, 30
                  c.and       a3, a3
                  mul         t2, tp, a3
                  div         gp, s11, s6
                  c.addi16sp  sp, 448
                  srl         ra, gp, t4
                  mulh        zero, tp, a6
                  lui         zero, 870268
                  mul         s6, a0, a3
                  c.slli      s1, 25
                  c.addi      a2, 9
                  sltu        a4, t6, a6
                  sltu        sp, t1, tp
                  slli        a6, zero, 8
                  lui         zero, 328458
                  c.addi4spn  a3, sp, 384
                  div         s6, a4, s1
                  xori        s6, t0, -285
                  add         a4, a5, tp
                  c.nop
                  sub         s10, t3, s8
                  slti        gp, a3, -128
                  mulhsu      s2, a7, s1
                  srai        s9, a4, 5
                  c.slli      a2, 16
                  slti        s7, ra, 419
                  div         s0, a2, s10
                  c.add       a3, a5
                  andi        s4, tp, 2031
                  andi        zero, a4, 1460
                  auipc       tp, 568648
                  sll         s4, a1, s7
                  sll         t2, s4, t2
                  c.addi4spn  a3, sp, 384
                  c.nop
                  srai        gp, s9, 9
                  mulh        s11, a5, s2
                  slti        t1, s10, 1598
                  sll         t2, s4, s9
                  c.add       s11, s5
                  c.sub       a1, a3
                  c.addi4spn  a3, sp, 464
                  srai        tp, gp, 20
                  addi        a4, a3, 1005
                  mulh        t4, sp, s3
                  or          zero, zero, t2
                  lui         sp, 453538
                  sltiu       s7, s1, 1107
                  mulhu       t2, a5, s2
                  ori         ra, s4, 72
                  c.xor       a3, a3
                  rem         a4, ra, a5
                  and         t3, a3, s8
                  rem         s5, a0, ra
                  add         gp, t4, t2
                  xori        t4, s5, 1906
                  andi        t4, s2, -1271
                  divu        s4, t1, t6
                  divu        s10, t3, t5
                  slli        zero, s7, 25
                  auipc       s2, 934607
                  c.addi16sp  sp, -16
                  slli        zero, a2, 29
                  sub         t0, s3, tp
                  slt         a4, a3, a1
                  and         s4, a5, s8
                  mulh        ra, a3, t6
                  c.slli      t4, 6
                  mulhsu      zero, s8, a4
                  sra         s2, a7, t0
                  sra         a0, t2, t4
                  lui         s8, 996901
                  c.addi      a0, 2
                  srai        gp, s9, 16
                  srli        gp, s3, 22
                  and         a4, a2, t0
                  c.li        s2, -1
                  rem         s3, a1, s4
                  ori         ra, s8, 1945
                  sub         a2, s5, a0
                  xor         s3, t1, s3
                  div         s8, t3, s10
                  andi        s5, s4, -1921
                  ori         s2, s4, -174
                  nop
                  mulhu       zero, t1, a2
                  addi        a0, sp, 1433
                  c.sub       a3, a1
                  c.add       s1, t6
                  srai        a1, a1, 14
                  c.or        a3, a3
                  addi        ra, tp, 83
                  c.addi4spn  a3, sp, 864
                  c.and       a1, a3
                  slli        s4, s9, 14
                  lui         a3, 344912
                  c.or        a3, a3
                  div         s8, t3, a5
                  mulhsu      t1, tp, s4
                  c.li        ra, 9
                  lui         s8, 253330
                  nop
                  lui         s5, 766418
                  c.li        ra, -1
                  ori         zero, s10, 382
                  andi        s6, tp, 1054
                  mulh        s11, a7, s9
                  sra         zero, tp, t0
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_27
                  li         s2, 0x0
                  li         s1, 0x0
                  li         t3, 0x3d7f6197
                  li         s11, 0x0
                  li         a4, 0x1
                  li         ra, 0x0
                  li         s8, 0x1
                  li         s4, 0x0
                  li         s9, 0x1
                  add         t2, s1, tp
                  mulhu       s3, gp, t3
                  mulhsu      t4, a7, zero
                  c.add       t0, a1
                  mulh        sp, t6, t4
                  rem         a7, t0, s3
                  c.mv        s10, sp
                  c.add       sp, t5
                  add         s1, t0, s11
                  div         a2, s10, a6
                  nop
                  c.addi16sp  sp, 128
                  c.nop
                  rem         zero, s6, t1
                  nop
                  mulhsu      sp, tp, s8
                  divu        t4, s2, t4
                  mulhu       s7, s8, s3
                  c.li        s10, -1
                  sra         a7, t0, s6
                  sub         s11, s2, a6
                  mulhsu      s11, a6, s8
                  sltiu       a0, t4, 1009
                  c.addi      s7, 29
                  and         s3, s3, ra
                  sub         a3, a3, s6
                  div         s4, s3, t1
                  ori         s0, ra, -1199
                  sltu        t4, a7, a6
                  slt         a7, t0, a6
                  auipc       ra, 937007
                  slti        t2, a4, 1589
                  sub         t0, t2, s10
                  auipc       s9, 1006967
                  c.andi      a3, 29
                  c.add       a7, s6
                  c.andi      a3, 14
                  mul         s1, t1, gp
                  c.addi16sp  sp, 160
                  andi        zero, a0, 2031
                  lui         s3, 629968
                  c.addi      s11, -1
                  sra         s8, t5, sp
                  c.addi16sp  sp, 192
                  or          t1, tp, t2
                  srai        a3, gp, 21
                  sra         s10, a1, s2
                  auipc       zero, 546759
                  lui         s6, 584434
                  slti        s1, tp, -1899
                  srai        s1, sp, 4
                  and         a6, s0, ra
                  c.andi      a3, -1
                  c.andi      a3, 17
                  c.addi      ra, -1
                  srl         s11, tp, tp
                  lui         gp, 430613
                  sltiu       zero, s5, 1910
                  or          ra, a5, gp
                  div         t3, t1, a5
                  c.andi      a3, 8
                  mulhsu      s7, s1, s2
                  slti        s3, s4, -392
                  c.addi16sp  sp, -16
                  divu        a3, t3, ra
                  xor         s11, t1, a2
                  c.srai      a3, 9
                  c.xor       a3, a3
                  addi        a4, t5, -160
                  xori        t4, sp, 766
                  c.slli      sp, 20
                  c.or        a3, a3
                  div         tp, s0, t2
                  lui         a1, 236812
                  mulhu       zero, t1, t0
                  or          s6, s6, s2
                  sll         t4, t2, s5
                  slti        zero, s9, 1126
                  c.slli      s4, 20
                  divu        a4, s0, s2
                  c.mv        t4, a4
                  c.srai      a3, 22
                  slti        zero, s1, 605
                  c.xor       a3, a1
                  sub         ra, s5, s1
                  c.sub       a3, a3
                  srli        a1, s0, 12
                  sra         a2, t6, s7
                  c.sub       a3, a3
                  or          t3, a6, t2
                  slt         s10, a1, a2
                  sll         s5, s1, gp
                  sltu        t0, t2, t3
                  c.li        s3, -1
                  or          sp, s9, s0
                  c.addi16sp  sp, 96
                  rem         t2, tp, s4
                  or          s5, t5, t1
                  mul         a0, t1, a6
                  sltu        a4, a4, a7
                  nop
                  c.addi4spn  a3, sp, 576
                  and         s1, a1, s10
                  slt         tp, t6, t4
                  andi        t0, sp, 1810
                  andi        a1, s3, -247
                  auipc       a4, 88642
                  sltu        a6, gp, t3
                  and         s9, s11, t6
                  c.xor       a3, a3
                  c.lui       t3, 27
                  divu        gp, s1, s6
                  c.andi      a2, -1
                  slti        s0, s4, -1671
                  sll         zero, a3, s7
                  sub         t0, a1, t5
                  xor         zero, t5, t2
                  add         s7, zero, t1
                  rem         s6, s2, s5
                  mul         tp, a1, s4
                  xori        ra, s6, -406
                  slti        zero, a4, -1096
                  c.addi      a1, -1
                  auipc       s11, 165460
                  mul         a7, s6, sp
                  c.addi16sp  sp, 32
                  c.addi4spn  a3, sp, 864
                  divu        s5, t3, s7
                  c.andi      a3, 19
                  c.slli      a0, 31
                  xori        s4, t5, -717
                  auipc       a0, 868507
                  c.li        a3, 11
                  srl         s11, a6, t0
                  c.addi16sp  sp, -16
                  c.xor       a3, a3
                  c.or        a3, a3
                  sltiu       a1, sp, 649
                  c.srai      a3, 1
                  or          a7, a3, a6
                  or          gp, s0, sp
                  lui         s8, 107029
                  c.addi4spn  a3, sp, 80
                  c.andi      a3, -1
                  add         s3, s11, zero
                  c.andi      a3, -1
                  c.slli      t3, 12
                  sub         zero, a5, s1
                  c.xor       s1, a3
                  c.and       a3, a3
                  sra         s0, a3, a5
                  c.sub       a3, a3
                  xor         s8, s9, gp
                  c.slli      a7, 17
                  rem         zero, gp, s4
                  c.or        a3, a3
                  div         zero, s9, s9
                  c.addi4spn  a3, sp, 64
                  slt         s2, a2, t3
                  slli        s1, t4, 30
                  c.xor       a3, a3
                  ori         sp, s6, -423
                  c.srli      s1, 1
                  c.srai      a2, 28
                  mulhu       t0, a4, s1
                  nop
                  sltiu       a6, a2, 72
                  c.addi16sp  sp, -16
                  c.addi16sp  sp, -16
                  mulhu       a1, a1, s1
                  c.sub       a3, a3
                  sra         tp, a0, ra
                  c.addi4spn  a3, sp, 400
                  sra         ra, t3, s10
                  c.srli      a4, 8
                  c.or        a3, s1
                  c.mv        s6, a5
                  nop
                  c.mv        s7, t3
                  c.or        a3, a3
                  slti        s8, s5, -181
                  srli        t2, s11, 8
                  sltu        t3, t1, a2
                  srli        a3, t4, 2
                  div         s8, s6, tp
                  c.add       ra, a7
                  c.andi      s1, 10
                  mulh        gp, sp, a3
                  auipc       zero, 169631
                  xori        a1, s5, -1715
                  srai        t3, a2, 31
                  divu        s8, t1, a7
                  mulh        s10, gp, a0
                  srl         s3, s2, s0
                  or          s9, t0, a6
                  c.li        s10, -1
                  and         s11, a2, s0
                  sltu        a0, a6, a2
                  mulh        zero, t2, s8
                  sltu        s9, a7, s11
                  c.or        a3, a3
                  slt         s10, zero, s10
                  mul         a7, gp, s10
                  slti        s6, t2, 1338
                  sltu        s8, s11, t6
                  auipc       ra, 945891
                  sll         s1, a6, t1
                  c.sub       a3, a3
                  mul         zero, s7, s2
                  rem         t2, s2, s10
                  ori         ra, a3, 263
                  ori         s9, tp, -1746
                  sra         s7, a2, t4
                  c.or        a3, a3
                  sltu        ra, t0, s9
                  c.li        a3, -1
                  c.srli      s0, 30
                  srai        a0, a2, 17
                  c.or        a1, a3
                  c.and       a3, a3
                  addi        s2, t5, 651
                  c.andi      a3, 17
                  c.srai      a4, 8
                  c.xor       a3, a0
                  div         t3, gp, sp
                  sra         zero, zero, tp
                  sll         t4, s2, s8
                  mulhu       a0, a7, a6
                  nop
                  ori         s4, a7, 328
                  c.addi4spn  a3, sp, 640
                  sll         s7, gp, a7
                  c.nop
                  c.sub       a3, a1
                  srl         a1, s9, s9
                  c.mv        s10, gp
                  c.addi      gp, -1
                  nop
                  c.sub       a3, a5
                  mulh        s0, a7, zero
                  mulhu       t0, a3, t1
                  c.srli      a3, 12
                  sra         s2, a4, s7
                  sub         t4, s8, ra
                  sll         zero, s4, s7
                  c.srai      a3, 28
                  srli        gp, t1, 23
                  c.or        a0, s0
                  ori         s6, a7, 1062
                  lui         a2, 691388
                  srai        t4, s0, 14
                  lui         a6, 615576
                  c.nop
                  c.xor       a3, a3
                  sra         s11, s0, s0
                  c.or        a3, a3
                  c.lui       s1, 6
                  ori         zero, s0, -47
                  c.mv        s1, t5
                  c.xor       a3, a3
                  c.addi      t0, -1
                  slli        ra, s8, 10
                  add         s10, s5, s4
                  c.li        t1, 24
                  andi        ra, s9, -1565
                  andi        zero, sp, -989
                  c.xor       a3, a3
                  xori        t1, s6, 622
                  divu        tp, a6, s0
                  slti        t2, s1, 402
                  c.addi16sp  sp, -16
                  c.or        a3, a3
                  mul         s1, s1, a1
                  sltiu       s10, a5, -271
                  c.nop
                  srai        a0, tp, 21
                  c.andi      a3, 5
                  lui         sp, 254920
                  addi        t2, a4, 1096
                  div         a3, s9, s1
                  mulhu       t2, s8, t2
                  mulhsu      s8, a5, s1
                  divu        s2, s9, tp
                  c.li        t3, -1
                  mulh        s8, a5, a1
                  slt         zero, ra, a1
                  c.and       a3, a3
                  mulh        s4, t3, a4
                  add         t1, t1, t6
                  c.add       a7, t1
                  mulhu       a6, s10, a5
                  lui         s5, 78531
                  sltiu       zero, s10, 1543
                  xori        s9, t1, 147
                  ori         s9, t0, -1722
                  c.mv        ra, s10
                  auipc       t2, 65724
                  mulhsu      s1, s1, s3
                  slli        a7, s10, 2
                  rem         s11, s5, t3
                  xori        t0, a2, 1799
                  rem         s1, s2, t3
                  and         s6, gp, s9
                  mulhu       t1, s0, sp
                  nop
                  c.addi      s8, 17
                  addi        t2, a7, -1494
                  c.srai      a3, 4
                  c.li        s8, 0
                  c.and       s0, a3
                  auipc       a0, 963174
                  and         ra, a5, s6
                  auipc       s6, 18288
                  xor         ra, a1, t2
                  c.xor       a3, a3
                  mul         s1, tp, a3
                  auipc       s6, 169531
                  c.andi      a3, 14
                  c.nop
                  andi        zero, s10, 1349
                  c.addi16sp  sp, -16
                  sltiu       s0, gp, 976
                  add         gp, zero, a5
                  mul         zero, s9, s1
                  div         s7, t5, s11
                  sub         s6, s1, ra
                  ori         a7, t1, -760
                  c.or        a3, a3
                  nop
                  c.nop
                  c.addi      ra, 30
                  c.and       s0, a3
                  c.andi      a4, -1
                  divu        a2, t1, s0
                  sltiu       s0, a7, 1487
                  auipc       a2, 605732
                  and         s9, s4, a7
                  slti        zero, s9, 565
                  c.lui       s0, 14
                  nop
                  or          s4, s2, zero
                  c.srli      a2, 12
                  c.addi      gp, 20
                  c.add       t2, s4
                  c.and       a3, a3
                  sll         t0, s1, t4
                  c.li        ra, 20
                  c.mv        t4, t0
                  sra         s2, zero, t6
                  rem         s9, a3, a2
                  c.srai      s1, 27
                  mulhu       s5, s2, s6
                  c.srai      s1, 24
                  c.li        a1, 5
                  divu        a2, a4, ra
                  sra         t2, s8, s10
                  c.srai      s0, 30
                  add         sp, a5, a0
                  srai        s11, t2, 11
                  c.addi4spn  a0, sp, 592
                  c.lui       ra, 7
                  c.li        s5, -1
                  c.addi4spn  a3, sp, 320
                  c.lui       ra, 15
                  c.addi4spn  a1, sp, 448
                  divu        tp, s6, t4
                  mul         t2, s0, t0
                  sub         s1, tp, t0
                  sra         t1, t1, t1
                  c.or        a3, a3
                  slti        s10, s8, -593
                  or          a0, a3, a7
                  c.srai      a3, 23
                  div         s2, s9, t5
                  xori        s5, s8, -1822
                  c.lui       s2, 12
                  srl         a2, t0, tp
                  c.slli      t4, 14
                  divu        sp, s4, a5
                  sub         a1, s9, ra
                  c.xor       a3, a3
                  c.srli      a3, 26
                  c.li        s0, 7
                  lui         s10, 262184
                  c.lui       t2, 20
                  c.lui       s3, 20
                  ori         a2, s9, -1325
                  c.sub       a3, a1
                  c.addi16sp  sp, -16
                  c.xor       a3, a3
                  mulhu       t4, t2, a3
                  sra         s11, s5, s0
                  divu        a7, tp, t5
                  mulh        a6, sp, s6
                  divu        s2, zero, s1
                  and         s6, a7, t6
                  nop
                  c.addi16sp  sp, -16
                  mulh        t0, a6, a4
                  xor         s5, s9, s5
                  c.addi4spn  a3, sp, 864
                  div         s5, s5, t2
                  xori        s0, a3, 457
                  slti        s4, s7, 1229
                  ori         s9, t5, 1421
                  c.srai      a2, 20
                  slt         s7, s3, tp
                  andi        s9, s10, -346
                  mulhsu      t3, sp, s11
                  xori        a1, a2, -686
                  c.addi4spn  a3, sp, 304
                  divu        s9, t6, s0
                  c.srli      a3, 5
                  sltiu       s7, t4, 610
                  mulh        a7, sp, s7
                  mulhu       zero, a4, a3
                  sltu        a3, s10, a1
                  c.xor       a3, a3
                  sub         s5, s11, zero
                  slli        s1, s7, 24
                  sltu        s7, t6, s7
                  sltiu       a2, a3, 122
                  rem         s0, a3, zero
                  lui         s1, 506075
                  slti        a1, s11, 70
                  nop
                  lui         zero, 555067
                  mulhsu      t0, a1, a3
                  c.addi4spn  a3, sp, 64
                  srl         s9, a3, t3
                  srl         s0, t2, s7
                  c.li        ra, 19
                  c.xor       a3, a1
                  mulhsu      s6, zero, s2
                  sra         t0, a4, a5
                  c.lui       ra, 4
                  nop
                  c.or        a3, a3
                  c.lui       a4, 21
                  slli        s3, tp, 8
                  mulhsu      t0, t5, a5
                  or          s4, a7, s11
                  c.slli      t0, 14
                  auipc       a7, 1037069
                  c.add       ra, a4
                  srli        s6, a7, 21
                  sll         t1, a5, a6
                  andi        t0, s0, -1014
                  sltu        a7, zero, s9
                  c.sub       a3, a3
                  rem         gp, s3, ra
                  c.slli      s1, 18
                  slli        a3, s2, 16
                  xor         zero, ra, a0
                  xor         a7, s6, a2
                  c.addi16sp  sp, 304
                  div         a1, s3, a3
                  c.slli      ra, 3
                  c.lui       s4, 11
                  c.srli      a3, 17
                  xor         t1, s3, s8
                  mulhsu      s7, a6, a4
                  srl         sp, s5, s4
                  c.li        a1, 12
                  c.xor       a3, a3
                  slt         a1, a0, a1
                  nop
                  c.andi      a3, -1
                  rem         s4, s7, t6
                  addi        a7, s9, -1087
                  mulhsu      gp, t3, s9
                  sra         zero, s3, a5
                  c.srai      a3, 20
                  c.add       a2, s10
                  c.nop
                  mulhu       sp, t2, s9
                  sra         s4, tp, t2
                  c.mv        s7, a7
                  nop
                  c.or        s1, a3
                  slli        s6, a2, 26
                  slti        ra, t5, -589
                  or          a3, s7, a4
                  srai        sp, t0, 1
                  slli        sp, s10, 14
                  or          a3, a2, a0
                  div         t1, ra, t5
                  rem         s7, zero, a2
                  c.sub       a3, a5
                  rem         a6, a7, tp
                  c.nop
                  div         s10, s7, s8
                  sub         t3, s4, t0
                  div         s2, a3, t4
                  c.lui       s3, 1
                  mulhu       s0, s1, a6
                  mulhu       s3, s3, t1
                  c.mv        gp, t1
                  c.srai      a3, 5
                  addi        s1, s3, -989
                  c.addi16sp  sp, 32
                  c.and       a3, s0
                  andi        a2, t3, -417
                  srli        s10, t1, 9
                  c.sub       a3, a3
                  mul         s3, sp, t5
                  sra         s10, a6, a1
                  li         t2, 0x0 #start riscv_int_numeric_corner_stream_3
                  li         t4, 0x3a052bc
                  li         s9, 0xe2ec96f
                  li         s7, 0x74d95ad7
                  li         a7, 0x0
                  li         s3, 0x39990b24
                  li         t3, 0x61f907aa
                  li         s8, 0x77b68f1b
                  li         s11, 0xb079036
                  li         s10, 0x0
                  mulhsu      a2, a0, a6
                  mulh        s3, t6, a2
                  mulhsu      s10, tp, s7
                  div         a6, t2, s0
                  sub         ra, sp, a2
                  nop
                  div         s0, s2, sp
                  sub         s2, sp, s9
                  mul         a3, a4, tp
                  lui         sp, 741725
                  auipc       a6, 11534
                  divu        s9, s10, s9
                  c.nop
                  c.addi16sp  sp, 288
                  c.add       s11, t2
                  divu        s1, a6, a0
                  sub         t3, s3, t5
                  rem         a7, t2, s6
                  mulhsu      gp, a0, s11
                  c.li        s11, -1
                  add         zero, a1, s1
                  c.addi16sp  sp, 464
                  xori        s1, s1, 1960
                  addi        s10, s7, 695
                  c.add       t3, s11
                  ori         zero, gp, 750
                  c.xor       a0, a3
                  c.nop
                  c.addi4spn  a3, sp, 528
                  c.and       s1, a3
                  c.addi16sp  sp, -16
                  c.addi16sp  sp, 112
                  srli        a7, gp, 5
                  c.andi      s1, -1
                  c.or        a3, a3
                  nop
                  c.slli      s4, 5
                  c.or        a3, a1
                  c.mv        a3, s3
                  sra         a6, s9, s9
                  auipc       t3, 130820
                  srl         t3, s6, t5
                  c.li        t1, -1
                  mulhsu      a6, t2, t0
                  slli        a6, t5, 12
                  c.or        a3, a3
                  slt         a7, s5, s9
                  srai        s0, t6, 3
                  divu        a1, s10, s0
                  nop
                  c.srli      s0, 9
                  c.and       a0, a4
                  sltiu       a7, s3, 484
                  addi        t0, a0, 775
                  slli        ra, s4, 1
                  auipc       t3, 454515
                  divu        s9, a2, s5
                  addi        zero, zero, -153
                  mulhu       zero, s5, zero
                  andi        s10, a4, -762
                  lui         a6, 562795
                  mulhsu      zero, a1, tp
                  c.srai      a3, 28
                  c.sub       a3, a3
                  c.add       s5, a7
                  slt         s0, s1, t5
                  c.nop
                  c.addi16sp  sp, 272
                  rem         s2, s10, t4
                  addi        s8, t3, 254
                  lui         sp, 739129
                  c.add       t0, t0
                  divu        t2, s9, s6
                  mulh        a3, s1, t3
                  mulhu       t3, a5, t1
                  c.andi      a3, -1
                  c.addi16sp  sp, 176
                  rem         s8, t4, a2
                  srl         s2, a7, t2
                  srl         t2, t1, t1
                  c.li        s1, -1
                  or          ra, t0, t5
                  sltu        s7, zero, ra
                  andi        s5, s0, 432
                  auipc       a6, 516377
                  c.slli      s3, 8
                  c.and       a3, a3
                  c.andi      a3, 28
                  mulhu       s11, sp, tp
                  sltiu       zero, gp, -748
                  xor         ra, s9, t1
                  rem         t1, gp, t4
                  sra         a0, a5, t2
                  xori        t4, gp, -1068
                  c.addi      t1, -1
                  sltu        tp, gp, t4
                  srai        s4, s9, 1
                  c.addi      ra, 19
                  c.addi4spn  a3, sp, 448
                  c.slli      a6, 2
                  c.li        t2, -1
                  mulh        a3, t2, sp
                  mulh        s2, ra, s7
                  xor         s3, a5, t4
                  c.sub       a3, a3
                  mulh        t3, t3, ra
                  c.lui       s1, 16
                  div         gp, tp, s8
                  or          a4, a1, t6
                  slti        tp, s8, 921
                  mulhsu      zero, a3, zero
                  srli        t1, s5, 21
                  addi        s5, a2, 1487
                  c.lui       s10, 4
                  c.lui       t0, 23
                  c.li        ra, -1
                  c.slli      s11, 1
                  mulh        s3, s1, s0
                  and         s0, a4, tp
                  c.srai      a3, 25
                  c.nop
                  divu        s0, s4, t5
                  lui         s7, 610473
                  sltu        s9, tp, t5
                  c.lui       s8, 12
                  mulh        s6, s7, s6
                  c.sub       a4, a5
                  lui         s5, 182904
                  c.mv        a7, t1
                  slti        s6, t6, 888
                  srai        a0, sp, 26
                  rem         t3, t2, gp
                  c.sub       a3, a3
                  c.sub       s1, a3
                  c.nop
                  c.slli      t1, 23
                  c.andi      a3, 31
                  sub         s5, t3, s5
                  xori        t1, s11, -59
                  slti        s0, s10, 1340
                  sra         zero, zero, s2
                  mulh        s9, zero, s2
                  addi        s7, ra, -1837
                  srl         gp, s9, t4
                  ori         ra, s10, -1016
                  divu        zero, s1, tp
                  andi        zero, s0, 1269
                  c.lui       s1, 17
                  divu        zero, s11, a1
                  c.addi      a4, -1
                  xori        t1, a6, 18
                  srl         sp, a1, s0
                  divu        s6, t6, zero
                  c.addi16sp  sp, -16
                  mulhsu      zero, sp, t1
                  addi        a1, t2, -1899
                  mulhsu      a3, zero, s5
                  c.addi16sp  sp, 128
                  c.addi16sp  sp, -16
                  c.sub       a3, a2
                  sll         sp, ra, zero
                  div         t4, s8, a3
                  c.and       a3, a3
                  add         a2, s2, t0
                  or          ra, t5, gp
                  srai        t0, a1, 7
                  c.srli      a2, 17
                  addi        sp, a1, -774
                  divu        s0, s0, s5
                  divu        tp, s10, t0
                  sltu        s7, s9, s4
                  mulhu       s3, a2, a7
                  sll         ra, s11, s8
                  nop
                  ori         s6, t5, -1883
                  xori        zero, a0, 2016
                  divu        zero, tp, s7
                  div         s8, s11, t2
                  addi        tp, s5, 1748
                  c.andi      a3, -1
                  nop
                  c.nop
                  andi        s9, s1, -1957
                  srai        s0, sp, 30
                  c.lui       t4, 25
                  or          ra, tp, t3
                  slli        t4, t4, 1
                  c.nop
                  and         t3, zero, tp
                  c.xor       a3, a3
                  c.li        a1, -1
                  srli        s10, t2, 30
                  srai        s1, s6, 16
                  sltu        s11, s11, gp
                  c.xor       a4, a3
                  lui         s8, 118014
                  xori        s11, a2, -1919
                  c.srai      a3, 13
                  c.srli      a4, 15
                  c.li        a0, 7
                  c.lui       ra, 1
                  mulh        a0, zero, t4
                  andi        s9, t6, -497
                  c.addi16sp  sp, 384
                  sub         t1, s6, a2
                  c.nop
                  sll         s5, t4, s0
                  sra         s10, s9, s1
                  c.slli      a1, 5
                  c.srli      a4, 12
                  sra         t4, a3, ra
                  add         s4, s8, zero
                  srli        t1, a6, 13
                  c.or        a3, a3
                  c.addi16sp  sp, 432
                  slti        ra, s6, 416
                  addi        a2, zero, -1736
                  c.addi4spn  a3, sp, 128
                  slti        s9, t1, -1231
                  xor         zero, s2, t2
                  lui         a2, 660116
                  lui         sp, 806567
                  mul         t3, s6, t3
                  c.mv        s6, a2
                  or          s1, a1, sp
                  ori         t1, t3, -1726
                  c.srli      a3, 31
                  mul         s6, s0, s3
                  add         a0, a0, s8
                  mulhu       a6, a2, s4
                  c.li        ra, -1
                  sltu        s10, tp, s2
                  mul         tp, t6, tp
                  c.andi      a3, 15
                  auipc       t2, 514058
                  auipc       s0, 948770
                  divu        t4, s6, a4
                  srl         a2, gp, tp
                  slli        a2, t6, 1
                  c.srli      a3, 14
                  lui         s9, 751916
                  div         s5, s9, s0
                  c.or        a3, a3
                  c.slli      s11, 17
                  mulh        zero, gp, s3
                  slti        s3, a2, 1730
                  mulh        s4, t2, s10
                  or          zero, a1, a0
                  mulhsu      a4, t2, t3
                  c.and       a3, s0
                  c.xor       a3, a3
                  mulhsu      s8, a4, t1
                  c.addi16sp  sp, -16
                  mul         t0, s4, t2
                  rem         ra, t1, a4
                  nop
                  andi        s10, sp, -806
                  xor         a3, ra, s8
                  nop
                  c.lui       gp, 30
                  addi        a3, gp, -1125
                  mulh        s8, t4, t4
                  mulh        t4, s8, s5
                  andi        zero, s7, 1613
                  mul         ra, a3, s6
                  c.add       s2, gp
                  mulhu       a7, t2, s3
                  c.andi      a3, 15
                  c.mv        t3, t4
                  c.addi16sp  sp, -16
                  slli        s8, s3, 14
                  c.srli      a3, 10
                  slti        s2, sp, -867
                  sltu        zero, t6, s2
                  sub         a3, sp, a0
                  c.li        s0, 6
                  xori        ra, s0, 9
                  c.add       s0, a3
                  c.srai      a3, 28
                  sltu        t2, s9, s5
                  c.andi      a1, 27
                  c.srli      a3, 14
                  andi        t3, ra, 1571
                  sll         a0, zero, s10
                  c.addi4spn  a3, sp, 352
                  srai        s5, s6, 2
                  ori         sp, a7, 1248
                  xor         t4, t4, t0
                  nop
                  nop
                  c.add       a4, a3
                  c.sub       a4, a3
                  sltiu       s8, a6, 255
                  srli        s10, s11, 11
                  sltu        a2, s8, s8
                  mulhu       s5, s0, s3
                  sub         s6, a1, t4
                  c.andi      a1, 17
                  c.srai      a3, 6
                  c.lui       s2, 5
                  mulh        s6, a0, t6
                  nop
                  sub         zero, t5, t3
                  c.or        a3, a0
                  srl         t4, s5, s0
                  sra         s0, zero, s8
                  lui         s5, 581754
                  addi        t0, s7, 141
                  c.slli      t1, 15
                  ori         a1, sp, 581
                  c.srai      a3, 18
                  addi        s3, a1, 845
                  div         s1, t6, s8
                  nop
                  c.li        s6, -1
                  sra         s8, a5, tp
                  c.andi      a3, -1
                  lui         zero, 20754
                  andi        s6, t2, -9
                  and         t0, s2, s11
                  c.mv        a2, s2
                  mulhsu      a3, s2, s4
                  div         zero, ra, s9
                  c.lui       s1, 12
                  c.slli      ra, 29
                  c.lui       s8, 28
                  c.li        s1, 4
                  lui         a3, 750028
                  andi        s6, s5, 29
                  and         s2, ra, tp
                  and         s4, s6, ra
                  rem         t0, t0, zero
                  c.nop
                  c.slli      ra, 22
                  srai        a4, s7, 23
                  andi        t4, a3, 632
                  add         s3, t1, a1
                  c.addi      s11, 9
                  sll         a7, s11, tp
                  and         t3, s5, s2
                  c.li        t1, -1
                  c.srai      a3, 20
                  xor         t4, a4, a6
                  lui         a7, 310339
                  mulhu       s11, t3, zero
                  andi        s6, s5, 1592
                  slt         gp, s6, s2
                  slli        s7, s5, 29
                  mulh        t2, s3, s6
                  sltu        s1, t1, s8
                  c.addi16sp  sp, 288
                  xor         s4, s3, a6
                  mulh        s8, s2, ra
                  c.srai      s1, 16
                  slt         s8, ra, t6
                  rem         s8, tp, a1
                  srli        a3, t2, 30
                  andi        a6, a2, 1591
                  sra         s6, t5, a2
                  c.nop
                  nop
                  nop
                  slli        zero, s10, 10
                  c.addi      s5, -1
                  rem         a6, a6, s0
                  srl         s7, gp, a3
                  srl         gp, s4, s2
                  c.or        a4, a1
                  div         s4, t3, a2
                  rem         s11, s9, s0
                  c.srli      a3, 23
                  and         s5, s6, s3
                  sll         s5, s3, t6
                  or          t3, a2, s6
                  divu        s1, a1, a1
                  divu        s3, a3, t1
                  c.slli      ra, 1
                  ori         a3, t4, -641
                  nop
                  c.andi      a3, 8
                  xor         zero, s1, s11
                  slti        s4, tp, 1668
                  rem         zero, s0, s9
                  c.srai      a3, 19
                  srli        a6, gp, 23
                  addi        t3, s10, 1294
                  c.addi      a4, 17
                  c.sub       s0, a0
                  c.addi      a0, -1
                  add         a2, s5, t5
                  srl         a2, s7, s5
                  c.andi      a3, -1
                  add         s11, t3, a7
                  c.mv        s5, s3
                  andi        ra, a1, -356
                  c.add       gp, a6
                  mulh        s8, s6, s10
                  srli        s1, s11, 24
                  c.addi4spn  a3, sp, 736
                  rem         zero, t6, t0
                  auipc       t2, 353065
                  and         t0, a2, s9
                  c.nop
                  c.mv        s4, s2
                  mulhu       t1, s5, s2
                  c.mv        a0, s1
                  or          t4, t0, a7
                  c.or        a3, a3
                  ori         a1, a0, -193
                  c.slli      s4, 1
                  c.xor       a3, a3
                  c.li        s0, -1
                  nop
                  srai        s1, gp, 8
                  c.xor       a3, a5
                  c.addi16sp  sp, 272
                  c.addi16sp  sp, 240
                  c.lui       a4, 14
                  slli        tp, s6, 21
                  c.nop
                  c.andi      a4, -1
                  and         tp, sp, t5
                  rem         s6, s7, t2
                  c.slli      a4, 1
                  srli        s11, tp, 4
                  xor         t2, a0, a1
                  or          s5, ra, a4
                  xori        a2, s0, -909
                  srai        t2, s3, 9
                  c.addi4spn  a3, sp, 832
                  sll         zero, a5, t4
                  div         t2, a1, s10
                  nop
                  srli        s9, t2, 22
                  sll         s5, s5, t3
                  mulhu       a2, a6, t1
                  divu        t4, s4, t4
                  c.andi      a3, -1
                  lui         a6, 421737
                  sll         zero, s9, s3
                  divu        zero, a5, t1
                  mulh        s9, s11, sp
                  c.li        a4, -1
                  or          ra, s8, t5
                  and         t2, s8, t2
                  and         zero, s5, sp
                  c.slli      s8, 3
                  div         t1, s5, zero
                  mulhsu      t0, s10, s4
                  c.addi4spn  a3, sp, 304
                  srl         a2, s2, a3
                  c.mv        t3, a1
                  c.addi      ra, -1
                  ori         s8, t0, 1052
                  c.nop
                  auipc       s8, 439152
                  sll         a4, s2, s4
                  c.srli      a2, 17
                  lui         gp, 188263
                  c.xor       a2, a3
                  c.sub       a3, a3
                  c.nop
                  and         s7, t5, sp
                  c.addi16sp  sp, -16
                  c.add       s9, t4
                  andi        s10, s1, 1922
                  lui         sp, 596939
                  auipc       a3, 368401
                  andi        a3, t4, 1463
                  or          zero, s7, t0
                  c.or        a3, a3
                  xori        a7, s9, 1079
                  c.addi16sp  sp, -16
                  c.addi4spn  a3, sp, 96
                  c.sub       a3, s0
                  andi        tp, t4, 1743
                  nop
                  c.srai      a3, 16
                  c.add       s8, a0
                  mulh        t0, ra, a1
                  c.or        a3, a2
                  or          s6, ra, sp
                  divu        zero, a5, s1
                  xor         s3, t2, s7
                  c.add       ra, s2
                  or          ra, t1, s8
                  c.and       a3, a3
                  mul         zero, s10, s9
                  sub         t3, t1, s2
                  sra         s9, s11, gp
                  or          s11, ra, gp
                  div         zero, s3, s0
                  sra         s9, a6, t1
                  c.srai      a3, 29
                  c.li        ra, 7
                  add         s2, t2, a1
                  or          a1, a5, s6
                  and         s8, t6, tp
                  and         t0, a6, s0
                  andi        t3, t3, 1964
                  c.nop
                  xori        t1, s10, -1181
                  c.mv        t1, s11
                  c.xor       a3, a3
                  mulhsu      s10, t1, a3
                  and         s0, s11, a1
                  c.nop
                  div         s6, a6, a1
                  div         s5, a7, t5
                  mulhsu      s4, zero, a2
                  c.xor       a3, a3
                  sub         s3, t4, t1
                  xor         t0, a6, t4
                  mulhu       zero, t3, a2
                  slli        t4, a2, 30
                  srl         s1, a7, s7
                  c.srli      a3, 17
                  srl         t4, s6, t1
                  andi        zero, s10, -412
                  sra         a0, t3, s0
                  mul         a1, s9, t0
                  c.nop
                  c.srli      a3, 5
                  auipc       s2, 278826
                  c.li        ra, -1
                  srli        s9, s7, 23
                  andi        gp, t4, -1541
                  srli        s3, a7, 4
                  c.addi16sp  sp, -16
                  srl         gp, t6, s10
                  c.mv        a2, t3
                  srai        s10, t0, 2
                  ori         a4, t5, 467
                  srl         zero, a0, sp
                  div         s8, s2, t2
                  slt         s4, a7, s5
                  slti        s9, s7, -760
                  c.andi      a2, -1
                  c.slli      s2, 1
                  sltiu       s7, s6, 1628
                  slli        ra, a1, 12
                  c.addi      a4, -1
                  srli        ra, t6, 15
                  auipc       s4, 162356
                  sll         s6, s6, tp
                  sltu        zero, s2, s3
                  srl         s5, t3, tp
                  sra         s3, t1, t4
                  sltiu       s5, zero, 1430
                  c.add       s8, ra
                  nop
                  sll         s7, tp, t0
                  sub         tp, t1, zero
                  mulhu       s1, ra, sp
                  sll         t0, t4, s2
                  c.sub       a3, a3
                  c.andi      a3, 17
                  divu        s3, s4, s5
                  slti        tp, s10, 868
                  sll         s0, t0, s2
                  andi        t1, s6, 1860
                  c.lui       t4, 27
                  c.xor       a1, a3
                  and         s8, a3, s8
                  c.and       a3, a3
                  slti        t0, s11, -1413
                  and         s3, zero, t5
                  c.nop
                  c.mv        ra, t6
                  rem         a3, sp, a1
                  c.addi      t0, 19
                  mulhsu      s4, sp, a7
                  lui         s6, 1014830
                  mul         t2, t1, t1
                  slli        t2, a5, 11
                  c.addi4spn  a3, sp, 960
                  div         s10, sp, a5
                  srli        zero, t2, 14
                  c.addi      a6, 10
                  c.or        a3, a4
                  sltiu       a0, a1, -1529
                  c.addi16sp  sp, 480
                  c.srai      a0, 25
                  srli        a2, s9, 10
                  xor         a1, s6, s11
                  sltu        s11, a5, a4
                  slti        s0, s0, 852
                  nop
                  divu        s10, t1, sp
                  srai        t4, t1, 13
                  ori         tp, a3, -360
                  c.srli      a3, 10
                  srai        t0, a7, 17
                  slti        s4, a5, -1995
                  c.srli      s1, 14
                  c.or        a3, a3
                  and         t0, t5, t4
                  c.sub       a3, a3
                  or          t4, s3, tp
                  nop
                  c.sub       a3, a3
                  srli        s0, t5, 10
                  or          zero, t4, a0
                  c.addi      s2, -1
                  divu        s2, s6, s2
                  c.addi      a3, -1
                  c.nop
                  mulhu       a3, a5, s10
                  c.nop
                  xori        s6, ra, -436
                  add         zero, s1, s6
                  sltiu       tp, s4, 1402
                  mulhsu      s8, sp, a5
                  c.addi      s1, -1
                  xori        zero, gp, 1974
                  c.srai      a3, 16
                  auipc       s6, 14728
                  div         s1, s9, s2
                  mulh        gp, s2, t1
                  ori         zero, t2, 901
                  c.and       s1, a3
                  addi        zero, t6, -418
                  c.mv        t0, s8
                  slti        gp, s4, -1324
                  c.srli      a3, 16
                  c.lui       ra, 30
                  xor         s11, tp, a1
                  srl         t2, t5, s2
                  srai        a7, t5, 25
                  sll         ra, t2, a0
                  andi        t4, a6, 854
                  xor         a0, a4, t6
                  c.and       a3, a1
                  and         s10, a1, a6
                  div         zero, t5, t3
                  c.xor       a3, a4
                  c.srai      a3, 28
                  auipc       s1, 858964
                  divu        zero, zero, a2
                  c.or        a3, a3
                  nop
                  c.srai      a3, 4
                  c.nop
                  sltu        s9, t1, s0
                  c.or        a3, a3
                  mulhsu      s4, s1, t3
                  andi        a6, t1, -1607
                  and         a0, sp, a7
                  srai        zero, t6, 20
                  and         s6, t6, s6
                  rem         a2, a2, s11
                  c.or        a4, a3
                  ori         s11, a4, -1353
                  addi        sp, a4, -1134
                  c.xor       a3, a3
                  mulhu       a4, a0, sp
                  c.addi16sp  sp, -16
                  slti        a0, t0, -658
                  auipc       s5, 725333
                  c.addi16sp  sp, -16
                  srai        s3, t6, 7
                  c.andi      a3, -1
                  xori        a1, a6, 495
                  c.addi      ra, -1
                  li         t4, 0x1 #start riscv_int_numeric_corner_stream_18
                  li         t3, 0x0
                  li         s11, 0x0
                  li         s10, 0x0
                  li         s4, 0x0
                  li         a6, 0x1
                  li         s9, 0x0
                  li         a2, 0x50adc52e
                  li         s1, 0x1
                  li         s8, 0x1
                  divu        s7, zero, a5
                  c.lui       a2, 26
                  auipc       gp, 464122
                  divu        a7, s8, t0
                  mulhsu      s1, s11, s4
                  c.add       s10, s1
                  c.li        t3, 27
                  add         a2, a4, s9
                  c.addi16sp  sp, 320
                  c.addi4spn  a1, sp, 832
                  mul         s6, a4, a3
                  auipc       gp, 447217
                  c.sub       a3, a3
                  addi        s7, gp, -1563
                  c.addi16sp  sp, -16
                  mulhsu      sp, a1, s4
                  divu        s11, t3, ra
                  c.addi      s8, 21
                  c.lui       a6, 31
                  addi        t4, s2, 299
                  rem         a4, a2, a4
                  mulhsu      s5, s9, s0
                  c.addi16sp  sp, 320
                  div         s8, s11, a5
                  c.addi16sp  sp, -16
                  divu        s10, a7, a2 #end riscv_int_numeric_corner_stream_18
                  mulh        t3, s5, t5
                  rem         ra, sp, s10
                  xor         s1, a0, a6
                  or          t3, a4, s3
                  c.sub       a4, a3
                  divu        a0, a3, s11
                  xori        ra, a1, 1185
                  c.slli      s4, 8
                  c.srli      a3, 27
                  lui         s5, 944187
                  srai        a1, t5, 26
                  slli        t4, a7, 0
                  c.add       s3, a0
                  c.lui       a0, 15
                  c.mv        s3, a0
                  mulhu       t3, s8, t3
                  sltiu       tp, a0, 1751
                  c.and       a3, a4
                  addi        s7, a6, 582
                  c.xor       a3, a3
                  c.addi      t2, -1
                  slli        zero, s9, 16
                  c.andi      a0, 5
                  or          s2, s10, t5
                  or          zero, gp, a0
                  ori         tp, s2, -123
                  sub         a6, s3, a0
                  sll         a1, a7, a5
                  divu        s8, tp, t6
                  c.andi      a3, -1
                  sra         zero, s8, zero
                  add         zero, s5, s0
                  mulhsu      tp, s2, s4
                  c.addi      ra, 28
                  sltu        gp, t2, sp
                  c.mv        s6, t0
                  c.addi4spn  a3, sp, 128
                  c.mv        s4, s7
                  sub         s11, s3, s1
                  srai        s4, s3, 29
                  c.addi      t4, -1
                  c.addi16sp  sp, 400
                  c.addi      s5, 29
                  sll         t2, t1, s3
                  mulhu       ra, t1, zero
                  sll         s6, zero, sp
                  c.lui       a0, 18
                  c.xor       a3, a3
                  sltiu       a3, t2, 1249
                  c.mv        a4, sp
                  srli        t3, gp, 17
                  mul         zero, s5, s7
                  addi        s2, t1, 430
                  c.slli      a3, 21
                  mulhsu      a1, s5, a6
                  nop
                  c.mv        sp, t2
                  c.add       s4, a1
                  slti        t4, s8, 1053
                  andi        s0, a3, -1092
                  c.sub       a3, a3
                  c.andi      a3, -1
                  andi        s3, t4, -549
                  c.add       s5, a3
                  srl         zero, s4, t4
                  sra         a0, gp, sp
                  or          t1, a6, s7
                  c.and       a3, a3
                  mul         s11, a7, t3
                  slt         a1, ra, s8
                  nop
                  c.sub       a3, a3
                  xori        s9, sp, -1863
                  c.addi4spn  a3, sp, 64
                  srli        s1, a6, 23
                  ori         ra, t5, -534
                  srli        a7, s10, 12
                  div         ra, t1, t4
                  mul         zero, s5, tp
                  c.nop
                  xori        s3, s7, 1337
                  mulhsu      t0, a3, a4
                  c.srai      a3, 4
                  sltu        a7, s10, a2
                  add         s8, gp, t3
                  mulhu       gp, a3, tp
                  rem         a7, s0, s6
                  srai        a6, a5, 3
                  c.or        a3, a3
                  mul         s3, s0, a3
                  xori        a1, s4, 1564
                  andi        sp, t4, -262
                  c.srai      a3, 1
                  c.xor       a3, a3
                  c.add       s9, s9
                  mul         a1, t5, s2
                  mulhu       s11, s0, sp
                  c.addi      ra, -1
                  rem         a7, a2, s10
                  srl         s3, a1, s4
                  sra         a0, s4, s9
                  addi        s10, s2, 2013
                  sub         a7, s5, s8
                  nop
                  sltiu       s0, a2, -598
                  sub         sp, s4, tp
                  sub         ra, a3, s5
                  sub         s4, s5, tp
                  div         s3, a7, s11
                  c.andi      a3, 27
                  c.addi16sp  sp, 240
                  c.li        ra, 6
                  c.xor       a3, a3
                  c.mv        s7, sp
                  sltiu       a1, s2, 273
                  c.nop
                  slli        s3, t1, 29
                  c.srai      a3, 25
                  c.add       s6, ra
                  or          sp, s7, t5
                  mulhsu      a0, a7, a5
                  sltiu       zero, ra, 234
                  sub         s11, a5, t2
                  c.lui       s4, 25
                  c.srli      a3, 9
                  c.srai      a3, 13
                  c.sub       a0, a3
                  sll         zero, s6, s2
                  srai        gp, a6, 9
                  c.andi      a3, 18
                  mulhsu      t3, a7, a6
                  and         s11, s3, a1
                  andi        s10, a3, -1121
                  mulhsu      s10, s8, t1
                  sra         s5, a1, sp
                  slli        s6, s6, 3
                  c.sub       a3, a3
                  c.and       a1, a3
                  srli        s0, a2, 2
                  c.li        t2, -1
                  mulh        s9, s9, t3
                  c.li        a3, -1
                  xori        s9, s6, 353
                  lui         s3, 382743
                  add         s1, s2, a3
                  mulhsu      s5, s6, a3
                  c.addi16sp  sp, 80
                  auipc       tp, 709087
                  c.srai      a1, 30
                  sltu        a1, s1, s5
                  mulhsu      s7, a6, s8
                  sra         s6, a0, s8
                  mul         a1, a7, t3
                  c.sub       s1, a3
                  c.addi4spn  a3, sp, 48
                  xori        s2, a7, -692
                  srl         t0, sp, s2
                  c.or        a3, a3
                  c.and       a3, s1
                  or          tp, s1, s3
                  sll         a4, a7, a1
                  ori         t3, s5, 1639
                  slt         a3, s8, zero
                  div         t2, a6, a7
                  mul         s8, a7, tp
                  srl         tp, s0, tp
                  nop
                  sub         s1, a6, s7
                  and         gp, t0, tp
                  nop
                  sra         t2, t4, s4
                  c.lui       a7, 13
                  or          t2, a3, t1
                  c.lui       s4, 8
                  sltiu       tp, s5, -900
                  srai        sp, s8, 15
                  addi        a2, s7, 1676
                  c.andi      a3, -1
                  c.mv        t2, t5
                  srl         s2, s4, s5
                  mulhu       a6, s6, s0
                  c.xor       a3, a3
                  c.mv        tp, t2
                  c.andi      s0, -1
                  mulhu       a3, t2, s9
                  c.srli      a3, 8
                  divu        t0, s1, s10
                  srai        a7, a4, 27
                  c.sub       a1, a3
                  c.addi4spn  a3, sp, 832
                  c.andi      a3, 14
                  nop
                  srai        s11, gp, 9
                  c.xor       a3, a3
                  slt         t1, ra, s6
                  mulhu       s2, t4, s11
                  c.addi16sp  sp, -16
                  rem         s0, zero, s1
                  c.xor       a1, a3
                  slti        t3, a3, 567
                  div         a1, s10, t0
                  c.addi4spn  a0, sp, 128
                  srai        a4, s6, 10
                  auipc       s2, 542729
                  mulhsu      s10, gp, s7
                  addi        zero, tp, 1739
                  sltu        s10, a1, t3
                  sub         s3, t6, zero
                  sltu        s4, a1, s7
                  sra         sp, sp, t5
                  c.addi4spn  a3, sp, 384
                  srli        t0, t1, 12
                  c.nop
                  c.and       a3, a3
                  mulhsu      a6, a4, ra
                  c.add       t4, s11
                  add         a3, s10, t0
                  c.or        a3, a3
                  c.slli      s1, 21
                  c.li        s5, -1
                  sll         a0, t1, s4
                  div         t3, t5, t3
                  c.addi4spn  a3, sp, 896
                  srli        zero, zero, 23
                  and         a6, s1, a6
                  andi        a4, s4, -664
                  srli        a4, s7, 2
                  mul         s9, a0, s6
                  c.addi4spn  a3, sp, 128
                  mulh        s7, s4, s8
                  xori        s6, s11, -1223
                  c.add       s11, t2
                  mulh        a3, s0, s7
                  andi        t1, t6, 1791
                  c.addi4spn  a3, sp, 64
                  sltu        t1, s6, s4
                  xor         ra, gp, a7
                  xori        zero, s4, 196
                  sltu        s3, a5, sp
                  lui         s0, 194797
                  mulhu       s8, s7, s8
                  sltu        s1, a1, t2
                  addi        s2, t3, -716
                  or          s9, s6, ra
                  nop
                  c.nop
                  xori        s11, gp, 1811
                  sra         ra, s8, t2
                  slt         gp, s6, t0
                  c.srli      a3, 19
                  and         t3, s9, s3
                  c.or        a3, a5
                  or          t0, t1, s8
                  divu        ra, t6, a7
                  lui         s2, 395349
                  ori         s9, s9, 560
                  c.nop
                  c.or        a3, a3
                  c.addi4spn  a1, sp, 384
                  addi        a6, s10, 900
                  c.xor       a3, a3
                  c.slli      a3, 26
                  c.srai      a3, 27
                  c.xor       a3, a3
                  and         a3, a0, a6
                  div         s7, s3, s1
                  c.add       tp, s8
                  sltu        sp, s2, s7
                  srai        gp, s0, 21
                  div         s4, t1, a3
                  sub         s9, s9, t5
                  c.or        a3, a3
                  c.add       s2, gp
                  c.slli      s6, 20
                  auipc       a7, 480649
                  sll         s4, gp, t6
                  c.xor       a3, a1
                  sll         zero, t3, t3
                  mulhu       a0, t1, t1
                  c.xor       a3, a3
                  sltu        a4, a5, s10
                  auipc       t1, 209563
                  c.addi16sp  sp, 304
                  div         s3, s2, a1
                  c.and       a3, a3
                  c.or        a3, a3
                  mulhsu      s6, tp, a2
                  xori        s11, s3, -1456
                  lui         s11, 680716
                  slt         a6, a2, zero
                  ori         a7, ra, -84
                  c.sub       a3, a3
                  c.sub       a3, a1
                  mulh        s6, s7, s5
                  mulhu       s11, s3, a0
                  c.sub       a3, a3
                  c.addi      t3, -1
                  add         a1, ra, ra
                  c.andi      a3, 18
                  mulhu       s10, a0, s10
                  c.add       tp, gp
                  auipc       s6, 20535
                  divu        a2, a5, t4
                  slli        s4, a0, 7
                  c.addi4spn  a3, sp, 368
                  c.sub       a4, a3
                  nop
                  c.andi      a3, -1
                  c.srli      a3, 24
                  c.nop
                  slt         t2, ra, s5
                  c.addi16sp  sp, -16
                  xor         t3, t1, a3
                  xori        t1, gp, 243
                  ori         a6, s1, 389
                  or          ra, s7, s2
                  addi        tp, s4, 683
                  srl         t2, t6, a3
                  sltu        s10, s7, t5
                  auipc       a2, 441313
                  ori         a7, t2, 1987
                  c.li        t0, 6
                  sub         s6, t0, s7
                  c.srli      a3, 20
                  c.lui       s11, 20
                  ori         zero, a3, 869
                  nop
                  c.li        ra, 15
                  sll         zero, t3, t0
                  slti        s9, s1, 1050
                  and         t4, zero, t2
                  xor         s2, s1, s5
                  ori         sp, a4, -1083
                  rem         t3, a6, s9
                  ori         s2, t2, -872
                  sub         s9, s11, s4
                  sltu        sp, t4, a3
                  sltiu       zero, a5, -193
                  nop
                  add         sp, a3, s8
                  c.andi      a3, -1
                  c.srli      a3, 23
                  c.addi      t3, 11
                  c.mv        ra, t4
                  srl         tp, s8, s8
                  sll         a0, s10, tp
                  c.addi16sp  sp, 384
                  or          s10, a2, t6
                  slt         a4, zero, s3
                  c.add       a4, s4
                  mulhu       t0, sp, a0
                  auipc       t1, 903421
                  and         t3, s10, t1
                  div         t4, tp, s9
                  or          sp, s9, s9
                  c.slli      a6, 23
                  mulhu       zero, s9, s10
                  c.andi      a3, 25
                  c.and       a3, a5
                  sltu        zero, a5, s1
                  c.nop
                  xori        a6, s0, -96
                  c.addi4spn  a3, sp, 848
                  mulhu       s2, zero, tp
                  and         a4, s5, a3
                  c.srli      a3, 21
                  lui         s6, 359097
                  c.mv        a3, a6
                  xor         a6, a0, a3
                  c.li        ra, 30
                  rem         s4, t1, ra
                  andi        s9, a2, -1056
                  ori         s9, s1, -518
                  divu        zero, s9, tp
                  or          zero, a0, t0
                  mulhsu      a6, s6, s2
                  c.mv        a2, t4
                  mulh        s7, t6, t2
                  srai        gp, a0, 3
                  c.addi      s5, 22
                  c.slli      a2, 4
                  c.srli      a3, 7
                  srli        t0, a2, 22
                  c.addi      t3, 13
                  c.andi      a3, -1
                  c.li        gp, 10
                  c.or        a3, a3
                  mulhsu      s1, s10, s4
                  srai        s0, tp, 3
                  sub         s2, s8, t0
                  mul         a4, s8, s0
                  xori        t2, t2, 735
                  andi        s0, t2, -1352
                  c.andi      a3, 25
                  c.xor       a3, a3
                  srli        a0, a5, 28
                  sub         zero, a0, a6
                  srli        a0, s7, 27
                  c.mv        sp, a5
                  c.mv        s1, ra
                  c.nop
                  c.slli      ra, 16
                  lui         a4, 1033297
                  c.srli      a3, 25
                  mulhu       zero, s6, t2
                  rem         s7, s8, a6
                  c.slli      s4, 16
                  slt         a6, a2, a3
                  sll         a6, s7, sp
                  srl         zero, a1, a5
                  addi        a2, s10, 75
                  andi        t1, t0, 1895
                  addi        a0, t1, -213
                  srai        a0, t6, 0
                  slti        t4, s9, -1870
                  andi        s4, ra, -1532
                  div         s10, t6, s1
                  nop
                  rem         sp, tp, t6
                  lui         a0, 626387
                  add         s3, s4, a3
                  slli        s7, s3, 4
                  and         t3, zero, sp
                  c.add       s3, a4
                  srai        a3, t5, 3
                  mulh        a0, a4, t1
                  c.xor       a3, a3
                  sub         zero, s0, tp
                  xor         a7, a7, s5
                  c.xor       s1, s0
                  and         a4, t2, t0
                  srli        s2, sp, 4
                  c.lui       s7, 15
                  slt         t1, a3, t0
                  xori        zero, s8, 1923
                  c.xor       a3, a3
                  sll         s6, s9, zero
                  c.addi4spn  a0, sp, 800
                  slli        gp, a6, 15
                  c.slli      t2, 29
                  srli        s2, t3, 7
                  mulhsu      a2, s1, s0
                  c.nop
                  and         t3, a2, a1
                  sub         s6, a7, s10
                  mulh        t1, a4, s7
                  c.or        a3, a3
                  ori         a4, a5, 888
                  xor         s8, gp, t0
                  andi        s1, t3, 1449
                  slli        a0, s8, 28
                  sra         zero, t4, a7
                  andi        s0, sp, 1366
                  sra         zero, s10, s4
                  c.xor       a1, a3
                  li         a4, 0x1 #start riscv_int_numeric_corner_stream_7
                  li         t4, 0x0
                  li         t3, 0x0
                  li         a3, 0x5b577db1
                  li         s11, 0x0
                  li         t2, 0x49c07b0
                  li         s10, 0x0
                  li         s8, 0x0
                  li         s9, 0x1
                  li         s1, 0x0
                  c.sub       a3, a3
                  addi        s3, a2, -928
                  add         zero, gp, s3
                  mulhsu      a4, t5, t2
                  c.addi      s8, 20
                  c.add       gp, s0
                  mulhsu      gp, t1, t2
                  lui         s9, 421270
                  rem         s11, s6, a5
                  c.nop
                  mulhu       t3, s4, sp
                  mulh        s0, t5, s0
                  c.li        t2, -1
                  mul         t2, s0, gp
                  mulhsu      a7, s2, s8
                  mulh        zero, a4, s11
                  mulhu       gp, gp, zero
                  mulhu       a0, zero, a4
                  lui         t2, 856519
                  rem         gp, t5, a7
                  addi        a7, tp, 700
                  auipc       sp, 405455 #end riscv_int_numeric_corner_stream_7
                  c.srli      a3, 22
                  srai        tp, s6, 0
                  c.srli      a3, 31
                  ori         t0, s0, 1667
                  srli        a7, t2, 21
                  xori        t2, s2, -1576
                  nop
                  add         a7, a4, s6
                  mulhsu      s7, t4, t3
                  andi        ra, s8, -1696
                  xor         zero, s0, a0
                  div         a2, a4, t2
                  sltiu       s9, t2, -928
                  c.andi      s1, -1
                  c.lui       ra, 20
                  add         zero, s0, t5
                  or          s6, t3, s3
                  slli        zero, s8, 9
                  nop
                  slti        t0, a0, 1805
                  mulhu       ra, s9, a2
                  c.addi16sp  sp, 64
                  c.srai      a3, 14
                  xori        s8, t1, -226
                  srli        a0, tp, 14
                  c.srai      a0, 3
                  ori         zero, s1, 2003
                  auipc       s1, 916590
                  lui         t0, 362645
                  sll         tp, s9, a3
                  c.nop
                  c.addi16sp  sp, 464
                  c.srai      a3, 16
                  c.nop
                  slti        s10, s9, -981
                  mul         s9, s3, a6
                  or          s3, a3, a6
                  add         ra, s6, s2
                  c.addi16sp  sp, 208
                  c.and       a3, a3
                  or          t0, gp, ra
                  c.andi      a3, 18
                  and         zero, t2, t1
                  c.addi16sp  sp, 96
                  auipc       ra, 897720
                  c.nop
                  or          s10, a2, tp
                  div         s0, s0, s7
                  sltu        s8, a3, s10
                  c.addi16sp  sp, 192
                  c.srli      s1, 14
                  c.addi4spn  s0, sp, 128
                  xori        t0, s4, -572
                  c.slli      a0, 27
                  c.lui       s3, 6
                  or          s9, s6, s7
                  c.or        a3, a3
                  sltiu       s5, s8, -1520
                  slli        zero, t2, 4
                  srl         a7, s11, t1
                  andi        s10, a1, 1673
                  c.nop
                  xor         t2, s3, gp
                  c.andi      a3, 14
                  mul         zero, t1, s8
                  rem         a0, t0, a3
                  mul         s10, t0, s2
                  srai        a1, s9, 18
                  sub         t1, gp, a5
                  divu        s9, t4, a6
                  c.or        a3, a3
                  c.mv        a6, s9
                  c.slli      t2, 25
                  and         sp, s10, t6
                  slli        zero, t3, 24
                  slt         tp, a2, s0
                  slli        s2, a7, 21
                  srai        s1, s3, 19
                  srai        a2, a7, 24
                  c.srai      a3, 3
                  c.lui       tp, 14
                  div         gp, s11, s10
                  nop
                  c.lui       s3, 12
                  c.addi4spn  a3, sp, 896
                  srai        s4, tp, 29
                  mulhu       zero, t5, t0
                  c.addi16sp  sp, 112
                  mulh        s6, t6, s5
                  add         s1, s6, gp
                  xori        t2, s5, 851
                  sll         s1, t3, s11
                  xori        ra, ra, -1040
                  sltiu       t1, sp, -1700
                  srai        ra, a7, 17
                  or          a3, a6, t2
                  div         s11, sp, t6
                  ori         a7, t1, -1341
                  sra         sp, a0, a0
                  c.andi      a4, 15
                  sub         sp, a1, s2
                  sltiu       zero, s7, -119
                  c.li        s10, 23
                  c.xor       a3, a3
                  c.or        s1, a3
                  divu        tp, t5, s11
                  mulh        s0, a6, t5
                  c.slli      a6, 8
                  mul         zero, s0, a7
                  nop
                  c.and       a3, a3
                  rem         t4, a7, s5
                  srai        s7, s0, 23
                  sltiu       a2, a1, -1189
                  add         a7, s4, s8
                  rem         t3, s5, t0
                  c.andi      a1, -1
                  c.addi      gp, -1
                  c.and       a3, a3
                  c.addi      s6, 20
                  divu        t4, t1, s2
                  c.andi      s1, 30
                  nop
                  slt         ra, t4, t6
                  sltiu       s11, t4, 1965
                  lui         t0, 13435
                  c.andi      a3, 7
                  c.lui       ra, 28
                  c.add       t2, a2
                  addi        ra, s3, 184
                  c.srai      a3, 8
                  or          t1, s1, a3
                  xor         tp, t3, t4
                  c.andi      a3, -1
                  c.nop
                  mulhu       s6, s5, s2
                  c.lui       s11, 24
                  sub         a1, s6, t5
                  sltu        a4, t5, a5
                  c.slli      a7, 24
                  srl         s3, t0, ra
                  and         t4, t0, t5
                  lui         s2, 149282
                  or          zero, s1, zero
                  srai        s11, s2, 20
                  add         t1, t0, a4
                  c.mv        s4, ra
                  xori        gp, s1, -1497
                  c.addi16sp  sp, 368
                  c.mv        ra, s8
                  sltu        ra, s9, s4
                  srai        a0, a5, 19
                  mulh        a1, a3, a4
                  ori         a1, a4, -1115
                  or          a4, zero, s7
                  and         s2, t5, s0
                  sub         gp, gp, ra
                  div         zero, s0, a3
                  sub         s3, ra, s4
                  xori        t2, t6, -1500
                  rem         zero, sp, s1
                  c.addi4spn  a3, sp, 320
                  sltu        zero, a5, ra
                  lui         s1, 956769
                  addi        s0, s2, -191
                  srli        s7, t6, 30
                  c.addi4spn  a1, sp, 352
                  add         s5, s7, t0
                  auipc       a0, 610227
                  c.and       a0, a3
                  c.and       s1, a3
                  srli        s11, a2, 16
                  c.addi4spn  a3, sp, 896
                  sltu        gp, a4, a1
                  mul         t3, a1, s10
                  c.andi      a3, 0
                  div         zero, tp, a5
                  auipc       s6, 743090
                  xori        a0, ra, 780
                  andi        zero, s3, -1612
                  andi        a1, t5, -86
                  mulhsu      a1, s10, tp
                  addi        s8, ra, 1852
                  c.sub       a3, a3
                  c.addi4spn  a3, sp, 352
                  sltu        ra, s3, s2
                  c.andi      a1, 3
                  and         s9, a1, a4
                  xori        a0, a1, 1249
                  sub         ra, a0, a3
                  slli        s1, a6, 27
                  mulhsu      a2, t1, s4
                  xor         a0, a1, s5
                  c.mv        t4, a0
                  c.and       a3, a1
                  slti        s1, zero, 623
                  mulh        sp, s6, a7
                  c.nop
                  mulhsu      ra, s0, a7
                  c.slli      s9, 22
                  c.add       s0, a7
                  xor         sp, s1, s1
                  slt         zero, t6, a1
                  slti        zero, a1, -1981
                  add         a1, s9, t6
                  mulhsu      t0, ra, tp
                  sra         s6, s4, s2
                  c.mv        s10, s10
                  divu        t4, s3, t5
                  c.nop
                  c.srai      a3, 18
                  c.add       s6, t5
                  sltu        s5, t0, a7
                  c.nop
                  c.andi      a3, 18
                  slti        zero, a5, 501
                  srai        a6, sp, 8
                  srl         t0, t0, s7
                  mulhsu      s3, s10, s6
                  c.addi      a1, 12
                  sltiu       s11, t1, -1103
                  c.mv        a3, a6
                  andi        t4, ra, 1858
                  c.add       t2, s6
                  c.add       tp, a3
                  lui         sp, 908506
                  slt         a1, t2, s9
                  c.srai      a4, 25
                  mulh        ra, s1, s1
                  li         t4, 0x27079f8a #start riscv_int_numeric_corner_stream_26
                  li         t3, 0x64b8cffb
                  li         tp, 0x616afcd8
                  li         s11, 0x0
                  li         s10, 0x1
                  li         a6, 0x1
                  li         s4, 0x0
                  li         a4, 0x0
                  li         s9, 0x1
                  li         s8, 0x0
                  c.nop
                  c.lui       t1, 21
                  mul         a2, s11, s7
                  c.nop
                  c.sub       a2, a3
                  c.nop
                  c.mv        s5, a1
                  c.add       s5, s1
                  c.addi4spn  a3, sp, 240
                  c.addi16sp  sp, -16
                  c.mv        s0, s6
                  c.addi      ra, 7
                  rem         s11, a1, s9
                  c.li        t2, 19
                  mulhu       t4, a2, a2
                  lui         s3, 177957
                  c.addi4spn  a3, sp, 800
                  div         zero, a7, s0
                  nop
                  c.add       a2, s2
                  c.li        s4, -1
                  rem         a7, t3, a1
                  c.addi4spn  a3, sp, 640
                  c.li        a0, 1
                  c.andi      a3, 6
                  c.and       a3, a3
                  c.li        t2, -1
                  sll         s11, a6, ra
                  addi        zero, s10, 1817
                  c.mv        s6, a1
                  sra         s0, s6, a3
                  c.sub       a3, a3
                  c.addi4spn  a3, sp, 384
                  c.addi      ra, -1
                  mul         a2, ra, s8
                  c.srai      a3, 11
                  c.xor       a3, a3
                  slt         s10, t6, s4
                  c.lui       s0, 4
                  c.and       a3, a3
                  c.and       a3, a4
                  rem         s11, t4, s4
                  c.andi      a3, 13
                  slti        a6, s9, 1533
                  sltiu       gp, a4, 1149
                  lui         s3, 615783
                  sltu        s9, t4, s11
                  srli        a1, s9, 8
                  c.addi16sp  sp, 256
                  nop
                  or          t1, s3, t4
                  andi        s0, s0, -931
                  slti        s4, t2, -1328
                  sra         zero, t5, a2
                  xor         s10, tp, s5
                  c.or        a3, a3
                  and         zero, a3, ra
                  c.srli      a2, 21
                  c.addi16sp  sp, 176
                  sltiu       s11, t1, 861
                  and         gp, s10, a0
                  mulhsu      gp, gp, s10
                  c.and       a4, a3
                  c.xor       a3, a3
                  c.mv        tp, s9
                  c.nop
                  c.addi4spn  a3, sp, 384
                  xori        s9, a6, 386
                  or          zero, s7, a3
                  c.sub       a3, a3
                  c.slli      s7, 25
                  and         s1, a6, a6
                  slt         zero, a3, t6
                  sltu        a4, s4, a0
                  andi        t3, a2, -761
                  c.srli      a3, 17
                  slli        s6, a6, 25
                  sltiu       s8, s10, 1072
                  lui         s4, 196317
                  c.addi16sp  sp, 192
                  sub         s6, s7, a6
                  c.addi4spn  a3, sp, 976
                  ori         ra, t4, 594
                  sra         t2, t3, s11
                  sltiu       zero, s0, 650
                  xor         s2, t0, t6
                  slli        t1, a3, 12
                  slt         s9, s5, s9
                  sra         s9, a3, a0
                  divu        tp, a2, s8
                  c.or        a2, a3
                  nop
                  ori         s0, t5, 437
                  slli        a7, a6, 17
                  lui         a0, 93068
                  slti        s6, t5, -1773
                  lui         s9, 73110
                  c.addi      s11, -1
                  c.xor       a3, a3
                  srl         s7, gp, a7
                  slti        s11, s4, 559
                  c.xor       a3, a3
                  c.xor       a3, a3
                  c.slli      t3, 5
                  sub         gp, s7, a7
                  div         a2, a4, a0
                  c.or        a3, a3
                  and         a7, a2, gp
                  c.srli      a3, 3
                  c.or        a3, a3
                  div         t1, t1, sp
                  c.nop
                  srai        s8, t0, 24
                  sra         a7, sp, s2
                  c.slli      s8, 7
                  mulhsu      s1, s11, t1
                  c.nop
                  xor         t3, s7, a6
                  c.srai      a3, 22
                  divu        s2, s1, t4
                  c.sub       a3, a1
                  sll         a1, s1, sp
                  c.or        a3, a3
                  rem         s3, gp, t2
                  xori        s10, a6, 1810
                  c.li        s0, 26
                  xor         s1, s8, t1
                  c.mv        a7, s0
                  andi        sp, gp, -436
                  and         a6, s8, a7
                  c.addi      s9, 9
                  c.li        ra, -1
                  sltiu       s4, s0, -643
                  c.addi16sp  sp, -16
                  srli        s9, s9, 28
                  c.slli      s11, 3
                  xori        sp, t0, -166
                  addi        a2, a4, 1887
                  nop
                  nop
                  slt         tp, zero, t5
                  c.slli      s9, 26
                  c.lui       a1, 1
                  c.addi4spn  a3, sp, 80
                  c.lui       s3, 16
                  or          s7, s10, s10
                  or          t2, tp, ra
                  c.mv        a7, s10
                  slt         s0, a2, sp
                  slt         t2, t0, sp
                  and         a6, t5, a7
                  c.xor       a3, a3
                  mulhsu      s0, s1, s4
                  xor         s0, s1, a7
                  nop
                  c.mv        s6, s4
                  c.nop
                  mulhsu      tp, tp, s5
                  c.sub       s0, a3
                  c.lui       ra, 23
                  auipc       a1, 982370
                  sltiu       zero, s0, -1982
                  srli        s5, a1, 28
                  srli        sp, a0, 28
                  c.srli      s0, 19
                  nop
                  c.or        a0, s0
                  ori         s7, s8, -71
                  mul         s11, s10, a2
                  xor         zero, s4, tp
                  c.nop
                  c.addi16sp  sp, -16
                  c.andi      s0, 2
                  srli        t2, a0, 16
                  c.li        s0, 5
                  c.xor       a3, a3
                  sub         zero, t4, tp
                  c.mv        a6, s6
                  lui         zero, 744555
                  sltiu       s6, t3, 1680
                  srl         zero, t3, t6
                  or          ra, t2, s0
                  mulh        t4, s8, s8
                  c.xor       a3, s1
                  sltiu       s7, a5, -143
                  div         s9, a6, a5
                  c.mv        s5, s3
                  xori        a4, s7, 1008
                  c.addi4spn  a3, sp, 960
                  add         s2, t5, gp
                  slli        t0, s5, 5
                  auipc       a3, 334882
                  div         tp, ra, t0
                  c.nop
                  mulhu       s10, s9, s3
                  c.srai      a2, 20
                  c.srli      a0, 8
                  slli        s5, s1, 2
                  c.sub       a3, a2
                  auipc       zero, 748677
                  div         t2, a1, zero
                  srai        a1, t6, 11
                  c.addi      s9, -1
                  div         a2, t1, ra
                  c.add       t2, a0
                  c.srai      a3, 17
                  srl         s3, a4, a2
                  c.or        a3, a3
                  c.lui       s4, 16
                  c.xor       a3, a3
                  c.addi16sp  sp, -16
                  c.srai      a3, 5
                  andi        t1, t4, 1806
                  mulh        s4, a6, s2
                  rem         t2, a6, a5
                  sub         s3, t4, ra
                  c.add       s2, s3
                  auipc       s5, 35864
                  auipc       a1, 518127
                  c.or        a3, a3
                  rem         tp, s8, a4
                  c.xor       a3, a3
                  xor         s7, ra, s0
                  mulh        sp, a0, t4
                  c.srai      a3, 25
                  rem         sp, t5, a2
                  ori         gp, t5, -59
                  c.addi16sp  sp, -16
                  xori        gp, s6, 1401
                  add         a4, s0, t1
                  c.srli      a2, 29
                  c.and       a3, a3
                  xor         s7, s1, tp
                  addi        s6, gp, 1824
                  auipc       s8, 774240
                  c.addi16sp  sp, -16
                  c.add       s0, s5
                  sub         t2, t0, s7
                  srai        s10, a5, 7
                  and         s2, a6, zero
                  div         t4, a3, s5
                  slti        sp, a7, -591
                  sltiu       ra, s11, 1958
                  ori         zero, a7, -1489
                  nop
                  c.addi      ra, -1
                  c.addi4spn  a2, sp, 320
                  add         tp, t4, s9
                  c.srli      a3, 9
                  andi        a4, s10, -1277
                  c.addi      t2, 18
                  sltu        zero, ra, s5
                  c.srli      a3, 23
                  add         zero, a1, s2
                  srai        zero, a7, 9
                  c.nop
                  and         s9, sp, t1
                  c.srli      a3, 14
                  c.mv        t2, s1
                  mulh        t1, t6, s6
                  c.srli      a3, 11
                  mulhu       s1, s3, t4
                  c.or        a3, a3
                  div         a0, zero, t5
                  slti        t4, t6, 629
                  c.addi4spn  a3, sp, 816
                  xor         s0, a3, s11
                  add         t3, t1, a1
                  mul         zero, t2, t6
                  c.xor       a4, a3
                  nop
                  mul         a6, s2, t6
                  andi        s2, a0, -609
                  slt         t1, a3, s2
                  c.lui       a0, 13
                  rem         t0, zero, gp
                  c.or        a0, a1
                  and         s3, t0, t5
                  auipc       a4, 424009
                  srl         s4, t4, a3
                  mulhu       s7, s0, a0
                  div         s4, s1, zero
                  c.and       a3, a3
                  c.or        a3, a1
                  c.srli      a3, 14
                  c.mv        s0, tp
                  or          s0, zero, t5
                  andi        a7, a4, 97
                  c.mv        t3, t3
                  c.slli      t0, 28
                  c.and       s0, a3
                  xor         a2, a1, s11
                  c.mv        tp, ra
                  sub         zero, s1, s10
                  ori         s5, s6, -621
                  c.srai      a3, 16
                  srai        t3, zero, 3
                  c.andi      s1, 12
                  c.lui       s1, 22
                  c.addi      s10, -1
                  c.xor       a3, a3
                  c.srai      a3, 30
                  lui         t1, 677958
                  or          zero, s2, s4
                  mul         t0, t4, s10
                  srl         s5, gp, s8
                  sltu        t1, s11, s6
                  c.mv        gp, a1
                  mul         s11, s8, a4
                  slti        zero, t0, -1938
                  c.lui       ra, 3
                  auipc       s6, 340551
                  mulhsu      s10, t4, sp
                  c.sub       a3, a3
                  c.nop
                  sltiu       a2, t2, 987
                  mulh        a2, a5, t0
                  and         ra, s3, s6
                  c.or        a3, a3
                  mul         gp, s10, s0
                  add         s1, t1, s1
                  srl         a4, a6, sp
                  sra         s11, a2, s6
                  div         zero, sp, s2
                  mulhu       s0, s6, a0
                  nop
                  divu        t0, t2, a6
                  slt         s10, t5, a3
                  c.and       a3, a3
                  lui         t0, 774626
                  srli        gp, a0, 13
                  c.slli      s1, 25
                  c.li        a1, -1
                  c.andi      a3, 4
                  auipc       zero, 637414
                  slli        zero, a1, 30
                  c.nop
                  c.addi      t1, -1
                  sltiu       zero, ra, -395
                  ori         a4, t2, 329
                  rem         ra, a1, gp
                  srl         s0, t2, ra
                  divu        gp, s10, a4
                  c.or        a3, a3
                  slt         a2, tp, s3
                  addi        s4, s7, 564
                  sltu        s9, s3, s8
                  slt         sp, a6, a0
                  or          s1, a4, s3
                  lui         t0, 547645
                  c.srli      a3, 3
                  and         s11, a2, t0
                  or          ra, sp, a7
                  c.addi4spn  a3, sp, 944
                  c.lui       tp, 9
                  c.lui       s11, 9
                  and         a7, t2, s2
                  mulhsu      s4, s5, a2
                  slt         s9, s6, s4
                  slli        t3, s7, 27
                  c.lui       a0, 10
                  mulhsu      a6, a3, s6
                  lui         a7, 379839
                  andi        s0, a1, 25
                  xori        s5, t4, 382
                  c.nop
                  xor         zero, s11, t5
                  srai        t0, t0, 6
                  c.srai      a3, 11
                  c.xor       a1, a3
                  add         a6, a6, a3
                  mulh        s7, t0, s1
                  c.li        tp, -1
                  and         s8, t4, t6
                  c.sub       a3, a3
                  c.slli      ra, 10
                  andi        s10, a6, 291
                  c.and       a3, a3
                  or          a4, s5, t3
                  nop
                  c.srli      a3, 1
                  c.li        a3, 5
                  divu        s7, t4, a7
                  mulhu       zero, t0, s0
                  mulhsu      s5, t2, a3
                  mulhsu      t3, t3, t1
                  srli        s11, s1, 6
                  add         s6, t5, s2
                  andi        a3, gp, 128
                  c.srai      a4, 13
                  xori        s9, a6, 2027
                  auipc       s2, 838584
                  srli        s9, s8, 2
                  c.or        a3, a3
                  div         s1, s5, s2
                  xor         a3, s0, a0
                  sll         s9, ra, tp
                  c.addi16sp  sp, -16
                  srl         t1, s5, sp
                  c.sub       a2, a3
                  div         a1, tp, s10
                  sub         s11, s4, ra
                  xori        s1, a0, -181
                  c.xor       a3, a0
                  sll         zero, gp, s10
                  xori        zero, s10, 205
                  add         a3, t6, a3
                  divu        ra, s2, a4
                  slt         sp, zero, a6
                  sltu        s3, t3, a4
                  c.srli      a3, 16
                  add         zero, s0, t3
                  c.or        a3, a3
                  rem         a3, gp, zero
                  auipc       s2, 108661
                  or          zero, a7, s2
                  xor         a4, s1, t1
                  c.srli      a3, 8
                  rem         a0, a4, t6
                  srli        a1, t0, 17
                  mul         s6, t3, a6
                  sub         a7, ra, a5
                  auipc       t4, 1035884
                  sll         s10, a3, s7
                  lui         zero, 628857
                  slli        s1, s10, 2
                  andi        t2, s0, -640
                  sltiu       s10, t4, 1305
                  srl         s2, s7, s6
                  slt         s0, s1, a0
                  ori         t3, s3, 1093
                  mulhsu      zero, a5, tp
                  c.nop
                  mulh        a7, s10, a4
                  sll         zero, t0, s9
                  c.lui       ra, 9
                  slt         s9, zero, sp
                  sltiu       s9, s4, -271
                  c.addi16sp  sp, 144
                  c.addi16sp  sp, -16
                  ori         a0, sp, -672
                  xori        s8, a0, 919
                  nop
                  c.mv        s11, s10
                  or          s5, a0, a3
                  slt         t3, t5, s2
                  li         s4, 0x0 #start riscv_int_numeric_corner_stream_28
                  li         s9, 0x1
                  li         t3, 0x24c7e9f
                  li         a3, 0x0
                  li         s8, 0x1
                  li         s5, 0x1
                  li         s7, 0x1
                  li         t4, 0x0
                  li         s0, 0x0
                  li         s11, 0x12089bda
                  mulhu       s6, a0, s4
                  div         a4, t0, ra
                  rem         a7, t0, t6
                  rem         s3, a2, a5
                  c.nop
                  c.lui       gp, 25
                  c.addi4spn  a3, sp, 576
                  mulhu       s8, s1, a2
                  mulh        s4, s2, s8
                  c.sub       a3, a3
                  c.li        s6, 21
                  divu        s10, t6, a5
                  c.mv        tp, gp
                  lui         s4, 268625
                  mul         s10, gp, a4
                  c.li        ra, 13
                  c.mv        a3, sp
                  sub         a4, s5, a3
                  c.addi4spn  a3, sp, 128
                  sub         zero, t4, a1
                  c.addi16sp  sp, -16
                  c.nop
                  c.addi4spn  a3, sp, 384
                  nop
                  add         t2, a5, ra #end riscv_int_numeric_corner_stream_28
                  mulh        tp, s8, tp
                  divu        a6, ra, s11
                  c.srai      a3, 2
                  nop
                  add         tp, s2, s1
                  c.addi4spn  a3, sp, 352
                  mulh        t4, t2, t1
                  sub         t1, s8, s8
                  sra         a4, s1, a5
                  ori         sp, a5, -1268
                  sll         s7, a7, s10
                  c.andi      a3, -1
                  xor         s2, s4, s6
                  c.xor       a3, a3
                  c.mv        a6, a3
                  sll         s3, t2, s11
                  c.addi      sp, -1
                  c.addi16sp  sp, -16
                  c.and       a3, a3
                  rem         t3, a3, t1
                  c.addi16sp  sp, 64
                  c.xor       s0, a3
                  sltu        s1, a6, s5
                  divu        s0, a1, sp
                  srli        s3, s10, 8
                  rem         s2, s10, sp
                  sub         a0, ra, s4
                  xor         t0, zero, t0
                  lui         s2, 811382
                  or          s7, sp, s5
                  divu        t0, s6, t3
                  sra         t4, a7, s7
                  c.li        ra, -1
                  c.mv        ra, s9
                  srai        zero, a4, 1
                  mulhu       s0, s2, t3
                  divu        tp, s0, s2
                  mulhsu      gp, s7, s7
                  or          s2, t2, gp
                  slt         s8, s11, t2
                  c.slli      ra, 21
                  c.xor       a3, a1
                  and         t3, s1, a6
                  lui         ra, 643173
                  mulhu       gp, s1, s7
                  or          a2, s10, ra
                  xor         sp, t3, tp
                  xor         t0, t5, t2
                  srl         s6, zero, a3
                  c.addi4spn  a3, sp, 352
                  c.addi4spn  a3, sp, 464
                  c.addi      s9, 22
                  c.nop
                  xor         ra, ra, a5
                  xor         zero, t3, a6
                  c.srli      a2, 4
                  slti        a6, zero, 302
                  c.slli      sp, 15
                  mulh        s8, a7, t3
                  div         s7, s10, sp
                  or          gp, zero, zero
                  mulhu       s2, gp, s4
                  mul         a3, s3, s6
                  or          s11, a5, s10
                  auipc       s7, 747438
                  lui         ra, 26013
                  c.li        gp, -1
                  c.addi16sp  sp, 80
                  c.addi16sp  sp, 336
                  c.srli      a2, 13
                  mul         s6, s1, a0
                  mulhu       a4, a5, s1
                  addi        a0, gp, -759
                  and         a3, s2, a5
                  slt         a3, s4, tp
                  c.addi      a2, 7
                  rem         tp, s10, t2
                  sltu        a6, s5, t3
                  sra         s9, s4, t2
                  c.sub       a4, a3
                  add         s6, gp, s11
                  sltu        a2, a6, a6
                  srai        s7, s6, 8
                  lui         s5, 901392
                  c.addi16sp  sp, 256
                  and         s0, s9, ra
                  c.nop
                  ori         tp, s2, 1806
                  srai        a2, t6, 15
                  srl         s7, s0, t6
                  addi        a1, s1, -461
                  sltiu       a7, gp, -734
                  divu        a2, a3, a2
                  div         a1, zero, s5
                  c.or        a3, s1
                  xor         a0, a0, ra
                  c.and       a3, a3
                  c.nop
                  sra         s6, t6, zero
                  sltiu       a7, a2, 239
                  slt         s9, a2, t3
                  c.li        a3, 12
                  slli        a6, s10, 8
                  c.addi4spn  a3, sp, 704
                  auipc       s6, 400716
                  c.li        t4, 20
                  sll         t0, t3, t4
                  sub         zero, t3, a0
                  sltiu       a4, tp, -1723
                  c.addi      t0, -1
                  c.srli      s1, 16
                  c.sub       a3, a3
                  c.mv        s6, t4
                  srl         s2, a1, t2
                  ori         a1, s5, -135
                  or          t0, a4, tp
                  slti        s7, a5, -1734
                  c.srli      a3, 7
                  c.li        a7, -1
                  srl         s5, a3, s6
                  div         a7, s6, tp
                  c.add       s4, t5
                  srai        a1, s6, 1
                  auipc       zero, 470972
                  and         t0, s5, ra
                  lui         a0, 469431
                  c.mv        a2, t0
                  slli        s11, t6, 27
                  c.addi      s9, -1
                  div         t1, s1, a1
                  mulhsu      t0, s5, t5
                  mulh        zero, s3, a2
                  andi        s2, ra, 52
                  c.slli      s2, 8
                  mulhu       s0, tp, t0
                  divu        s7, s2, s6
                  andi        s2, a6, 832
                  c.or        a3, s1
                  c.sub       a3, a3
                  c.xor       a3, a3
                  ori         sp, s2, -1492
                  addi        zero, s7, 969
                  srl         s7, t5, ra
                  xor         t2, a1, s11
                  c.addi      s0, 20
                  slli        s2, zero, 3
                  c.srli      a3, 16
                  srli        s2, a1, 11
                  c.add       s4, t0
                  sub         a6, s5, a1
                  slt         s11, s1, a0
                  c.slli      gp, 1
                  c.andi      a0, 5
                  c.addi4spn  a3, sp, 832
                  andi        t2, a5, -1566
                  srl         zero, s11, gp
                  srli        zero, s5, 2
                  divu        a2, s5, a4
                  div         s6, a2, t5
                  and         t3, s3, t2
                  c.and       a2, a3
                  sltu        a0, s10, s1
                  c.mv        t4, ra
                  c.slli      tp, 16
                  srai        s1, s10, 28
                  c.sub       a3, a2
                  slti        s6, sp, 689
                  div         s0, s11, s8
                  sltiu       a7, zero, 181
                  slt         s10, s10, t4
                  slti        ra, a1, -742
                  slti        zero, t2, 539
                  c.and       a3, a3
                  c.srli      a3, 8
                  and         zero, a4, a3
                  xor         a7, t5, a3
                  c.mv        s2, ra
                  slti        t0, zero, -13
                  c.nop
                  c.andi      a3, 1
                  sltiu       sp, a6, 1387
                  add         a1, s6, s7
                  xori        zero, tp, -1047
                  c.srai      a2, 28
                  rem         t2, s2, a6
                  and         s1, s7, a2
                  slli        sp, s4, 21
                  c.or        a3, a3
                  auipc       s1, 480995
                  divu        t1, s4, a3
                  mulhu       zero, a6, t5
                  c.slli      s6, 3
                  sltu        s1, s11, a1
                  c.or        a3, a3
                  c.add       s2, a3
                  nop
                  srai        s5, s1, 11
                  srli        s9, a2, 25
                  div         t3, t4, a6
                  c.mv        ra, s2
                  c.addi      s4, -1
                  c.mv        s2, s6
                  mulh        zero, t5, s3
                  and         a4, t3, s3
                  c.srai      a4, 12
                  addi        t4, s10, -1040
                  auipc       zero, 707426
                  slt         a4, s4, a1
                  c.or        a3, a3
                  c.srai      a3, 2
                  srl         s0, s2, t4
                  and         zero, a0, tp
                  slt         a4, t5, s1
                  or          s5, a7, a3
                  c.nop
                  c.and       a3, a3
                  c.addi      a4, 15
                  mulh        s3, s10, s8
                  c.li        a0, 26
                  sltu        a2, s0, s7
                  sltiu       s10, zero, -1536
                  slli        t2, s4, 10
                  addi        t4, s5, 1400
                  sub         a2, t3, t0
                  c.addi16sp  sp, -16
                  mulhu       a7, s1, s3
                  c.andi      a0, -1
                  auipc       s1, 359441
                  xori        s7, s6, -1906
                  mulh        a4, ra, t5
                  c.slli      a2, 17
                  c.sub       a2, a3
                  slti        a3, t0, 890
                  slli        a6, a5, 10
                  c.or        a3, a3
                  srli        t2, a7, 20
                  and         s0, a1, s0
                  div         a6, t1, a0
                  c.xor       s1, a3
                  c.xor       a3, a2
                  c.addi16sp  sp, 128
                  sltu        ra, gp, s0
                  div         t4, t3, t2
                  c.mv        s6, s4
                  sub         t3, s2, ra
                  c.addi4spn  a3, sp, 896
                  c.nop
                  srli        t4, s10, 19
                  srai        ra, sp, 14
                  c.slli      s8, 29
                  c.nop
                  c.or        a3, a3
                  c.and       a3, a5
                  c.and       a3, a3
                  c.or        s1, a3
                  c.andi      a3, -1
                  sltu        s9, s2, s6
                  c.andi      a3, 8
                  div         zero, s10, sp
                  c.andi      a3, 10
                  srl         a3, a5, a2
                  or          sp, t3, s8
                  and         zero, s3, a1
                  divu        s6, a5, t5
                  xor         t3, s7, s9
                  xori        gp, s8, -768
                  c.li        s8, -1
                  c.add       t4, s7
                  sltu        zero, s10, t3
                  c.mv        a1, a1
                  c.addi16sp  sp, 352
                  c.add       ra, gp
                  xor         t1, s6, s9
                  srai        a6, a2, 15
                  srl         s3, a6, tp
                  c.nop
                  rem         a2, t6, s8
                  srai        ra, s8, 15
                  c.addi16sp  sp, -16
                  c.or        a3, a3
                  lui         a1, 334041
                  c.and       a3, a3
                  mulhu       a0, s7, a1
                  mul         t0, t3, a1
                  c.lui       ra, 19
                  li         t0, 0x0 #start riscv_int_numeric_corner_stream_24
                  li         t4, 0x0
                  li         t3, 0x0
                  li         s11, 0x0
                  li         a1, 0x1
                  li         s3, 0x1
                  li         a0, 0x1
                  li         s10, 0x0
                  li         a3, 0x354bba1f
                  li         t2, 0x1
                  c.lui       tp, 5
                  c.addi4spn  a3, sp, 832
                  divu        s9, s2, s3
                  divu        zero, a4, t4
                  mulhsu      t1, tp, sp
                  c.add       s4, t2
                  nop
                  auipc       a2, 118725
                  c.addi16sp  sp, -16
                  rem         a1, t0, gp
                  c.nop
                  nop
                  c.li        t1, 17
                  rem         s4, a5, s9
                  mul         s10, t0, t0
                  sub         gp, a3, t6
                  divu        t2, t6, tp
                  c.add       a6, s11
                  c.addi16sp  sp, 240
                  c.addi4spn  a3, sp, 576
                  rem         a7, s6, t0
                  c.addi      t3, 23
                  c.addi4spn  a3, sp, 640
                  c.nop
                  c.lui       a4, 5
                  sub         s6, t2, a7
                  addi        s8, s8, 795
                  c.nop
                  ori         t3, s5, 44
                  c.sub       a1, a3
                  c.srai      a3, 6
                  slt         a1, a1, s2
                  andi        sp, tp, -196
                  nop
                  srl         s10, a0, s7
                  c.addi      t4, 23
                  mul         s2, s7, tp
                  rem         a3, t2, s1
                  c.slli      s3, 9
                  c.nop
                  sltu        a3, a4, a3
                  c.xor       a3, a3
                  andi        s9, t0, -852
                  srl         a0, s9, a2
                  lui         sp, 35629
                  or          s2, s6, zero
                  slli        ra, a3, 10
                  c.and       a3, a3
                  and         ra, s0, s3
                  and         s8, s1, a2
                  divu        s10, t4, a0
                  sltu        a0, t5, s5
                  srl         s2, a0, tp
                  slt         t4, zero, s0
                  c.srli      a3, 2
                  mul         s0, s0, s0
                  slli        sp, s11, 1
                  addi        a3, a4, -844
                  nop
                  slti        t2, s2, 1526
                  sub         a2, gp, a3
                  sll         s11, s6, a2
                  mulh        zero, s0, t2
                  mulhsu      sp, s10, t2
                  c.or        s1, a3
                  c.and       a3, a3
                  and         zero, s9, a5
                  nop
                  slli        t0, a1, 10
                  or          t2, a5, sp
                  c.add       a1, ra
                  slti        t2, s2, -1358
                  addi        zero, a1, 1364
                  slti        a6, t1, -195
                  auipc       s11, 517518
                  mulhu       zero, s3, s7
                  c.lui       ra, 7
                  c.li        a6, -1
                  divu        s11, s1, s11
                  srl         s7, t5, a4
                  c.mv        a6, s4
                  c.and       a3, a5
                  c.or        s0, a0
                  or          s2, s7, s1
                  srli        a4, s10, 13
                  mulh        zero, t6, s10
                  nop
                  sltiu       zero, sp, 816
                  addi        a4, t4, -1843
                  srai        tp, t3, 13
                  addi        sp, t4, -1122
                  c.slli      s1, 26
                  or          tp, s11, s4
                  auipc       s2, 520102
                  andi        zero, t0, -1114
                  sub         s8, a1, sp
                  sltu        s10, t1, t2
                  divu        tp, t4, s8
                  srl         a4, tp, gp
                  c.andi      a3, 29
                  divu        a2, a2, a5
                  xor         a2, a6, a6
                  c.andi      a3, -1
                  mul         tp, a1, t0
                  sltu        s1, a7, ra
                  c.add       a1, t3
                  c.add       ra, s6
                  c.srli      a3, 14
                  slti        zero, a0, 1847
                  or          ra, s9, s9
                  nop
                  or          gp, s9, s6
                  xor         s8, s8, t2
                  c.add       s0, t6
                  c.andi      a3, -1
                  sltiu       t3, gp, 1657
                  ori         s7, s8, 1181
                  c.and       a3, a3
                  mulhu       t1, s3, a2
                  mulhu       s8, sp, gp
                  c.andi      a3, 2
                  c.and       a1, a3
                  srli        zero, t1, 26
                  c.mv        s9, s5
                  div         t4, a3, a6
                  c.slli      ra, 23
                  nop
                  c.srli      a2, 29
                  or          tp, s8, a4
                  srai        s5, s0, 25
                  c.andi      a3, -1
                  xor         ra, t4, a0
                  or          s10, gp, a4
                  sltu        s8, s1, s0
                  mulh        s6, t4, ra
                  c.add       s9, s8
                  c.slli      s1, 10
                  srai        a2, s7, 28
                  mulhsu      s11, t5, t3
                  and         sp, t1, s7
                  auipc       a0, 838991
                  rem         s0, a4, t4
                  slti        a2, a4, 1638
                  slli        gp, s6, 14
                  mulhsu      a4, sp, s11
                  c.add       a7, s1
                  c.srli      a2, 11
                  slt         zero, s5, s4
                  c.addi16sp  sp, -16
                  add         sp, a7, a7
                  c.lui       a3, 3
                  mulh        t1, s1, t3
                  c.addi16sp  sp, 64
                  sll         zero, t2, a4
                  c.srai      a3, 19
                  add         gp, a0, a5
                  nop
                  slli        s7, sp, 2
                  mulhu       zero, zero, t6
                  mulhu       s10, sp, t0
                  ori         s11, s10, 1279
                  c.addi      a2, 30
                  andi        s7, s2, -1879
                  sra         s9, a5, s7
                  c.srli      a3, 14
                  slti        ra, a1, -1735
                  slti        s4, zero, 1600
                  sll         t1, a4, s10
                  srli        s3, s7, 1
                  c.nop
                  c.andi      a3, 1
                  sub         s5, a3, s6
                  lui         tp, 825283
                  mulhu       s10, s11, a1
                  addi        a7, a7, 1830
                  srai        s3, s8, 13
                  c.srli      a3, 6
                  slli        zero, a7, 26
                  slt         t0, t3, s2
                  c.nop
                  slti        a1, a0, 285
                  add         zero, t1, s6
                  slt         s2, zero, a6
                  sra         zero, s1, gp
                  c.nop
                  xori        t0, s7, -1863
                  add         t2, a5, t6
                  c.andi      a3, -1
                  andi        s9, s6, -1407
                  c.andi      a3, 19
                  ori         zero, a0, -35
                  and         t2, ra, sp
                  c.or        a3, a3
                  c.srli      a3, 16
                  andi        s7, a7, 1665
                  add         s1, a4, a6
                  c.li        gp, -1
                  c.or        a3, a3
                  xor         gp, s3, a6
                  srli        s5, a6, 17
                  c.add       gp, a1
                  slti        a4, s6, -819
                  c.sub       a4, a3
                  c.or        a3, a3
                  srai        sp, a0, 10
                  srai        zero, a3, 17
                  c.slli      t3, 16
                  slti        a3, tp, 1164
                  rem         zero, s4, s4
                  add         s2, ra, s11
                  sub         zero, s2, a6
                  sll         a3, a4, t5
                  lui         s8, 12666
                  xor         s7, sp, t0
                  sltiu       a3, a3, 157
                  c.or        a3, s0
                  c.sub       a3, a3
                  mulhu       a0, s5, t2
                  addi        a4, s10, -1306
                  mulhu       a3, a1, a5
                  c.nop
                  c.xor       a3, a3
                  c.addi16sp  sp, 112
                  mulh        a6, gp, zero
                  c.andi      a3, 17
                  xori        sp, a2, 1610
                  xor         a4, sp, s3
                  c.andi      a3, 18
                  c.xor       a3, a3
                  divu        s10, t0, s11
                  c.nop
                  c.or        a3, a3
                  c.addi4spn  a3, sp, 320
                  ori         s7, t6, 686
                  divu        a7, s1, t6
                  c.mv        ra, a5
                  c.lui       s5, 5
                  sltiu       s5, t0, -29
                  srli        t3, s1, 22
                  c.lui       a1, 31
                  mul         t4, a4, t6
                  and         s1, s11, t4
                  c.nop
                  addi        s4, a5, -911
                  slti        s2, ra, 2035
                  mulh        s7, gp, sp
                  rem         t0, t0, tp
                  sltiu       a2, a5, 1478
                  c.addi      s7, -1
                  srl         sp, s11, t0
                  slti        s4, a0, -1946
                  sra         s0, a0, s3
                  rem         s9, t0, s9
                  c.slli      s5, 17
                  add         zero, a1, a1
                  mulhu       s5, t1, a7
                  mul         a0, s9, s0
                  andi        gp, a5, 1710
                  addi        s9, s1, 95
                  mul         a0, s8, t4
                  c.andi      a4, -1
                  lui         s4, 163846
                  c.sub       a4, a3
                  c.xor       a3, a3
                  c.mv        t3, s8
                  c.andi      a3, 16
                  div         s2, s0, t0
                  andi        t3, gp, -753
                  c.mv        s7, s5
                  slt         t2, s1, s2
                  addi        a0, a7, -1849
                  mulhu       s6, t6, a2
                  sra         s10, s1, s0
                  c.sub       a3, a3
                  or          gp, s9, a0
                  sra         t2, t2, a3
                  slti        a2, t3, -1502
                  slt         s0, a6, t1
                  auipc       s4, 51794
                  slti        a2, s4, 772
                  c.slli      ra, 9
                  div         zero, t5, ra
                  srl         t2, sp, s10
                  or          s4, t3, s7
                  slt         a4, s5, t6
                  c.srli      a3, 5
                  rem         t2, t4, s2
                  divu        s9, a6, s1
                  c.srai      a3, 5
                  c.srli      a2, 30
                  c.add       s6, tp
                  mulhu       a4, a7, a0
                  c.srli      a3, 11
                  c.srai      a3, 31
                  slli        t0, s1, 1
                  c.addi      a4, -1
                  c.addi16sp  sp, 16
                  srai        a2, a7, 29
                  lui         a3, 681171
                  srai        a1, a7, 22
                  c.addi16sp  sp, -16
                  slli        ra, a6, 29
                  mulhsu      s0, t3, sp
                  andi        s3, a0, 1963
                  rem         a0, s4, t5
                  slli        sp, s10, 0
                  c.nop
                  auipc       a7, 961016
                  c.add       ra, s5
                  c.li        a4, 0
                  c.lui       s1, 13
                  divu        s9, s0, s9
                  sub         t3, a0, a2
                  slti        a3, a7, 1133
                  add         a3, s5, a4
                  div         s9, s9, a3
                  mulhu       a2, t3, a2
                  c.sub       a3, a3
                  sra         a3, zero, t5
                  c.mv        a3, t1
                  c.li        s4, -1
                  addi        s1, t3, 1772
                  srai        s9, gp, 26
                  xori        s6, t1, -295
                  divu        t4, s7, s8
                  c.addi16sp  sp, 320
                  sll         zero, s3, s9
                  c.and       a3, s1
                  c.lui       a1, 14
                  c.sub       a3, a3
                  c.li        a1, -1
                  c.mv        ra, s11
                  srl         a1, s6, a2
                  c.srai      a3, 29
                  mulhu       s3, t1, ra
                  auipc       s9, 562642
                  mulh        s2, a2, a3
                  rem         s8, a5, sp
                  sltu        s11, a5, t6
                  mulhsu      t3, s8, a6
                  c.addi      t3, -1
                  div         t2, t0, a5
                  c.lui       s0, 11
                  divu        s6, t3, s11
                  rem         zero, a1, gp
                  and         a4, zero, s0
                  c.xor       a3, a3
                  sll         a6, a2, zero
                  slli        s1, a7, 24
                  addi        sp, a3, 1345
                  srli        s11, ra, 23
                  lui         zero, 93791
                  srai        s11, s3, 26
                  c.srai      a3, 8
                  ori         ra, s11, 1439
                  c.andi      a4, 15
                  nop
                  srl         s1, a3, t3
                  addi        t3, s7, 694
                  c.mv        s7, t0
                  c.srli      a3, 7
                  addi        gp, s5, 419
                  divu        t4, s7, sp
                  andi        s8, a6, 1196
                  slti        a3, t6, 1104
                  or          s5, s6, t2
                  addi        s10, s6, -254
                  slli        s4, s7, 22
                  lui         t2, 502855
                  c.xor       a2, a0
                  c.andi      a3, 9
                  srli        s7, t4, 28
                  c.or        a3, a3
                  c.sub       a3, a3
                  c.lui       s11, 11
                  c.srli      a3, 16
                  and         s7, s2, t3
                  c.xor       a3, a3
                  c.add       a1, s7
                  c.sub       a3, s1
                  c.li        s5, -1
                  c.nop
                  c.xor       s1, a3
                  div         a6, a7, s10
                  divu        s9, s9, a1
                  slli        sp, s10, 0
                  srl         s11, a5, a5
                  c.addi      s7, -1
                  or          zero, a0, a7
                  c.nop
                  c.nop
                  slti        gp, s6, 1248
                  sltu        a0, a3, gp
                  c.sub       a3, a3
                  c.sub       a3, a3
                  c.addi16sp  sp, 192
                  srai        gp, t4, 18
                  c.srai      a3, 29
                  slti        a7, a6, -134
                  add         s3, zero, s5
                  add         tp, t6, a2
                  li         a7, 0x0 #start riscv_int_numeric_corner_stream_8
                  li         t4, 0x0
                  li         t3, 0x0
                  li         s11, 0x3964108b
                  li         s4, 0x0
                  li         a2, 0x0
                  li         t1, 0x0
                  li         s0, 0x0
                  li         s10, 0x0
                  li         s7, 0x0
                  mul         gp, t1, t1
                  c.li        ra, 22
                  c.addi4spn  a3, sp, 864
                  c.addi4spn  a3, sp, 272
                  c.addi      t2, 14
                  addi        gp, s11, -709
                  c.lui       s8, 31
                  rem         zero, s2, t1
                  c.sub       a3, a3
                  add         t2, t4, s11
                  mulh        t1, s6, a0
                  c.nop
                  auipc       s7, 389399
                  c.addi16sp  sp, 320
                  c.lui       gp, 1
                  mulh        tp, s9, tp
                  c.li        a7, 28
                  mulhsu      s6, a5, t5
                  c.sub       a3, a3
                  c.sub       a3, a3
                  c.add       ra, a0
                  c.mv        s11, t6
                  c.mv        gp, t3
                  mulh        s10, s5, t5
                  add         a2, s3, a6
                  addi        sp, s6, 1289
                  c.sub       a3, a3
                  rem         t0, t6, s11
                  mul         s1, s6, s2 #end riscv_int_numeric_corner_stream_8
                  c.addi16sp  sp, -16
                  c.andi      s0, -1
                  mulhu       a4, a4, a6
                  auipc       zero, 365935
                  ori         a7, s4, 108
                  c.srai      a3, 14
                  auipc       t2, 828372
                  xori        a0, a6, 33
                  c.srli      a3, 3
                  slt         zero, s2, t3
                  ori         t2, a6, -2036
                  sltu        zero, s5, s1
                  mulh        a7, a2, a3
                  slti        ra, zero, 415
                  slt         s11, s6, s1
                  c.mv        s0, a4
                  mulhu       gp, s7, a2
                  nop
                  sll         s4, s7, a5
                  c.addi16sp  sp, -16
                  srl         t1, a5, s7
                  mulhu       s11, t2, s2
                  mulh        s10, s2, s11
                  addi        t3, gp, -1887
                  c.xor       a3, a3
                  c.lui       s8, 1
                  div         s7, tp, gp
                  andi        a0, s9, -346
                  div         zero, t3, a1
                  slli        a4, s1, 7
                  sltu        t1, gp, s10
                  mulh        t4, s0, s3
                  sll         s7, a2, t2
                  xor         s6, a1, s5
                  mulhsu      t3, gp, a6
                  xor         a7, t2, gp
                  sub         s5, s7, a5
                  and         s7, a5, s7
                  xor         s9, t4, s1
                  mul         a1, t1, a3
                  add         zero, s6, s2
                  sltiu       s4, s0, -1788
                  c.lui       s5, 24
                  sll         s7, t0, a4
                  andi        zero, s10, 1659
                  sll         ra, s9, s3
                  add         s3, a1, t1
                  addi        tp, a0, -1888
                  slt         zero, s4, t4
                  lui         gp, 275388
                  sll         a3, t3, s6
                  lui         zero, 482561
                  sltu        t2, s10, s2
                  sub         s1, a2, a6
                  xori        a4, a6, 1186
                  sub         s6, ra, t2
                  andi        t3, s5, -925
                  sra         zero, ra, t2
                  c.add       ra, t4
                  c.nop
                  c.xor       a3, s1
                  ori         s6, t0, -1379
                  or          t0, s9, s7
                  c.and       a3, s1
                  c.mv        s8, a3
                  c.srai      a3, 11
                  c.addi16sp  sp, -16
                  sll         t1, a5, a1
                  mulhsu      sp, t2, a7
                  andi        a4, s8, -331
                  auipc       a0, 311501
                  xori        s11, s10, -1522
                  srl         s7, t5, a7
                  c.addi4spn  a3, sp, 320
                  xori        a0, zero, 28
                  add         s2, s6, ra
                  add         ra, a5, s1
                  c.srli      a4, 24
                  or          t2, a0, a5
                  c.add       s4, t2
                  c.mv        a6, s10
                  c.srli      a3, 17
                  srl         tp, s5, t2
                  c.lui       t3, 26
                  c.srai      a3, 31
                  div         s3, s11, s1
                  srli        s1, t2, 22
                  c.nop
                  sltu        s2, sp, s6
                  c.nop
                  c.addi4spn  a3, sp, 112
                  slt         t1, a4, t4
                  c.sub       a3, a3
                  c.addi4spn  a3, sp, 960
                  c.addi16sp  sp, 480
                  slti        s4, a1, 349
                  sub         ra, a2, tp
                  c.or        a3, a0
                  sltu        s6, a2, s3
                  srai        tp, t2, 3
                  c.slli      ra, 26
                  sltiu       a6, a5, -1070
                  auipc       a6, 280695
                  c.add       a0, s3
                  auipc       t1, 321756
                  c.nop
                  mul         ra, a7, t1
                  srai        t4, a6, 15
                  c.addi4spn  a3, sp, 640
                  lui         a6, 865285
                  nop
                  c.srai      a3, 20
                  c.srai      a3, 2
                  sub         a0, s10, s5
                  c.srli      a1, 28
                  c.addi4spn  a3, sp, 128
                  c.slli      a1, 9
                  c.add       s2, ra
                  xori        sp, s2, -1944
                  c.addi4spn  a3, sp, 896
                  srli        s1, t4, 11
                  div         t0, gp, t0
                  srli        tp, s5, 8
                  c.xor       a3, a3
                  c.and       a3, a3
                  sll         s0, tp, t1
                  c.addi      s9, 15
                  sub         a7, s0, s8
                  c.xor       a3, a3
                  mul         a7, tp, s11
                  addi        s7, a4, -374
                  mulhsu      a2, ra, gp
                  addi        s6, t2, 1180
                  c.lui       ra, 5
                  nop
                  rem         zero, zero, sp
                  c.li        s4, -1
                  rem         s1, s2, s3
                  add         s5, ra, t5
                  mul         gp, s10, s11
                  rem         t0, s2, s10
                  c.andi      a1, 30
                  xori        ra, t3, -1881
                  div         a0, s4, s5
                  addi        gp, a0, 1071
                  c.li        a6, 13
                  c.slli      s3, 4
                  srai        s2, t3, 7
                  nop
                  slt         s4, a4, t5
                  slt         s9, tp, a3
                  srl         s1, t6, a0
                  c.and       a1, a2
                  c.li        a2, 31
                  sltu        tp, a0, sp
                  c.and       a3, a3
                  c.andi      a3, -1
                  mulhu       a7, a5, sp
                  c.addi4spn  a3, sp, 384
                  sll         s5, s1, a6
                  c.sub       a3, a2
                  sll         a3, t6, a1
                  auipc       a7, 753235
                  c.or        a3, a3
                  or          t0, t4, s0
                  sra         a4, a6, t6
                  nop
                  c.srli      a3, 29
                  c.and       a3, a2
                  slt         s11, s10, s8
                  srli        t3, s10, 0
                  add         s10, t6, s5
                  srl         t4, a5, s3
                  c.li        ra, -1
                  lui         tp, 492352
                  srai        t2, s3, 21
                  srli        a4, s3, 20
                  c.sub       a3, a3
                  c.mv        s4, s8
                  srai        zero, s8, 16
                  srl         a3, zero, s9
                  nop
                  sltiu       gp, tp, 1244
                  andi        s11, s10, -1093
                  srl         a0, gp, s5
                  c.nop
                  c.sub       a3, a3
                  mulhu       sp, s2, s6
                  c.mv        s9, s6
                  add         s4, t5, t0
                  c.srli      a3, 4
                  slti        s8, a0, 639
                  sltu        a0, sp, zero
                  srl         t1, s0, s10
                  srai        ra, s3, 20
                  auipc       t3, 280872
                  c.lui       s0, 26
                  c.and       a3, s1
                  mulhsu      s8, t6, zero
                  sra         t1, s4, s3
                  mulhsu      t3, t2, t0
                  xori        zero, s0, -1532
                  c.slli      s10, 9
                  sra         s1, t2, zero
                  and         t3, t3, s7
                  c.addi4spn  a3, sp, 128
                  mulhsu      s10, s0, sp
                  lui         s7, 339200
                  slli        a1, tp, 10
                  slti        s3, gp, 478
                  c.slli      a6, 26
                  div         gp, s1, a6
                  divu        ra, s2, t2
                  c.slli      s9, 16
                  c.nop
                  or          t0, a6, tp
                  c.sub       a3, a3
                  c.slli      s7, 30
                  c.li        s8, -1
                  mulhsu      zero, t3, ra
                  srai        ra, ra, 4
                  c.andi      a3, -1
                  addi        zero, s0, -656
                  c.addi4spn  a3, sp, 640
                  c.addi      a2, 11
                  sltu        s9, a7, s3
                  c.addi4spn  a3, sp, 832
                  slli        s0, a3, 22
                  c.and       a3, a2
                  c.addi16sp  sp, 80
                  addi        s9, sp, -1944
                  slt         s9, t0, a0
                  div         s3, zero, t3
                  c.xor       a3, a3
                  divu        s6, s1, s4
                  addi        s9, a5, -1185
                  c.lui       ra, 26
                  slti        a3, t2, 2002
                  c.or        a3, a1
                  c.addi4spn  a3, sp, 64
                  c.nop
                  sltiu       a6, t3, -571
                  c.xor       a3, a5
                  sll         s5, s10, a7
                  lui         s9, 434364
                  auipc       a2, 38381
                  slli        zero, t4, 28
                  c.andi      a3, -1
                  sll         s4, s11, t4
                  add         zero, t0, t4
                  c.nop
                  c.lui       ra, 4
                  srl         s6, a1, zero
                  mul         t4, s4, a1
                  c.li        ra, 6
                  auipc       s8, 997514
                  c.andi      a3, 21
                  add         zero, s8, s10
                  c.li        tp, 6
                  srl         t3, s11, a6
                  c.slli      a6, 27
                  mulhu       zero, t6, t4
                  mulhsu      t3, s6, s11
                  divu        a6, s4, s7
                  xor         s1, a0, s5
                  mul         sp, a3, s5
                  auipc       t2, 373025
                  c.mv        gp, s10
                  sltiu       sp, s6, -958
                  auipc       s11, 632744
                  c.andi      s1, -1
                  sub         a2, s1, tp
                  ori         t0, t6, -1761
                  c.srai      a3, 8
                  c.xor       a3, a3
                  c.lui       t3, 29
                  xori        a2, s5, -1762
                  auipc       a0, 522066
                  slti        s3, tp, 1604
                  sra         s11, t6, t6
                  div         zero, s7, t3
                  nop
                  auipc       s11, 831684
                  ori         s10, gp, -1576
                  slti        s9, s3, -1374
                  sll         ra, s6, tp
                  c.nop
                  c.addi16sp  sp, -16
                  addi        zero, a6, -1129
                  c.slli      a7, 9
                  c.srli      a4, 8
                  c.sub       a3, a3
                  sub         zero, sp, s2
                  rem         t2, a5, s7
                  c.or        a3, a3
                  srl         s5, t4, t5
                  c.andi      a3, 27
                  srl         a0, s0, zero
                  andi        zero, s4, 721
                  c.srai      a0, 28
                  sub         s5, t6, ra
                  slt         s8, ra, t6
                  c.andi      a3, 25
                  srli        s8, s5, 29
                  addi        a7, a1, -1677
                  srai        t2, a3, 5
                  c.slli      a2, 25
                  c.li        sp, 16
                  c.li        s2, -1
                  c.lui       tp, 14
                  xor         zero, s2, t4
                  lui         sp, 478149
                  c.and       a3, a3
                  c.xor       a0, a3
                  sra         s8, s7, t6
                  mulh        a7, t0, s3
                  slti        a4, s1, -1543
                  c.and       a3, a3
                  mulhu       a6, s11, s1
                  c.mv        s3, a6
                  c.sub       a2, a3
                  c.sub       a3, a3
                  slli        a6, s5, 6
                  sltiu       t0, s8, -1633
                  mul         t0, s10, tp
                  xor         zero, zero, s5
                  sltiu       s0, s11, -1491
                  sltiu       a7, s4, 1587
                  sll         a3, zero, s1
                  c.srli      a3, 15
                  c.add       ra, s8
                  slti        a0, s9, 1423
                  c.slli      s10, 27
                  mulhu       s3, a3, s4
                  slti        s11, a3, 703
                  c.nop
                  c.mv        s9, a2
                  xori        a2, tp, -1288
                  sub         a2, t4, gp
                  add         s5, tp, s0
                  c.nop
                  c.li        t4, 14
                  mulh        a4, a1, t4
                  slti        s8, a0, 817
                  c.mv        ra, t5
                  slli        zero, t5, 26
                  xori        t3, gp, 2018
                  slti        zero, a5, -883
                  c.slli      ra, 27
                  srai        zero, s7, 21
                  ori         zero, s4, 821
                  c.or        a3, a3
                  c.mv        s9, s6
                  add         a2, s3, s6
                  c.and       a3, a3
                  c.addi4spn  a3, sp, 704
                  mulhu       t4, t5, s5
                  c.nop
                  c.nop
                  nop
                  sltiu       s10, t5, -23
                  addi        zero, a1, -699
                  mulhu       s9, s6, t5
                  or          a4, t4, s0
                  c.nop
                  c.srai      a3, 1
                  xor         s7, a7, s4
                  srli        a6, s3, 5
                  c.srai      a3, 2
                  sra         gp, t5, t5
                  c.xor       a3, a0
                  sltiu       t0, s2, -316
                  addi        a1, t4, 407
                  srai        a6, a4, 12
                  c.sub       a3, a3
                  slli        t2, gp, 14
                  mulh        zero, s3, t4
                  mulh        s8, s4, a7
                  c.andi      a3, 14
                  divu        zero, s11, a2
                  mulhu       tp, s11, t0
                  mul         a1, tp, ra
                  andi        a2, tp, 1552
                  divu        a1, a1, gp
                  mulhsu      s1, ra, a1
                  lui         s10, 269818
                  c.xor       a3, a3
                  nop
                  ori         a6, s0, -1767
                  c.li        t3, -1
                  sltu        s3, a2, s6
                  sll         a6, tp, s0
                  ori         a3, s10, -281
                  rem         t4, s8, t1
                  mul         a0, sp, a6
                  sll         s4, a7, a3
                  xori        a2, s6, 654
                  auipc       s10, 727339
                  c.add       s10, t6
                  c.lui       s11, 3
                  c.nop
                  srai        s5, t5, 9
                  c.addi      tp, -1
                  andi        tp, t4, 574
                  divu        a3, a2, s0
                  andi        s10, t2, -251
                  lui         ra, 459737
                  c.addi      s4, 1
                  div         s7, a1, s4
                  c.slli      ra, 2
                  srli        a2, s5, 0
                  c.nop
                  c.andi      a3, -1
                  lui         t3, 150344
                  nop
                  sll         a2, t5, s4
                  div         s11, s8, a3
                  ori         s0, t6, 1297
                  ori         sp, t1, -1103
                  mulh        a6, a4, s6
                  srl         s6, t1, t6
                  sll         t0, tp, s8
                  addi        s10, a7, 1617
                  lui         s10, 395994
                  add         zero, s2, t4
                  addi        a3, t4, -1623
                  sltiu       gp, a7, -961
                  xor         t4, a3, a4
                  sltiu       gp, zero, -1432
                  or          a2, s11, a6
                  and         t3, s10, t4
                  srli        a6, a2, 20
                  rem         a0, t1, tp
                  c.and       a2, a3
                  divu        s0, s10, a5
                  slt         s9, a2, zero
                  c.srli      a3, 27
                  slt         a1, s5, t3
                  ori         zero, s2, 179
                  c.lui       a4, 21
                  srli        t3, s10, 17
                  c.mv        a2, gp
                  andi        tp, s1, 794
                  sltiu       ra, a2, 1197
                  and         t1, s4, s11
                  srli        s0, s8, 3
                  addi        t4, a4, -1167
                  c.lui       s7, 19
                  sra         zero, s1, a1
                  xor         s10, s11, a7
                  slt         s6, s7, s8
                  c.srai      s1, 29
                  slt         ra, tp, a5
                  c.sub       a3, a3
                  c.lui       s6, 18
                  c.srli      a1, 27
                  srl         a6, t0, s4
                  slt         s10, s8, s0
                  srai        s2, t2, 10
                  mul         gp, s4, t3
                  c.addi      t1, -1
                  xor         s2, s7, s2
                  nop
                  xor         t0, s4, a6
                  c.add       s8, s4
                  c.add       a0, a3
                  sll         zero, s3, t2
                  sra         a0, t5, s1
                  c.andi      a3, -1
                  nop
                  mulhu       a3, a2, a2
                  nop
                  lui         t3, 150106
                  c.andi      s0, -1
                  and         t0, s7, a7
                  c.or        a3, a3
                  c.addi16sp  sp, 256
                  srl         zero, a3, a7
                  add         t1, s8, s6
                  andi        t2, a3, -1646
                  mulh        a2, s4, a1
                  auipc       a7, 1006430
                  c.lui       a0, 26
                  mul         s6, t6, s4
                  c.li        t2, -1
                  or          gp, gp, s3
                  mulh        s4, tp, t4
                  mulhsu      sp, a3, sp
                  sltu        a1, s10, t5
                  c.nop
                  add         a6, a7, s4
                  mul         gp, t1, a7
                  and         a1, a6, s3
                  c.addi16sp  sp, 272
                  xor         s1, s10, a4
                  slli        s2, s10, 24
                  div         s5, gp, s8
                  sltu        t4, s10, s7
                  c.or        a3, a3
                  mulhu       s5, a1, s5
                  c.lui       ra, 14
                  c.lui       ra, 2
                  mulhsu      a4, ra, t6
                  c.lui       ra, 5
                  rem         a3, s7, t1
                  c.srai      a3, 10
                  srl         a0, t2, t1
                  srl         s11, s0, t5
                  c.andi      a3, 25
                  sll         s9, s0, t3
                  c.mv        s1, s3
                  sltu        sp, s4, a1
                  mul         sp, s3, s9
                  and         ra, s9, s10
                  andi        t3, s0, 939
                  slli        zero, t1, 30
                  c.add       s5, s10
                  srl         t0, t3, a6
                  xori        t1, s7, -563
                  c.and       a3, a3
                  slt         s0, s8, s6
                  c.srli      a3, 20
                  c.mv        ra, a0
                  c.andi      a1, 28
                  sltu        sp, t6, s0
                  srli        s3, t1, 11
                  and         sp, s1, t1
                  xori        s4, a0, -768
                  sltu        t0, s6, s4
                  c.addi      s6, 4
                  slt         zero, sp, a0
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_1
                  li         t3, 0x1
                  li         a7, 0x0
                  li         s11, 0x0
                  li         a3, 0x0
                  li         s9, 0x0
                  li         s5, 0x0
                  li         s2, 0x31545264
                  li         t0, 0x1
                  li         s1, 0x0
                  div         s10, t6, t6
                  divu        ra, s11, t1
                  c.add       ra, t4
                  auipc       a1, 535853
                  mulh        s2, tp, s7
                  divu        s3, t6, s7
                  auipc       zero, 495378
                  mulhsu      s5, a0, t2
                  lui         s0, 422058
                  add         zero, s9, s10
                  divu        t3, s0, a4
                  lui         a2, 245983
                  c.add       s1, a5
                  c.addi16sp  sp, 240
                  auipc       zero, 507678
                  nop
                  c.sub       a3, a4
                  mulh        zero, s0, sp #end riscv_int_numeric_corner_stream_1
                  or          a1, t0, a1
                  c.add       sp, a6
                  nop
                  srli        ra, sp, 29
                  c.mv        t2, t0
                  addi        zero, a2, 1394
                  c.sub       a3, a3
                  xori        s4, a2, 1639
                  nop
                  srl         a3, s6, t4
                  mulhsu      s7, a2, a4
                  srai        t0, a2, 0
                  div         s10, ra, s8
                  sltiu       zero, a3, 704
                  c.addi4spn  a3, sp, 896
                  c.srli      a3, 7
                  c.slli      ra, 21
                  c.sub       a3, a1
                  c.or        a3, a3
                  srli        s6, s8, 24
                  c.sub       a3, a3
                  mulh        s2, a6, a5
                  c.srli      a3, 18
                  c.mv        s1, s9
                  c.srli      s0, 8
                  c.mv        s6, a2
                  divu        gp, s7, s2
                  slti        s3, gp, -896
                  c.lui       s4, 18
                  addi        sp, t4, 1027
                  and         s1, t6, s9
                  xori        s3, t4, 1741
                  c.and       a3, s1
                  c.lui       s10, 16
                  c.or        a0, a0
                  c.srai      a4, 28
                  xori        s4, s6, 540
                  slti        s7, t2, 204
                  slli        s3, s5, 1
                  or          t2, s5, t0
                  c.andi      a3, -1
                  or          s5, t5, t3
                  c.sub       a3, a2
                  xor         a2, s2, s5
                  c.slli      a2, 11
                  slti        zero, t0, 1677
                  slt         a1, s2, a1
                  c.nop
                  srli        ra, t3, 28
                  sub         t1, a0, t1
                  sltiu       s2, t4, 1608
                  c.and       a3, s1
                  mul         a3, a4, t2
                  andi        a1, s5, -353
                  slt         s2, tp, s11
                  c.sub       a3, a3
                  mulhu       s1, gp, s5
                  sltiu       s3, s1, -1446
                  c.and       a3, s1
                  sltu        t2, t6, t1
                  c.and       s1, a3
                  c.and       s0, a3
                  mulhu       s4, a7, s8
                  or          t2, ra, s3
                  srl         s10, s1, s1
                  c.srai      a3, 23
                  c.addi16sp  sp, -16
                  rem         t3, a2, t4
                  sll         a3, s6, s7
                  c.addi16sp  sp, -16
                  c.xor       a3, a3
                  mulh        a1, tp, t3
                  c.srai      a3, 21
                  add         s6, s2, t2
                  ori         t2, tp, 2031
                  c.slli      s4, 26
                  or          gp, tp, s8
                  c.srli      a3, 18
                  rem         a3, a0, t3
                  sub         tp, s4, tp
                  c.li        ra, -1
                  slli        t1, s1, 29
                  slt         s3, a7, s1
                  xori        s5, a6, -114
                  rem         t2, s9, t6
                  c.sub       a0, a3
                  c.srli      a3, 16
                  mul         gp, t6, s10
                  slti        t2, s1, -514
                  rem         sp, t4, a5
                  c.and       a3, a3
                  srli        s11, a7, 26
                  c.nop
                  c.addi16sp  sp, 48
                  c.addi16sp  sp, 16
                  c.addi4spn  a1, sp, 32
                  c.andi      a3, 27
                  c.lui       s4, 15
                  srai        sp, a3, 31
                  add         gp, t5, s9
                  c.add       s4, t4
                  c.sub       a3, a2
                  c.nop
                  and         a6, a3, zero
                  c.slli      sp, 20
                  ori         s5, s4, 1538
                  slt         s2, a0, s3
                  c.addi4spn  a3, sp, 576
                  sltiu       s11, s5, 1555
                  c.addi4spn  a3, sp, 864
                  xori        t0, sp, 1672
                  c.srli      a3, 31
                  ori         zero, s0, -1312
                  c.mv        s3, t1
                  auipc       s6, 203634
                  c.addi      s8, 24
                  c.sub       a3, a3
                  or          gp, s9, t4
                  c.andi      a3, 31
                  addi        a3, t3, -1816
                  sltu        s3, s1, t2
                  c.add       a0, s6
                  c.xor       a0, a3
                  nop
                  c.li        a3, 30
                  c.and       a1, a4
                  sub         t2, t2, s10
                  c.xor       s1, a3
                  or          s1, ra, ra
                  nop
                  slti        tp, a1, 1924
                  slti        zero, s10, -330
                  sll         gp, s4, s11
                  mulh        s2, zero, t3
                  or          s9, s5, s7
                  c.andi      a3, 18
                  sltu        ra, zero, a5
                  c.sub       a3, a3
                  c.lui       s0, 13
                  sltiu       s5, ra, 541
                  or          s8, sp, a1
                  slt         a4, t0, s0
                  xori        s11, s6, -1518
                  srli        a1, a7, 25
                  srl         s6, a2, s6
                  sub         a7, s7, s5
                  add         a0, s9, a5
                  c.add       s7, s4
                  srli        t2, t6, 3
                  div         s8, s2, a3
                  and         zero, gp, s5
                  rem         tp, s2, s10
                  c.sub       a3, a3
                  sra         a3, sp, t1
                  srli        a7, s10, 30
                  sltiu       t4, a2, 1114
                  sub         zero, s1, t4
                  auipc       ra, 83388
                  srl         a4, t4, t3
                  rem         s8, a5, t6
                  andi        t1, a6, -1468
                  c.add       s2, s2
                  slti        a2, s6, -1259
                  srli        s8, a5, 11
                  c.srai      a3, 26
                  divu        a1, s10, s10
                  srai        tp, s7, 26
                  slt         s11, s0, s9
                  c.srli      a3, 21
                  c.andi      a3, -1
                  mulh        tp, s1, s0
                  add         s10, s4, t1
                  mulhu       a0, t2, s6
                  mul         a1, t4, t4
                  xori        a4, s4, -1654
                  c.nop
                  sltiu       s6, a1, 997
                  sltu        s8, a6, s1
                  c.addi16sp  sp, -16
                  divu        s5, s2, ra
                  c.add       t4, s2
                  c.lui       t3, 23
                  mulhu       t0, a7, ra
                  sub         s11, t1, s8
                  slti        ra, t0, 945
                  sltu        sp, zero, s7
                  c.xor       a1, a3
                  c.li        s6, -1
                  nop
                  sltiu       t4, a2, -1739
                  c.lui       s8, 16
                  xor         t1, s2, s3
                  c.addi16sp  sp, -16
                  c.slli      s5, 13
                  ori         a6, s0, 695
                  nop
                  xori        s0, a0, 303
                  slt         s6, a1, sp
                  nop
                  c.lui       a7, 18
                  c.add       gp, a0
                  c.addi      s11, 4
                  or          s3, s6, tp
                  sll         zero, t4, s5
                  or          s7, a1, t5
                  mulhsu      s9, s7, zero
                  addi        s7, s7, -1705
                  c.and       a3, a5
                  c.or        s1, a3
                  c.addi4spn  a3, sp, 320
                  lui         zero, 205025
                  rem         s11, s5, a7
                  c.slli      s10, 20
                  c.addi16sp  sp, -16
                  and         s9, s7, gp
                  c.addi16sp  sp, 336
                  c.addi4spn  a3, sp, 640
                  srai        s10, t5, 1
                  c.addi16sp  sp, -16
                  c.xor       a3, a3
                  nop
                  c.sub       a3, s1
                  sltiu       s5, t5, 1568
                  auipc       sp, 761807
                  c.lui       ra, 8
                  c.li        s1, 30
                  c.andi      a3, 4
                  sltu        a6, s1, sp
                  rem         zero, s9, gp
                  c.or        a3, a3
                  c.andi      a2, 7
                  c.xor       a3, a3
                  slt         s3, s10, t5
                  srl         s0, a6, ra
                  or          s8, t0, t0
                  mul         s1, s9, s1
                  addi        a2, s5, -1721
                  srl         t4, t5, t5
                  or          zero, s6, s3
                  c.add       s4, t1
                  c.or        a3, a5
                  mulhu       a6, a0, t4
                  sltiu       s11, gp, -587
                  auipc       ra, 524248
                  and         s1, t1, a2
                  c.mv        s9, ra
                  and         a0, s5, t4
                  c.li        a2, 4
                  c.andi      a0, 0
                  mulhu       s0, a7, t2
                  sub         zero, tp, a6
                  rem         a0, t6, s9
                  slti        ra, t4, 85
                  mulhu       zero, t1, t5
                  divu        s8, a6, a6
                  c.srli      a3, 14
                  sub         tp, t6, s7
                  c.srai      a3, 21
                  c.addi4spn  a3, sp, 640
                  or          s8, t2, a4
                  slli        zero, a5, 25
                  srli        t2, t1, 21
                  mulh        zero, s7, s3
                  lui         sp, 614322
                  sltu        s11, a7, s7
                  srli        a6, zero, 15
                  srai        a7, s3, 17
                  xor         ra, a4, s3
                  auipc       gp, 285442
                  mulhu       t3, s11, s5
                  sltiu       zero, tp, 437
                  mul         a0, s0, s0
                  sub         t3, a1, t5
                  sra         s6, s10, zero
                  c.xor       a3, a3
                  mulhu       s11, s6, a7
                  srli        s4, a4, 20
                  nop
                  c.nop
                  div         a6, a4, t0
                  mulhsu      a1, t4, s6
                  mulh        gp, a6, t2
                  xor         t0, s6, s10
                  add         s5, s0, a5
                  sltu        gp, sp, a1
                  mulh        t1, a1, s11
                  nop
                  slli        a7, zero, 21
                  div         a0, s6, t1
                  c.mv        t3, s5
                  lui         zero, 587887
                  lui         s9, 790423
                  c.slli      t0, 1
                  addi        t0, s11, -1298
                  c.addi      t1, -1
                  sll         s3, s3, t0
                  add         s1, a6, a6
                  c.xor       a3, a3
                  rem         gp, s9, a2
                  sltiu       zero, s10, 1507
                  slti        t4, t5, 68
                  srai        a4, a0, 14
                  divu        zero, ra, ra
                  mulhu       s9, s3, t6
                  and         s5, t0, s9
                  xori        a0, a4, 232
                  c.addi4spn  a3, sp, 848
                  auipc       gp, 530236
                  c.nop
                  srli        s4, a1, 31
                  c.lui       s11, 5
                  xor         t3, a4, s3
                  slt         t1, s8, s4
                  c.lui       s6, 26
                  sltiu       zero, a0, -644
                  slli        zero, gp, 26
                  addi        s1, t3, -255
                  mulh        s1, tp, t1
                  add         zero, t6, a0
                  c.addi      sp, 13
                  c.srai      a3, 24
                  c.slli      t4, 23
                  c.nop
                  auipc       tp, 485843
                  slt         t0, tp, a0
                  c.xor       a3, a3
                  auipc       gp, 780569
                  c.slli      s2, 1
                  c.nop
                  sra         a6, s11, s0
                  add         a4, ra, t1
                  c.addi16sp  sp, -16
                  mul         zero, a2, s6
                  c.mv        tp, t2
                  c.srai      a3, 4
                  c.nop
                  rem         s5, t5, a5
                  slli        a4, a6, 6
                  c.andi      a3, 16
                  auipc       a3, 762825
                  c.srai      a4, 24
                  c.srli      a3, 1
                  c.mv        s9, s10
                  c.mv        a4, s4
                  andi        t1, t3, -66
                  sltiu       zero, a5, -1370
                  slli        s3, a3, 14
                  c.lui       ra, 15
                  c.sub       s0, s0
                  sll         ra, gp, s3
                  ori         s10, gp, 809
                  c.add       s10, s10
                  mulhsu      s5, a7, s0
                  xor         t0, t4, s7
                  sltu        a7, tp, sp
                  nop
                  c.li        s9, -1
                  c.lui       a2, 10
                  c.or        a3, a3
                  c.srai      a0, 16
                  c.mv        ra, t0
                  mul         s10, t4, gp
                  andi        a6, s3, 603
                  c.li        s9, -1
                  c.addi4spn  a3, sp, 128
                  sub         s11, t2, s0
                  c.addi4spn  a3, sp, 832
                  c.and       a0, a3
                  ori         a6, s2, -1051
                  srl         zero, t2, gp
                  addi        a4, s2, -1301
                  div         s6, a6, s4
                  sltu        t4, t4, s5
                  srai        s4, s6, 25
                  xor         s7, ra, s4
                  c.add       s1, s4
                  srli        tp, sp, 14
                  c.slli      s0, 12
                  c.or        a3, a3
                  mul         a7, s5, a5
                  srai        s4, ra, 9
                  c.addi      a1, -1
                  slti        a6, s9, 354
                  c.sub       a3, a3
                  slti        s7, s9, -1816
                  sltu        a7, a1, s3
                  c.xor       a3, a3
                  mulhu       s1, t1, a5
                  c.addi      tp, 11
                  sltu        a6, t1, gp
                  srl         s4, a7, s10
                  srai        t1, a4, 22
                  and         sp, s9, s8
                  divu        ra, s8, a2
                  c.andi      a3, 20
                  c.or        a3, a3
                  xori        a0, t3, -50
                  c.add       s0, ra
                  mulhu       s8, t0, s8
                  c.nop
                  mulh        t3, t1, zero
                  c.andi      a3, -1
                  c.srai      a2, 28
                  c.sub       a3, a3
                  srli        zero, a0, 19
                  c.nop
                  slt         a7, t0, s11
                  sltiu       s2, s9, 1518
                  c.nop
                  lui         s9, 673565
                  c.mv        a0, s3
                  c.or        a1, a3
                  c.xor       a3, a3
                  sub         s11, s11, t5
                  c.mv        t4, s6
                  rem         s11, a1, tp
                  mulhu       zero, t4, t4
                  mulhu       t1, ra, a0
                  c.or        a4, a3
                  c.andi      a4, 22
                  add         s5, a5, sp
                  c.srli      a3, 29
                  sra         zero, tp, t6
                  addi        sp, a5, -1396
                  c.andi      a1, -1
                  mul         s4, t6, s3
                  c.li        a4, -1
                  c.addi      t4, 6
                  divu        a4, a5, a2
                  lui         s8, 817205
                  c.andi      a3, -1
                  mulhsu      ra, s5, a5
                  c.xor       a3, a3
                  sltu        gp, s10, a6
                  divu        sp, s7, zero
                  srai        s1, a0, 13
                  addi        ra, s2, 789
                  srli        t1, tp, 8
                  xori        a6, s11, -499
                  nop
                  auipc       zero, 460189
                  c.sub       a3, a3
                  xor         zero, a1, a6
                  srl         t1, sp, sp
                  slti        zero, a4, 1324
                  c.lui       s2, 1
                  mulhsu      ra, s10, a0
                  c.addi16sp  sp, -16
                  slt         s3, a1, s7
                  slli        a1, s7, 11
                  c.nop
                  and         t4, s2, a4
                  srai        s9, s1, 18
                  sra         s0, s11, a0
                  lui         s8, 262352
                  srl         a4, a4, s0
                  ori         zero, t1, -1121
                  srl         s10, s3, a4
                  srl         t0, a6, a6
                  c.srai      a3, 25
                  rem         gp, s4, ra
                  sra         a0, t5, sp
                  c.addi16sp  sp, 144
                  xori        a7, s6, -415
                  c.lui       gp, 1
                  c.xor       a3, s1
                  sltu        s1, sp, zero
                  sltiu       a2, sp, 669
                  sub         s11, sp, t4
                  c.or        s0, a3
                  c.addi      a7, 21
                  srli        tp, t2, 14
                  sltu        s10, s6, s9
                  xor         s6, tp, a7
                  c.or        a3, a0
                  c.li        s6, 19
                  addi        s1, t4, -552
                  c.lui       s7, 28
                  xori        s4, a4, 1654
                  c.addi4spn  a4, sp, 128
                  c.and       a3, a3
                  c.and       a4, a3
                  sub         s0, ra, t5
                  c.li        s3, 21
                  sll         s7, a7, a7
                  c.addi      s3, 24
                  xori        t4, zero, 1839
                  c.addi16sp  sp, 112
                  mulh        zero, gp, t5
                  srli        zero, t6, 2
                  srl         zero, s5, t5
                  addi        tp, t4, -1493
                  add         s0, a3, s4
                  nop
                  c.li        s0, -1
                  c.xor       a2, a3
                  add         t4, gp, s6
                  srli        s6, s0, 15
                  mulh        t0, zero, t2
                  mulh        zero, t0, s3
                  c.and       a3, a3
                  c.mv        s0, t1
                  c.nop
                  srai        t1, a5, 31
                  sll         tp, s4, s0
                  slti        a1, s1, 1466
                  lui         t3, 575549
                  c.li        s2, 13
                  c.and       a3, a3
                  sra         t0, s9, s11
                  sltu        a1, a2, t6
                  or          s4, t0, s4
                  andi        s1, a1, 143
                  ori         a0, s5, -1533
                  c.and       a3, a3
                  or          gp, gp, s10
                  c.and       a3, a3
                  c.and       a3, a3
                  c.addi16sp  sp, 16
                  nop
                  xor         s2, a0, s6
                  c.nop
                  mul         a2, s7, s3
                  divu        s10, a2, s9
                  mulhsu      tp, s10, a4
                  c.andi      a3, -1
                  xor         s9, t6, s6
                  c.or        a1, a3
                  c.addi      s3, -1
                  c.mv        s0, ra
                  ori         s0, t4, -445
                  slt         a1, s5, s11
                  mulh        a6, s2, a1
                  sub         zero, s3, s10
                  andi        s11, s9, 1468
                  mul         t1, s7, t0
                  sltiu       t0, t0, 1780
                  ori         s2, s2, 564
                  c.addi      s5, -1
                  c.or        a3, a3
                  mul         s1, s2, tp
                  c.and       a3, s1
                  div         s6, a2, ra
                  add         t0, sp, t4
                  c.addi4spn  a3, sp, 128
                  c.srli      a3, 9
                  c.li        gp, 14
                  sub         a4, s8, a2
                  c.addi4spn  a3, sp, 64
                  mulhu       zero, t2, s3
                  divu        a1, s2, t2
                  srli        a2, s7, 12
                  c.and       a3, a3
                  c.addi      t3, 2
                  c.addi4spn  a3, sp, 320
                  c.slli      a2, 17
                  c.addi16sp  sp, 384
                  sub         t1, t2, s0
                  mul         a4, s9, a5
                  div         t1, t6, zero
                  c.add       gp, s8
                  srai        zero, a4, 21
                  div         tp, s6, s2
                  mul         zero, s9, t0
                  c.srai      a0, 11
                  or          s10, s0, a7
                  c.xor       a3, a3
                  c.lui       a1, 1
                  ori         s8, tp, -612
                  nop
                  mul         zero, s7, sp
                  slti        s3, tp, -323
                  mulhu       ra, a3, t1
                  xori        s6, s0, 1642
                  andi        s4, a7, -1687
                  sub         t0, t1, s10
                  or          s1, s1, a2
                  divu        s5, t6, t2
                  sra         t0, t4, a0
                  c.mv        ra, t0
                  mulhsu      a6, t1, gp
                  add         s0, s5, s11
                  andi        a1, s2, 1694
                  srai        a0, t5, 7
                  c.srli      a3, 15
                  divu        a7, a0, s9
                  xor         s10, s11, s6
                  nop
                  c.addi      t4, -1
                  lui         s5, 12120
                  rem         s7, a2, s8
                  c.addi4spn  s1, sp, 384
                  slli        t3, s7, 30
                  ori         zero, t6, -1111
                  c.addi16sp  sp, 80
                  sra         gp, s9, s5
                  and         t4, a6, ra
                  sll         s3, sp, s4
                  auipc       ra, 860697
                  mulhu       s0, t0, t2
                  slti        a6, t6, 1353
                  c.srli      a3, 19
                  srl         s3, s9, t5
                  c.mv        ra, s0
                  c.addi      t4, 20
                  xori        zero, a2, -1828
                  c.srai      a3, 7
                  divu        s2, sp, zero
                  c.and       a3, s0
                  andi        s4, t3, 1445
                  sltiu       t1, sp, -1717
                  mulhu       ra, a5, s1
                  and         ra, t3, s9
                  c.mv        a1, s11
                  xori        a4, a6, 611
                  c.addi      s3, -1
                  add         s4, s0, t2
                  sltu        s4, s5, t6
                  slti        a0, s5, 1512
                  c.xor       a3, a3
                  sra         a7, a0, a7
                  c.lui       s10, 11
                  xori        t1, a7, 1126
                  add         ra, s2, a5
                  xori        a0, t1, -177
                  srai        s11, tp, 13
                  slt         t1, a2, zero
                  c.addi      a6, 9
                  andi        a1, s10, 162
                  nop
                  c.andi      a3, -1
                  c.and       a3, a3
                  c.sub       a3, a3
                  slti        t4, t6, 1209
                  c.srai      a3, 3
                  mulhsu      a3, s0, a2
                  rem         a7, a7, a2
                  lui         s4, 608738
                  andi        gp, s11, 1229
                  or          a2, s5, a4
                  c.addi16sp  sp, 48
                  c.or        a3, a3
                  mul         gp, s4, zero
                  c.srli      a3, 10
                  sltiu       a3, a3, -1791
                  c.add       t0, s3
                  mulhu       s10, s8, t2
                  srli        zero, t6, 12
                  addi        s5, a3, 1741
                  c.slli      a1, 16
                  xor         s3, s10, t6
                  c.slli      a0, 21
                  c.li        s0, 13
                  auipc       t0, 686265
                  div         t4, s1, t3
                  c.lui       s3, 20
                  add         a0, t4, a0
                  srai        sp, s1, 7
                  c.sub       a3, a3
                  mulh        zero, zero, t5
                  c.addi      s2, 31
                  sub         t1, s2, t4
                  slli        tp, s1, 29
                  c.or        a3, a3
                  mulhsu      a1, s11, a3
                  srai        zero, s3, 2
                  sub         s3, tp, s11
                  add         zero, s7, s10
                  c.sub       a3, a3
                  xor         s9, tp, s8
                  rem         t3, a3, zero
                  mulh        ra, t2, a6
                  andi        s5, s7, -1852
                  c.or        a1, a3
                  sub         a6, t1, a7
                  auipc       zero, 538377
                  c.add       t2, t4
                  addi        zero, tp, 1221
                  nop
                  sll         ra, s3, gp
                  andi        s5, a1, -256
                  c.srai      a3, 26
                  slti        s9, sp, 1863
                  c.mv        t1, a3
                  sra         t0, a1, s10
                  rem         ra, a0, s8
                  c.lui       ra, 8
                  c.srai      a3, 17
                  c.addi16sp  sp, -16
                  c.add       t1, s8
                  nop
                  c.and       a3, a1
                  slli        s0, a6, 16
                  c.srli      a4, 15
                  c.slli      t2, 25
                  addi        s2, a2, 229
                  li         a6, 0x0 #start riscv_int_numeric_corner_stream_22
                  li         t4, 0x0
                  li         s11, 0x0
                  li         a1, 0x1
                  li         t3, 0x0
                  li         a4, 0x1
                  li         s10, 0x0
                  li         s8, 0x0
                  li         a0, 0x4ae7e19c
                  li         s9, 0x3c28eebd
                  divu        s4, t2, a2
                  div         ra, t1, a5
                  mulhsu      s4, sp, a1
                  div         zero, s2, a1
                  addi        zero, s5, -1656
                  div         s10, a7, t1
                  c.add       a0, t4
                  c.lui       ra, 7
                  divu        a7, s9, s9
                  auipc       s9, 860866
                  c.sub       a3, a3
                  c.addi16sp  sp, 400
                  c.mv        s0, a4
                  c.addi4spn  a3, sp, 384
                  c.li        t0, 23
                  c.sub       a3, s0
                  mulhsu      t2, a3, s7
                  rem         s11, ra, a6
                  div         a0, a0, s3 #end riscv_int_numeric_corner_stream_22
                  sll         t0, t6, a6
                  c.mv        a7, s8
                  sltu        t3, tp, t2
                  slli        zero, a7, 17
                  sltu        ra, s8, s7
                  srai        s10, t1, 19
                  mulhu       t1, zero, t1
                  c.li        s0, -1
                  li         t3, 0x1 #start riscv_int_numeric_corner_stream_32
                  li         a2, 0x13e6fb8f
                  li         s11, 0x0
                  li         a4, 0x75d3b7b1
                  li         t4, 0x1
                  li         a7, 0x1
                  li         s4, 0x0
                  li         s2, 0x0
                  li         s9, 0x13c939ba
                  li         s8, 0x6be06aec
                  div         t4, s5, t2
                  mulhsu      zero, a4, s7
                  mul         a4, s6, t2
                  c.li        s2, -1
                  mulhsu      a3, s10, sp
                  c.mv        s2, s2
                  c.addi16sp  sp, -16
                  mulhu       a4, s8, s6
                  c.nop
                  c.addi16sp  sp, -16
                  c.lui       gp, 18
                  mul         a2, a0, a0
                  c.nop
                  nop
                  lui         a6, 635983
                  mulhu       s8, a4, s0
                  add         s4, t5, t2
                  c.add       s11, s11
                  sub         s4, a2, s1 #end riscv_int_numeric_corner_stream_32
                  c.andi      a3, -1
                  c.and       a2, a3
                  sltu        a3, s8, a5
                  sltu        zero, t2, s2
                  sll         t1, s5, a5
                  srli        zero, a4, 29
                  sub         s10, s10, a1
                  add         zero, t0, s5
                  c.li        tp, -1
                  xori        s2, s0, 108
                  c.or        s1, a3
                  slti        zero, t4, -1148
                  nop
                  sltu        s9, s0, s4
                  sltu        a7, s7, s6
                  ori         a6, t1, -1973
                  nop
                  rem         t1, t3, s4
                  c.li        ra, 5
                  srli        gp, s0, 31
                  srai        gp, sp, 1
                  srl         gp, s1, s5
                  lui         s9, 254925
                  c.nop
                  sub         a2, a5, s0
                  and         sp, s8, t0
                  c.addi      t0, -1
                  mulh        a2, t5, ra
                  sltu        s1, s6, s4
                  divu        s5, a7, s11
                  mulh        s2, tp, s11
                  slti        t0, zero, -418
                  div         s5, s5, a3
                  xori        s6, gp, -1939
                  div         s2, a3, s11
                  mulhu       sp, s11, t1
                  auipc       t3, 921209
                  c.srli      a3, 21
                  c.addi4spn  a3, sp, 848
                  andi        a4, gp, 344
                  c.or        a3, a3
                  or          ra, s3, s7
                  c.addi16sp  sp, 160
                  andi        zero, a0, 766
                  lui         t1, 160590
                  slti        zero, ra, 730
                  c.lui       t1, 14
                  c.srai      a3, 25
                  c.mv        s5, s4
                  slt         ra, s11, tp
                  c.srli      a3, 10
                  auipc       t0, 427402
                  rem         t3, a2, a7
                  sub         s8, ra, zero
                  c.srai      a3, 2
                  c.or        a3, a3
                  c.sub       s0, a3
                  c.andi      a3, 3
                  c.srli      a3, 10
                  c.lui       t0, 4
                  c.addi16sp  sp, -16
                  c.slli      s8, 27
                  c.addi4spn  a1, sp, 384
                  c.sub       a3, a3
                  add         s2, a0, a1
                  c.sub       a3, a5
                  c.srai      a3, 5
                  c.nop
                  c.nop
                  c.addi4spn  a3, sp, 320
                  c.addi4spn  a3, sp, 64
                  auipc       s2, 956272
                  c.slli      t4, 9
                  srai        s1, s1, 26
                  c.slli      ra, 1
                  auipc       a3, 361691
                  c.sub       s1, a3
                  slt         a1, a7, a7
                  slti        a1, s3, 1146
                  andi        a6, s9, -822
                  c.addi16sp  sp, 480
                  div         s11, sp, a4
                  lui         t4, 400728
                  c.li        a7, -1
                  c.lui       s8, 8
                  and         t1, a3, t2
                  c.lui       s5, 19
                  addi        t0, t1, 1799
                  lui         a3, 292729
                  srli        s4, ra, 3
                  slli        zero, t6, 1
                  srl         s10, t1, s1
                  addi        a3, a1, -773
                  c.li        ra, 31
                  mul         s7, zero, t5
                  c.li        t4, -1
                  sltu        t0, a5, t2
                  c.sub       a3, a3
                  c.and       a2, a3
                  c.slli      s1, 7
                  c.slli      t1, 12
                  lui         a4, 648211
                  srl         s8, s11, s4
                  srai        zero, s8, 17
                  srai        s5, a6, 18
                  rem         s7, a2, s0
                  sll         zero, a6, s1
                  or          s5, s11, s4
                  mulhsu      s2, s11, ra
                  lui         t0, 485309
                  c.or        a3, a3
                  c.addi4spn  a3, sp, 384
                  c.addi      a3, -1
                  c.addi      s8, 18
                  c.srli      a3, 18
                  c.or        a3, a3
                  srl         t1, s9, t0
                  c.srli      a3, 16
                  rem         s6, s9, t5
                  c.li        a6, 11
                  c.addi4spn  a3, sp, 496
                  nop
                  mul         a3, s8, s6
                  c.slli      s6, 5
                  mul         t3, s11, a7
                  and         s0, s8, ra
                  srl         zero, t3, a0
                  c.add       a2, a1
                  or          t0, s0, s0
                  c.nop
                  sra         a0, t5, gp
                  nop
                  add         gp, a5, s2
                  xor         zero, s6, t4
                  mulh        sp, s4, s0
                  nop
                  c.li        s6, 12
                  and         a4, t5, gp
                  divu        sp, a4, zero
                  slt         ra, s1, s1
                  c.andi      a3, 5
                  nop
                  srl         s6, a6, a0
                  andi        gp, t2, -643
                  sll         zero, s2, s1
                  mul         s7, zero, s11
                  c.add       a3, s4
                  add         a4, a2, s8
                  divu        zero, s8, a1
                  add         a1, s10, zero
                  mulhu       a6, t4, t4
                  sra         a4, sp, a4
                  c.srai      a3, 27
                  mulh        zero, a3, tp
                  nop
                  sra         a1, a6, s7
                  ori         t4, t1, -1918
                  c.add       ra, t5
                  sltu        a4, a6, a7
                  mulh        zero, s0, s6
                  add         s9, t3, zero
                  srai        s7, a5, 22
                  mulhu       zero, a6, sp
                  srl         a7, t6, t0
                  c.slli      t0, 31
                  andi        zero, a5, 905
                  mulhsu      t2, s1, s3
                  and         a4, ra, t2
                  c.addi16sp  sp, 368
                  c.addi      s11, 14
                  and         a6, a4, t5
                  c.srai      a3, 31
                  sltu        s9, t3, a3
                  c.li        t4, -1
                  andi        a3, s1, -1747
                  slli        s4, s0, 8
                  auipc       zero, 563436
                  add         s8, s9, a4
                  slt         s5, t2, a0
                  slti        s8, ra, 991
                  mulhsu      a2, s3, t4
                  mul         zero, s6, s0
                  slli        s8, a5, 20
                  slt         a7, s10, a4
                  sll         s4, s5, t5
                  c.mv        a7, ra
                  c.addi      s6, -1
                  sltu        a3, a5, zero
                  or          s1, sp, a2
                  slli        s9, tp, 10
                  c.xor       a3, a3
                  c.srli      a3, 18
                  add         sp, s5, s6
                  sll         t3, s7, t1
                  rem         ra, t1, t5
                  xor         s10, t1, a4
                  slt         s9, a4, a0
                  sra         t4, gp, s0
                  slt         a1, tp, s10
                  div         ra, a2, s8
                  and         ra, t4, t1
                  mulhu       zero, s6, s10
                  c.addi4spn  a3, sp, 384
                  c.addi      gp, -1
                  sub         t2, s11, a7
                  c.andi      a3, -1
                  add         zero, sp, a2
                  c.xor       a3, a3
                  xori        a6, t6, 310
                  sltiu       a3, a2, 2
                  c.and       a3, a3
                  c.addi4spn  a0, sp, 288
                  div         s7, t2, tp
                  c.srli      a3, 23
                  auipc       t1, 725529
                  sll         a0, t1, gp
                  mulhu       a2, s5, s4
                  c.andi      a1, -1
                  c.add       s6, t1
                  xori        zero, a0, 148
                  mulhsu      gp, t4, t4
                  srl         s10, s11, t5
                  sltiu       t0, s4, 1941
                  div         zero, t1, a3
                  mulhsu      a3, tp, s3
                  andi        t1, t2, 71
                  mulh        ra, s5, s4
                  addi        a0, s10, -1596
                  sra         t3, a7, t4
                  auipc       a1, 638807
                  ori         a1, a7, -589
                  xor         s0, t0, s11
                  add         s5, s9, a7
                  c.addi      s6, 1
                  mulhu       s3, t0, s6
                  add         s7, a5, zero
                  sltu        a2, ra, a1
                  c.nop
                  or          s7, a2, t1
                  c.srai      a3, 15
                  sub         tp, s0, a2
                  lui         s0, 818660
                  sra         zero, s9, a7
                  c.nop
                  mulh        s11, t1, s10
                  lui         t0, 406446
                  ori         s11, a4, -1313
                  rem         t0, a7, t6
                  slli        zero, t1, 2
                  rem         zero, s3, s5
                  c.addi      t2, 1
                  or          sp, s11, sp
                  c.add       s0, a2
                  srl         gp, a4, a5
                  xori        tp, a7, 750
                  xori        s3, s2, 1147
                  c.mv        a3, s11
                  and         gp, s7, s5
                  add         s0, s4, t6
                  sll         a1, zero, s3
                  srai        t0, t3, 23
                  sltu        s1, s2, tp
                  c.addi16sp  sp, -16
                  srai        s8, a5, 9
                  sll         s0, t2, t0
                  slt         t1, s0, a6
                  nop
                  srli        t0, a2, 24
                  sra         s3, s11, a3
                  add         a4, a7, s5
                  andi        zero, a0, -1376
                  or          ra, t1, t2
                  c.add       a6, t6
                  auipc       zero, 615461
                  mulhsu      a3, a3, sp
                  lui         zero, 570160
                  lui         t2, 93037
                  slli        t1, a4, 26
                  c.xor       a3, a3
                  divu        zero, t2, t2
                  nop
                  c.nop
                  mulhsu      s9, a1, s0
                  slti        t2, s11, -962
                  c.sub       a3, a3
                  sltiu       s11, a7, 2017
                  mulhu       a4, s9, s4
                  srli        s5, t2, 12
                  or          s10, s11, sp
                  divu        s1, a5, s6
                  c.slli      s8, 19
                  slli        s8, a7, 1
                  lui         s6, 1032500
                  mulhsu      t4, sp, s6
                  srl         a4, s4, t1
                  c.addi16sp  sp, 240
                  div         ra, t2, a6
                  sra         zero, s2, a6
                  lui         ra, 139277
                  divu        a6, t2, t5
                  and         t3, s6, a1
                  c.lui       s0, 13
                  c.xor       a3, a3
                  c.lui       s8, 30
                  c.xor       a3, a3
                  addi        s3, t3, -1365
                  add         s2, ra, s9
                  sub         s6, s0, s7
                  c.or        a3, a3
                  mulh        s9, s0, a2
                  rem         s1, a6, a0
                  sltiu       zero, s1, 153
                  srai        sp, s9, 15
                  sll         s1, t5, ra
                  c.and       a1, a3
                  nop
                  c.addi      s10, 7
                  c.mv        a6, t6
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_33
                  li         s6, 0x0
                  li         tp, 0x1c699454
                  li         t3, 0x0
                  li         s11, 0x1
                  li         s10, 0x37c3e244
                  li         t2, 0x0
                  li         s2, 0x0
                  li         a0, 0x7b5f5e6f
                  li         s9, 0x1
                  c.nop
                  mulhu       zero, t4, a3
                  add         sp, s6, t0
                  c.mv        t3, a5
                  addi        zero, sp, 1760
                  sub         s7, s1, s2
                  mulhu       s6, zero, a4
                  c.addi4spn  a1, sp, 128
                  nop
                  c.add       s9, t2
                  mul         s5, s9, a0
                  c.addi      s8, 2
                  sub         t4, s10, t0
                  c.sub       a3, a3
                  lui         s2, 648936
                  c.nop
                  mulh        s10, a0, s5
                  mulh        t3, a4, a1
                  add         s5, t2, s11
                  mulh        zero, tp, t0
                  mulhu       t4, s8, t5
                  c.addi      gp, 15
                  div         s10, s7, a1
                  sub         zero, a5, a5
                  lui         s11, 972681
                  c.addi4spn  a3, sp, 576
                  auipc       a2, 394285
                  rem         s5, a2, t1 #end riscv_int_numeric_corner_stream_33
                  xori        zero, a1, -350
                  c.addi4spn  s0, sp, 896
                  srl         s10, t0, tp
                  slti        tp, s9, 1070
                  sltu        t2, a0, s0
                  and         a7, s10, s0
                  slt         a1, a3, t4
                  c.nop
                  sltu        s5, zero, s1
                  c.or        a3, a3
                  sltiu       t4, s3, 1497
                  andi        a0, s5, 288
                  sra         t2, s11, tp
                  sub         s6, a0, s4
                  srai        a7, gp, 20
                  sll         t0, zero, zero
                  c.li        t3, 13
                  c.andi      a0, 2
                  slli        s8, a3, 27
                  auipc       tp, 1023079
                  la x15, test_done
                  jalr x0, x15, 0
test_done:        
                  li gp, 1
                  ecall
write_tohost:     
                  sw gp, tohost, t5

_exit:            
                  j write_tohost

instr_end:        
                  nop

.section .data
.align 6; .global tohost; tohost: .dword 0;
.align 6; .global fromhost; fromhost: .dword 0;
.section .user_stack,"aw",@progbits;
.align 2
user_stack_start:
.rept 4999
.4byte 0x0
.endr
user_stack_end:
.4byte 0x0
.align 2
kernel_instr_start:
.text
.align 2
mtvec_handler:    
                  csrrw x31, 0x340, x31
                  add x31, x30, zero
                  1: addi x31, x31, -124
                  sw x1, 4(x31)
                  sw x2, 8(x31)
                  sw x3, 12(x31)
                  sw x4, 16(x31)
                  sw x5, 20(x31)
                  sw x6, 24(x31)
                  sw x7, 28(x31)
                  sw x8, 32(x31)
                  sw x9, 36(x31)
                  sw x10, 40(x31)
                  sw x11, 44(x31)
                  sw x12, 48(x31)
                  sw x13, 52(x31)
                  sw x14, 56(x31)
                  sw x15, 60(x31)
                  sw x16, 64(x31)
                  sw x17, 68(x31)
                  sw x18, 72(x31)
                  sw x19, 76(x31)
                  sw x20, 80(x31)
                  sw x21, 84(x31)
                  sw x22, 88(x31)
                  sw x23, 92(x31)
                  sw x24, 96(x31)
                  sw x25, 100(x31)
                  sw x26, 104(x31)
                  sw x27, 108(x31)
                  sw x28, 112(x31)
                  sw x29, 116(x31)
                  sw x30, 120(x31)
                  sw x31, 124(x31)
                  csrr x14, 0x300 # MSTATUS
                  csrr x14, 0x342 # MCAUSE
                  srli x14, x14, 31
                  bne x14, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x14, 0x341 # MEPC
                  csrr x14, 0x342 # MCAUSE
                  li x23, 0xb # ECALL_MMODE
                  beq x14, x23, ecall_handler
                  li x23, 0x2 # ILLEGAL_INSTRUCTION
                  beq x14, x23, illegal_instr_handler
                  csrr x23, 0x343 # MTVAL
                  1: la x15, test_done
                  jalr x1, x15, 0

ecall_handler:    
                  la x14, _start
                  sw x0, 0(x14)
                  sw x1, 4(x14)
                  sw x2, 8(x14)
                  sw x3, 12(x14)
                  sw x4, 16(x14)
                  sw x5, 20(x14)
                  sw x6, 24(x14)
                  sw x7, 28(x14)
                  sw x8, 32(x14)
                  sw x9, 36(x14)
                  sw x10, 40(x14)
                  sw x11, 44(x14)
                  sw x12, 48(x14)
                  sw x13, 52(x14)
                  sw x14, 56(x14)
                  sw x15, 60(x14)
                  sw x16, 64(x14)
                  sw x17, 68(x14)
                  sw x18, 72(x14)
                  sw x19, 76(x14)
                  sw x20, 80(x14)
                  sw x21, 84(x14)
                  sw x22, 88(x14)
                  sw x23, 92(x14)
                  sw x24, 96(x14)
                  sw x25, 100(x14)
                  sw x26, 104(x14)
                  sw x27, 108(x14)
                  sw x28, 112(x14)
                  sw x29, 116(x14)
                  sw x30, 120(x14)
                  sw x31, 124(x14)
                  la x15, write_tohost
                  jalr x0, x15, 0

illegal_instr_handler:
                  csrr  x14, 0x341
                  addi  x14, x14, 4
                  csrw  0x341, x14
                  lw x1, 4(x31)
                  lw x2, 8(x31)
                  lw x3, 12(x31)
                  lw x4, 16(x31)
                  lw x5, 20(x31)
                  lw x6, 24(x31)
                  lw x7, 28(x31)
                  lw x8, 32(x31)
                  lw x9, 36(x31)
                  lw x10, 40(x31)
                  lw x11, 44(x31)
                  lw x12, 48(x31)
                  lw x13, 52(x31)
                  lw x14, 56(x31)
                  lw x15, 60(x31)
                  lw x16, 64(x31)
                  lw x17, 68(x31)
                  lw x18, 72(x31)
                  lw x19, 76(x31)
                  lw x20, 80(x31)
                  lw x21, 84(x31)
                  lw x22, 88(x31)
                  lw x23, 92(x31)
                  lw x24, 96(x31)
                  lw x25, 100(x31)
                  lw x26, 104(x31)
                  lw x27, 108(x31)
                  lw x28, 112(x31)
                  lw x29, 116(x31)
                  lw x30, 120(x31)
                  lw x31, 124(x31)
                  addi x31, x31, 124
                  add x30, x31, zero
                  csrrw x31, 0x340, x31
                  mret

pt_fault_handler: 

.align 2
mmode_intr_handler:
                  csrr  x14, 0x300 # MSTATUS;
                  csrr  x14, 0x304 # MIE;
                  csrr  x14, 0x344 # MIP;
                  csrrc x14, 0x344, x14 # MIP;
                  lw x1, 4(x31)
                  lw x2, 8(x31)
                  lw x3, 12(x31)
                  lw x4, 16(x31)
                  lw x5, 20(x31)
                  lw x6, 24(x31)
                  lw x7, 28(x31)
                  lw x8, 32(x31)
                  lw x9, 36(x31)
                  lw x10, 40(x31)
                  lw x11, 44(x31)
                  lw x12, 48(x31)
                  lw x13, 52(x31)
                  lw x14, 56(x31)
                  lw x15, 60(x31)
                  lw x16, 64(x31)
                  lw x17, 68(x31)
                  lw x18, 72(x31)
                  lw x19, 76(x31)
                  lw x20, 80(x31)
                  lw x21, 84(x31)
                  lw x22, 88(x31)
                  lw x23, 92(x31)
                  lw x24, 96(x31)
                  lw x25, 100(x31)
                  lw x26, 104(x31)
                  lw x27, 108(x31)
                  lw x28, 112(x31)
                  lw x29, 116(x31)
                  lw x30, 120(x31)
                  lw x31, 124(x31)
                  addi x31, x31, 124
                  add x30, x31, zero
                  csrrw x31, 0x340, x31
                  mret;

kernel_instr_end: nop
.align 2
kernel_data_start:
.section .kernel_stack,"aw",@progbits;
.align 2
kernel_stack_start:
.rept 4999
.4byte 0x0
.endr
kernel_stack_end:
.4byte 0x0
