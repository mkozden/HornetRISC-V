.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x10, h0_start
jalr x0, x10, 0
h0_start:
                  li x16, 0x40001120
                  csrw 0x301, x16
kernel_sp:        
                  la x31, kernel_stack_end

trap_vec_init:    
                  la x16, mtvec_handler
                  ori x16, x16, 0
                  csrw 0x305, x16 # MTVEC

mepc_setup:       
                  la x16, init
                  csrw 0x341, x16

init_machine_mode:
                  li x16, 0x3a00
                  csrw 0x300, x16 # MSTATUS
                  li x16, 0x0
                  csrw 0x304, x16 # MIE
                  mret
init:             
                  li x16, 0x7f800001
                  fmv.w.x f0, x16
                  li x16, 0xff800000
                  fmv.w.x f1, x16
                  li x16, 0x7fc00000
                  fmv.w.x f2, x16
                  li x16, 0x2a1f866a
                  fmv.w.x f3, x16
                  li x16, 0x7fc00000
                  fmv.w.x f4, x16
                  li x16, 0x800f67a3
                  fmv.w.x f5, x16
                  li x16, 0x7f7fffff
                  fmv.w.x f6, x16
                  li x16, 0xff7fffff
                  fmv.w.x f7, x16
                  li x16, 0x27f96106
                  fmv.w.x f8, x16
                  li x16, 0x80000000
                  fmv.w.x f9, x16
                  li x16, 0xdd322
                  fmv.w.x f10, x16
                  li x16, 0x5dadf4
                  fmv.w.x f11, x16
                  li x16, 0xd435b
                  fmv.w.x f12, x16
                  li x16, 0x807d98db
                  fmv.w.x f13, x16
                  li x16, 0xad3eb
                  fmv.w.x f14, x16
                  li x16, 0x333d2539
                  fmv.w.x f15, x16
                  li x16, 0x7f7fffff
                  fmv.w.x f16, x16
                  li x16, 0x80000000
                  fmv.w.x f17, x16
                  li x16, 0x7f800001
                  fmv.w.x f18, x16
                  li x16, 0xff800000
                  fmv.w.x f19, x16
                  li x16, 0x4f76ddb0
                  fmv.w.x f20, x16
                  li x16, 0xbfc5e03e
                  fmv.w.x f21, x16
                  li x16, 0x0
                  fmv.w.x f22, x16
                  li x16, 0xff800000
                  fmv.w.x f23, x16
                  li x16, 0x0
                  fmv.w.x f24, x16
                  li x16, 0x7fc00000
                  fmv.w.x f25, x16
                  li x16, 0x80000000
                  fmv.w.x f26, x16
                  li x16, 0x7fc00000
                  fmv.w.x f27, x16
                  li x16, 0x80000000
                  fmv.w.x f28, x16
                  li x16, 0xe8e4ed7e
                  fmv.w.x f29, x16
                  li x16, 0x174b0ee9
                  fmv.w.x f30, x16
                  li x16, 0x7f800001
                  fmv.w.x f31, x16
                  fsrmi 0
                  li x0, 0xf
                  li x1, 0x0
                  li x2, 0x0
                  li x3, 0x0
                  li x4, 0x80000000
                  li x5, 0x80000000
                  li x6, 0xfb4b327d
                  li x7, 0xf8bc3d4e
                  li x8, 0x0
                  li x9, 0x810042a
                  li x10, 0x0
                  li x11, 0xff56e51d
                  li x12, 0x0
                  li x13, 0xc3799a17
                  li x14, 0x6e18c123
                  li x15, 0x0
                  li x16, 0x0
                  li x17, 0xa8c8348d
                  li x18, 0x80000000
                  li x19, 0xb
                  li x20, 0x7
                  li x21, 0x3
                  li x22, 0x0
                  li x23, 0x1
                  li x24, 0x0
                  li x25, 0xf163c05d
                  li x26, 0x80000000
                  li x27, 0x3
                  li x28, 0x0
                  li x29, 0x7f39f00c
                  la x30, user_stack_end
main:             fcvt.s.wu  ft7, s10
                  slli        zero, s2, 6
                  srli        a5, s5, 31
                  mul         s1, gp, a2
                  div         zero, a3, a7
                  xor         a6, a2, t3
                  nop
                  sub         a7, s8, a6
                  fsub.s     fa7, fs5, fa5
                  flt.s      t2, ft6, ft3
                  mul         s1, a1, gp
                  fclass.s   a7, fa0
                  add         s8, zero, tp
                  srl         sp, a0, a4
                  xor         a5, zero, a6
                  fmv.w.x    ft3, t4
                  lui         s10, 306162
                  sra         s1, sp, gp
                  slti        gp, a7, 1899
                  ori         t4, zero, -1807
                  srl         s6, ra, s2
                  mulh        a6, s11, t5
                  fmv.x.w    a6, ft8
                  or          zero, s7, t0
                  fcvt.wu.s  s1, ft10
                  fsgnjn.s   ft10, fa4, fs11
                  srai        a1, s11, 12
                  xori        s7, s4, 607
                  fclass.s   s10, ft9
                  fclass.s   s5, fa1
                  fle.s      s10, ft8, fs1
                  mulhsu      ra, s7, s3
                  fmv.w.x    ft7, a3
                  slti        a5, s7, -782
                  addi        s11, s8, 216
                  sub         s0, a3, s11
                  slti        s2, a7, 1880
                  fsgnjx.s   fs10, ft1, fa5
                  srli        t0, tp, 27
                  xor         t3, s3, gp
                  fcvt.s.w   fs3, s2
                  sltu        ra, s6, t1
                  fcvt.w.s   s5, fs6
                  slti        gp, a6, -1087
                  div         a4, s10, s10
                  div         ra, a2, a5
                  mulhu       s6, sp, s10
                  andi        s6, ra, -106
                  addi        s2, zero, 643
                  div         s7, sp, a5
                  fsub.s     fs11, fs4, fs11
                  fcvt.w.s   s5, ft5
                  fmv.x.w    t0, fa3
                  fsgnjx.s   ft0, fa0, fs3
                  mul         s11, t0, a1
                  sub         s10, a6, a0
                  fsgnjn.s   fa1, ft8, ft4
                  flt.s      a6, fs1, fs5
                  sll         a2, t6, s11
                  addi        a6, a7, 1066
                  fsgnjn.s   fa3, fs10, ft1
                  mul         zero, t6, t3
                  fmul.s     ft7, ft11, fa5
                  fadd.s     ft0, fs5, fs11
                  xori        a1, s10, -1722
                  fmin.s     ft1, fa2, fs4
                  fmax.s     fa1, fs9, fs3
                  mulh        gp, s1, s0
                  fmax.s     ft6, ft0, fa3
                  fmv.w.x    ft2, gp
                  mul         a4, s10, s5
                  fcvt.wu.s  s8, ft8
                  xori        a5, sp, 916
                  sltu        s0, a1, s7
                  ori         s0, s3, 650
                  mulhsu      t3, s11, gp
                  mulhu       s9, s2, a4
                  fmin.s     fa2, ft4, fs2
                  fcvt.s.w   fs9, t0
                  add         t3, a3, t1
                  fmax.s     ft4, fa3, fa3
                  mulhsu      a7, s4, a1
                  ori         tp, zero, 1440
                  feq.s      t4, fs0, fs2
                  or          s7, t0, sp
                  rem         s2, s9, a3
                  flt.s      zero, fs11, fs8
                  rem         s1, s6, zero
                  nop
                  fcvt.s.w   fs5, s1
                  srli        sp, t4, 28
                  fsgnjx.s   fs3, fs1, fa0
                  fcvt.s.w   fs9, s6
                  fsgnj.s    fa0, fa7, fs6
                  fmin.s     fa1, fa7, fs0
                  fmul.s     ft9, fa2, fs3
                  slli        s11, t0, 10
                  slt         a5, s8, sp
                  auipc       t0, 108821
                  ori         a2, s1, 1769
                  and         t3, sp, a3
                  sll         s4, tp, zero
                  fmax.s     ft0, fa3, ft5
                  srai        a5, s0, 24
                  fclass.s   t4, ft1
                  andi        s0, t4, -1475
                  sub         s1, sp, s7
                  fcvt.s.wu  fs7, gp
                  sltiu       zero, s7, -1599
                  fclass.s   s3, fs7
                  and         s7, gp, a7
                  slti        s4, s3, -2
                  rem         t0, a1, s0
                  mulh        gp, t2, a7
                  slti        sp, s2, 640
                  fmul.s     fs8, ft7, ft5
                  divu        s7, s0, s7
                  divu        s10, s1, t1
                  mulhsu      tp, gp, tp
                  divu        s10, s10, s1
                  srl         zero, s4, t5
                  xor         s6, t1, s11
                  add         zero, a2, sp
                  srai        a6, s4, 6
                  srai        s4, a6, 11
                  slt         a4, t0, a3
                  addi        a2, a4, 1508
                  xor         s9, s0, s11
                  fclass.s   a7, fs6
                  rem         s6, zero, s10
                  srl         zero, a4, sp
                  andi        s1, a5, 1636
                  andi        s3, gp, -485
                  sltu        s7, ra, t2
                  fcvt.w.s   t2, fs11
                  mul         a1, s5, s3
                  slt         a7, t3, s10
                  mulhsu      a5, s1, t1
                  addi        zero, a3, 1547
                  divu        tp, a3, a3
                  fmax.s     ft6, fa2, fs3
                  ori         s3, t3, 1577
                  nop
                  sltu        a2, t1, t1
                  fle.s      t3, ft7, fs5
                  fmv.x.w    t1, fs6
                  srli        s1, zero, 2
                  div         s0, sp, t6
                  srai        a2, t6, 17
                  feq.s      s5, ft7, fs4
                  slli        s10, ra, 24
                  auipc       tp, 760895
                  mulh        sp, ra, s3
                  fmin.s     ft2, fs8, ft11
                  fadd.s     ft5, fs11, fs3
                  fsgnj.s    ft6, fs4, fs1
                  fmax.s     fa3, fa0, fa6
                  fsgnj.s    ft4, fs0, fs3
                  srai        s11, a7, 6
                  and         s4, s4, zero
                  and         t4, s1, s1
                  fmv.w.x    fa6, a2
                  fmul.s     fs3, ft6, ft6
                  andi        a3, t5, -1458
                  rem         s0, s4, tp
                  fsqrt.s    ft4, fs3
                  fcvt.s.w   ft4, s7
                  fcvt.s.w   ft8, t6
                  fmax.s     ft5, fs11, fa2
                  sltu        s9, t5, s1
                  ori         s8, s4, -72
                  flt.s      t3, ft0, ft0
                  mulh        a6, s0, t5
                  or          ra, t2, ra
                  ori         s10, s5, -807
                  fsgnjx.s   fs3, fa0, fa2
                  slt         s0, a2, s7
                  slt         t2, s6, s11
                  add         s0, s3, s8
                  fmul.s     fs4, ft0, fs2
                  fcvt.w.s   a5, fa2
                  andi        s10, s5, 162
                  xor         s10, t6, t4
                  slt         t2, s2, a0
                  mulhsu      a2, t4, a2
                  flt.s      t3, ft10, fa0
                  xor         sp, s3, t5
                  fle.s      zero, ft5, fa0
                  andi        s8, s7, -185
                  fsub.s     fs9, ft10, fs6
                  sltu        a2, t3, s9
                  or          s2, s1, gp
                  andi        s0, a4, -1314
                  fcvt.w.s   zero, fs11
                  mulhu       s3, a1, s11
                  fmul.s     ft2, fs3, ft4
                  addi        s6, a6, -1728
                  addi        s2, zero, -303
                  fmax.s     fa4, ft0, ft1
                  lui         t3, 599582
                  divu        t3, s3, a6
                  fmax.s     fs10, ft3, fs5
                  add         t0, t4, ra
                  mulh        ra, a7, s3
                  fclass.s   s5, ft3
                  slti        a5, t3, 1847
                  rem         zero, zero, a1
                  fcvt.w.s   t0, fs10
                  sll         a5, a3, s6
                  or          a5, a2, a6
                  sltu        a6, ra, s10
                  ori         s7, s11, -1389
                  fcvt.s.wu  ft3, sp
                  fcvt.s.wu  ft5, a3
                  fmul.s     ft7, ft4, ft6
                  mulhsu      s8, t2, s6
                  rem         ra, gp, s6
                  auipc       zero, 474963
                  sltu        t4, a7, ra
                  fadd.s     fs2, fs8, fs8
                  fmv.x.w    s0, fa3
                  srli        s4, s11, 31
                  slti        s6, s0, -1866
                  lui         gp, 1007474
                  fmv.x.w    t3, fs2
                  mulh        a6, zero, s6
                  rem         a6, t2, s10
                  sra         a6, s10, tp
                  rem         a7, a5, s0
                  mul         t0, zero, t6
                  add         t4, gp, s4
                  andi        a5, sp, -1990
                  xor         s5, ra, s6
                  andi        tp, a6, -1697
                  rem         s0, s2, t3
                  div         t2, s5, t0
                  fadd.s     ft0, ft4, ft5
                  add         s10, s7, s11
                  div         zero, s11, t4
                  sub         t2, t5, s7
                  ori         tp, t5, 1556
                  divu        t0, s3, s0
                  fsub.s     fs10, ft1, ft6
                  mulhu       zero, s3, a3
                  fmax.s     ft7, ft9, ft10
                  fclass.s   a1, ft7
                  sltu        a2, a2, t1
                  sll         zero, a0, t4
                  srl         s9, a4, s2
                  fmv.w.x    fs11, s9
                  fmin.s     fs7, fs6, fs9
                  fmin.s     fa7, fs11, ft3
                  xori        s2, sp, -1321
                  fadd.s     fs1, fs10, ft2
                  and         a5, s7, t2
                  mulh        a1, a0, sp
                  fmul.s     fs2, fa7, ft7
                  fclass.s   s4, fs5
                  auipc       s0, 826812
                  mul         s5, zero, a5
                  rem         s8, s4, gp
                  mulhsu      gp, s0, a2
                  xor         sp, a3, t3
                  fsqrt.s    fs10, fs8
                  slli        zero, s0, 1
                  mulhsu      zero, t0, a2
                  fsgnjx.s   fs7, fa3, ft5
                  fclass.s   zero, fs11
                  auipc       s8, 12790
                  and         a6, gp, a7
                  srli        t0, s1, 17
                  fsqrt.s    ft3, ft11
                  fcvt.wu.s  s2, fa5
                  slt         s6, t6, s3
                  fsgnjx.s   ft4, fs4, ft9
                  lui         t2, 215640
                  flt.s      ra, ft8, fs3
                  fmv.x.w    a6, fs5
                  slt         s2, zero, zero
                  slti        zero, t1, -1771
                  xor         t0, t2, gp
                  fclass.s   t2, fs8
                  add         tp, a3, s11
                  or          s11, t6, s10
                  xor         a2, s0, s4
                  srl         s1, a6, s9
                  fclass.s   s4, fs5
                  lui         s2, 896665
                  or          a5, tp, a6
                  srai        zero, s4, 15
                  mulhsu      zero, t2, a5
                  fcvt.wu.s  s8, fs10
                  fsgnjx.s   fs8, ft4, fs5
                  auipc       zero, 596481
                  fadd.s     fs0, fs2, fs11
                  fsgnj.s    ft9, fa5, fs5
                  sltiu       s1, s6, -633
                  fsub.s     fa1, ft3, fs1
                  addi        s10, s5, -1901
                  fmul.s     ft6, fs1, fa2
                  mulhu       t4, t5, a4
                  mulhu       s2, ra, s0
                  slli        t3, a5, 29
                  fmul.s     fs8, ft10, fs9
                  andi        s11, s10, -324
                  fmv.w.x    ft4, t3
                  srl         t3, s11, zero
                  fsgnjn.s   fs9, fa7, ft4
                  add         gp, s0, zero
                  sltiu       s7, s8, 1241
                  srai        zero, t6, 5
                  or          t0, ra, s9
                  fmax.s     fs5, ft8, fs10
                  sll         tp, gp, a7
                  fmin.s     fs4, fs3, ft8
                  and         zero, t2, a5
                  fmul.s     ft3, fs7, ft9
                  nop
                  rem         a2, t3, s3
                  fcvt.s.wu  fs7, a0
                  nop
                  andi        s8, s5, 1635
                  flt.s      a6, ft5, ft10
                  fsgnj.s    ft6, ft8, fs8
                  mulhu       zero, s11, a2
                  ori         a4, t6, -288
                  fcvt.s.wu  fa4, s11
                  divu        a7, t0, s1
                  nop
                  fsgnjn.s   ft2, fa0, fa7
                  mulhsu      t4, a6, a3
                  fcvt.s.w   ft9, a7
                  slli        a4, a1, 31
                  slt         s2, t6, t6
                  divu        a6, t6, a5
                  srli        s8, s11, 7
                  srl         s8, s4, t1
                  or          zero, a4, a0
                  fle.s      s7, ft9, fa5
                  fsgnjx.s   ft6, fa4, ft6
                  srli        t4, a1, 7
                  srli        zero, t5, 0
                  addi        a2, a0, 1734
                  srli        s4, s7, 18
                  auipc       zero, 478931
                  fcvt.s.w   fa4, s10
                  div         a6, a2, a1
                  rem         s0, t6, tp
                  xor         sp, t3, a3
                  fmul.s     ft6, fs5, ft9
                  lui         a1, 123430
                  fmul.s     fa0, fa0, fa1
                  fsgnjn.s   ft9, fs3, ft6
                  rem         t1, s8, s4
                  srli        a4, a0, 5
                  fmv.w.x    ft0, t5
                  fsgnjn.s   ft0, fa0, ft1
                  sra         s1, a7, s4
                  mul         s11, sp, t3
                  fcvt.s.wu  ft7, a6
                  addi        a1, t1, 1728
                  flt.s      s9, ft0, fa5
                  flt.s      zero, fs5, ft7
                  fsub.s     fa2, fs9, fs8
                  divu        t2, t5, a7
                  fmv.w.x    ft2, a2
                  mul         gp, a5, tp
                  rem         a5, s10, gp
                  lui         s3, 850932
                  sll         sp, s10, a4
                  sltiu       s11, t0, -1975
                  mulhu       a4, sp, s11
                  slti        s2, ra, 1217
                  addi        s2, gp, 1933
                  fmv.x.w    a1, ft6
                  fle.s      ra, fs2, fs4
                  mul         a3, s11, s9
                  srli        s8, t2, 18
                  xori        a3, a4, 1615
                  srli        s8, s5, 4
                  nop
                  sltu        zero, a2, s5
                  fmv.x.w    t3, fs6
                  fdiv.s     ft5, fs3, fs8
                  fcvt.s.wu  ft6, t3
                  srl         a5, s5, zero
                  slli        s9, a0, 28
                  mulhu       s1, t6, s3
                  add         s7, s2, t4
                  fmin.s     fs1, ft1, fs8
                  fcvt.s.w   ft6, t6
                  srli        a5, a2, 5
                  slt         s3, a3, s11
                  slli        zero, a0, 20
                  srl         s6, sp, s6
                  fcvt.s.wu  fs0, t2
                  add         a7, t2, a3
                  fsgnjx.s   fs2, ft0, ft8
                  nop
                  fle.s      s9, fa3, fs1
                  feq.s      s10, ft11, fa4
                  fsqrt.s    fs5, fs9
                  nop
                  fadd.s     fs11, fa5, fs8
                  fdiv.s     fs10, fs8, fs3
                  rem         zero, s2, a0
                  fmul.s     ft3, fs4, fs8
                  div         s9, s11, a4
                  fmv.w.x    ft3, gp
                  xor         s4, s8, s10
                  fsub.s     fs4, fs0, fa6
                  slli        s2, s0, 25
                  srai        t3, s6, 4
                  or          t3, gp, zero
                  mul         s2, a2, a2
                  lui         zero, 840077
                  addi        a1, t2, 1500
                  divu        s9, t5, a7
                  add         t3, t2, tp
                  mulh        zero, s11, s1
                  lui         a7, 888080
                  fsgnjn.s   fs4, ft11, ft3
                  fmv.x.w    gp, fa7
                  mul         s1, sp, ra
                  sll         a5, ra, tp
                  xor         s3, t3, ra
                  fsgnjx.s   ft4, fs0, ft4
                  flt.s      s5, fs0, ft1
                  fmax.s     fs8, ft3, fs8
                  slli        s5, t4, 28
                  sll         t4, s4, a0
                  flt.s      s7, fa2, fa7
                  rem         a5, s9, t0
                  fmin.s     ft0, fs7, ft2
                  xori        s4, s7, 103
                  sltu        s4, s7, a1
                  fcvt.s.wu  fs1, t1
                  nop
                  fsub.s     fs7, fa5, fa6
                  slti        t3, s8, -381
                  fcvt.w.s   s10, ft11
                  and         tp, a1, tp
                  fle.s      s0, fs11, ft7
                  fsgnjn.s   fs9, ft9, ft5
                  rem         s10, gp, sp
                  mul         s0, sp, a1
                  srl         s2, s1, s2
                  fmin.s     ft3, fs9, fa0
                  sltu        a6, s4, s8
                  fclass.s   t2, fs4
                  slt         s9, t0, a1
                  addi        s10, s10, 1227
                  rem         t4, t3, zero
                  slli        s10, a7, 5
                  addi        zero, s7, 498
                  flt.s      zero, fs6, fs3
                  or          s8, sp, t5
                  or          a4, s2, s11
                  srli        a6, t4, 26
                  fcvt.s.w   fs9, a2
                  feq.s      s7, ft0, fs0
                  lui         s9, 23420
                  fdiv.s     fa7, ft2, fa2
                  fmin.s     ft11, fs7, fa0
                  fmax.s     ft3, fa0, fs6
                  lui         t4, 11279
                  fsub.s     fa0, ft11, ft8
                  srli        s6, tp, 18
                  fsgnj.s    fs4, fa0, fs2
                  mul         t1, a1, a7
                  mulhu       s1, a1, a6
                  fsgnjn.s   ft6, ft9, fs6
                  mulhsu      a6, a3, a5
                  or          s1, zero, s3
                  fsqrt.s    ft2, ft4
                  sub         a5, s5, s9
                  fmax.s     fs5, ft6, ft10
                  div         t2, s5, a4
                  fsgnjn.s   fa7, fs3, fa2
                  nop
                  fsgnjn.s   ft3, fs1, fs6
                  fdiv.s     ft6, fs5, fs11
                  ori         s9, s7, -1424
                  fcvt.s.w   fs2, s0
                  addi        s8, s1, -394
                  fle.s      a5, fs4, ft4
                  fclass.s   a5, fs2
                  fcvt.s.w   ft0, a4
                  andi        a4, zero, -581
                  fclass.s   s9, ft2
                  divu        zero, t0, t3
                  divu        t0, t4, s4
                  fclass.s   s7, ft1
                  feq.s      a3, fa1, ft10
                  mulhsu      s9, a6, t4
                  fsqrt.s    ft11, ft3
                  fcvt.wu.s  a3, ft3
                  srli        s11, a2, 4
                  fdiv.s     fs8, fs8, fs7
                  fclass.s   s0, fa6
                  fsgnjn.s   fs0, ft7, fa7
                  slt         zero, t6, a3
                  fadd.s     fs1, ft0, fs1
                  fcvt.s.w   fs1, t5
                  fsub.s     ft8, fa5, fa0
                  divu        s2, s8, s2
                  fcvt.wu.s  s0, fs11
                  xor         t1, a7, s4
                  fcvt.wu.s  s9, fs1
                  nop
                  sub         zero, s11, a3
                  add         zero, s6, a0
                  flt.s      a6, ft7, fa3
                  mulhsu      zero, t4, t5
                  mul         a5, gp, s11
                  fcvt.wu.s  s11, fa7
                  srl         tp, t2, s6
                  mulhsu      s9, s5, s1
                  div         s9, a6, s4
                  srl         s2, a3, a1
                  sra         s7, a6, s4
                  xori        t4, t2, 741
                  fdiv.s     fa0, ft9, fs10
                  fcvt.s.wu  fs7, a3
                  fsub.s     fs10, ft4, ft8
                  fsgnj.s    fs2, fs9, fa4
                  add         zero, a2, tp
                  fcvt.s.wu  ft7, t3
                  fmv.x.w    a1, ft11
                  slti        s6, a7, 1399
                  sub         sp, s3, s3
                  fsqrt.s    fs11, ft0
                  fsqrt.s    fs10, fa0
                  fsub.s     fs6, fs0, ft0
                  fmv.x.w    s10, fs6
                  fcvt.wu.s  t1, fs9
                  fclass.s   a4, fs1
                  fsgnj.s    fa2, fa4, fs7
                  fmul.s     ft5, fs1, fs7
                  flt.s      a1, fa5, ft2
                  fsqrt.s    fs1, fa2
                  feq.s      s7, fa2, ft11
                  fclass.s   sp, ft3
                  lui         a1, 357148
                  slli        s10, t5, 20
                  sltu        a5, t4, t4
                  fmax.s     fa4, fs1, ft1
                  fsgnj.s    fs3, fs1, ft5
                  slti        zero, a4, 695
                  mul         s5, s7, s5
                  srl         s11, s9, gp
                  lui         a6, 829106
                  ori         s5, s3, 2028
                  sub         zero, a0, s6
                  fdiv.s     fa0, fa6, fs2
                  fsgnj.s    fs0, fs10, ft0
                  fmul.s     ft3, fa5, ft9
                  and         s0, a1, t6
                  fcvt.s.wu  fs8, tp
                  fsqrt.s    ft4, fs11
                  auipc       s5, 945176
                  fsgnj.s    fa7, ft5, ft0
                  mul         s2, t1, a0
                  add         a6, a5, tp
                  xori        ra, gp, 1006
                  fcvt.wu.s  a4, ft8
                  andi        zero, a2, 433
                  sltu        gp, a2, sp
                  fsgnjn.s   ft10, fs3, ft9
                  fclass.s   s10, ft5
                  feq.s      t4, fa2, ft11
                  fsqrt.s    ft0, fa4
                  fsgnjx.s   ft10, ft5, fs6
                  fmin.s     fs4, fs4, ft4
                  nop
                  xori        a6, s6, -1208
                  xor         tp, a4, s8
                  mulh        t3, ra, s10
                  fsgnjn.s   fa5, ft11, ft3
                  div         t2, s7, s2
                  srli        tp, s9, 3
                  fmax.s     fa5, fs0, ft9
                  lui         s11, 735882
                  srli        zero, t2, 27
                  fsqrt.s    fa4, fs7
                  fmv.w.x    ft4, sp
                  add         t3, t3, a3
                  addi        zero, t3, -756
                  sltu        s3, t2, s2
                  mulhsu      s6, s11, a7
                  flt.s      s3, ft11, fs1
                  and         s0, s4, a2
                  srl         s1, zero, s3
                  sltiu       s2, s10, 894
                  srli        a6, s3, 17
                  mulhsu      a1, s5, a4
                  div         a7, a7, ra
                  sra         s3, s2, a6
                  rem         a3, t2, zero
                  ori         zero, s2, 357
                  mulhu       gp, s8, s1
                  fclass.s   a5, ft2
                  sll         a3, ra, a3
                  fmul.s     fa6, fa4, fa5
                  srl         t0, t0, a4
                  sltiu       s5, a4, 43
                  fclass.s   ra, ft0
                  ori         s5, sp, -1924
                  fclass.s   ra, ft11
                  srai        zero, t4, 19
                  sll         s1, t6, t5
                  divu        gp, a6, s5
                  mul         a7, t2, s2
                  fadd.s     ft7, fa7, ft2
                  lui         s11, 1023121
                  fsqrt.s    ft10, fs1
                  xor         s9, t4, t0
                  div         t2, s11, t3
                  fmax.s     ft5, fa4, fs0
                  fcvt.wu.s  s3, fs0
                  fmv.x.w    zero, fs8
                  fdiv.s     fs4, ft11, fs2
                  fmul.s     fa1, fs4, ft3
                  fmv.x.w    a7, ft2
                  or          s7, ra, tp
                  fmv.x.w    a3, fs6
                  fmin.s     ft3, fs9, fs3
                  fsgnj.s    fa2, ft5, ft2
                  sltu        tp, s0, a0
                  fsub.s     fs4, ft4, fa3
                  divu        zero, a2, t5
                  sltiu       a2, s2, 622
                  fcvt.w.s   zero, fs3
                  sltiu       a2, t6, -1167
                  rem         zero, s0, ra
                  divu        a7, s2, s11
                  mulhsu      tp, t4, s3
                  fle.s      t4, ft7, ft2
                  fmin.s     fa5, ft5, fs9
                  fcvt.w.s   a2, fs3
                  fsqrt.s    fa2, fa1
                  fcvt.wu.s  s7, ft0
                  fadd.s     fa2, fa7, fs5
                  sltu        s1, a0, t1
                  sltiu       zero, s1, 904
                  fadd.s     ft1, fa6, ft5
                  sub         s11, t0, s6
                  srl         a1, s3, a1
                  fmv.w.x    fs0, tp
                  fle.s      a7, fa2, fs1
                  auipc       a5, 501797
                  fcvt.s.w   fs1, a4
                  fmv.w.x    fs5, a0
                  sltiu       a4, t4, 1930
                  fcvt.wu.s  sp, ft8
                  rem         t3, t1, s2
                  addi        zero, s2, 1928
                  fmv.w.x    ft2, s8
                  slti        a3, s1, 1009
                  div         s0, s10, a2
                  fsqrt.s    fs4, fs9
                  la x10, test_done
                  jalr x0, x10, 0
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
                  add x30, x31, zero
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
                  csrr x16, 0x300 # MSTATUS
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 31
                  bne x16, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x16, 0x341 # MEPC
                  csrr x16, 0x342 # MCAUSE
                  li x29, 0xb # ECALL_MMODE
                  beq x16, x29, ecall_handler
                  li x29, 0x2 # ILLEGAL_INSTRUCTION
                  beq x16, x29, illegal_instr_handler
                  csrr x29, 0x343 # MTVAL
                  1: la x10, test_done
                  jalr x1, x10, 0

ecall_handler:    
                  la x16, _start
                  sw x0, 0(x16)
                  sw x1, 4(x16)
                  sw x2, 8(x16)
                  sw x3, 12(x16)
                  sw x4, 16(x16)
                  sw x5, 20(x16)
                  sw x6, 24(x16)
                  sw x7, 28(x16)
                  sw x8, 32(x16)
                  sw x9, 36(x16)
                  sw x10, 40(x16)
                  sw x11, 44(x16)
                  sw x12, 48(x16)
                  sw x13, 52(x16)
                  sw x14, 56(x16)
                  sw x15, 60(x16)
                  sw x16, 64(x16)
                  sw x17, 68(x16)
                  sw x18, 72(x16)
                  sw x19, 76(x16)
                  sw x20, 80(x16)
                  sw x21, 84(x16)
                  sw x22, 88(x16)
                  sw x23, 92(x16)
                  sw x24, 96(x16)
                  sw x25, 100(x16)
                  sw x26, 104(x16)
                  sw x27, 108(x16)
                  sw x28, 112(x16)
                  sw x29, 116(x16)
                  sw x30, 120(x16)
                  sw x31, 124(x16)
                  la x10, write_tohost
                  jalr x0, x10, 0

illegal_instr_handler:
                  csrr  x16, 0x341
                  addi  x16, x16, 4
                  csrw  0x341, x16
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
                  add x31, x30, zero
                  csrrw x30, 0x340, x30
                  mret

pt_fault_handler: 

.align 2
mmode_intr_handler:
                  csrr  x16, 0x300 # MSTATUS;
                  csrr  x16, 0x304 # MIE;
                  csrr  x16, 0x344 # MIP;
                  csrrc x16, 0x344, x16 # MIP;
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
                  add x31, x30, zero
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
