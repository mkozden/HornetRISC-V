.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x15, h0_start
jalr x0, x15, 0
h0_start:
                  li x7, 0x40001120
                  csrw 0x301, x7
kernel_sp:        
                  la x29, kernel_stack_end

trap_vec_init:    
                  la x7, mtvec_handler
                  ori x7, x7, 0
                  csrw 0x305, x7 # MTVEC

mepc_setup:       
                  la x7, init
                  csrw 0x341, x7

init_machine_mode:
                  li x7, 0x3a00
                  csrw 0x300, x7 # MSTATUS
                  li x7, 0x0
                  csrw 0x304, x7 # MIE
                  mret
init:             
                  li x7, 0xb1cefca8
                  fmv.w.x f0, x7
                  li x7, 0xff800000
                  fmv.w.x f1, x7
                  li x7, 0x7f800001
                  fmv.w.x f2, x7
                  li x7, 0x7fc00000
                  fmv.w.x f3, x7
                  li x7, 0xff7fffff
                  fmv.w.x f4, x7
                  li x7, 0x0
                  fmv.w.x f5, x7
                  li x7, 0xb29e1
                  fmv.w.x f6, x7
                  li x7, 0x8853cd5c
                  fmv.w.x f7, x7
                  li x7, 0x7fc00000
                  fmv.w.x f8, x7
                  li x7, 0xac9a235b
                  fmv.w.x f9, x7
                  li x7, 0x4cc0b262
                  fmv.w.x f10, x7
                  li x7, 0x7f800001
                  fmv.w.x f11, x7
                  li x7, 0x9f28d4b3
                  fmv.w.x f12, x7
                  li x7, 0x7fc00000
                  fmv.w.x f13, x7
                  li x7, 0xdf521992
                  fmv.w.x f14, x7
                  li x7, 0x7fc00000
                  fmv.w.x f15, x7
                  li x7, 0x7f800000
                  fmv.w.x f16, x7
                  li x7, 0xff800000
                  fmv.w.x f17, x7
                  li x7, 0x46bf7298
                  fmv.w.x f18, x7
                  li x7, 0xfe776419
                  fmv.w.x f19, x7
                  li x7, 0xff800000
                  fmv.w.x f20, x7
                  li x7, 0x19ee11
                  fmv.w.x f21, x7
                  li x7, 0x80000000
                  fmv.w.x f22, x7
                  li x7, 0xc71cab6e
                  fmv.w.x f23, x7
                  li x7, 0xbfc58049
                  fmv.w.x f24, x7
                  li x7, 0x7fc00000
                  fmv.w.x f25, x7
                  li x7, 0x80000000
                  fmv.w.x f26, x7
                  li x7, 0x80000000
                  fmv.w.x f27, x7
                  li x7, 0x7f7fffff
                  fmv.w.x f28, x7
                  li x7, 0x1885bec9
                  fmv.w.x f29, x7
                  li x7, 0xfd5355a3
                  fmv.w.x f30, x7
                  li x7, 0x7f7fffff
                  fmv.w.x f31, x7
                  fsrmi 1
                  li x0, 0xf
                  li x1, 0xf6753adc
                  li x2, 0xe
                  li x3, 0x80000000
                  li x4, 0x0
                  li x5, 0xf391a7b5
                  li x6, 0xff948a13
                  li x7, 0x80000000
                  li x8, 0x44c08921
                  li x9, 0xfd211f72
                  li x10, 0xf335b2e3
                  li x11, 0x8
                  li x12, 0x80000000
                  li x13, 0x80000000
                  li x14, 0xfce8dce9
                  li x15, 0x8
                  li x16, 0xb9829da3
                  li x17, 0xa3ca5414
                  li x18, 0x1ae4171f
                  li x19, 0x0
                  li x20, 0x0
                  li x21, 0x0
                  li x22, 0x80000000
                  li x23, 0x2
                  li x24, 0x80000000
                  li x25, 0xad8ad0f8
                  li x26, 0x80000000
                  li x27, 0x0
                  li x30, 0x80000000
                  li x31, 0x0
                  la x28, user_stack_end
main:             xor         a6, s1, a3
                  andi        s6, s0, -1769
                  addi        s4, s10, -753
                  mul         s9, s10, zero
                  or          s6, s2, s9
                  or          gp, s4, a2
                  fadd.s     fs11, fa3, fs11
                  fsqrt.s    ft0, fs4
                  fsqrt.s    ft4, ft10
                  slli        t6, gp, 23
                  xor         a2, s0, a3
                  or          a3, t5, gp
                  mulhsu      s5, t4, s0
                  lui         tp, 551871
                  fcvt.s.wu  fa2, sp
                  fadd.s     ft7, ft8, fs9
                  fclass.s   tp, ft9
                  srai        s6, t3, 7
                  srli        s7, s4, 29
                  fsgnjn.s   ft7, fs2, ft11
                  fmul.s     ft0, ft5, ft4
                  fsub.s     fs6, ft5, fa1
                  fdiv.s     fs9, ft4, fa7
                  mul         t0, t0, a3
                  flt.s      a6, ft3, ft7
                  srli        zero, t2, 27
                  sra         zero, s8, t2
                  fle.s      s10, ft6, fs5
                  fsqrt.s    fs5, fs5
                  fsgnj.s    fa0, fs7, fa4
                  fmax.s     ft1, fa2, fs6
                  fmax.s     ft5, fs1, fs9
                  fsqrt.s    fa6, fa1
                  rem         zero, sp, a7
                  fcvt.s.w   fs7, a4
                  andi        s2, s10, -1080
                  slt         zero, t5, sp
                  mulhu       s11, s10, a7
                  fcvt.wu.s  a1, fa7
                  slt         tp, a0, s10
                  add         s7, a4, s6
                  fmin.s     ft2, fs3, fa6
                  slt         s5, s9, t3
                  addi        s1, s4, -1901
                  sra         a7, a7, a1
                  fmax.s     ft5, ft8, fa7
                  slli        zero, t4, 14
                  fmin.s     ft11, ft1, fs0
                  lui         s7, 489859
                  mulh        s8, t4, t2
                  srl         s0, s6, s2
                  fclass.s   s4, fa1
                  andi        s6, t0, 613
                  srl         sp, ra, s9
                  fmv.w.x    fs3, a3
                  xor         s5, t0, s3
                  fsgnjn.s   ft4, fa0, fs10
                  and         t1, a5, s3
                  auipc       zero, 290272
                  auipc       zero, 328480
                  fsgnj.s    fs2, ft1, ft7
                  mulhsu      zero, s4, s7
                  fadd.s     fa3, fa5, ft7
                  fmax.s     fa3, ft7, fs4
                  xori        t6, t2, -1987
                  feq.s      t1, fa4, fs4
                  xori        zero, s3, -780
                  srli        a7, gp, 20
                  fcvt.wu.s  ra, fs1
                  sll         a6, t1, s11
                  srli        a4, a3, 29
                  fsgnj.s    fs4, fs10, fs11
                  xori        a4, t3, 1723
                  fsgnj.s    ft7, fs5, fa2
                  nop
                  rem         a7, s0, s6
                  fmv.x.w    s7, ft5
                  fcvt.s.wu  ft3, a0
                  sra         t1, t3, sp
                  rem         ra, s6, sp
                  andi        s8, s4, 1261
                  fsub.s     fs9, ft3, ft1
                  slli        s7, s5, 12
                  sll         s8, a3, s6
                  slti        s5, tp, 89
                  fmin.s     fa5, fs3, fa3
                  fsub.s     ft5, fs7, fs0
                  flt.s      sp, fs11, fs8
                  slli        a7, a4, 25
                  slti        a0, s7, -36
                  slli        t1, s5, 11
                  fcvt.w.s   zero, fs1
                  sra         t1, s5, s2
                  sub         s7, s10, sp
                  rem         a3, s3, s10
                  nop
                  feq.s      tp, fa0, fa4
                  fcvt.w.s   tp, fa7
                  fcvt.s.w   ft9, a6
                  srli        s8, a5, 29
                  mulhsu      s1, sp, s3
                  slt         t1, s7, a2
                  sra         zero, a1, tp
                  feq.s      s6, fs1, fa5
                  sltu        tp, s10, a5
                  sub         s11, zero, a0
                  fcvt.s.w   ft2, sp
                  fmin.s     ft3, fa6, fa0
                  fcvt.s.w   fs6, a6
                  sltiu       s4, tp, -24
                  fle.s      a0, ft3, ft7
                  and         t2, s10, t0
                  fcvt.s.wu  fs7, a3
                  fle.s      zero, ft10, fs7
                  fcvt.s.wu  fs8, a7
                  srli        a7, s9, 16
                  fmv.w.x    fa0, a6
                  sltiu       a7, s7, 1739
                  ori         t2, a5, 982
                  fsgnjn.s   fs9, ft2, ft11
                  mul         s6, s2, s9
                  fsub.s     fa4, fa7, ft10
                  sltiu       a7, gp, 1699
                  sra         s8, s9, sp
                  fmv.x.w    s7, fa4
                  fcvt.wu.s  s8, ft0
                  ori         zero, a4, -606
                  flt.s      s6, fs8, fa5
                  div         a4, s1, a1
                  fmin.s     ft11, ft10, ft11
                  mulhsu      s3, s0, t3
                  andi        s0, s7, -1577
                  fcvt.s.w   fa4, t3
                  rem         a3, s9, a0
                  mulh        gp, a6, zero
                  sra         a7, a2, a1
                  andi        a4, a7, -1781
                  fsgnj.s    fa2, fa6, fs2
                  xor         t2, zero, zero
                  fmax.s     fa3, fs5, fa3
                  sltiu       s7, s0, -383
                  fmin.s     ft3, ft1, fs9
                  feq.s      s5, ft6, fa3
                  fsgnj.s    ft6, ft2, fs11
                  srli        t2, s5, 11
                  mul         sp, a5, zero
                  fsgnjx.s   fa0, fa2, fa3
                  nop
                  slt         s3, t5, t1
                  slli        a1, s11, 4
                  fcvt.w.s   s3, ft6
                  ori         s5, a7, -608
                  addi        s7, a6, 2039
                  add         t2, zero, s2
                  slli        t1, s9, 24
                  mulhsu      s8, s4, a0
                  sltu        s2, s10, tp
                  or          a3, a3, a3
                  sub         zero, s7, a7
                  fle.s      gp, fs2, fa5
                  div         s6, sp, s5
                  xori        zero, a1, 431
                  andi        s8, a3, -956
                  mulhsu      s1, zero, s7
                  xor         s3, ra, ra
                  fmul.s     fs10, fs8, ft3
                  flt.s      t0, fs7, fa1
                  fsgnjx.s   ft9, fa2, ft9
                  sll         s5, s1, s9
                  fsgnj.s    ft5, fa7, ft1
                  sub         s4, t2, s10
                  auipc       s8, 33032
                  slli        t1, t1, 9
                  fsub.s     fs8, fs0, ft5
                  mulhu       s10, a3, t3
                  flt.s      s10, ft4, ft3
                  flt.s      a7, fa5, fs8
                  divu        a3, s6, t4
                  fclass.s   s4, fa0
                  fle.s      ra, fs4, fs4
                  fcvt.w.s   s5, ft1
                  fmul.s     ft10, ft5, ft8
                  mulhu       s3, s4, s8
                  add         s3, a1, s3
                  fadd.s     ft3, fa6, fs7
                  fsqrt.s    ft11, fa4
                  fcvt.wu.s  sp, ft7
                  sltu        zero, t1, s5
                  fsgnj.s    ft9, ft5, fs4
                  and         zero, s0, a4
                  fmin.s     fa5, fa3, ft6
                  mulhsu      t1, t6, s11
                  or          s1, s3, s7
                  fmv.x.w    s3, fa7
                  addi        a4, ra, -1042
                  srai        sp, s6, 18
                  fsub.s     fa0, fa4, ft4
                  fcvt.s.wu  fs0, a1
                  fmin.s     fs2, fs6, ft11
                  slti        s4, s0, 955
                  fcvt.s.wu  ft10, s2
                  addi        s1, s7, 572
                  add         s1, a3, a3
                  fmin.s     fa3, fs10, ft3
                  sra         a3, t4, s11
                  srai        a6, a2, 20
                  slli        s1, zero, 23
                  sub         s11, t4, s0
                  nop
                  sltu        a2, a5, s6
                  addi        s1, gp, 224
                  auipc       t1, 324550
                  fle.s      s8, fs3, ft4
                  sltiu       a7, ra, 1607
                  divu        a4, a4, t5
                  addi        a6, a3, 746
                  fle.s      a1, ft11, ft9
                  flt.s      a7, ft0, ft6
                  flt.s      s4, fs3, fa4
                  fcvt.w.s   a7, fs3
                  fsgnjx.s   fa7, fs1, ft0
                  or          s11, a2, a1
                  fadd.s     fs7, fa1, fs7
                  srl         t2, t5, s10
                  mulhsu      t0, a0, ra
                  fdiv.s     ft2, fa3, fa7
                  fcvt.wu.s  s11, fs7
                  sltu        a3, a3, s2
                  andi        tp, s5, -351
                  fsqrt.s    fa2, ft6
                  fclass.s   a6, ft2
                  fdiv.s     fs6, ft3, fa1
                  fmax.s     ft8, fs0, ft7
                  fmv.x.w    ra, fs10
                  fmin.s     fs2, fs6, ft2
                  fsub.s     fs7, fs1, ft4
                  add         s4, s9, t4
                  mul         s8, tp, a5
                  srli        s11, s4, 5
                  xori        s3, t0, -1231
                  fsgnjn.s   fs2, fs2, ft11
                  sra         s4, a3, a4
                  divu        s7, t1, zero
                  flt.s      t6, ft5, fs0
                  fcvt.w.s   a3, fa6
                  sub         t6, t1, t0
                  fsgnjx.s   fs1, fs2, fs3
                  xor         sp, t2, sp
                  fcvt.w.s   s3, fa2
                  sra         t0, s7, s10
                  feq.s      a2, ft9, fa3
                  fcvt.wu.s  zero, fs7
                  fmax.s     fs2, ft9, fa3
                  fmv.x.w    zero, fa7
                  fsgnjx.s   fa7, fs2, fs2
                  fmv.w.x    fs3, s6
                  slli        a7, a2, 10
                  auipc       gp, 240262
                  srli        s9, s7, 31
                  or          t6, a1, a6
                  sll         s1, gp, s7
                  fsgnj.s    fs6, fs9, ft10
                  fsub.s     ft4, fs10, fa3
                  ori         s7, a7, 1552
                  mulh        s10, zero, t3
                  flt.s      zero, fs2, fa0
                  slti        zero, s11, -500
                  slli        s8, s11, 3
                  mul         t0, a2, s6
                  fdiv.s     fs4, ft6, ft7
                  slti        a3, sp, -1651
                  flt.s      s3, fa4, fs3
                  div         a2, s11, a6
                  fcvt.wu.s  t1, fa1
                  fdiv.s     ft8, fs2, fa1
                  add         s5, t6, ra
                  fsgnjn.s   ft1, fs11, fa3
                  and         t0, s0, t4
                  xor         sp, a5, s3
                  fadd.s     ft5, fa2, fa3
                  sra         s11, s3, s3
                  fmv.x.w    s2, ft4
                  fadd.s     ft5, ft4, fs3
                  fcvt.wu.s  zero, fs9
                  mulhsu      a3, t0, t3
                  slli        sp, s9, 10
                  slt         a4, a1, s6
                  sll         s10, s5, t6
                  xor         sp, s5, a2
                  fsgnjx.s   ft6, fs7, ft4
                  mul         s1, a6, s2
                  fmv.x.w    s3, ft0
                  auipc       a7, 701482
                  ori         a4, s10, 812
                  fcvt.s.wu  ft4, t1
                  srai        t1, zero, 9
                  fmin.s     ft7, ft5, fs8
                  fmax.s     ft3, fs2, fa5
                  fsgnjn.s   fa7, fa1, fs11
                  fsgnjx.s   fs2, ft2, fs11
                  fsgnjx.s   fs3, fa7, ft11
                  divu        zero, a2, s4
                  sub         gp, t4, a1
                  fmin.s     ft1, fa0, fs3
                  feq.s      t5, fs5, fs5
                  lui         a2, 725574
                  feq.s      tp, fs3, fs0
                  flt.s      zero, ft1, fa1
                  fclass.s   zero, fa5
                  auipc       tp, 532244
                  fmv.w.x    fa5, a1
                  sltiu       tp, a0, 1784
                  fsub.s     fa1, ft9, fa1
                  sltiu       s9, s7, 1394
                  fsgnj.s    fs11, fs3, fs4
                  xori        a1, a6, -924
                  sra         s5, a1, s4
                  fle.s      t2, ft9, ft0
                  slti        t0, gp, 356
                  nop
                  fsgnjx.s   ft10, fs0, ft11
                  and         tp, s6, s9
                  fdiv.s     fs3, ft0, ft6
                  fdiv.s     fa1, fa4, fs10
                  sra         ra, ra, gp
                  fmin.s     ft6, fs6, fs6
                  rem         sp, s4, gp
                  and         a6, t0, a4
                  mulhu       zero, s8, t2
                  mulhsu      a4, s3, t4
                  fclass.s   s8, fa1
                  fsgnjn.s   fs9, ft1, ft3
                  add         t5, t5, s1
                  slti        zero, a6, -587
                  ori         a0, a1, 611
                  fsqrt.s    fs9, ft8
                  andi        zero, t6, 1161
                  div         t0, zero, s3
                  fle.s      sp, ft9, fa6
                  andi        s11, s11, -1461
                  addi        s10, a4, 282
                  sltiu       s0, s8, 796
                  sub         zero, sp, tp
                  andi        t2, s3, -1834
                  mul         s11, t2, a6
                  fadd.s     ft6, fa2, ft9
                  fsub.s     fs2, fs7, ft8
                  fmv.w.x    ft3, s2
                  ori         a2, s11, -1833
                  sub         s10, s7, t1
                  fmv.w.x    ft0, t4
                  sra         s6, gp, t3
                  mulhsu      a0, t4, t3
                  flt.s      t2, fa4, fs1
                  srl         s9, a4, gp
                  mulh        tp, a6, a4
                  ori         gp, a4, -1820
                  sltu        s3, t5, s5
                  rem         a6, s8, zero
                  mul         zero, a4, a1
                  divu        s10, a7, sp
                  slti        ra, s7, -151
                  slt         s2, a4, s2
                  fmul.s     ft6, ft6, ft2
                  mulhsu      s0, sp, t5
                  mulh        sp, t4, zero
                  sltu        tp, s9, t0
                  sub         t2, ra, a4
                  fsub.s     fs1, fa5, fa4
                  rem         s10, s4, s4
                  add         s11, a2, s7
                  sra         s10, t2, s9
                  slli        t5, s3, 22
                  fclass.s   s0, fs11
                  and         s7, s4, s2
                  flt.s      tp, fa1, ft3
                  fle.s      s0, ft8, fa7
                  mulhu       zero, s10, sp
                  lui         s6, 427073
                  xori        s1, s9, -1
                  sll         s4, s0, s4
                  fmax.s     fs10, fa3, ft10
                  slli        s10, a7, 5
                  sra         s4, a1, zero
                  slti        t2, a0, 1977
                  fmin.s     ft7, ft3, fa4
                  sltu        zero, t1, t3
                  or          s8, s7, a4
                  fmax.s     fs4, fs8, fs7
                  divu        a3, a0, t1
                  fcvt.w.s   s3, ft5
                  slti        gp, gp, -699
                  xor         a2, s4, s5
                  fcvt.w.s   zero, fa6
                  auipc       zero, 354660
                  and         a1, a4, gp
                  feq.s      ra, fa5, ft6
                  fmv.w.x    ft4, t5
                  xori        a0, s11, 1301
                  auipc       sp, 369274
                  sub         s4, s5, s10
                  fmv.x.w    a4, fa7
                  fsub.s     ft0, fa0, ft6
                  andi        a1, t0, 1626
                  auipc       s8, 625039
                  and         a1, t1, s6
                  sll         zero, a1, t4
                  xor         s0, s7, s10
                  fmin.s     fs5, ft11, fs7
                  feq.s      s6, fs8, ft4
                  sub         t2, a7, s10
                  fcvt.w.s   zero, fs5
                  fmax.s     fa2, ft8, ft4
                  fcvt.w.s   t2, fa3
                  slt         s5, ra, a6
                  fcvt.s.wu  fa5, a2
                  srli        a1, gp, 11
                  fcvt.s.wu  ft9, tp
                  fmul.s     fs0, fs11, fs11
                  fsub.s     ft9, fs10, fs9
                  mulh        tp, t0, s8
                  xori        tp, a7, 446
                  fmul.s     fa5, fa4, fs6
                  mulh        a6, t3, t2
                  divu        s8, a2, ra
                  div         a0, t3, s4
                  fdiv.s     fa0, ft9, fs4
                  fsgnjn.s   fa5, fs9, fa1
                  add         zero, t4, a2
                  fcvt.wu.s  a1, fa7
                  fclass.s   s1, fa5
                  fcvt.w.s   ra, ft3
                  sra         t5, t5, t4
                  sltiu       zero, s8, -900
                  fadd.s     fa5, ft11, fa2
                  sll         s0, a1, a0
                  fcvt.w.s   t2, fa2
                  andi        s4, a0, -1217
                  srli        zero, a5, 23
                  fmv.w.x    fs1, a5
                  fcvt.w.s   s11, fs4
                  fmax.s     fs11, fa6, fa0
                  andi        a0, s6, 1102
                  mulhu       gp, a6, t4
                  srli        a3, t0, 7
                  fmin.s     fs5, fa5, fa6
                  div         s3, t4, t6
                  fmax.s     ft10, fs8, fa5
                  srli        s9, a2, 5
                  fdiv.s     ft9, fs11, fs5
                  fmv.w.x    ft9, ra
                  add         a3, s5, s7
                  xor         a3, t5, zero
                  sll         a3, s6, a0
                  flt.s      a3, ft11, fa2
                  slli        s10, s7, 30
                  fmul.s     fa5, fs11, ft10
                  mulhu       a7, t6, a2
                  fsgnjx.s   fs8, ft11, fa3
                  fle.s      s11, fs10, ft2
                  xori        t5, t0, 1987
                  flt.s      s3, fa1, fa2
                  fcvt.wu.s  a4, fa7
                  slli        t0, s8, 22
                  xor         s10, a6, sp
                  fcvt.s.wu  ft0, t4
                  fcvt.wu.s  t0, fs10
                  add         s2, a4, tp
                  mulh        zero, ra, s2
                  fcvt.s.wu  ft7, s7
                  slti        t5, s0, -731
                  fmul.s     ft6, fa2, fa5
                  ori         s5, a4, 693
                  fle.s      zero, ft7, fs1
                  sub         t5, sp, s1
                  sll         zero, s5, gp
                  mul         s5, a4, s11
                  sra         a2, s10, s4
                  sltu        s8, t1, s5
                  rem         s10, s9, s6
                  fdiv.s     fa5, fs9, fs2
                  ori         zero, s0, -1626
                  divu        zero, a1, a7
                  or          a4, t5, a7
                  feq.s      tp, fs4, fs8
                  fadd.s     ft1, fa3, ft8
                  sra         a4, s1, t0
                  slli        s8, a1, 31
                  slti        t0, s3, 950
                  feq.s      a4, fs8, fs4
                  ori         t5, a7, -1201
                  fsqrt.s    ft9, fa2
                  sltiu       a3, s7, 789
                  fadd.s     fs6, fs5, fa3
                  fadd.s     fs7, ft8, fa3
                  fsgnj.s    ft5, fa6, ft5
                  mulhu       t5, s4, t3
                  mulhu       sp, sp, a5
                  and         t0, a6, t4
                  mulh        t2, a4, s4
                  slt         zero, ra, s10
                  sltiu       a3, t4, -1616
                  xor         tp, gp, a5
                  fmin.s     ft4, fs8, fs1
                  fmul.s     fs2, fs3, fa7
                  addi        s8, a4, -267
                  or          s6, s7, a0
                  fcvt.s.wu  ft6, t1
                  fmv.x.w    a6, fa0
                  mulhsu      s2, s2, ra
                  fsgnjx.s   fs3, ft9, ft8
                  mul         a0, tp, a3
                  fdiv.s     fa2, fs4, fa3
                  nop
                  or          gp, s7, gp
                  sltiu       t2, s5, -1102
                  fmin.s     fs0, fa0, ft5
                  fcvt.w.s   a1, fs5
                  fcvt.s.w   fa4, s8
                  fcvt.s.w   fa4, t5
                  rem         s6, a2, t0
                  fclass.s   a6, ft2
                  add         a4, t2, s0
                  fmv.w.x    fa6, a4
                  mulh        a6, a1, a6
                  fsgnjn.s   fa5, ft7, fs11
                  fcvt.w.s   t2, ft11
                  fcvt.wu.s  s6, ft6
                  fsgnj.s    ft10, ft11, fa1
                  srai        zero, t2, 23
                  div         s3, s0, s4
                  fmul.s     fa6, ft4, fa4
                  srli        s1, ra, 2
                  lui         tp, 380815
                  rem         t2, zero, s3
                  div         zero, s7, s8
                  fle.s      s9, fa3, fa3
                  mulh        s8, zero, s9
                  xori        s11, t1, -1737
                  fcvt.wu.s  ra, ft11
                  srli        t6, a5, 7
                  auipc       s9, 19854
                  fadd.s     ft5, fs10, fa0
                  slt         s11, t3, a4
                  rem         s9, s7, a1
                  nop
                  fcvt.w.s   s9, ft8
                  sltu        a6, s6, t3
                  addi        ra, s7, -731
                  div         sp, t4, s8
                  fcvt.w.s   sp, fs7
                  srli        a6, a4, 3
                  fsub.s     ft11, ft7, ft6
                  mul         a2, a2, s8
                  fcvt.w.s   t6, ft11
                  xori        ra, t3, 1720
                  xor         s11, s3, s10
                  slli        a7, t1, 8
                  ori         a4, s8, -220
                  xor         gp, a0, t5
                  fmul.s     ft11, ft7, ft8
                  mulhsu      a0, t3, s6
                  fcvt.s.w   ft3, s5
                  srai        a0, a4, 18
                  fmv.x.w    t1, fs3
                  or          s3, t0, a4
                  fsqrt.s    ft1, ft2
                  fdiv.s     ft11, ft8, ft2
                  fsqrt.s    fa6, ft1
                  fcvt.s.wu  fs5, t6
                  flt.s      t0, fs1, fs3
                  slli        s11, sp, 0
                  fclass.s   zero, ft11
                  fsgnjx.s   fa1, fs5, fa2
                  rem         t0, a3, t5
                  fsgnj.s    ft7, fa4, ft7
                  fmv.w.x    fa1, s1
                  fdiv.s     fs11, ft11, ft1
                  fmax.s     ft4, fs0, fa0
                  lui         s8, 625032
                  lui         t5, 245227
                  or          zero, s6, tp
                  fmin.s     ft0, ft11, ft4
                  fmul.s     fa5, fa3, ft9
                  srai        zero, s9, 16
                  sltiu       s7, s5, -912
                  fle.s      a0, ft0, fa0
                  fmul.s     fs1, ft4, ft5
                  flt.s      a0, fs1, fs6
                  fsqrt.s    fa1, fs3
                  slli        s7, s11, 6
                  nop
                  fmv.x.w    zero, fs6
                  slt         t0, s2, zero
                  mulh        a7, t1, t0
                  rem         s8, a4, s9
                  feq.s      a3, ft2, fa5
                  fcvt.s.w   ft11, gp
                  fmv.x.w    s1, fa0
                  mulh        a6, ra, t2
                  slt         s8, a6, s3
                  slt         s4, zero, a0
                  srli        tp, sp, 25
                  fle.s      t0, fs6, fs11
                  slt         s6, s4, t6
                  srl         a7, t0, s8
                  fmax.s     ft1, fa3, ft0
                  fmin.s     fa6, fs9, ft8
                  fmax.s     fs5, fa1, fs8
                  sll         zero, s9, t3
                  sltiu       s3, s3, -622
                  xor         s0, ra, s2
                  srli        s6, t3, 17
                  fsgnjx.s   ft7, ft6, fs2
                  andi        t6, t3, -1243
                  fcvt.wu.s  a3, fa5
                  fle.s      s0, fs6, fa3
                  fcvt.s.w   fs5, a1
                  slli        s7, t2, 14
                  fdiv.s     fs8, ft1, ft6
                  fmin.s     fs3, fa7, ft7
                  mulhsu      a3, s4, t5
                  auipc       zero, 505811
                  fcvt.wu.s  ra, fs8
                  mulhu       t6, sp, t6
                  fsgnj.s    fs9, ft3, ft7
                  fmv.x.w    s4, ft1
                  fcvt.s.wu  ft8, t2
                  fcvt.s.w   fa4, t4
                  add         s11, s10, a5
                  mulh        ra, a5, tp
                  sltu        zero, s6, s10
                  fcvt.wu.s  t5, fs4
                  fmax.s     fs10, ft2, fs4
                  andi        t0, sp, 186
                  div         a4, a2, s8
                  fsgnjx.s   fa1, ft1, fa1
                  fcvt.wu.s  s7, ft8
                  srai        s5, a0, 29
                  mulh        t0, a5, t5
                  fcvt.wu.s  a6, fs11
                  fmul.s     fa3, fs6, fa3
                  div         a4, ra, a6
                  and         a7, tp, sp
                  slt         s3, s8, s10
                  fle.s      a7, fa3, ft3
                  fcvt.s.wu  fa1, s10
                  div         zero, t0, s7
                  auipc       s2, 95390
                  fle.s      sp, fs1, fa1
                  fsub.s     fs5, ft0, fs11
                  sltu        t0, zero, a5
                  ori         a1, s9, -732
                  and         s8, ra, s4
                  sub         t6, t5, a0
                  slt         a2, t1, a7
                  srai        gp, sp, 18
                  srli        s9, a1, 29
                  sltu        s3, a3, a1
                  fle.s      s5, ft8, ft11
                  fsub.s     fs0, fa7, fa6
                  and         s9, a7, s10
                  fcvt.s.w   fs0, s4
                  fmv.x.w    zero, fs0
                  fdiv.s     fa0, ft7, fa3
                  div         t5, t1, gp
                  ori         t1, a7, 1760
                  fclass.s   t5, fa3
                  fsgnjx.s   ft3, fs0, ft0
                  ori         zero, s8, 1123
                  fcvt.wu.s  s11, fa0
                  sra         a3, a6, t2
                  lui         t6, 717554
                  auipc       t6, 119507
                  sll         s11, a3, s5
                  xori        t1, t6, -401
                  fsub.s     fa1, ft2, fs10
                  rem         a0, s2, s11
                  fsgnjn.s   fa7, fs11, ft4
                  srli        t6, a4, 31
                  slt         sp, a2, t4
                  sll         s8, a4, a0
                  lui         s9, 125073
                  xori        a3, a3, 1417
                  or          tp, s3, t3
                  addi        a4, s6, 1275
                  srai        s5, s11, 6
                  fcvt.wu.s  s4, ft8
                  sll         t6, s4, a2
                  mulhu       s11, a4, gp
                  fsgnj.s    ft3, fa7, fa2
                  fcvt.s.w   fa3, t2
                  divu        s11, s0, zero
                  sll         s4, a0, s1
                  fdiv.s     fs7, fa3, fa5
                  ori         tp, t4, 929
                  fle.s      a2, fs3, fs9
                  ori         a0, s0, 911
                  slti        zero, gp, -170
                  srli        s0, s7, 21
                  srl         s1, s3, t1
                  andi        zero, t2, -1160
                  fcvt.wu.s  s5, fa4
                  nop
                  srai        t5, gp, 28
                  fmax.s     fs7, fs11, ft0
                  fsgnjn.s   fs0, fs8, fs1
                  flt.s      a0, ft5, ft5
                  mulhsu      zero, s1, s1
                  add         s11, ra, s7
                  slli        a0, s4, 17
                  fdiv.s     ft9, ft2, fs3
                  fdiv.s     ft1, fa5, fa1
                  feq.s      zero, ft4, fs1
                  sra         t1, t6, a2
                  slti        t1, a3, 1188
                  ori         s3, t0, -578
                  sra         t6, t3, t6
                  or          t2, a6, a6
                  fmv.x.w    ra, fs2
                  divu        sp, s7, s2
                  ori         sp, t4, -793
                  div         zero, a1, a0
                  xor         zero, a6, t6
                  lui         s11, 663085
                  fdiv.s     fs8, fs1, fa6
                  fclass.s   s9, fs8
                  rem         t0, s9, t3
                  fdiv.s     ft10, ft2, fs4
                  srai        s5, a1, 29
                  srai        zero, a5, 19
                  flt.s      s9, ft0, fs11
                  lui         s4, 849954
                  sub         t5, a7, t0
                  srli        t0, s5, 0
                  fsgnjn.s   fs2, ft11, ft3
                  fclass.s   zero, fa5
                  srai        zero, s4, 26
                  xori        t5, a2, 435
                  fsgnj.s    fs7, ft6, ft6
                  srli        t1, s7, 6
                  fle.s      zero, ft6, ft4
                  and         s5, s6, a3
                  srai        a7, a6, 21
                  slt         s10, a5, s9
                  srli        s2, a5, 11
                  fcvt.s.wu  ft9, a2
                  fdiv.s     fa1, ft10, fs7
                  fadd.s     ft0, fa7, fa3
                  lui         s9, 498569
                  xor         s11, t4, s4
                  or          a3, a1, t5
                  nop
                  feq.s      t5, fa2, ft2
                  fsqrt.s    fs4, ft10
                  rem         s8, s0, s10
                  fmv.x.w    s4, ft8
                  sra         gp, a7, s2
                  slti        s0, s8, 245
                  fmin.s     fa5, ft2, ft5
                  fmin.s     fs3, ft9, fa7
                  fsgnjx.s   fs5, fa5, ft1
                  fcvt.w.s   s8, fa3
                  auipc       t1, 22312
                  mul         zero, t2, s8
                  sub         s2, s10, s5
                  fcvt.w.s   s3, ft1
                  lui         s4, 275806
                  sub         t6, s10, gp
                  addi        a7, s9, 447
                  andi        s5, t0, -706
                  fadd.s     fs2, ft11, fa2
                  fcvt.wu.s  t6, fa2
                  fcvt.s.w   fs0, a5
                  srl         a0, zero, s0
                  slt         s6, s11, s2
                  or          zero, ra, s2
                  fcvt.wu.s  s6, fa3
                  nop
                  xor         zero, t4, a0
                  fsgnjn.s   ft4, fa1, ft3
                  srli        s6, sp, 0
                  sltu        s5, zero, t0
                  fmv.w.x    ft2, t1
                  fsgnj.s    ft3, fa0, fs5
                  sub         s11, s0, s4
                  fle.s      tp, fs3, ft5
                  sll         s6, s10, a2
                  auipc       s9, 488475
                  fmax.s     ft2, fa5, fs9
                  divu        a6, a5, s4
                  or          s1, t1, t5
                  mul         s8, s7, a2
                  fsgnjn.s   fs11, fs8, ft4
                  fsqrt.s    fs7, fs11
                  nop
                  xori        s4, a5, 566
                  add         a0, s0, t1
                  slti        s9, a4, 859
                  fsgnj.s    fa1, fa1, ft4
                  mulh        a6, a3, a7
                  sll         s1, t1, a4
                  ori         ra, tp, -1583
                  srai        t6, s8, 8
                  fcvt.w.s   s4, ft1
                  mulhu       s6, t3, a3
                  srai        zero, a3, 26
                  sll         a4, s1, s0
                  sub         a6, gp, a4
                  div         t6, a2, t2
                  fmin.s     ft0, fs7, fa3
                  srli        sp, t2, 4
                  ori         t5, s0, 514
                  fsqrt.s    fs4, fs0
                  fle.s      s9, fs3, ft8
                  fmul.s     fa6, ft8, fa4
                  fadd.s     ft1, ft9, fs7
                  fsgnj.s    ft1, fs8, ft8
                  sub         zero, a1, s7
                  andi        s9, s10, 1257
                  fsqrt.s    ft5, fs5
                  fsgnj.s    ft9, fs4, ft8
                  fsgnjx.s   ft4, fa3, fs6
                  fsgnjn.s   fs0, ft6, ft4
                  mulhu       a2, s5, a3
                  sub         a4, a3, a3
                  fmin.s     ft1, fs0, fa3
                  sltu        a2, s10, a5
                  fcvt.s.w   ft3, s10
                  ori         s6, ra, -1477
                  nop
                  fsqrt.s    ft1, ft3
                  fsgnjx.s   fs8, ft6, fs1
                  ori         a3, s10, -1559
                  andi        s0, a1, 710
                  fsgnjx.s   fs4, fs10, fs1
                  slti        t0, s9, 979
                  fmv.w.x    fs0, s0
                  fmin.s     fa3, ft2, fs4
                  fmax.s     fa0, fa1, fs7
                  fmul.s     fa1, ft3, ft0
                  fadd.s     fs2, ft10, ft7
                  fsqrt.s    fs6, fs8
                  div         s3, a3, t4
                  sll         s5, s0, s0
                  fsgnj.s    fa3, ft6, fs10
                  auipc       a6, 186942
                  fcvt.w.s   sp, fa1
                  srli        a4, t2, 29
                  sltiu       a7, s4, 372
                  fle.s      zero, ft0, fa4
                  fcvt.s.wu  ft9, t0
                  ori         a7, t4, -313
                  rem         a3, t3, t2
                  sltu        a4, s1, a3
                  fsgnjx.s   ft3, ft3, ft9
                  sub         s3, s4, s0
                  mulhu       t2, a4, t4
                  lui         s2, 997833
                  andi        s8, t0, -538
                  sltiu       s9, sp, -1237
                  fsgnjn.s   ft8, fs4, fs10
                  fcvt.s.wu  fs8, a3
                  rem         s1, s7, s7
                  addi        a6, s1, -402
                  fsgnjn.s   ft5, fa0, fa0
                  srai        s7, s1, 30
                  andi        s11, t4, -290
                  fcvt.w.s   ra, fa4
                  fsgnj.s    fa1, fs6, fs0
                  fsgnjn.s   fs9, fs7, fa2
                  fmax.s     fs8, fs8, fs7
                  mulhu       t5, tp, s2
                  fclass.s   s11, ft7
                  fdiv.s     fa1, ft5, ft11
                  mul         s2, s0, s4
                  rem         gp, a1, s4
                  feq.s      zero, fs6, ft1
                  sub         a6, t5, s11
                  addi        s11, s1, -1793
                  xor         zero, s5, s10
                  lui         a1, 612832
                  mulh        tp, a4, a7
                  fle.s      s3, fa5, fa2
                  fmul.s     fa1, ft11, fa0
                  sll         s8, s3, s5
                  divu        a0, s2, a7
                  fcvt.w.s   zero, fa1
                  sltu        s11, s1, s10
                  fmv.w.x    fs10, a3
                  fsqrt.s    fs11, ft10
                  lui         a4, 64848
                  sub         s3, s6, sp
                  add         s2, s10, s0
                  div         s10, s0, zero
                  sltiu       a3, a0, -1288
                  xor         s7, a2, t1
                  slli        sp, s4, 4
                  fcvt.s.w   fs1, s1
                  fcvt.s.wu  fa5, t1
                  slli        a6, a1, 23
                  fadd.s     fs7, fa4, fa0
                  fclass.s   s3, ft0
                  fcvt.w.s   t1, fs9
                  fmv.w.x    fs2, s1
                  xori        s4, gp, 106
                  auipc       s10, 354239
                  fadd.s     fa4, fs2, fs0
                  srai        s8, a1, 22
                  fmv.x.w    a3, ft5
                  mulhsu      s5, a0, t0
                  fsub.s     fa1, fs0, ft4
                  fsqrt.s    ft1, fs1
                  feq.s      t1, ft11, fa0
                  fcvt.s.w   fa3, s2
                  fle.s      s2, fs9, fs2
                  slt         t5, a1, s2
                  lui         a3, 462067
                  fle.s      a6, fs4, ft11
                  xor         a6, s6, t2
                  fcvt.wu.s  zero, fs0
                  slt         a0, a3, s6
                  divu        zero, t0, s6
                  fcvt.s.wu  fs10, t1
                  slli        s3, s10, 16
                  sltiu       s10, a5, -1791
                  mulhsu      zero, a2, s10
                  sll         zero, s8, s0
                  and         t5, a3, zero
                  fclass.s   s1, ft0
                  fmax.s     fa1, ft6, fa6
                  fmax.s     ft4, fs7, ft10
                  fdiv.s     fs7, fa7, ft7
                  fmv.x.w    s1, fs5
                  mulhu       t1, a0, t0
                  andi        gp, t1, -1649
                  fcvt.s.w   fa0, s11
                  srli        s10, a0, 28
                  mulhu       a3, t3, s7
                  sltiu       s0, sp, 1086
                  andi        s0, s9, 899
                  rem         a7, sp, t5
                  fsgnjx.s   ft3, ft5, fa7
                  flt.s      tp, ft3, ft8
                  sra         a4, tp, s0
                  srai        a0, t1, 25
                  flt.s      tp, ft3, fa5
                  srli        tp, s3, 14
                  fmul.s     fa3, ft7, ft8
                  fcvt.s.wu  ft5, tp
                  fsgnj.s    fa4, ft11, fs4
                  fmul.s     fs11, fs4, ft3
                  slt         a1, t6, s7
                  fsqrt.s    fa2, ft8
                  or          t5, t6, zero
                  sll         s9, a3, a4
                  sll         s4, t0, a6
                  fmin.s     fs8, fa6, fa2
                  lui         a1, 168956
                  mulhu       zero, a7, t0
                  divu        t5, t5, a4
                  fsgnjx.s   ft8, fs4, fs1
                  fcvt.s.w   fa2, t2
                  fcvt.s.wu  ft3, gp
                  xor         s10, t6, a0
                  flt.s      zero, fs0, fa4
                  mulh        t6, a6, a3
                  fcvt.s.wu  fs5, s8
                  srl         s9, s7, t1
                  mulh        a3, s6, ra
                  srl         t1, s8, s2
                  addi        a2, s11, -487
                  addi        t5, sp, -1891
                  srl         s4, a1, s2
                  or          s3, t6, t1
                  fsqrt.s    fa7, fs9
                  srl         s11, t3, t5
                  fcvt.s.w   fs10, t6
                  mulhu       s4, t5, a7
                  sub         a7, s3, a0
                  auipc       t0, 547891
                  divu        a3, zero, a3
                  fcvt.wu.s  s5, ft3
                  srli        s0, s3, 30
                  mulhu       a2, s8, ra
                  fclass.s   a1, fs6
                  fclass.s   zero, fs6
                  andi        t2, a5, -370
                  auipc       t6, 638835
                  sub         s6, s11, s6
                  mulhu       s3, a4, a5
                  and         s3, s10, s10
                  xor         zero, tp, s11
                  nop
                  srl         a4, a4, s1
                  srai        a2, ra, 10
                  mul         s8, t0, t2
                  slt         s8, s3, t0
                  slli        s3, s2, 12
                  and         t5, t4, t2
                  fmin.s     fs11, fs4, fs4
                  div         t0, t3, a2
                  addi        a2, a1, -1327
                  fdiv.s     ft9, fs7, fa3
                  mulh        t6, a7, a4
                  srai        t1, s4, 25
                  fmax.s     ft9, ft6, fa1
                  add         zero, t3, s7
                  flt.s      t0, fa2, fa6
                  sltu        s1, a1, s9
                  auipc       s7, 515878
                  sra         s5, sp, t0
                  fmul.s     fs1, ft2, ft7
                  fmin.s     fs9, fa6, fa2
                  fsqrt.s    fa7, ft5
                  sra         a7, t6, s6
                  fsgnj.s    fs2, ft11, ft4
                  fdiv.s     ft8, ft3, fa5
                  srl         tp, a2, a2
                  feq.s      s2, fa7, fa3
                  slli        sp, a4, 29
                  or          t6, s7, a7
                  srai        gp, t6, 20
                  feq.s      ra, fa2, fs11
                  srai        a3, a7, 14
                  fcvt.s.w   fs10, s9
                  feq.s      t2, fa3, fs6
                  fdiv.s     fs1, fs2, fs1
                  fcvt.w.s   a4, fs6
                  ori         a0, t3, 308
                  rem         s0, s9, a0
                  mulh        s5, s10, s0
                  fmin.s     fs5, ft7, fa6
                  lui         s11, 226954
                  srl         tp, a6, t5
                  sltiu       a6, a2, -1804
                  fcvt.s.wu  fs8, s4
                  slt         a2, s10, sp
                  xor         a4, t2, s4
                  fsub.s     ft2, fa3, fa0
                  feq.s      s0, fs5, ft3
                  sub         a1, a7, sp
                  fcvt.s.wu  ft11, s5
                  srai        s6, a0, 16
                  sra         a6, a3, t5
                  ori         a2, s3, 1832
                  fcvt.wu.s  zero, ft10
                  addi        s11, s3, 502
                  fcvt.w.s   s9, ft10
                  sltiu       t1, s3, 1942
                  add         zero, s2, sp
                  nop
                  feq.s      s3, ft11, fs8
                  fadd.s     fs9, ft11, fs11
                  fmin.s     fs0, fa3, ft7
                  mulh        zero, a5, s1
                  nop
                  mul         s7, a7, sp
                  sra         s10, gp, t6
                  fcvt.s.w   ft2, t3
                  fcvt.s.wu  fa0, t0
                  add         ra, sp, s8
                  auipc       s1, 733909
                  flt.s      sp, ft5, ft8
                  auipc       tp, 166770
                  fcvt.s.w   fa4, s8
                  ori         s7, zero, 488
                  fmin.s     fs11, fa6, fa1
                  fcvt.s.wu  fs10, sp
                  fcvt.wu.s  s4, ft7
                  flt.s      sp, ft0, fa4
                  fmv.w.x    fs1, t2
                  sll         a6, gp, s6
                  srl         s8, a6, a5
                  mulhsu      s1, a1, a0
                  fcvt.w.s   a6, fa5
                  slti        a1, s4, 423
                  fcvt.w.s   zero, ft5
                  mulhsu      a7, a6, ra
                  fclass.s   s10, fa1
                  fmv.x.w    gp, fa1
                  sltu        gp, s1, a2
                  sll         s5, a0, t1
                  fadd.s     ft10, fs2, ft2
                  auipc       t6, 984299
                  fmax.s     ft4, fs9, ft0
                  fadd.s     ft6, fs0, ft6
                  div         a1, a4, s1
                  fsgnjn.s   fa0, fa1, fa2
                  fcvt.s.wu  ft6, gp
                  sra         t1, s1, a0
                  fle.s      s7, fa7, fs3
                  srai        t1, s3, 14
                  xor         s11, t6, s4
                  fle.s      s5, ft6, fs0
                  sll         a0, t5, t6
                  sra         s9, t1, s8
                  fmv.x.w    s2, ft0
                  fmax.s     fs10, ft6, fs7
                  rem         a4, a0, a7
                  fsqrt.s    fa4, fa2
                  fsgnjn.s   ft0, ft5, ft6
                  lui         s0, 946583
                  sra         s2, s1, t0
                  fsqrt.s    fs6, ft6
                  sra         s2, s8, s2
                  fsgnjn.s   fa7, fs4, ft4
                  fsub.s     fs2, fa4, fa2
                  fdiv.s     fs3, fs10, ft11
                  xor         t5, s9, a3
                  fadd.s     fs5, ft1, fa1
                  rem         s11, s2, a0
                  rem         s9, t6, s5
                  divu        a7, s4, sp
                  lui         zero, 768104
                  fmin.s     ft6, ft11, ft5
                  fmul.s     ft2, fa6, ft4
                  sub         s11, t2, t5
                  fle.s      ra, fs3, fs10
                  fclass.s   t5, fa1
                  add         a6, ra, a4
                  divu        s10, t1, a3
                  lui         sp, 835456
                  slli        tp, a7, 20
                  srl         a4, t1, s4
                  fmax.s     fs7, fs11, ft3
                  srai        s1, s6, 3
                  fmin.s     ft8, ft0, fs9
                  mulhsu      s3, s9, a5
                  nop
                  mulhu       t2, a2, t6
                  and         tp, s4, s5
                  sra         t1, s10, t6
                  fmv.x.w    t6, fa1
                  sltu        a0, s4, s10
                  slt         s10, zero, s5
                  fmax.s     ft3, ft5, fs3
                  flt.s      s6, ft9, fs3
                  mulhsu      s3, s0, a4
                  fmin.s     fa2, fa7, ft4
                  mulhsu      s0, ra, t0
                  fsqrt.s    fa0, fs10
                  srl         s3, a0, s11
                  fcvt.wu.s  tp, fa4
                  fmv.x.w    a0, fs7
                  sub         a1, a7, t3
                  addi        sp, a4, -964
                  fsqrt.s    ft2, fa2
                  ori         zero, s5, 854
                  ori         ra, t2, -1524
                  sra         zero, ra, t1
                  slt         a2, sp, t1
                  fsgnj.s    ft7, fs11, fa6
                  sra         a6, s7, a0
                  fmv.w.x    fs11, a6
                  fsgnjx.s   fa1, ft2, fs0
                  addi        ra, t0, 1753
                  sra         s7, tp, a7
                  div         tp, a4, s7
                  nop
                  fcvt.s.w   ft7, sp
                  add         ra, s6, s4
                  divu        t6, s3, s0
                  addi        zero, a4, -727
                  sra         t1, zero, t6
                  mulhsu      a0, s3, s6
                  fsgnjn.s   fs3, fs4, fs6
                  auipc       s11, 370111
                  xori        zero, a7, 565
                  auipc       a4, 222491
                  slli        s11, s2, 21
                  xor         t5, s6, sp
                  fsgnjn.s   fs11, fa4, ft4
                  nop
                  fsqrt.s    fs8, fs0
                  feq.s      s3, ft11, fs8
                  sltu        t2, s1, t3
                  fcvt.s.wu  fs10, s4
                  fclass.s   t1, ft10
                  sltiu       s1, t3, 1242
                  divu        zero, a2, a5
                  div         zero, a1, t5
                  fcvt.wu.s  a6, fa4
                  fmin.s     fa6, fa5, ft2
                  fcvt.s.wu  fa2, a7
                  fcvt.s.w   ft0, tp
                  fsgnj.s    fs0, fa5, ft2
                  fsgnjn.s   fs8, fa3, fs1
                  rem         zero, t6, s1
                  slli        t2, a6, 9
                  mulh        t6, zero, t2
                  feq.s      s6, ft0, ft7
                  flt.s      a1, fs5, ft2
                  fmul.s     fs0, fa3, fs3
                  fmv.x.w    s2, fs11
                  auipc       a1, 650250
                  slli        zero, s8, 1
                  fmin.s     fa6, fa1, fs0
                  fmax.s     ft6, ft8, ft7
                  auipc       s6, 637626
                  mulhu       zero, t2, a5
                  slli        s3, t2, 27
                  divu        s10, s7, t3
                  fcvt.s.w   ft7, a1
                  fmv.w.x    fs2, s4
                  fmv.w.x    fs4, sp
                  fsqrt.s    fa2, ft2
                  nop
                  fcvt.wu.s  s4, ft6
                  fmv.w.x    ft2, s3
                  fsqrt.s    ft11, ft9
                  sll         zero, t1, t1
                  fcvt.w.s   gp, fs5
                  fsub.s     fs10, fs8, ft8
                  andi        a7, s3, -344
                  fmax.s     ft6, ft5, ft4
                  sra         a3, t0, t4
                  auipc       t1, 508432
                  fcvt.s.wu  fs4, t5
                  sltiu       a3, a6, -306
                  mulh        a7, gp, a0
                  add         s6, s0, s5
                  addi        zero, s2, 1922
                  add         t5, s10, s6
                  andi        s3, a2, 104
                  srli        gp, s7, 10
                  fcvt.s.wu  ft0, a4
                  flt.s      s10, fa3, fa4
                  div         a0, a7, a0
                  fmv.x.w    t2, ft4
                  flt.s      t2, fa4, fa6
                  ori         a1, s2, 63
                  fmul.s     ft7, ft6, fs2
                  sltiu       s10, gp, 640
                  ori         s1, t1, 954
                  fclass.s   a3, ft6
                  fclass.s   a6, fs4
                  fsub.s     fs3, fa6, fa7
                  sltu        t6, a7, a4
                  sll         ra, s0, s3
                  sll         gp, s5, s4
                  fmax.s     fs9, ft10, ft7
                  sub         t6, s10, s8
                  addi        a1, t3, -1537
                  srl         s6, t6, gp
                  mulhu       s8, a4, s1
                  fcvt.s.w   ft0, s3
                  slt         s9, t6, t2
                  slt         a7, t6, a5
                  nop
                  slti        s8, a7, 1095
                  fcvt.s.wu  fs2, tp
                  mulhsu      t0, a7, a1
                  srl         s9, gp, a0
                  sra         a1, ra, t2
                  sub         gp, s8, t2
                  fmax.s     ft1, fs4, fs0
                  fsub.s     ft7, fs11, fs2
                  xor         tp, ra, s7
                  auipc       t5, 801656
                  and         s2, a0, a3
                  fsgnjn.s   fs5, fa3, fs8
                  mulh        s4, s3, s5
                  fcvt.s.w   fs0, tp
                  and         t5, a4, a0
                  divu        zero, a4, tp
                  xor         a7, t5, a3
                  div         t0, s0, t4
                  andi        zero, s5, -492
                  fcvt.w.s   s10, ft1
                  fsqrt.s    fs3, ft7
                  fcvt.wu.s  ra, ft5
                  ori         t2, s10, -738
                  sltu        a2, t3, gp
                  fmul.s     ft9, fs9, ft6
                  fmax.s     fs8, ft8, fa1
                  rem         a2, a2, s4
                  mulhsu      t2, s0, s3
                  fmax.s     ft5, ft1, fa5
                  sra         a0, a6, t3
                  andi        a3, s5, -208
                  fmul.s     fa0, ft5, ft4
                  sra         tp, s11, s8
                  fmul.s     fs6, ft6, fs10
                  xori        s7, a3, 1953
                  fsgnjn.s   ft1, fs6, ft11
                  srli        zero, s0, 4
                  sra         a3, a0, gp
                  fcvt.w.s   s6, fs3
                  mulhsu      t0, a6, s11
                  fsub.s     ft8, fa7, ft6
                  xor         t0, a0, a4
                  mulh        s8, t6, a6
                  mulhsu      ra, s1, t2
                  slti        t2, zero, -290
                  sltu        zero, t3, s7
                  sltiu       ra, a6, -1287
                  divu        ra, s7, a6
                  fcvt.s.w   fs0, a3
                  slti        t6, a4, -2021
                  fadd.s     fs4, ft7, fa6
                  slt         zero, s11, s6
                  ori         a6, a5, 522
                  fmv.w.x    fa0, t3
                  auipc       s11, 60366
                  fmin.s     fs2, ft7, fs5
                  fcvt.s.wu  ft1, s8
                  add         a2, a5, t6
                  ori         a0, s1, -719
                  srai        sp, sp, 27
                  xori        tp, s4, -1492
                  andi        tp, a2, 150
                  fdiv.s     fs0, fs2, ft8
                  fcvt.s.wu  fa3, t5
                  xor         s11, s11, s5
                  slti        zero, ra, 9
                  mulhsu      a0, a2, a0
                  slti        s7, t6, 877
                  fcvt.wu.s  ra, fs8
                  feq.s      tp, fa7, fa2
                  and         a3, a7, t4
                  fclass.s   s1, fs11
                  slt         s11, a2, s4
                  and         a1, gp, s7
                  rem         t2, zero, a7
                  srai        t6, a1, 30
                  sltiu       s2, s1, -1790
                  slli        t6, a3, 27
                  srli        t1, a6, 18
                  fdiv.s     fs11, fa3, ft5
                  lui         a1, 966515
                  addi        a2, ra, 1699
                  sltu        sp, t0, a2
                  lui         a3, 465164
                  fmul.s     fs0, fs10, ft2
                  mulh        tp, a4, s1
                  rem         a1, s5, t2
                  fsgnjx.s   fs6, ft1, fs10
                  fmul.s     ft10, fs3, fa7
                  fmv.x.w    a2, fa2
                  fmul.s     ft4, ft2, fs7
                  sltu        a0, s5, sp
                  sll         s9, a5, t6
                  nop
                  fcvt.s.w   fs3, a4
                  ori         s3, t2, -593
                  sra         a6, t2, a0
                  divu        s1, s8, gp
                  fmv.w.x    fs0, s11
                  mulhu       ra, s10, s8
                  fadd.s     ft3, fs10, ft3
                  srl         ra, a0, a0
                  addi        zero, sp, -930
                  fsgnjn.s   ft2, fs11, fs1
                  fmv.w.x    fs2, ra
                  andi        t6, t4, -714
                  fmv.x.w    tp, fs2
                  fsgnj.s    fa1, ft7, fs11
                  feq.s      a3, fa4, fs4
                  mulhu       zero, s3, t0
                  mulh        a6, a7, t6
                  fdiv.s     fa3, fa5, fa7
                  rem         a3, a6, s1
                  addi        s5, s7, 1726
                  and         a7, ra, tp
                  sub         a7, s6, tp
                  fadd.s     fa5, ft9, fa3
                  sub         t1, a3, tp
                  fmv.x.w    zero, ft2
                  slti        s6, s8, -768
                  xor         t0, sp, ra
                  srai        s3, a2, 11
                  sra         zero, a5, t1
                  nop
                  mul         tp, a3, s11
                  fmin.s     ft10, ft11, fa7
                  fsqrt.s    fa0, fa2
                  srli        a7, s4, 11
                  rem         s1, t0, s3
                  fcvt.w.s   tp, fa7
                  xori        gp, t4, 1025
                  fsqrt.s    fs7, fs5
                  sltiu       s1, s2, 1290
                  sll         tp, s6, tp
                  divu        gp, s4, ra
                  fadd.s     fs5, fs10, fs3
                  sub         sp, a3, t4
                  sub         s0, s5, s2
                  or          s4, t6, s5
                  fsub.s     fa4, fs5, ft2
                  and         a2, a7, s1
                  fsgnjn.s   fa4, fs11, fs11
                  sltiu       s10, s5, -514
                  srl         ra, a0, a4
                  xor         s10, a0, s6
                  fcvt.s.w   fa5, t2
                  fle.s      zero, fa4, ft4
                  srl         zero, gp, t2
                  or          t6, sp, s6
                  fsgnjx.s   fa0, fs1, ft2
                  fdiv.s     fs5, fs4, fa2
                  srl         s5, sp, t5
                  fdiv.s     fa0, ft9, fa3
                  mulhsu      s3, s8, t2
                  and         s1, a3, tp
                  fcvt.s.w   ft11, s6
                  slli        a1, tp, 11
                  fclass.s   a3, ft3
                  feq.s      s2, fs0, fs10
                  addi        t5, a0, -426
                  fcvt.w.s   a4, fs9
                  div         s11, s2, tp
                  srli        zero, s2, 0
                  feq.s      s11, fs4, fs6
                  add         t5, t5, s1
                  srli        zero, a6, 18
                  fmin.s     fa1, ft3, fs6
                  sltiu       t0, sp, -948
                  fcvt.w.s   s11, fs4
                  mulhsu      s7, t4, s5
                  rem         t6, a4, a0
                  mulhu       t5, a1, s5
                  fcvt.w.s   sp, ft10
                  fclass.s   zero, ft10
                  xori        s7, zero, 2003
                  addi        a0, s8, 25
                  fsgnjx.s   ft0, fa7, fs7
                  rem         s8, s9, a4
                  rem         s8, a4, t6
                  rem         s11, gp, s11
                  fmv.w.x    fs11, t3
                  lui         a2, 53954
                  fclass.s   s8, fa6
                  fmax.s     fs1, fa2, fa4
                  fdiv.s     ft11, fs7, fa6
                  xor         s6, s11, a7
                  and         t5, gp, t4
                  mul         ra, zero, a0
                  srli        s0, s10, 26
                  mulhsu      s3, s11, t6
                  sll         a2, s0, s7
                  fmv.x.w    s6, ft7
                  xor         s11, t4, s7
                  flt.s      zero, fs4, ft7
                  fmv.x.w    a7, fa6
                  srl         zero, s4, s2
                  slli        s4, s3, 8
                  sltu        zero, tp, s9
                  srli        gp, t4, 9
                  andi        zero, a2, 404
                  fsub.s     fs9, fs6, ft11
                  div         s6, s1, t0
                  sltiu       s2, a4, -665
                  feq.s      ra, fa0, ft5
                  or          zero, t5, s0
                  mulhu       s5, s5, s11
                  flt.s      ra, fs6, ft2
                  add         s0, s3, ra
                  fdiv.s     ft8, fs10, ft2
                  fsub.s     ft4, fa4, fs0
                  auipc       s8, 972090
                  fcvt.wu.s  gp, ft6
                  sltiu       a2, s2, -922
                  fcvt.s.w   ft1, a4
                  fsgnj.s    fs9, ft2, fs4
                  mul         zero, a3, s11
                  divu        t2, s7, t1
                  div         zero, a0, t5
                  sltu        s0, gp, sp
                  fcvt.s.wu  fa5, sp
                  srai        tp, s8, 25
                  div         t0, s2, s4
                  and         s3, ra, s7
                  or          s10, zero, t2
                  fmax.s     fs1, fs11, fs1
                  sltiu       tp, s10, -594
                  fcvt.w.s   ra, fa1
                  add         a6, t6, t6
                  fclass.s   a0, fs4
                  slli        s11, a7, 20
                  mulhsu      zero, zero, a2
                  mulh        s11, s5, t1
                  xor         ra, a7, gp
                  fmin.s     fs8, ft3, fa0
                  fsub.s     ft10, fa3, ft7
                  fsgnjx.s   ft6, fs10, fa1
                  fcvt.s.wu  ft3, s0
                  sra         s2, t2, a7
                  fsgnjx.s   ft4, fa6, ft5
                  sra         s2, a0, s8
                  srai        s11, a2, 17
                  slt         a0, sp, sp
                  fsgnjn.s   ft7, ft4, fa1
                  slt         a1, s1, s7
                  fcvt.w.s   t2, ft2
                  divu        zero, a1, s11
                  slti        s2, t1, -49
                  fmv.x.w    a3, fs5
                  mulhsu      s9, a1, s3
                  mulhsu      s4, t3, t3
                  slti        s1, s3, -16
                  xor         a7, s10, t1
                  mulhsu      t5, a5, tp
                  sub         a2, s10, t1
                  rem         s7, a5, a1
                  fcvt.s.wu  ft5, a2
                  fle.s      s9, fs4, fa0
                  mulh        zero, gp, s10
                  srl         zero, s6, t1
                  mulhu       s11, t0, s6
                  feq.s      sp, fs4, fa2
                  sltu        t2, s7, t4
                  mulh        ra, a4, a1
                  xori        zero, s6, 1197
                  fsgnj.s    ft7, ft4, ft3
                  sltu        a4, s8, tp
                  mulh        a4, t3, s0
                  fdiv.s     fs8, fs10, ft8
                  fsgnjn.s   fa5, fa4, fa6
                  fsgnjn.s   fs1, ft11, ft2
                  fcvt.wu.s  a4, fs10
                  srli        s1, s5, 25
                  fmv.w.x    fa4, a1
                  sll         s10, a4, a1
                  fmv.w.x    ft6, t3
                  srl         t6, s9, t1
                  srl         s2, t1, tp
                  add         s11, t1, s5
                  fle.s      zero, fa2, fs8
                  add         a3, t5, t0
                  mulhsu      a1, a2, a1
                  fdiv.s     fa6, ft10, fa7
                  fle.s      t2, fa7, fa0
                  xor         t2, s10, s0
                  lui         t1, 531880
                  addi        zero, s7, -754
                  rem         s10, a3, s6
                  and         t6, sp, t2
                  fsqrt.s    ft1, ft11
                  fadd.s     ft9, fs4, fs10
                  slt         sp, t2, s5
                  auipc       s9, 383951
                  flt.s      t2, ft3, fs3
                  sll         t5, a4, tp
                  srl         zero, sp, t2
                  fmax.s     fa3, ft7, ft5
                  addi        zero, a3, 1419
                  fmv.x.w    s5, ft4
                  mulhsu      s3, t2, t4
                  xori        a2, a7, -145
                  slti        tp, s7, -161
                  slt         a0, s11, s11
                  addi        t6, a4, -1808
                  fsgnjn.s   ft3, ft10, fs4
                  fcvt.s.w   fa1, t0
                  fsqrt.s    ft9, ft10
                  or          s5, a6, a3
                  fmul.s     fa7, fs3, fa6
                  srli        a7, s10, 23
                  slti        s4, s5, -826
                  sltu        sp, t6, t4
                  sltu        s0, a5, s1
                  fsgnjx.s   fa2, fs2, fa5
                  and         a0, s11, t0
                  slli        s2, s1, 26
                  fadd.s     fs5, ft4, ft9
                  lui         s8, 1023955
                  auipc       a3, 788244
                  mulhu       s10, s0, a7
                  sltu        s2, a3, t1
                  mul         a0, t1, a7
                  and         tp, a0, s10
                  mulhsu      s0, t4, t0
                  fsgnjn.s   fa3, fa7, fs8
                  fcvt.s.w   fs10, s2
                  xori        s10, t4, -1866
                  fsgnj.s    ft6, fs6, fa1
                  lui         s5, 623711
                  nop
                  xor         s8, t5, s5
                  fsgnj.s    ft4, fs5, fs11
                  xor         s10, a6, s6
                  fsqrt.s    ft5, fs0
                  mulhsu      s0, s9, t0
                  mulh        a3, t4, s11
                  fsgnj.s    fs0, fs5, fs2
                  fdiv.s     fa2, ft8, ft4
                  ori         s7, a6, 1027
                  fsgnjn.s   ft2, fs5, fs2
                  nop
                  andi        a2, s5, -1098
                  fmv.w.x    ft7, a3
                  sll         a1, t3, s11
                  addi        s5, t1, -545
                  srl         s6, s9, s6
                  fsqrt.s    ft7, fa1
                  mulhu       zero, t3, s0
                  srl         t5, tp, t2
                  xor         a2, a5, s6
                  sub         s2, a5, s5
                  sltiu       sp, s5, -1766
                  fmv.x.w    t5, fs7
                  ori         s0, t5, 758
                  sub         zero, sp, a5
                  srli        s2, s8, 21
                  rem         a7, a1, s7
                  xor         s7, ra, gp
                  slt         a2, sp, s4
                  auipc       s10, 315743
                  feq.s      s3, ft0, fa4
                  fadd.s     fa7, fs2, ft0
                  fsgnjn.s   fs7, ft3, fs1
                  or          t6, a4, s8
                  sll         zero, t6, t2
                  srli        s6, s7, 16
                  fmul.s     ft0, fa1, fs4
                  xor         s0, a5, a3
                  andi        a3, s5, -627
                  sltiu       zero, t2, -27
                  fmul.s     ft5, ft9, fs11
                  fmax.s     fs9, fs9, fs2
                  fcvt.w.s   t2, fs8
                  fmul.s     ft0, fa4, ft3
                  add         s7, t1, t5
                  srli        s6, s7, 4
                  divu        s7, t5, s10
                  nop
                  sll         s7, s10, a2
                  fmul.s     ft5, fs2, fs11
                  or          a1, s1, a2
                  fsgnjn.s   fa6, fa6, fa7
                  fle.s      sp, ft0, fs4
                  sub         s11, t4, ra
                  divu        zero, a3, s3
                  fmul.s     fs1, ft5, fs2
                  lui         a1, 42335
                  sll         a2, a2, a5
                  fsub.s     fs8, ft7, ft0
                  rem         s2, a0, s6
                  feq.s      s5, fa2, ft4
                  fsgnj.s    ft11, ft1, ft11
                  nop
                  fcvt.w.s   t2, ft5
                  srl         a6, t1, t2
                  fclass.s   a3, ft7
                  srl         s1, s10, s10
                  fcvt.s.w   fs9, t6
                  fcvt.wu.s  s2, fs9
                  fsqrt.s    fs0, ft3
                  fsgnjx.s   ft6, ft1, ft4
                  mulhu       a1, sp, s10
                  xori        sp, s4, 592
                  fmin.s     fs11, fa5, ft2
                  mulh        s2, s3, s7
                  sltiu       s7, s10, -178
                  sltu        s10, gp, s9
                  srai        zero, a3, 21
                  slli        a3, t4, 15
                  fcvt.w.s   s2, fs1
                  feq.s      t5, ft3, fa0
                  srl         a4, a1, s9
                  srl         a6, s7, s5
                  sltu        t0, a0, a6
                  fcvt.s.w   fa2, s9
                  feq.s      t1, fs1, fa6
                  and         s6, tp, t6
                  sub         s8, sp, t6
                  addi        a4, ra, -10
                  sltu        sp, ra, s1
                  fmul.s     ft6, ft1, fs0
                  mulhu       s4, t2, a4
                  fmul.s     fa1, fs11, fs1
                  or          sp, s11, s6
                  lui         a0, 867774
                  fcvt.s.w   ft2, s4
                  srai        a2, a7, 18
                  div         s9, zero, t1
                  srl         s4, t4, t3
                  fsub.s     fa1, fs4, fs0
                  slti        s3, s5, -40
                  fmul.s     fs5, fa6, fs8
                  or          s1, a0, tp
                  fmul.s     ft11, ft7, ft8
                  auipc       a3, 676536
                  fcvt.s.w   ft6, a0
                  fmax.s     fs1, fs5, fs7
                  fsgnj.s    fs6, fa1, fa4
                  fmul.s     fa5, fs1, fa0
                  xor         s4, a2, s8
                  xor         a2, a7, s7
                  fmin.s     ft3, fs10, fa6
                  fle.s      tp, fs6, fa6
                  fsgnjn.s   ft1, fa7, ft7
                  slt         tp, s5, s6
                  fcvt.s.wu  fa5, a0
                  feq.s      ra, fs9, fa3
                  divu        s10, t6, t6
                  mulhsu      a1, s10, a2
                  mul         a2, a3, a2
                  fadd.s     ft8, fs8, fa4
                  fadd.s     ft0, fs11, fa1
                  fsqrt.s    fs1, fs11
                  or          s9, s3, t6
                  andi        s10, s3, -859
                  mulh        a7, s11, s1
                  mulhu       zero, zero, gp
                  mul         a7, t1, t6
                  fsub.s     fs11, fa6, fs7
                  rem         a2, a1, ra
                  feq.s      a4, fs7, fa6
                  slti        s8, t2, -506
                  fmv.w.x    fs9, s4
                  lui         s8, 489142
                  srl         t5, s4, s0
                  fsub.s     fa2, ft3, fs8
                  fcvt.w.s   s4, ft2
                  andi        s1, a1, -790
                  divu        a2, t0, a4
                  slt         t0, a7, sp
                  div         s4, a6, a7
                  fdiv.s     ft8, ft5, fs2
                  fcvt.s.wu  ft6, s1
                  xori        sp, t1, 2007
                  fmul.s     ft6, fs9, ft1
                  addi        ra, s1, -737
                  rem         a2, a2, t2
                  slt         gp, t0, s4
                  fcvt.wu.s  ra, ft6
                  fsgnj.s    fs1, fs1, ft2
                  fcvt.s.w   fs0, zero
                  srai        s1, t5, 8
                  sltiu       s4, t6, 1230
                  flt.s      zero, ft9, ft3
                  or          zero, s3, zero
                  xor         a1, s11, s0
                  xori        a6, t3, -989
                  mulhsu      a7, a3, a6
                  fcvt.s.w   fa2, s1
                  fcvt.s.w   fa6, t2
                  slti        s3, ra, -1669
                  mulhsu      tp, a4, gp
                  fcvt.s.w   fs7, s9
                  rem         a3, s6, s7
                  fle.s      a1, fs7, fs4
                  or          t5, s1, zero
                  and         t0, s3, t4
                  mulh        ra, t4, a1
                  ori         s7, s9, 1541
                  sltu        t2, gp, s11
                  nop
                  fsqrt.s    ft3, fs9
                  or          zero, s0, t3
                  slli        ra, s4, 2
                  fsgnjx.s   ft5, fs9, fa3
                  fmin.s     fs8, fs8, ft9
                  xori        s3, gp, 542
                  fle.s      s11, fs2, ft9
                  xori        a4, a1, -1877
                  slti        gp, t1, 2002
                  slti        zero, ra, -642
                  flt.s      s8, ft7, fs4
                  srai        sp, t2, 11
                  addi        a1, s3, -1128
                  fsgnjn.s   ft0, fa1, fs4
                  fcvt.s.wu  fa2, s1
                  or          t0, s5, sp
                  fsub.s     ft10, ft9, fs4
                  feq.s      s8, ft8, ft1
                  addi        s11, a6, 1641
                  rem         s3, a2, a1
                  flt.s      t1, fa6, ft11
                  fmax.s     fs5, ft0, fs7
                  auipc       t0, 75871
                  add         s6, s8, zero
                  and         s3, s6, t3
                  slti        a2, t4, 570
                  divu        s9, a5, t3
                  fsgnj.s    fs0, fs6, fs6
                  fsub.s     ft7, fs11, fs7
                  fmv.w.x    fs9, t3
                  fmul.s     fs4, fa0, fs5
                  sub         s0, s2, s2
                  fsub.s     fs0, fs9, ft5
                  auipc       t2, 749296
                  slt         a1, t3, s7
                  slli        ra, t3, 30
                  fdiv.s     ft6, fs9, ft8
                  feq.s      s9, ft7, fa5
                  nop
                  fsgnj.s    ft5, fs7, fa7
                  slti        s9, sp, -571
                  sltu        a2, t5, a2
                  addi        a0, a5, -2021
                  fsgnj.s    fs11, fs7, fs7
                  rem         sp, t6, s1
                  divu        s9, s6, zero
                  fmv.x.w    tp, fa4
                  mulh        s3, a0, s1
                  rem         a4, t1, s3
                  fsgnjn.s   ft4, ft4, ft9
                  fsgnjx.s   fs11, fs0, ft5
                  slt         s11, s7, s4
                  nop
                  xori        zero, s3, -951
                  fsqrt.s    fa7, ft8
                  sltiu       s7, ra, -1002
                  slti        t5, s10, 1694
                  or          tp, t0, a5
                  rem         s2, a0, a6
                  fsgnjn.s   ft11, ft7, ft7
                  slli        s1, s1, 27
                  fmax.s     ft3, ft9, ft1
                  sll         zero, s4, t3
                  xori        s5, s1, -486
                  slli        s6, t6, 16
                  andi        s7, t5, 1780
                  fsqrt.s    fa3, fa2
                  fle.s      t0, fs9, fa4
                  mulhsu      a4, t1, s4
                  fadd.s     fa5, fa0, ft11
                  fclass.s   zero, fa4
                  nop
                  mulh        s8, s9, s7
                  slli        a7, s8, 9
                  andi        t1, a5, 1080
                  divu        s4, s2, s0
                  andi        s4, zero, -816
                  auipc       s10, 987333
                  slti        a7, a7, -1952
                  fdiv.s     fa4, fa4, ft1
                  lui         s1, 812220
                  srl         s11, t1, s3
                  fcvt.w.s   ra, fs9
                  fmin.s     ft7, fa0, ft3
                  xor         a4, s5, s3
                  fsgnjx.s   ft6, ft6, fs5
                  andi        s10, s5, 1505
                  fcvt.w.s   sp, fs11
                  slt         ra, zero, tp
                  divu        s0, a1, s8
                  slli        s11, tp, 9
                  fle.s      zero, fa4, fs10
                  slli        a2, tp, 27
                  feq.s      a7, ft6, ft2
                  sltiu       t2, t5, 253
                  fcvt.wu.s  s0, fa2
                  sra         s5, s6, t3
                  sub         s1, s5, a2
                  srai        a2, a4, 21
                  add         s7, t5, s10
                  fsqrt.s    fs8, fs2
                  div         a2, gp, ra
                  fsqrt.s    fs8, ft6
                  slti        a6, ra, 1224
                  andi        zero, t4, 143
                  addi        s2, t3, -121
                  nop
                  fclass.s   t6, ft9
                  fsqrt.s    ft2, ft5
                  fcvt.w.s   zero, ft11
                  fmax.s     fa1, fa2, ft7
                  add         t6, s2, a4
                  fsub.s     fs8, fa6, fs1
                  xor         s2, s6, t0
                  fcvt.s.wu  ft7, t0
                  fmax.s     fa6, fa6, ft11
                  lui         s0, 111857
                  fcvt.w.s   a0, ft5
                  or          a7, t3, t1
                  mulhsu      a7, t0, s4
                  feq.s      s1, fs1, ft10
                  fmin.s     ft2, ft6, ft7
                  div         a1, a0, s1
                  nop
                  mulhsu      s10, s3, a7
                  slti        t5, s10, 1183
                  srai        s10, s2, 31
                  auipc       zero, 23526
                  fadd.s     fs5, fs7, ft4
                  ori         sp, a3, -891
                  mulh        s1, s4, zero
                  fsqrt.s    fa3, ft2
                  feq.s      t5, fa3, ft10
                  sub         s7, a0, t0
                  addi        tp, gp, -1324
                  fmax.s     fa5, ft11, fs0
                  fsgnjn.s   fs5, fs0, ft9
                  sll         a0, s6, sp
                  srai        sp, s7, 29
                  fle.s      s5, fs11, fa5
                  divu        a0, a4, a3
                  fdiv.s     fs11, fs1, ft9
                  fle.s      t6, ft10, ft0
                  mulh        a7, a0, s2
                  fsgnjn.s   fa1, fa6, fs10
                  sltiu       a6, s0, 764
                  fclass.s   s2, ft6
                  fdiv.s     ft7, ft1, ft11
                  auipc       tp, 469371
                  sub         a1, a2, tp
                  sltu        s0, s7, a3
                  fsgnjx.s   fa5, ft4, ft4
                  and         zero, a3, t6
                  div         sp, zero, s4
                  fcvt.w.s   a3, fa7
                  fcvt.wu.s  zero, fs10
                  flt.s      s2, fs10, fs2
                  fsgnjx.s   fs6, fs0, fs3
                  ori         s4, t1, 1071
                  sra         t0, s6, s10
                  fadd.s     fa2, fs9, fs1
                  srli        ra, t3, 12
                  fclass.s   s8, ft3
                  add         a7, s2, s4
                  srli        s1, a1, 13
                  fsgnjx.s   fa5, ft11, fs11
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
.rept 499
.4byte 0x0
.endr
user_stack_end:
.4byte 0x0
.align 2
kernel_instr_start:
.text
.align 2
mtvec_handler:    
                  csrrw x28, 0x340, x28
                  add x28, x29, zero
                  1: addi x28, x28, -124
                  sw x1, 4(x28)
                  sw x2, 8(x28)
                  sw x3, 12(x28)
                  sw x4, 16(x28)
                  sw x5, 20(x28)
                  sw x6, 24(x28)
                  sw x7, 28(x28)
                  sw x8, 32(x28)
                  sw x9, 36(x28)
                  sw x10, 40(x28)
                  sw x11, 44(x28)
                  sw x12, 48(x28)
                  sw x13, 52(x28)
                  sw x14, 56(x28)
                  sw x15, 60(x28)
                  sw x16, 64(x28)
                  sw x17, 68(x28)
                  sw x18, 72(x28)
                  sw x19, 76(x28)
                  sw x20, 80(x28)
                  sw x21, 84(x28)
                  sw x22, 88(x28)
                  sw x23, 92(x28)
                  sw x24, 96(x28)
                  sw x25, 100(x28)
                  sw x26, 104(x28)
                  sw x27, 108(x28)
                  sw x28, 112(x28)
                  sw x29, 116(x28)
                  sw x30, 120(x28)
                  sw x31, 124(x28)
                  csrr x7, 0x300 # MSTATUS
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 31
                  bne x7, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x7, 0x341 # MEPC
                  csrr x7, 0x342 # MCAUSE
                  li x30, 0xb # ECALL_MMODE
                  beq x7, x30, ecall_handler
                  li x30, 0x2 # ILLEGAL_INSTRUCTION
                  beq x7, x30, illegal_instr_handler
                  csrr x30, 0x343 # MTVAL
                  1: la x15, test_done
                  jalr x1, x15, 0

ecall_handler:    
                  la x7, _start
                  sw x0, 0(x7)
                  sw x1, 4(x7)
                  sw x2, 8(x7)
                  sw x3, 12(x7)
                  sw x4, 16(x7)
                  sw x5, 20(x7)
                  sw x6, 24(x7)
                  sw x7, 28(x7)
                  sw x8, 32(x7)
                  sw x9, 36(x7)
                  sw x10, 40(x7)
                  sw x11, 44(x7)
                  sw x12, 48(x7)
                  sw x13, 52(x7)
                  sw x14, 56(x7)
                  sw x15, 60(x7)
                  sw x16, 64(x7)
                  sw x17, 68(x7)
                  sw x18, 72(x7)
                  sw x19, 76(x7)
                  sw x20, 80(x7)
                  sw x21, 84(x7)
                  sw x22, 88(x7)
                  sw x23, 92(x7)
                  sw x24, 96(x7)
                  sw x25, 100(x7)
                  sw x26, 104(x7)
                  sw x27, 108(x7)
                  sw x28, 112(x7)
                  sw x29, 116(x7)
                  sw x30, 120(x7)
                  sw x31, 124(x7)
                  la x15, write_tohost
                  jalr x0, x15, 0

illegal_instr_handler:
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  lw x1, 4(x28)
                  lw x2, 8(x28)
                  lw x3, 12(x28)
                  lw x4, 16(x28)
                  lw x5, 20(x28)
                  lw x6, 24(x28)
                  lw x7, 28(x28)
                  lw x8, 32(x28)
                  lw x9, 36(x28)
                  lw x10, 40(x28)
                  lw x11, 44(x28)
                  lw x12, 48(x28)
                  lw x13, 52(x28)
                  lw x14, 56(x28)
                  lw x15, 60(x28)
                  lw x16, 64(x28)
                  lw x17, 68(x28)
                  lw x18, 72(x28)
                  lw x19, 76(x28)
                  lw x20, 80(x28)
                  lw x21, 84(x28)
                  lw x22, 88(x28)
                  lw x23, 92(x28)
                  lw x24, 96(x28)
                  lw x25, 100(x28)
                  lw x26, 104(x28)
                  lw x27, 108(x28)
                  lw x28, 112(x28)
                  lw x29, 116(x28)
                  lw x30, 120(x28)
                  lw x31, 124(x28)
                  addi x28, x28, 124
                  add x29, x28, zero
                  csrrw x28, 0x340, x28
                  mret

pt_fault_handler: 

.align 2
mmode_intr_handler:
                  csrr  x7, 0x300 # MSTATUS;
                  csrr  x7, 0x304 # MIE;
                  csrr  x7, 0x344 # MIP;
                  csrrc x7, 0x344, x7 # MIP;
                  lw x1, 4(x28)
                  lw x2, 8(x28)
                  lw x3, 12(x28)
                  lw x4, 16(x28)
                  lw x5, 20(x28)
                  lw x6, 24(x28)
                  lw x7, 28(x28)
                  lw x8, 32(x28)
                  lw x9, 36(x28)
                  lw x10, 40(x28)
                  lw x11, 44(x28)
                  lw x12, 48(x28)
                  lw x13, 52(x28)
                  lw x14, 56(x28)
                  lw x15, 60(x28)
                  lw x16, 64(x28)
                  lw x17, 68(x28)
                  lw x18, 72(x28)
                  lw x19, 76(x28)
                  lw x20, 80(x28)
                  lw x21, 84(x28)
                  lw x22, 88(x28)
                  lw x23, 92(x28)
                  lw x24, 96(x28)
                  lw x25, 100(x28)
                  lw x26, 104(x28)
                  lw x27, 108(x28)
                  lw x28, 112(x28)
                  lw x29, 116(x28)
                  lw x30, 120(x28)
                  lw x31, 124(x28)
                  addi x28, x28, 124
                  add x29, x28, zero
                  csrrw x28, 0x340, x28
                  mret;

kernel_instr_end: nop
.align 2
kernel_data_start:
.section .kernel_stack,"aw",@progbits;
.align 2
kernel_stack_start:
.rept 499
.4byte 0x0
.endr
kernel_stack_end:
.4byte 0x0
