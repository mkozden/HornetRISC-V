.include "user_define.h"
.globl _start
.section .text
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x14, h0_start
jalr x0, x14, 0
h0_start:
                  li x31, 0x40001104
                  csrw 0x301, x31
kernel_sp:        
                  la x28, kernel_stack_end

trap_vec_init:    
                  la x31, mtvec_handler
                  ori x31, x31, 0
                  csrw 0x305, x31 # MTVEC

mepc_setup:       
                  la x31, init
                  csrw 0x341, x31

init_machine_mode:
                  li x31, 0x1c00
                  csrw 0x300, x31 # MSTATUS
                  li x31, 0x0
                  csrw 0x304, x31 # MIE
                  mret
init:             
                  li x0, 0x0
                  li x1, 0xf5a0d501
                  li x2, 0xe
                  li x3, 0xf3e8140a
                  li x4, 0x80000000
                  li x5, 0xfa6bd488
                  li x6, 0x2
                  li x7, 0xefdbf2d4
                  li x8, 0x8a6a20bb
                  li x9, 0xd05a87d0
                  li x10, 0x0
                  li x11, 0x0
                  li x12, 0x80000000
                  li x13, 0x56efe258
                  li x14, 0x80000000
                  li x15, 0x4
                  li x16, 0x0
                  li x17, 0x0
                  li x18, 0x6cebf904
                  li x19, 0x80000000
                  li x20, 0x6
                  li x21, 0x80000000
                  li x22, 0x8286a7a9
                  li x23, 0x6bb35eef
                  li x24, 0x80000000
                  li x25, 0x0
                  li x26, 0x0
                  li x27, 0x0
                  li x29, 0x80000000
                  li x31, 0xf6ae6296
                  la x30, user_stack_end
main:             li         s6, 0x1 #start riscv_int_numeric_corner_stream_2
                  li         t6, 0x287fa098
                  li         t4, 0x0
                  li         gp, 0x0
                  li         s11, 0x1
                  li         a1, 0x0
                  li         s10, 0x0
                  li         s3, 0x0
                  li         a7, 0x0
                  li         s9, 0x0
                  mul         zero, s11, t3
                  c.nop
                  c.addi16sp  sp, -16
                  c.mv        ra, a1
                  c.addi16sp  sp, -16
                  lui         a7, 923607
                  div         gp, a3, a3
                  c.sub       a3, a3
                  nop
                  auipc       s4, 432034
                  lui         zero, 764470
                  c.addi      s7, 1
                  addi        t4, s9, 170
                  c.nop
                  c.nop
                  sub         zero, s10, a6
                  mulhsu      s8, s10, s8
                  mulhsu      zero, s3, a4
                  c.nop
                  c.add       sp, s0
                  slli        zero, sp, 19
                  c.mv        tp, s2
                  sll         t1, s10, s0
                  c.or        a3, a3
                  xor         s9, zero, s1
                  c.andi      a3, 6
                  andi        s7, ra, 333
                  or          t0, s7, a6
                  c.lui       s2, 21
                  ori         zero, t2, 523
                  ori         sp, a3, 747
                  nop
                  c.srai      a0, 30
                  addi        s6, t2, -211
                  slti        zero, tp, -1423
                  sub         s1, s9, tp
                  sltiu       a7, a0, -18
                  sltu        sp, ra, t6
                  c.lui       gp, 10
                  c.addi16sp  sp, -16
                  mul         zero, s8, gp
                  c.and       a3, a3
                  or          a5, t5, s1
                  slt         s10, t0, a2
                  xori        a2, s3, -1395
                  ori         t4, t3, 1646
                  sltu        zero, a0, t4
                  sltiu       s8, a5, 14
                  c.li        a5, 5
                  addi        s0, s8, 353
                  srl         s5, s1, a5
                  ori         zero, a1, 1622
                  c.addi16sp  sp, 224
                  c.sub       a3, a3
                  c.slli      s9, 6
                  sltiu       zero, a0, -1519
                  c.xor       a3, a3
                  srli        s3, t2, 17
                  slti        s7, a3, -1907
                  sub         s5, s11, a0
                  xor         t0, s5, a2
                  c.addi      t1, -1
                  nop
                  c.addi16sp  sp, -16
                  mulhu       ra, a6, s2
                  c.and       a3, a3
                  c.lui       a6, 3
                  c.addi      t1, 23
                  divu        s8, t0, gp
                  c.or        a1, a3
                  slti        t1, s5, 995
                  c.addi4spn  a5, sp, 128
                  addi        s11, a3, 1499
                  srl         a3, s5, s8
                  c.addi16sp  sp, -16
                  lui         s5, 112138
                  nop
                  xor         a7, t0, t6
                  c.xor       a3, a3
                  c.add       s7, a7
                  mulhu       t1, a2, sp
                  c.sub       s0, a3
                  c.slli      s7, 25
                  c.and       a3, a3
                  c.slli      a2, 20
                  c.lui       t1, 2
                  c.sub       a3, s1
                  c.or        a1, a3
                  divu        s6, s2, s8
                  xori        a0, s8, 600
                  c.mv        t2, s1
                  and         s11, a2, t5
                  slli        s4, s9, 24
                  c.lui       a2, 29
                  c.nop
                  c.srai      a3, 25
                  c.add       t2, ra
                  addi        s8, t6, -1082
                  mulh        s11, s10, t0
                  c.slli      s10, 1
                  slt         s7, a5, a5
                  or          a7, s4, s1
                  c.sub       a3, a3
                  c.addi4spn  a3, sp, 16
                  sltu        ra, a0, a7
                  sra         t4, tp, tp
                  c.add       s9, ra
                  and         zero, t6, a4
                  c.addi      a2, 21
                  c.mv        ra, s10
                  sltu        s8, s9, t0
                  and         s6, a7, s6
                  c.li        s2, -1
                  andi        s7, s10, 1572
                  c.and       a3, a3
                  c.addi16sp  sp, -16
                  sll         s4, s10, s10
                  c.lui       t4, 11
                  c.addi4spn  a3, sp, 400
                  nop
                  c.or        s0, a3
                  c.xor       a1, a3
                  c.srli      a3, 28
                  c.or        s1, a3
                  slt         s2, s4, t6
                  c.xor       a3, a3
                  addi        tp, s11, 503
                  srl         t1, a7, s2
                  mulhu       s7, s8, s10
                  sltiu       tp, a2, -93
                  divu        s11, t5, a5
                  slt         a2, a3, t6
                  mulhu       s6, a0, a6
                  xor         s7, t4, s4
                  mulhsu      t4, s2, t0
                  sub         sp, t5, s7
                  c.addi      ra, -1
                  add         a1, s9, a7
                  c.lui       a5, 26
                  rem         a5, tp, a5
                  rem         a7, a2, s7
                  c.mv        s2, s6
                  lui         zero, 240558
                  nop
                  srai        t6, t2, 20
                  sltiu       t6, s6, 979
                  c.srli      a3, 27
                  sll         zero, a3, a5
                  sltiu       s9, s1, 1325
                  c.lui       s8, 4
                  nop
                  slli        t4, t0, 11
                  c.and       a3, a3
                  c.li        s1, -1
                  c.addi4spn  a3, sp, 832
                  div         s2, a0, s0
                  c.andi      a3, 27
                  div         t1, s3, t1
                  c.add       s1, a1
                  mul         ra, a3, zero
                  addi        s7, s1, 1405
                  rem         s9, s10, a1
                  c.mv        s3, a1
                  rem         a3, s2, a4
                  c.addi16sp  sp, 240
                  c.or        a3, a3
                  slli        s0, s3, 1
                  c.xor       a3, a3
                  mul         ra, a4, a5
                  xor         t4, t0, tp
                  mulhu       zero, s4, t5
                  rem         zero, t5, s2
                  addi        s4, gp, 1026
                  srl         a3, a5, t1
                  c.mv        t0, a1
                  c.addi16sp  sp, 32
                  add         a6, s3, t1
                  c.and       a3, a3
                  mul         s2, tp, a1
                  c.lui       s0, 13
                  sra         a2, s8, t6
                  c.nop
                  sub         sp, t3, t5
                  add         zero, a3, s4
                  c.addi4spn  a3, sp, 704
                  sll         t1, t0, t0
                  c.nop
                  slti        t1, tp, 481
                  sll         ra, a3, gp
                  c.srli      a3, 10
                  c.mv        s11, s10
                  srli        sp, a4, 26
                  c.andi      a3, 14
                  slt         t0, t2, t2
                  and         s5, tp, a3
                  ori         zero, s9, -1601
                  sltiu       s7, s2, -612
                  c.and       a3, a3
                  xori        s11, a1, -1173
                  and         zero, zero, s5
                  srl         s7, a2, s4
                  sll         s4, zero, a2
                  c.slli      s9, 31
                  li         gp, 0x697c74e4 #start riscv_int_numeric_corner_stream_1
                  li         t6, 0x0
                  li         t4, 0x0
                  li         s1, 0x0
                  li         s11, 0x2d0c65ca
                  li         s8, 0x1
                  li         s9, 0x0
                  li         t2, 0x6e64e97a
                  li         s10, 0x0
                  li         a1, 0x0
                  mulhu       zero, t2, s4
                  div         s8, s7, s6
                  c.nop
                  c.sub       a3, a3
                  c.addi16sp  sp, -16
                  mulh        s8, a4, a7
                  c.addi      a1, 19
                  c.sub       a2, a3
                  c.addi4spn  a3, sp, 320
                  c.addi      s7, 26
                  div         a7, s5, sp
                  div         a1, a1, a7
                  lui         s7, 775264
                  divu        tp, a2, t5
                  mulhu       s3, t2, a6
                  mulhsu      t1, s1, ra
                  c.lui       s7, 21
                  add         s3, t2, zero
                  c.addi4spn  a3, sp, 320
                  c.addi16sp  sp, 96
                  divu        s3, s6, a3
                  c.lui       s4, 8
                  div         zero, gp, s5
                  sub         s8, zero, s8
                  rem         ra, s10, s10
                  mulhsu      zero, t0, s5
                  c.add       a0, t3
                  mulhu       s4, t3, tp
                  c.addi      s8, 10
                  mulh        s0, s2, zero #end riscv_int_numeric_corner_stream_1
                  sltiu       s7, t3, -1903
                  sltiu       sp, t6, -1510
                  srli        zero, s2, 29
                  rem         s11, t3, s2
                  lui         sp, 770552
                  sub         s11, a4, a5
                  sub         s8, tp, s6
                  c.addi      s2, 6
                  auipc       ra, 940038
                  c.addi16sp  sp, -16
                  c.slli      ra, 30
                  sltiu       zero, t6, 1681
                  c.or        a3, a3
                  sltiu       s1, a1, -704
                  ori         zero, s1, 555
                  slli        sp, tp, 7
                  nop
                  andi        a2, s2, 1705
                  c.addi      a3, 6
                  sra         s11, a7, s4
                  c.sub       a3, a3
                  slti        sp, s10, 75
                  sltu        a1, sp, t2
                  lui         zero, 78069
                  c.addi      s9, -1
                  c.srli      a3, 21
                  sll         s0, a2, s0
                  srli        ra, s10, 23
                  sub         a0, t5, t2
                  sltiu       sp, tp, -1803
                  mulhu       t1, t1, a7
                  c.mv        s9, sp
                  c.mv        s1, a3
                  mul         a0, a4, a5
                  c.sub       a3, a3
                  add         s10, a2, s3
                  c.add       a6, s3
                  c.add       a7, s2
                  c.or        s1, a3
                  nop
                  xori        a1, s0, 200
                  c.xor       a3, a3
                  xori        a1, s4, -1757
                  mul         zero, s1, ra
                  mulhu       tp, s3, t5
                  auipc       a6, 620485
                  andi        t0, s6, -1115
                  addi        zero, s2, 712
                  lui         a7, 771757
                  ori         a3, s5, -1728
                  sra         zero, sp, s5
                  c.slli      s10, 25
                  lui         a6, 816755
                  sll         s4, a4, gp
                  sra         t0, sp, t4
                  c.add       s10, ra
                  or          ra, s0, zero
                  xor         ra, s4, t2
                  andi        a0, s9, -1300
                  lui         s11, 906
                  xor         s4, a2, sp
                  sltu        ra, sp, s4
                  rem         tp, s3, t4
                  mul         a0, s11, t0
                  c.xor       a3, a5
                  c.slli      t4, 26
                  sra         a2, s10, tp
                  c.addi4spn  a3, sp, 576
                  slli        t0, s5, 1
                  sub         s0, zero, t5
                  sub         s5, gp, a4
                  c.slli      s10, 11
                  mulhsu      t4, t5, s0
                  slti        gp, t2, 1756
                  xori        gp, t4, 880
                  c.slli      s3, 26
                  srai        s7, gp, 10
                  mulhu       gp, s4, s11
                  srl         s4, s2, a6
                  srl         t2, sp, a7
                  slti        a7, a2, 1888
                  srli        s6, a2, 28
                  div         s10, t2, t4
                  sltu        zero, gp, s1
                  c.add       tp, a6
                  sra         ra, tp, a1
                  slli        a2, ra, 31
                  sub         ra, t4, a2
                  mul         t2, s5, s6
                  c.srai      a3, 7
                  c.sub       a3, a3
                  c.mv        a0, t1
                  c.lui       s0, 6
                  mulhsu      s11, a4, ra
                  c.srli      a3, 5
                  mulh        s6, s9, sp
                  andi        s11, s3, -1371
                  divu        sp, s11, s5
                  c.srli      a3, 20
                  c.mv        tp, s2
                  mulhsu      ra, s11, a5
                  div         t6, sp, t6
                  c.srli      a3, 21
                  sra         sp, s7, s2
                  sltu        ra, s1, t5
                  lui         a6, 842204
                  srai        tp, t0, 19
                  li         s5, 0x2ab95f55 #start riscv_int_numeric_corner_stream_0
                  li         t6, 0x0
                  li         t4, 0xdea9e1c
                  li         s11, 0x0
                  li         s3, 0x2e9e115d
                  li         s4, 0x48eb0c06
                  li         s6, 0x2b5ab932
                  li         s7, 0x0
                  li         a3, 0x1
                  li         a0, 0x1
                  c.addi      ra, 24
                  mulhu       s5, s0, a3
                  c.lui       t4, 10
                  c.nop
                  mulh        s4, a3, s2
                  divu        s1, s1, ra
                  mul         a6, a2, s9
                  div         zero, zero, t6
                  c.addi16sp  sp, -16
                  c.addi      tp, 24
                  divu        a3, sp, a7
                  rem         a7, tp, a4
                  lui         a6, 928709
                  c.addi4spn  s1, sp, 864
                  c.sub       a3, a3
                  c.addi16sp  sp, -16
                  srl         s0, t1, a4
                  add         s8, s8, zero
                  addi        ra, a5, -685
                  c.sub       a3, a3
                  c.and       a3, a4
                  c.lui       a3, 15
                  sltu        a0, a5, s1
                  slt         s9, t1, s7
                  mulhu       zero, a7, t5
                  divu        a5, s2, t6
                  sll         t0, a2, a2
                  or          gp, t1, s0
                  slti        t2, a3, 1326
                  xori        s10, tp, 961
                  div         tp, s8, s4
                  slli        zero, t5, 9
                  or          a6, a4, gp
                  srai        s0, s10, 26
                  divu        s0, a2, t2
                  ori         s3, s1, 1944
                  slt         s4, s2, t6
                  c.or        a1, a4
                  srl         s7, a5, s11
                  c.or        a0, a3
                  mulhu       s11, s7, a2
                  add         zero, t3, ra
                  slt         s2, ra, t3
                  c.srli      a3, 13
                  sltu        s11, s9, t3
                  c.sub       a3, a3
                  c.sub       a3, a1
                  div         zero, a1, a6
                  c.mv        t1, t5
                  srai        tp, t6, 23
                  or          t2, s3, s11
                  or          a0, a7, s7
                  and         zero, a7, t6
                  c.sub       a3, s1
                  addi        s11, t3, 411
                  mulhsu      s6, t1, a5
                  add         a5, tp, s2
                  c.nop
                  c.xor       a3, a3
                  sra         t1, t6, t3
                  mulh        ra, s6, sp
                  mulh        tp, s1, a7
                  divu        zero, zero, ra
                  and         s0, s9, t2
                  slti        zero, s7, 1415
                  ori         a1, tp, -1074
                  ori         t0, a5, -1669
                  c.or        a3, a3
                  add         s11, zero, a3
                  auipc       t2, 241592
                  c.li        s0, -1
                  rem         t1, t3, t5
                  mulh        a5, s11, t1
                  srai        a3, t3, 17
                  mulhsu      s8, s10, t1
                  c.li        s4, -1
                  srli        s1, s3, 6
                  add         s8, s2, s0
                  c.andi      a3, 26
                  slt         s6, s10, a3
                  mulh        s11, t1, s4
                  lui         zero, 222867
                  c.srai      a3, 17
                  sra         zero, a4, s10
                  slli        s4, s5, 7
                  sltu        t4, a5, a3
                  xor         s7, s9, s3
                  c.add       s1, s10
                  divu        s0, t1, s1
                  slti        s7, zero, -308
                  slli        zero, s6, 30
                  mulhu       t2, a7, tp
                  xor         s1, gp, gp
                  sltu        zero, s11, a4
                  sll         a2, a7, a2
                  c.xor       a3, a3
                  sltiu       t2, a0, -670
                  mulh        a1, t3, a5
                  slli        s7, t0, 13
                  and         s9, s3, a3
                  c.and       a3, a3
                  c.nop
                  xori        gp, gp, -52
                  mulh        a6, tp, a1
                  div         zero, a4, s0
                  c.sub       a3, a3
                  lui         t2, 375581
                  xor         s4, t6, a1
                  xor         t4, a2, a0
                  and         a3, t2, zero
                  c.xor       a3, a3
                  srli        a0, a5, 25
                  andi        ra, s6, 389
                  nop
                  c.nop
                  c.nop
                  mulh        a1, t4, ra
                  sltiu       t0, t1, 375
                  mul         zero, s5, a2
                  sra         sp, tp, t2
                  srl         s10, s8, t1
                  mulh        s6, s9, t0
                  sltiu       a2, a4, 1449
                  andi        ra, t1, -1514
                  c.li        s1, 22
                  addi        s1, s5, -549
                  xori        a0, zero, -1784
                  sltu        s2, s6, s2
                  c.srai      a3, 3
                  sltu        gp, s8, t5
                  c.addi16sp  sp, 368
                  slli        zero, s9, 15
                  c.nop
                  sub         s3, s1, a3
                  c.slli      s3, 18
                  rem         s4, zero, t5
                  slt         s1, tp, zero
                  c.xor       a3, a3
                  slli        a6, tp, 25
                  mul         s1, ra, t2
                  srli        s0, a6, 31
                  or          s7, t4, a7
                  c.srli      a3, 22
                  auipc       s0, 1031891
                  rem         t6, a0, a0
                  c.or        a3, a3
                  mul         a5, s6, s5
                  divu        s7, a1, t6
                  auipc       s3, 21499
                  slt         sp, s2, t2
                  and         a0, t2, sp
                  addi        t4, s9, -1058
                  c.li        s4, 27
                  nop
                  c.xor       s1, a3
                  c.lui       s9, 24
                  andi        a5, a3, 1945
                  c.xor       s1, a3
                  mul         t1, s0, a1
                  add         t4, t6, s11
                  slt         ra, t0, t4
                  auipc       sp, 895404
                  addi        zero, sp, 1315
                  c.and       a5, a3
                  ori         a0, t2, -1685
                  sltu        s10, s6, t0
                  c.li        s3, -1
                  mulhsu      a1, s10, tp
                  sltu        s0, a6, zero
                  and         t4, s2, t2
                  sra         a7, a3, gp
                  lui         s10, 493486
                  rem         a5, t1, t0
                  c.addi4spn  a3, sp, 576
                  ori         tp, s2, -1217
                  c.sub       a1, a3
                  add         zero, a3, a6
                  slli        s0, s8, 11
                  xor         s9, a4, t1
                  c.addi16sp  sp, 272
                  sltu        s1, s3, s4
                  srl         a6, ra, s10
                  slli        s0, s2, 18
                  rem         t0, t3, s10
                  srai        zero, s10, 27
                  c.addi      a6, 31
                  c.addi16sp  sp, 16
                  srai        ra, a6, 4
                  auipc       t2, 525679
                  c.li        s9, -1
                  andi        s7, sp, -1969
                  srl         t0, a1, s6
                  mulhsu      s5, a3, t6
                  auipc       tp, 1002753
                  and         s2, a6, t2
                  mulhsu      zero, s6, t4
                  c.srli      a3, 6
                  c.lui       ra, 11
                  c.nop
                  c.li        s10, 4
                  slli        s4, t6, 18
                  sub         s4, sp, sp
                  mulhsu      s7, s2, t1
                  srli        s0, s7, 24
                  srli        s8, s6, 11
                  srli        a2, s4, 23
                  lui         s2, 927883
                  c.addi4spn  a3, sp, 752
                  c.mv        gp, ra
                  slli        s8, a3, 10
                  sltiu       a3, t1, -592
                  c.addi16sp  sp, -16
                  slt         s10, s10, a1
                  mulhsu      t6, tp, s11
                  sub         a3, t3, s11
                  sltu        s0, s1, s10
                  c.li        ra, 23
                  mul         zero, s4, a1
                  auipc       a5, 742219
                  xori        t0, s4, -926
                  mul         t0, a7, zero
                  addi        s5, a0, -446
                  slti        t1, s2, -1213
                  xori        zero, tp, -1282
                  xor         zero, t3, sp
                  sub         t4, s3, s0
                  c.xor       a3, a3
                  slli        zero, s7, 18
                  div         s7, s9, zero
                  c.addi16sp  sp, -16
                  mulhu       t4, s0, t2
                  c.xor       a3, a3
                  slt         s7, t2, s10
                  c.nop
                  sltiu       s4, t6, -1991
                  auipc       tp, 802768
                  lui         s4, 846252
                  c.addi16sp  sp, 352
                  div         t1, t2, zero
                  c.srli      s1, 26
                  sltu        s2, t3, zero
                  c.xor       a3, a3
                  sltiu       gp, s1, 563
                  lui         a5, 610380
                  c.slli      gp, 11
                  nop
                  srai        a1, a4, 31
                  auipc       s11, 752913
                  srli        s11, zero, 14
                  or          t2, t5, t4
                  addi        a3, s9, 14
                  c.li        s9, 29
                  sll         s10, t2, t1
                  sltiu       s10, a2, 117
                  andi        t1, t1, 525
                  slli        s10, t3, 22
                  divu        t6, tp, t2
                  c.andi      a3, 24
                  and         a3, s11, t4
                  xori        s6, ra, -892
                  c.add       s2, a6
                  c.nop
                  div         s9, s8, a0
                  c.lui       s8, 21
                  mulh        t6, t1, s3
                  c.add       a7, ra
                  sub         zero, t0, ra
                  c.addi4spn  a3, sp, 32
                  c.addi      t4, 24
                  srli        a3, s11, 4
                  sltu        a1, s1, a3
                  c.lui       ra, 21
                  c.xor       a3, a3
                  c.slli      ra, 24
                  c.srli      a3, 23
                  c.and       s1, a3
                  slli        s11, t3, 9
                  or          s9, s10, t0
                  c.li        ra, -1
                  c.srli      a3, 7
                  or          s1, s11, zero
                  auipc       zero, 30912
                  c.srli      a3, 25
                  c.andi      a3, 16
                  and         zero, a3, a5
                  and         s5, s9, s0
                  sub         a6, s11, a3
                  c.addi      a5, -1
                  c.addi4spn  a2, sp, 896
                  and         a3, a4, ra
                  sltiu       tp, s3, 201
                  lui         t1, 649051
                  mulhsu      a7, tp, s0
                  c.lui       s8, 18
                  mulhsu      a6, t3, t1
                  addi        s2, s5, 489
                  andi        t0, s2, 89
                  rem         a0, s1, a1
                  add         ra, s0, s2
                  or          t2, a3, tp
                  ori         s4, s5, 696
                  xor         s6, s4, ra
                  auipc       t6, 814519
                  mulhu       s6, sp, a5
                  sra         ra, s10, s11
                  mul         zero, s0, sp
                  sra         s4, ra, a4
                  c.or        a3, a3
                  srli        a3, a6, 19
                  mul         t6, zero, a7
                  sll         a0, s7, a7
                  c.srai      a3, 14
                  sltu        s8, t5, a4
                  srl         a1, t1, a7
                  slt         s5, a0, a4
                  c.add       a2, s2
                  c.li        ra, -1
                  c.nop
                  c.addi4spn  a3, sp, 128
                  c.addi4spn  a3, sp, 480
                  c.or        a3, a3
                  c.slli      s5, 18
                  addi        s9, s10, 166
                  sub         ra, ra, a2
                  add         zero, t0, s7
                  ori         s8, a0, 2024
                  add         zero, t1, a2
                  ori         s3, s10, -1536
                  c.addi16sp  sp, 496
                  c.sub       a3, a3
                  c.srai      a3, 2
                  c.addi      t0, 2
                  xori        a3, s6, 1484
                  c.or        a2, a3
                  c.addi16sp  sp, -16
                  add         t6, s8, t4
                  or          s9, tp, a5
                  sub         t6, s9, a4
                  mulh        s2, a0, t0
                  mulhu       t2, s1, s9
                  ori         a3, t2, -1249
                  c.lui       a6, 20
                  c.xor       a3, a3
                  c.li        s3, -1
                  c.andi      a3, -1
                  slt         gp, a7, s8
                  c.srai      a3, 5
                  ori         s2, s4, 947
                  divu        t2, s2, t5
                  divu        sp, a2, s1
                  sll         sp, t3, gp
                  mul         t2, s8, a7
                  srai        tp, a5, 14
                  sltiu       t6, a7, -1623
                  xor         ra, s2, a1
                  ori         s4, s4, 1326
                  c.xor       a3, a5
                  c.lui       s6, 5
                  c.addi      ra, -1
                  slli        ra, t0, 18
                  c.srli      a3, 24
                  c.andi      a3, 26
                  c.and       s0, a3
                  or          zero, s3, s5
                  c.li        s11, 14
                  mulhu       s9, a3, s4
                  c.nop
                  slt         s3, gp, s0
                  ori         sp, t2, 1926
                  slti        a3, s0, 641
                  srli        a0, gp, 21
                  sra         zero, a4, tp
                  c.addi4spn  a3, sp, 736
                  c.li        s11, -1
                  auipc       t1, 66806
                  srli        s10, s9, 7
                  c.addi16sp  sp, 80
                  slt         t4, a1, s5
                  slti        a5, a4, -962
                  c.xor       a3, a3
                  srai        s1, s4, 27
                  nop
                  addi        a0, s11, 1135
                  auipc       zero, 826617
                  srai        tp, s8, 16
                  c.slli      t4, 4
                  c.addi      a0, 2
                  xori        s5, s6, 832
                  c.sub       a1, a3
                  and         s8, t6, t5
                  c.addi      s11, -1
                  c.add       tp, a4
                  addi        a7, s5, -1880
                  c.li        s2, -1
                  c.sub       s1, a3
                  c.addi16sp  sp, 320
                  c.sub       a3, a3
                  c.srai      a3, 26
                  ori         s5, a0, 1469
                  c.xor       a2, a3
                  xor         s3, a1, t2
                  addi        t2, t5, 1447
                  nop
                  mul         ra, s3, zero
                  addi        gp, ra, -1703
                  andi        sp, s10, -1430
                  or          t6, s0, s11
                  mul         s0, t6, a7
                  slt         t1, s8, s5
                  c.xor       a2, s1
                  xori        t2, s0, -1251
                  rem         t4, ra, t1
                  sub         zero, s9, t4
                  c.or        a3, a3
                  xor         s9, s5, ra
                  c.addi4spn  a3, sp, 192
                  c.mv        t4, a0
                  c.andi      a3, 9
                  andi        a5, ra, -1627
                  sub         s4, a6, a6
                  rem         s7, a0, zero
                  c.and       s1, a3
                  andi        zero, t1, -27
                  slt         tp, tp, t3
                  and         t6, s3, s4
                  srli        gp, a3, 0
                  c.lui       gp, 30
                  sub         s10, t1, sp
                  mulhsu      s1, a5, t6
                  c.mv        s7, ra
                  mul         s2, s7, a4
                  or          s8, gp, t1
                  divu        a6, t5, a0
                  c.slli      t2, 24
                  rem         sp, s6, sp
                  sltu        s9, t6, a0
                  mul         s0, tp, s3
                  mul         s0, tp, t2
                  add         a1, s2, a3
                  mulh        s10, s1, a2
                  mul         t6, s0, t5
                  c.li        s1, -1
                  c.or        a3, a3
                  c.srli      a3, 31
                  ori         s6, s9, 1792
                  divu        ra, s9, ra
                  c.add       gp, t5
                  xori        s10, t5, -1226
                  mulh        sp, t3, tp
                  c.xor       a0, a3
                  nop
                  sra         s3, a1, t1
                  rem         a6, s2, sp
                  c.lui       ra, 28
                  mulhu       a1, s2, s9
                  lui         a6, 851664
                  xor         gp, s7, a4
                  mulh        zero, t3, s8
                  divu        s0, s10, s7
                  xor         s3, a3, s8
                  c.lui       s10, 3
                  c.add       tp, sp
                  ori         a2, s8, 554
                  addi        zero, a5, -836
                  mulhu       a6, a0, s6
                  auipc       a2, 586350
                  c.mv        t4, a4
                  ori         a5, a6, 963
                  c.addi4spn  a3, sp, 576
                  mulh        ra, s2, s0
                  srli        s3, t2, 24
                  c.add       s5, s3
                  sub         a1, s10, a3
                  srai        a5, a4, 6
                  srai        s9, s10, 26
                  c.lui       s4, 26
                  and         a3, a6, a6
                  mulh        s1, a3, s3
                  srl         a6, t1, s3
                  andi        s7, t0, 1621
                  c.srai      a3, 16
                  srli        s1, a7, 9
                  andi        s11, zero, -487
                  slli        a2, s4, 31
                  srl         s8, zero, t3
                  nop
                  sltiu       s9, a3, 420
                  or          tp, ra, t5
                  mulh        s9, s2, t6
                  c.slli      sp, 8
                  c.slli      s0, 30
                  srai        s1, t1, 6
                  addi        ra, t0, -1848
                  slli        tp, s5, 10
                  slt         a7, gp, s0
                  mulh        t6, s7, s8
                  srl         ra, s3, t3
                  c.lui       a3, 18
                  xori        s9, a2, -2012
                  c.srai      a3, 27
                  c.li        tp, -1
                  divu        s6, t0, a4
                  slt         zero, a0, a7
                  c.addi4spn  a3, sp, 576
                  sra         zero, t2, a7
                  c.srli      a5, 11
                  sll         s1, s3, s3
                  c.nop
                  srai        a2, sp, 29
                  slli        tp, t2, 14
                  c.addi4spn  a3, sp, 576
                  srl         gp, s8, s2
                  sltiu       ra, t0, -1795
                  xori        s10, s8, 100
                  c.slli      s3, 15
                  ori         sp, a3, -891
                  rem         zero, s3, tp
                  divu        t1, gp, s7
                  sll         gp, s6, t1
                  addi        t1, t1, 205
                  sra         a5, s2, s11
                  div         t6, s9, t5
                  c.nop
                  c.srli      a3, 19
                  c.lui       ra, 13
                  mul         gp, s0, a1
                  rem         gp, sp, t0
                  c.srli      a3, 1
                  sltiu       a5, a2, -1455
                  c.addi      a7, 2
                  rem         t2, t4, a5
                  sltiu       ra, s8, -1667
                  mulhu       tp, sp, s2
                  srl         t6, s0, t0
                  srl         s2, a2, s5
                  auipc       s6, 653345
                  c.add       ra, s5
                  c.add       tp, s3
                  c.srli      a3, 4
                  srli        zero, a6, 21
                  nop
                  srli        t1, a3, 9
                  c.sub       a3, a3
                  and         a3, a4, t5
                  c.sub       a3, a5
                  andi        sp, a6, -1965
                  c.xor       a3, a3
                  c.addi      a0, 7
                  mulhsu      s10, s0, a3
                  c.andi      a3, -1
                  slli        a6, s10, 27
                  sra         a7, a2, zero
                  c.addi4spn  a3, sp, 576
                  c.srli      a2, 16
                  c.addi      a2, 12
                  lui         s11, 336167
                  c.srli      a3, 8
                  srl         t2, a3, t1
                  add         t1, t5, s6
                  ori         s6, a2, -264
                  slti        t4, s10, 1550
                  nop
                  sltu        a0, a5, s9
                  ori         t4, a2, -1783
                  or          t2, a3, a6
                  mulhu       a5, s8, t1
                  addi        s8, sp, 1121
                  c.addi4spn  a0, sp, 672
                  nop
                  mul         s5, s9, a0
                  c.xor       a3, a3
                  c.srai      a3, 26
                  or          gp, s8, s2
                  or          zero, a2, t1
                  c.or        a3, a3
                  c.lui       t6, 17
                  divu        zero, a3, s6
                  c.srli      s0, 13
                  la x14, test_done
                  jalr x0, x14, 0
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
                  csrrw x30, 0x340, x30
                  add x30, x28, zero
                  1: addi x30, x30, -124
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  csrr x31, 0x300 # MSTATUS
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 31
                  bne x31, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x31, 0x341 # MEPC
                  csrr x31, 0x342 # MCAUSE
                  li x2, 0xb # ECALL_MMODE
                  beq x31, x2, ecall_handler
                  li x2, 0x2 # ILLEGAL_INSTRUCTION
                  beq x31, x2, illegal_instr_handler
                  csrr x2, 0x343 # MTVAL
                  1: la x14, test_done
                  jalr x1, x14, 0

ecall_handler:    
                  la x31, _start
                  sw x0, 0(x31)
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
                  la x14, write_tohost
                  jalr x0, x14, 0

illegal_instr_handler:
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  lw x1, 4(x30)
                  lw x2, 8(x30)
                  lw x3, 12(x30)
                  lw x4, 16(x30)
                  lw x5, 20(x30)
                  lw x6, 24(x30)
                  lw x7, 28(x30)
                  lw x8, 32(x30)
                  lw x9, 36(x30)
                  lw x10, 40(x30)
                  lw x11, 44(x30)
                  lw x12, 48(x30)
                  lw x13, 52(x30)
                  lw x14, 56(x30)
                  lw x15, 60(x30)
                  lw x16, 64(x30)
                  lw x17, 68(x30)
                  lw x18, 72(x30)
                  lw x19, 76(x30)
                  lw x20, 80(x30)
                  lw x21, 84(x30)
                  lw x22, 88(x30)
                  lw x23, 92(x30)
                  lw x24, 96(x30)
                  lw x25, 100(x30)
                  lw x26, 104(x30)
                  lw x27, 108(x30)
                  lw x28, 112(x30)
                  lw x29, 116(x30)
                  lw x30, 120(x30)
                  lw x31, 124(x30)
                  addi x30, x30, 124
                  add x28, x30, zero
                  csrrw x30, 0x340, x30
                  mret

pt_fault_handler: 

.align 2
mmode_intr_handler:
                  csrr  x31, 0x300 # MSTATUS;
                  csrr  x31, 0x304 # MIE;
                  csrr  x31, 0x344 # MIP;
                  csrrc x31, 0x344, x31 # MIP;
                  lw x1, 4(x30)
                  lw x2, 8(x30)
                  lw x3, 12(x30)
                  lw x4, 16(x30)
                  lw x5, 20(x30)
                  lw x6, 24(x30)
                  lw x7, 28(x30)
                  lw x8, 32(x30)
                  lw x9, 36(x30)
                  lw x10, 40(x30)
                  lw x11, 44(x30)
                  lw x12, 48(x30)
                  lw x13, 52(x30)
                  lw x14, 56(x30)
                  lw x15, 60(x30)
                  lw x16, 64(x30)
                  lw x17, 68(x30)
                  lw x18, 72(x30)
                  lw x19, 76(x30)
                  lw x20, 80(x30)
                  lw x21, 84(x30)
                  lw x22, 88(x30)
                  lw x23, 92(x30)
                  lw x24, 96(x30)
                  lw x25, 100(x30)
                  lw x26, 104(x30)
                  lw x27, 108(x30)
                  lw x28, 112(x30)
                  lw x29, 116(x30)
                  lw x30, 120(x30)
                  lw x31, 124(x30)
                  addi x30, x30, 124
                  add x28, x30, zero
                  csrrw x30, 0x340, x30
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
