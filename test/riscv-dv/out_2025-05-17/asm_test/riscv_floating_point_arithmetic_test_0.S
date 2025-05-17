.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x31, h0_start
jalr x0, x31, 0
h0_start:
                  li x26, 0x40001120
                  csrw 0x301, x26
kernel_sp:        
                  la x9, kernel_stack_end

trap_vec_init:    
                  la x26, mtvec_handler
                  ori x26, x26, 1
                  csrw 0x305, x26 # MTVEC

mepc_setup:       
                  la x26, init
                  csrw 0x341, x26

init_machine_mode:
                  li x26, 0x3c00
                  csrw 0x300, x26 # MSTATUS
                  li x26, 0x0
                  csrw 0x304, x26 # MIE
                  mret
init:             
                  li x26, 0xff800000
                  fmv.w.x f0, x26
                  li x26, 0xff800000
                  fmv.w.x f1, x26
                  li x26, 0x80000000
                  fmv.w.x f2, x26
                  li x26, 0x5bdae282
                  fmv.w.x f3, x26
                  li x26, 0x747e2a51
                  fmv.w.x f4, x26
                  li x26, 0xff7fffff
                  fmv.w.x f5, x26
                  li x26, 0xe0baa9e6
                  fmv.w.x f6, x26
                  li x26, 0x7f800000
                  fmv.w.x f7, x26
                  li x26, 0xff7fffff
                  fmv.w.x f8, x26
                  li x26, 0xce0decc7
                  fmv.w.x f9, x26
                  li x26, 0x65943ac9
                  fmv.w.x f10, x26
                  li x26, 0x7f800000
                  fmv.w.x f11, x26
                  li x26, 0xca00b
                  fmv.w.x f12, x26
                  li x26, 0x7f800000
                  fmv.w.x f13, x26
                  li x26, 0xff800000
                  fmv.w.x f14, x26
                  li x26, 0xff7fffff
                  fmv.w.x f15, x26
                  li x26, 0x7fc00000
                  fmv.w.x f16, x26
                  li x26, 0x75a40b8c
                  fmv.w.x f17, x26
                  li x26, 0xd266a22c
                  fmv.w.x f18, x26
                  li x26, 0x7f800000
                  fmv.w.x f19, x26
                  li x26, 0x0
                  fmv.w.x f20, x26
                  li x26, 0x80000000
                  fmv.w.x f21, x26
                  li x26, 0x7f800001
                  fmv.w.x f22, x26
                  li x26, 0x7fc00000
                  fmv.w.x f23, x26
                  li x26, 0x727bb5
                  fmv.w.x f24, x26
                  li x26, 0xff7fffff
                  fmv.w.x f25, x26
                  li x26, 0x80000000
                  fmv.w.x f26, x26
                  li x26, 0x56624bd3
                  fmv.w.x f27, x26
                  li x26, 0x7f7fffff
                  fmv.w.x f28, x26
                  li x26, 0xff800000
                  fmv.w.x f29, x26
                  li x26, 0xff7fffff
                  fmv.w.x f30, x26
                  li x26, 0x80000000
                  fmv.w.x f31, x26
                  fsrmi 3
                  li x0, 0xfd5f4c81
                  li x1, 0xc
                  li x2, 0x0
                  li x3, 0x4aea5bcf
                  li x4, 0x80000000
                  li x5, 0xfb056246
                  li x6, 0x5
                  li x7, 0xe
                  li x8, 0xc272132a
                  li x10, 0x50fa7df3
                  li x11, 0xad1537f7
                  li x12, 0x1ef57ece
                  li x13, 0x6
                  li x14, 0xb
                  li x15, 0xc0cd6b31
                  li x16, 0xf
                  li x17, 0xd6c09208
                  li x18, 0x0
                  li x19, 0x80000000
                  li x20, 0xc
                  li x21, 0x3
                  li x22, 0x0
                  li x23, 0x0
                  li x24, 0xd71de39d
                  li x25, 0x0
                  li x26, 0xfe5198ec
                  li x27, 0x18c25d34
                  li x28, 0x80000000
                  li x29, 0x1e8c5f97
                  li x31, 0xf119fa46
                  la x30, user_stack_end
main:             add         a0, a4, gp
                  mulhsu      s4, t0, a2
                  divu        s7, a5, s10
                  addi        s10, t6, 1408
                  fsgnjx.s   fs4, ft10, ft7
                  fsub.s     ft0, fs5, ft8
                  fsgnjn.s   ft5, fs9, fs1
                  nop
                  fclass.s   a4, fs4
                  and         s10, gp, a5
                  sltu        a2, s8, ra
                  auipc       a3, 842837
                  nop
                  sltiu       t0, s1, -1388
                  fmv.w.x    ft1, t0
                  slti        s4, s11, 1779
                  and         t1, s9, sp
                  slt         s11, t5, s11
                  srl         t2, a2, a7
                  fdiv.s     ft0, fs8, fs2
                  fmv.x.w    s6, ft5
                  xori        t4, s8, -696
                  lui         s11, 1043783
                  fmv.w.x    fs10, s5
                  fmul.s     fs2, fa7, ft7
                  feq.s      tp, fa2, fa0
                  or          ra, t4, t4
                  fsgnj.s    fs3, fs7, fs7
                  fclass.s   zero, ft1
                  mulhsu      a5, t4, a5
                  flt.s      zero, fa3, ft0
                  fcvt.s.w   fa1, a0
                  fmax.s     ft4, ft11, fa1
                  sltiu       a1, ra, 1632
                  ori         zero, t6, -67
                  sltu        zero, a3, a2
                  fmv.w.x    ft6, gp
                  flt.s      a6, ft4, fa3
                  fsgnj.s    ft8, fs6, fs3
                  andi        s5, t0, 553
                  auipc       a2, 529277
                  slt         tp, sp, t4
                  slti        a4, a4, 714
                  xor         a2, s2, a5
                  xori        s9, sp, -95
                  mul         s7, s1, s5
                  mulhsu      s2, s8, s4
                  flt.s      t0, fs6, fs6
                  fle.s      s11, fs3, ft3
                  fmin.s     fa3, fs0, fa7
                  mulhu       t4, s2, t2
                  slt         a7, s11, s6
                  sll         s5, s7, t6
                  fcvt.w.s   t2, ft7
                  sltiu       a0, a2, 1329
                  srl         t0, a2, s3
                  sra         a6, s8, a0
                  srai        a7, s7, 18
                  fmv.w.x    fa7, t2
                  fmin.s     fa1, ft3, ft8
                  xori        s9, a4, -612
                  or          t3, s2, s1
                  slli        s11, s1, 13
                  slt         s8, zero, t6
                  srli        a0, s0, 2
                  ori         a1, s4, 1844
                  fcvt.s.w   fs5, s2
                  div         a7, t3, t1
                  divu        zero, s7, s11
                  flt.s      t0, ft5, ft6
                  fsgnjx.s   fa2, fs4, fa4
                  or          s9, a3, s6
                  addi        s7, t4, -38
                  mulhsu      a4, sp, t5
                  flt.s      t0, fs6, fs2
                  flt.s      s3, fs1, ft9
                  mulhu       zero, s0, t2
                  nop
                  fcvt.w.s   t0, fa0
                  fcvt.w.s   zero, fa0
                  fmax.s     ft3, fa2, ft11
                  nop
                  sltu        s5, s9, t0
                  slt         t0, t1, a0
                  fsgnj.s    ft0, fs10, fs0
                  andi        a7, t4, -821
                  mulhsu      s2, s10, sp
                  mulh        s8, s9, t3
                  mul         a1, s4, a6
                  fcvt.w.s   s2, fs3
                  slt         a6, a4, s2
                  fsgnjn.s   fs1, fa0, ft11
                  slt         s8, s7, a7
                  fmin.s     fs10, fa4, fa0
                  slli        t0, a3, 29
                  fmv.w.x    ft6, s9
                  fle.s      s6, fs11, ft5
                  srli        s9, tp, 11
                  fsqrt.s    ft6, ft3
                  fle.s      gp, fs7, fs5
                  fmv.w.x    fa0, sp
                  xor         zero, s11, s4
                  fmax.s     fs2, ft11, fs1
                  slti        a1, zero, 1054
                  fsqrt.s    fs5, fa6
                  or          s2, s1, t5
                  div         ra, a3, ra
                  fle.s      sp, ft10, ft0
                  slli        a0, s10, 26
                  add         zero, a2, a7
                  srl         s8, s7, sp
                  addi        t3, tp, 191
                  fsgnjn.s   ft2, ft4, fs9
                  fadd.s     fs9, fs4, ft11
                  fsqrt.s    fa0, ft1
                  fadd.s     fa1, ft2, fa6
                  or          zero, sp, s6
                  ori         s10, a5, 718
                  addi        s7, a0, 290
                  mul         t4, a0, s6
                  slt         s4, s5, gp
                  mulhsu      a3, s5, s7
                  slti        a6, s5, 881
                  feq.s      zero, ft2, fs3
                  flt.s      s10, fs3, fa7
                  xor         s4, a2, s6
                  auipc       t3, 9730
                  fmv.x.w    s8, fa5
                  fdiv.s     ft0, fs5, fs11
                  addi        t0, gp, 1473
                  srl         zero, s5, s9
                  xori        t1, s3, -65
                  fcvt.wu.s  t4, ft1
                  slli        a4, ra, 29
                  fclass.s   s5, fs6
                  fcvt.wu.s  t1, fs3
                  fmax.s     fs4, fa0, fa0
                  sra         s0, a5, a4
                  sltiu       s7, s11, 733
                  mulhsu      s0, a1, sp
                  fmv.x.w    sp, fa6
                  fsgnjx.s   ft2, ft7, fs2
                  srl         a6, tp, t6
                  mulh        a5, s11, s1
                  mulh        ra, s3, a2
                  sll         tp, s2, a3
                  fmin.s     fs0, ft9, ft10
                  sltu        s8, s3, t3
                  fmax.s     fs3, ft7, fs5
                  fadd.s     ft4, fa6, ft1
                  fle.s      s7, fa4, fa3
                  fle.s      s4, ft2, fs11
                  auipc       zero, 568174
                  sll         a3, a4, a1
                  srai        s3, a6, 22
                  fmax.s     fa6, fs7, fs10
                  fmax.s     fs4, ft10, fs0
                  xori        t0, s10, 1212
                  add         s9, a7, gp
                  divu        zero, gp, a6
                  mulhu       zero, t3, t4
                  srli        s3, s4, 14
                  div         t1, a3, t6
                  fsgnj.s    ft10, fa7, ft11
                  srli        zero, s5, 25
                  fsqrt.s    fs11, ft0
                  auipc       s3, 911106
                  sra         t1, s7, t4
                  fsgnj.s    ft7, ft7, ft1
                  fsgnj.s    fs1, fs8, ft4
                  slti        t2, t6, 438
                  nop
                  fsgnj.s    ft2, fs3, fa6
                  fmv.x.w    s11, fs8
                  mulh        a7, s0, gp
                  slti        s11, a1, 273
                  sra         tp, t0, s4
                  ori         zero, sp, -1191
                  srl         ra, a4, t6
                  rem         a6, s4, s1
                  addi        tp, t4, -328
                  fcvt.s.wu  ft0, t6
                  andi        zero, sp, -397
                  andi        gp, a4, -1394
                  slli        zero, a0, 5
                  mulh        s0, a2, t1
                  srli        s7, a2, 22
                  fsgnjn.s   fa2, fa1, fs5
                  fsqrt.s    fs8, ft5
                  or          t0, s2, s11
                  fcvt.w.s   zero, ft0
                  fclass.s   a7, fs4
                  mulhu       sp, tp, s7
                  fadd.s     ft8, fs1, fa7
                  flt.s      s0, fs10, ft2
                  andi        tp, a2, 431
                  fdiv.s     fs10, ft11, fs11
                  div         a1, a1, s4
                  fclass.s   s8, ft9
                  mulhu       s9, s8, t6
                  fsgnj.s    ft0, ft2, fa2
                  addi        t1, t4, 1350
                  divu        a3, a5, t6
                  or          a7, a5, ra
                  lui         s8, 646342
                  fsub.s     fa0, fs5, fa3
                  lui         a4, 512190
                  fmin.s     fs10, fs5, fs9
                  fsub.s     fs3, ft3, ft6
                  slli        t0, t3, 12
                  fcvt.s.w   fa6, sp
                  sll         zero, a7, s1
                  fsgnjn.s   ft4, ft0, ft0
                  rem         t2, t3, a6
                  mulhu       s7, s11, s11
                  rem         t3, t2, s7
                  fcvt.s.wu  fa4, s3
                  divu        zero, t5, t6
                  fadd.s     fs7, fs5, ft8
                  srl         sp, t6, s7
                  fmax.s     fa0, fs1, fa4
                  fdiv.s     fa7, ft9, ft2
                  mulhu       s10, a5, s9
                  mulhu       zero, a3, s10
                  andi        zero, t0, -1916
                  andi        s4, s4, -230
                  sltu        tp, s11, zero
                  fsub.s     fs11, fa6, fs10
                  mulhsu      s6, s7, a3
                  xor         s7, s4, s4
                  srli        t2, t3, 5
                  mulh        s5, s6, s0
                  mulh        a4, s9, a7
                  nop
                  lui         s0, 207462
                  fmv.w.x    fa1, gp
                  fsub.s     fs7, ft5, ft1
                  fmul.s     fa4, fs0, ft4
                  fmin.s     fs5, ft0, fs2
                  sltu        a1, tp, s0
                  fsqrt.s    ft0, fa1
                  fle.s      s9, fs7, fs10
                  fsgnjn.s   ft7, fs10, fs1
                  fcvt.w.s   tp, ft0
                  slti        t4, s9, -566
                  sll         t2, a4, ra
                  fcvt.s.wu  fa4, a0
                  flt.s      zero, fs9, ft2
                  fsqrt.s    ft11, ft10
                  srli        a0, t1, 15
                  fsgnjn.s   fa3, fa2, fa2
                  fsub.s     ft9, fs5, ft3
                  fcvt.s.w   fs1, a3
                  xori        zero, a4, 1620
                  add         t4, t2, a3
                  fcvt.wu.s  s7, fs9
                  sll         s0, ra, t1
                  slti        s2, a5, -411
                  feq.s      ra, fs0, ft6
                  or          s5, s8, t3
                  xor         ra, tp, t6
                  flt.s      sp, fs5, fa6
                  div         a7, tp, s10
                  slli        s5, s5, 8
                  fclass.s   t1, ft7
                  addi        s5, ra, 1213
                  flt.s      s9, ft6, fs5
                  fmv.w.x    ft7, s4
                  fadd.s     ft3, ft4, ft4
                  sub         t4, s4, s1
                  addi        a2, tp, 401
                  srai        s8, zero, 7
                  nop
                  fclass.s   zero, ft0
                  mulhu       t1, gp, s11
                  nop
                  fcvt.s.wu  ft5, s10
                  rem         s4, t4, s8
                  fsgnj.s    fs3, fa2, fs11
                  fclass.s   gp, ft5
                  and         a6, a4, t3
                  fcvt.s.wu  fs9, tp
                  slti        a5, t6, 1041
                  div         a7, s4, tp
                  fdiv.s     ft3, fs7, fs10
                  fsub.s     ft0, ft5, ft3
                  fsgnjx.s   fa4, fa3, ft7
                  fmax.s     fs9, fa3, fa2
                  fmax.s     ft1, fs0, fs6
                  fmax.s     fa2, fa1, fa2
                  slti        zero, a3, -687
                  fmv.x.w    sp, ft6
                  nop
                  andi        s10, s11, -1080
                  fmul.s     ft0, fs2, fs2
                  fsgnj.s    ft10, ft2, ft2
                  fsqrt.s    ft6, fa4
                  divu        s6, a7, a1
                  sll         zero, s7, s10
                  divu        s8, s5, s0
                  fcvt.s.w   ft1, a3
                  srai        a7, s11, 15
                  div         t4, a5, a0
                  fsub.s     fa4, ft3, fs7
                  fmin.s     ft5, fs9, fs10
                  sub         s10, s1, s7
                  slli        zero, sp, 21
                  fcvt.w.s   zero, fs11
                  fcvt.s.w   fs8, s6
                  xori        a0, t3, 1605
                  fcvt.s.w   ft8, s5
                  addi        t4, s2, 270
                  sltiu       tp, s0, 1718
                  srai        zero, t1, 18
                  xor         zero, tp, s4
                  xori        a5, s3, -1098
                  fcvt.s.wu  fa3, s5
                  fcvt.wu.s  s3, ft4
                  addi        ra, s10, 1432
                  fle.s      s0, fs9, ft3
                  feq.s      sp, ft8, ft7
                  add         zero, a6, t5
                  add         a3, a2, a0
                  fsgnjn.s   ft2, ft9, fa4
                  fcvt.s.wu  ft6, t0
                  auipc       t3, 810486
                  xor         s10, s9, t6
                  xori        ra, s1, 610
                  fmul.s     fs10, ft6, fa2
                  auipc       t3, 745803
                  fsub.s     ft10, fs10, fa5
                  fsgnjn.s   fa6, ft8, fa4
                  fcvt.s.w   fs3, s11
                  auipc       s3, 514334
                  lui         a4, 155025
                  feq.s      a5, fa7, fs3
                  fmin.s     ft8, fs8, fa7
                  fmv.w.x    fs11, s11
                  fle.s      s7, fs0, fs11
                  lui         s9, 888739
                  fcvt.w.s   gp, fa4
                  sra         a1, t0, s8
                  auipc       a5, 277978
                  sltiu       s3, s6, 195
                  add         t0, a3, s7
                  slli        s4, s1, 22
                  or          a1, a2, a5
                  fdiv.s     ft1, fa6, fa4
                  slti        a2, s11, 168
                  auipc       a0, 363837
                  fmax.s     fs11, fa0, ft8
                  fsgnjx.s   ft4, fs1, fs5
                  srl         s5, zero, t4
                  srli        tp, s5, 14
                  fcvt.wu.s  t4, fa2
                  or          s11, a0, a0
                  xori        sp, t0, -1964
                  fmv.x.w    s6, fs2
                  fadd.s     fs5, fs10, ft3
                  mulhsu      t3, zero, zero
                  divu        a1, s9, s2
                  srai        s10, s7, 30
                  ori         s8, sp, -323
                  fle.s      a7, fs3, fs0
                  fcvt.w.s   t4, ft2
                  srli        a5, s6, 13
                  fdiv.s     fs1, fa5, ft10
                  fmv.x.w    t3, ft7
                  sltiu       a4, s9, 385
                  sra         zero, s5, s10
                  xori        t4, ra, 898
                  or          s10, s0, s11
                  nop
                  slti        a5, s5, -295
                  mulh        s5, s10, a6
                  xor         a6, sp, a7
                  and         a5, t4, a0
                  mulh        t1, s0, s10
                  addi        gp, a0, 791
                  lui         s4, 580045
                  srai        s9, s1, 3
                  fmv.x.w    s8, fa4
                  fmv.x.w    a1, fs4
                  sll         a3, s3, ra
                  fcvt.s.wu  ft5, s0
                  andi        s6, t4, 851
                  rem         a0, s0, t6
                  sltu        tp, a7, s3
                  sltu        s3, t5, t0
                  xori        a3, a5, -1469
                  fsqrt.s    fs4, fa4
                  fcvt.s.w   fa6, s7
                  flt.s      zero, fs1, fa7
                  lui         t4, 883225
                  addi        s8, s2, 1229
                  xor         a1, s1, ra
                  flt.s      sp, fa1, ft4
                  fcvt.s.wu  fs11, s3
                  srl         t1, s2, s8
                  xor         a2, s10, s1
                  mulhsu      a7, s9, a1
                  srli        a7, a4, 3
                  nop
                  mulhsu      sp, t5, t5
                  fdiv.s     fa4, fs7, ft0
                  sra         zero, ra, t5
                  srli        a4, ra, 14
                  mul         a4, t4, a7
                  fsgnj.s    fs6, ft11, fs0
                  fmin.s     ft0, ft6, ft8
                  srl         s11, s11, s8
                  fdiv.s     fs7, fa2, ft4
                  fmv.x.w    a4, fs10
                  fadd.s     ft2, fs0, ft3
                  andi        t2, a0, -1209
                  fmul.s     ft1, fs10, ft10
                  nop
                  srai        s3, a1, 29
                  auipc       s11, 72385
                  srli        a7, a2, 17
                  sll         s10, gp, a1
                  srai        zero, s2, 1
                  fle.s      a5, fs2, fa4
                  slti        t0, a4, 1437
                  sll         s5, s5, a0
                  fcvt.s.wu  ft5, zero
                  fsub.s     ft0, ft0, fa1
                  mul         a0, s2, tp
                  nop
                  sra         ra, a0, s4
                  srli        s8, a3, 11
                  fmax.s     fs1, fa0, fa5
                  feq.s      a4, ft8, ft10
                  sra         s7, t0, s3
                  xori        s3, t0, 704
                  fadd.s     fa7, fs9, fa7
                  fle.s      s8, ft2, fs9
                  fcvt.s.wu  fs0, s10
                  or          s11, a4, t5
                  mulh        sp, t5, t4
                  fmul.s     ft2, ft2, ft3
                  div         tp, s10, gp
                  mulh        s5, s8, sp
                  fmul.s     fs5, ft6, fa5
                  mul         gp, s7, t0
                  sra         a6, t0, s2
                  fcvt.wu.s  a2, fs2
                  sra         gp, s2, a6
                  sltiu       a5, t2, 1646
                  sll         a6, sp, s4
                  sub         a0, s10, t0
                  nop
                  fmax.s     ft8, fa6, fs2
                  fcvt.s.w   ft9, s4
                  div         s0, a1, a7
                  fsgnjx.s   fs8, fs5, fa0
                  srli        a7, a3, 15
                  mulh        sp, a5, a1
                  sra         s8, t3, ra
                  fsgnjx.s   fs11, ft7, fs7
                  sub         zero, t2, a1
                  fdiv.s     fa3, fa1, fs3
                  lui         zero, 827051
                  ori         a0, t4, 1218
                  feq.s      s3, fs9, ft5
                  sra         t2, t4, a5
                  mulhu       gp, s9, gp
                  fmin.s     fa0, fs0, fa7
                  or          s3, a3, gp
                  or          s8, a5, sp
                  sltu        t2, s6, s6
                  ori         a3, s6, -21
                  fsub.s     fs8, ft8, ft7
                  fsub.s     fs1, fs3, fa2
                  sub         sp, a2, zero
                  div         s10, sp, a5
                  fcvt.s.w   fs6, s6
                  sra         zero, t5, sp
                  sll         a6, s3, s4
                  fle.s      s5, ft10, ft4
                  fmv.w.x    fs8, s4
                  fsgnjn.s   fa4, ft1, ft6
                  fsgnjx.s   ft0, ft5, fa4
                  fsgnj.s    fs4, fa6, ft7
                  fcvt.s.wu  fa2, t0
                  mulhu       a1, t0, s8
                  addi        t1, a6, 1117
                  srl         s11, s9, t0
                  sltu        s7, a7, s2
                  sra         ra, s1, sp
                  sltu        s11, sp, t1
                  fcvt.wu.s  t1, fa1
                  fadd.s     fs7, fs5, ft10
                  div         a6, s11, sp
                  add         a7, a1, s7
                  fsqrt.s    fs9, ft11
                  fcvt.s.wu  ft4, a5
                  srl         t4, t0, s7
                  feq.s      a6, ft1, ft7
                  flt.s      a1, fs6, fs1
                  rem         s9, ra, a3
                  slt         s0, a2, a5
                  mulhsu      zero, a4, a7
                  srai        a6, t3, 7
                  fcvt.w.s   sp, fa4
                  fsub.s     fs10, ft9, fa1
                  nop
                  fdiv.s     fs2, fs11, fa3
                  flt.s      a7, ft11, fa2
                  div         s6, a2, t5
                  fsgnj.s    fs5, ft0, ft9
                  fmin.s     fs6, ft7, ft5
                  feq.s      a4, ft2, ft9
                  fsqrt.s    fa5, fs4
                  srl         zero, s6, t1
                  fsgnjn.s   fa1, fa4, ft1
                  feq.s      s10, fs9, ft6
                  mulhu       a6, s5, gp
                  slti        t3, s11, -1593
                  feq.s      a6, fa1, ft7
                  mulhu       t2, gp, sp
                  fsgnjn.s   fs8, fa6, fa2
                  fsgnjx.s   fa6, fs7, ft8
                  fmv.w.x    fs2, gp
                  slti        zero, s9, -523
                  and         t2, s3, t6
                  sll         s10, a5, t4
                  fcvt.wu.s  sp, ft0
                  add         t3, s2, s11
                  srai        s0, s11, 23
                  fsqrt.s    fs7, ft9
                  fsqrt.s    fa5, fa7
                  fclass.s   s0, fa1
                  div         a0, gp, s2
                  slli        s8, t3, 30
                  fcvt.wu.s  a2, fs1
                  xori        a7, s3, 533
                  ori         s10, t6, -278
                  fmv.w.x    fs11, a5
                  fsgnj.s    fs11, fs4, ft11
                  slt         s2, a2, a2
                  addi        s7, s6, -29
                  fmax.s     ft3, fs5, ft8
                  andi        a1, t6, 1302
                  lui         gp, 406177
                  fmax.s     fa5, fs3, fa6
                  slli        a6, t6, 26
                  fcvt.w.s   a1, fa2
                  srai        s7, s11, 30
                  sltiu       a6, a2, -1230
                  andi        s4, ra, 1861
                  feq.s      a7, fa0, fa1
                  fmv.w.x    fa6, a4
                  xori        s4, ra, 1047
                  sltiu       t4, a7, 1808
                  fclass.s   t1, fs2
                  add         t3, s8, t5
                  fsgnjx.s   fs5, ft1, fs5
                  srai        t4, s10, 29
                  fsgnj.s    ft1, fs4, fs0
                  slli        t4, s9, 21
                  sub         s9, s5, s5
                  nop
                  slti        a0, s11, -1570
                  xor         s8, s10, s7
                  nop
                  xori        t1, ra, -695
                  ori         t1, s3, -1037
                  fdiv.s     fa4, fs7, ft3
                  mulhu       s4, ra, tp
                  sra         a1, t5, s4
                  fcvt.s.wu  ft7, a0
                  and         s4, ra, s0
                  nop
                  mulhsu      s6, a5, a3
                  fcvt.s.wu  fs8, a0
                  andi        s4, a7, 1605
                  slli        s7, sp, 28
                  fsgnjx.s   fa5, fa3, fa7
                  divu        zero, t5, t5
                  fmul.s     ft9, ft3, fs4
                  fmv.x.w    sp, ft1
                  mulhu       t1, s9, zero
                  divu        s3, s8, a4
                  fmul.s     fs8, ft1, fs0
                  srli        zero, s9, 11
                  slt         zero, s9, s7
                  fsub.s     fa5, fs1, fs10
                  srli        a5, s2, 27
                  fmv.w.x    ft1, t4
                  fmin.s     ft9, ft10, ft7
                  fdiv.s     fs8, fs10, fa6
                  srli        a4, sp, 0
                  div         a4, a3, a4
                  slli        tp, t0, 24
                  sltiu       s2, a5, -500
                  slti        a3, s1, 943
                  feq.s      zero, fs8, ft6
                  divu        s7, t3, t3
                  xori        gp, s2, 1566
                  feq.s      s4, ft5, fs5
                  feq.s      a4, ft3, ft10
                  mulhu       t0, s1, t1
                  fcvt.s.wu  ft3, s6
                  and         s4, a6, zero
                  or          s10, t0, a4
                  slt         a5, s7, zero
                  fcvt.w.s   s7, ft10
                  sll         s10, sp, t0
                  addi        zero, t4, 1709
                  mulhsu      s3, a3, s5
                  flt.s      s3, fs2, fs8
                  fcvt.s.w   ft8, a3
                  sltiu       a5, t3, -1446
                  mulh        t3, sp, a0
                  feq.s      a1, ft2, fa1
                  fsgnj.s    ft3, fs2, fa2
                  srli        a2, t3, 22
                  fmul.s     ft1, ft4, fa2
                  mulhsu      t2, s0, a4
                  ori         a1, s4, 1219
                  fle.s      zero, fs10, fs5
                  fmul.s     ft10, ft5, fs2
                  fsqrt.s    fs4, fs9
                  andi        s6, s3, -602
                  mul         s6, s4, s11
                  mul         a6, a1, a7
                  srl         zero, s10, zero
                  divu        a3, s5, s11
                  fsgnjx.s   fs7, fa3, fa6
                  sltu        s2, t3, a5
                  sltu        t2, s5, a5
                  slli        a0, t0, 22
                  fsgnjx.s   fs1, ft11, ft0
                  fclass.s   t2, ft7
                  fadd.s     fs11, ft3, ft5
                  sub         t0, t3, a2
                  sltiu       a2, t5, -113
                  fsgnjx.s   fs5, fs0, fa7
                  xor         zero, a0, s8
                  fsqrt.s    fa2, ft3
                  fmv.x.w    t2, ft11
                  flt.s      ra, fs7, fs10
                  fmax.s     fa4, fs6, fa7
                  fcvt.w.s   s7, fs11
                  srl         s0, t5, a5
                  fclass.s   s5, fa4
                  xor         a6, s10, a4
                  xor         a5, a0, gp
                  flt.s      a6, fs3, fs11
                  add         sp, s4, s2
                  sltiu       s3, s0, -1961
                  fmv.x.w    s11, ft5
                  or          s7, s3, s3
                  fsqrt.s    fa2, fs4
                  fadd.s     fa7, fs10, ft10
                  slli        s4, s11, 6
                  mulh        s11, s0, a0
                  fcvt.s.w   fs0, s8
                  fsub.s     fs7, fa1, ft3
                  fsgnjn.s   fs11, fa6, ft9
                  ori         s9, s3, 91
                  div         t1, s0, s7
                  srli        sp, a0, 14
                  sll         t3, s4, a1
                  ori         s0, s4, -1064
                  slt         s6, t6, s1
                  ori         tp, gp, -1077
                  sltu        t3, zero, a3
                  sltu        gp, t0, a5
                  fsub.s     ft10, fs1, fs1
                  divu        sp, a5, s11
                  and         s9, s1, a3
                  sll         s6, zero, s5
                  andi        a5, a7, 630
                  fcvt.s.w   ft6, a3
                  fmv.x.w    a1, ft10
                  auipc       s0, 903099
                  div         s8, s8, t4
                  divu        a7, s4, sp
                  fclass.s   a1, fs4
                  divu        a0, a0, sp
                  fsgnj.s    ft3, ft0, ft11
                  or          s11, a5, s2
                  fdiv.s     ft11, ft5, fs4
                  divu        sp, ra, t5
                  fcvt.s.wu  fa7, ra
                  fsgnjx.s   ft11, fs7, fs7
                  rem         a0, s9, a5
                  slti        a7, a5, -563
                  srl         s0, t3, s0
                  fclass.s   s8, fs9
                  sub         s9, gp, a1
                  fsgnjx.s   fs11, fa4, fs9
                  fsgnj.s    fa4, fa6, ft6
                  xori        a7, s1, -1145
                  fmv.x.w    a4, fs5
                  feq.s      a1, fs3, fs6
                  slt         sp, ra, s0
                  fmv.w.x    fs8, t6
                  or          a6, a6, s7
                  fadd.s     fs9, fs9, fa5
                  nop
                  or          tp, a7, s11
                  fmul.s     fa4, fa7, fa7
                  fle.s      t0, fs2, fs6
                  flt.s      zero, ft4, fa2
                  fsgnjx.s   ft5, fa2, ft1
                  srl         s4, a2, t5
                  fclass.s   a5, fs11
                  fdiv.s     ft10, ft11, fa6
                  fmv.w.x    fs5, t1
                  div         s3, a0, tp
                  fsub.s     fs8, fs11, ft5
                  mul         a0, a1, s5
                  mulhsu      s10, s11, a3
                  mulhsu      s4, t1, a0
                  or          zero, t5, a1
                  andi        a3, s11, -1212
                  fcvt.wu.s  zero, fa7
                  mulhsu      tp, s8, s2
                  fmv.w.x    ft7, ra
                  sub         gp, a4, s1
                  xor         a2, tp, s3
                  fmax.s     fs6, ft4, fa7
                  ori         a1, s9, -1470
                  xor         zero, s6, a0
                  fsqrt.s    fs5, fs11
                  fmin.s     fs9, fs3, fa6
                  fclass.s   zero, fs9
                  srl         zero, a6, t4
                  fmin.s     fs8, fs6, fs4
                  fsgnjn.s   ft0, fs3, ft3
                  addi        a5, t2, -844
                  fsgnjn.s   fa7, ft8, fs6
                  rem         gp, ra, t6
                  fsub.s     ft10, fs3, fs6
                  rem         a3, s1, s9
                  sub         a7, s6, s0
                  fsgnjx.s   ft3, fs7, ft6
                  fsqrt.s    ft4, fa1
                  sub         zero, a0, gp
                  fsgnjx.s   ft8, fs8, fs6
                  slli        zero, s11, 9
                  nop
                  auipc       tp, 716728
                  fsgnj.s    fa7, fs10, fs11
                  srl         tp, a7, a0
                  fcvt.s.w   fs7, a4
                  fsgnjx.s   ft3, ft1, ft2
                  xor         ra, a1, s1
                  fcvt.s.w   fa2, a0
                  slt         s5, s11, t0
                  slt         s3, a0, a3
                  rem         s3, t1, t2
                  fmul.s     ft1, fa6, ft4
                  slti        s8, ra, 114
                  or          a4, ra, s5
                  fmv.w.x    fs10, a3
                  fdiv.s     ft1, ft7, fs8
                  fsqrt.s    fs7, fs1
                  sltiu       s4, s2, 1261
                  fcvt.wu.s  sp, fa7
                  fcvt.w.s   zero, fa0
                  xori        t2, t6, -1939
                  slti        s8, a3, 1777
                  fmv.w.x    ft4, t5
                  srl         t2, t4, s8
                  fle.s      tp, ft7, ft0
                  divu        t2, t2, s6
                  srl         a7, t6, a6
                  sltiu       t0, s3, -885
                  srli        a7, s9, 17
                  sra         a6, a7, s3
                  fcvt.s.wu  fa3, s8
                  fmax.s     ft10, ft5, ft4
                  mulh        t0, s1, s0
                  mulhsu      s11, s6, a5
                  rem         t0, s5, t4
                  or          s2, tp, t2
                  fsgnjn.s   fs9, fa3, fs9
                  nop
                  fcvt.w.s   zero, ft9
                  nop
                  fadd.s     fa1, fs6, fa5
                  srli        ra, t3, 30
                  fmax.s     ft4, ft3, ft10
                  mul         s5, a4, s3
                  or          s3, t0, s11
                  fmax.s     ft5, fs7, fs4
                  addi        s10, zero, 1073
                  fsgnjn.s   ft9, fs11, ft3
                  fsgnjx.s   fs0, ft10, fs1
                  nop
                  xor         a5, a4, s5
                  auipc       a2, 204006
                  sll         zero, a4, s6
                  addi        t2, s9, -420
                  fcvt.s.wu  ft1, s2
                  fcvt.s.wu  fs9, s2
                  lui         s2, 1014615
                  addi        a2, a3, 1664
                  and         s3, s8, s8
                  fcvt.w.s   t0, fs2
                  nop
                  andi        gp, s10, 1545
                  sll         t2, s11, s10
                  fle.s      s2, fa3, fs2
                  or          a7, s6, a4
                  or          a3, t3, sp
                  srai        s4, a1, 4
                  fcvt.s.wu  fa0, a2
                  slli        zero, gp, 1
                  feq.s      s7, fs1, ft6
                  fcvt.s.wu  fs6, zero
                  fmul.s     fs10, fs1, ft3
                  lui         tp, 980931
                  sub         s6, t6, t4
                  and         t0, s0, a2
                  rem         s10, ra, s1
                  fsgnjn.s   ft6, fa1, ft6
                  slli        t3, ra, 5
                  divu        a2, s2, s7
                  flt.s      a0, ft10, fs10
                  andi        ra, a7, 92
                  auipc       s10, 196555
                  ori         s10, s0, -1313
                  slli        t0, s11, 0
                  feq.s      zero, fs6, fa2
                  auipc       sp, 620677
                  lui         a1, 40157
                  fcvt.wu.s  t2, fs3
                  xori        a7, zero, 1408
                  slti        tp, t3, 1393
                  xori        t1, s5, -72
                  fmax.s     fs1, fa7, fs2
                  fdiv.s     ft8, fs8, fs11
                  ori         s8, a2, 629
                  sra         t4, a3, zero
                  fcvt.w.s   a6, ft11
                  slli        a4, ra, 28
                  sra         zero, tp, zero
                  divu        zero, gp, zero
                  fmin.s     fs11, fa1, fs4
                  or          a1, s2, s1
                  ori         zero, zero, -934
                  fcvt.s.wu  fs9, s11
                  sltu        t1, s6, a4
                  slti        a1, a7, -1527
                  add         gp, zero, a1
                  mulhu       ra, s7, a3
                  fdiv.s     ft11, fs8, fs8
                  andi        t2, s11, -752
                  fsqrt.s    fs8, fs11
                  ori         s9, s10, -978
                  nop
                  xor         s7, t4, s9
                  xori        a0, t4, -1097
                  fdiv.s     fa2, fs2, ft1
                  fmin.s     fa1, fs6, fs7
                  mulhsu      t0, t4, a1
                  mulh        a6, s9, s0
                  fsub.s     fs9, fa0, fs2
                  nop
                  fsub.s     fa4, fa0, fa6
                  add         a0, a5, t1
                  lui         zero, 351391
                  slti        t3, t1, 251
                  srai        s11, tp, 13
                  fsgnjx.s   ft2, ft6, ft9
                  fsqrt.s    fs2, fs9
                  fmul.s     ft0, fa5, fs10
                  sub         s6, t6, a1
                  fcvt.s.wu  ft5, s1
                  or          s6, t0, s7
                  slli        zero, s5, 9
                  xori        t3, s3, -1291
                  nop
                  andi        a6, t2, -1059
                  sltu        t1, a3, t3
                  fmul.s     ft0, ft3, fs0
                  sltiu       zero, a1, -429
                  fmul.s     ft0, ft4, fs0
                  fsgnj.s    fa6, fs2, ft2
                  andi        s6, t2, -697
                  xori        s11, ra, 239
                  sub         tp, s8, s6
                  fmax.s     fs0, fs5, ft10
                  slti        gp, a3, 1939
                  fmv.x.w    a7, fs3
                  xor         a6, s0, a2
                  fmv.w.x    ft10, a3
                  add         s5, s1, s9
                  flt.s      s10, fa1, ft8
                  slti        t2, s9, -1966
                  fsgnjn.s   fa3, fs9, fs3
                  fdiv.s     fs2, ft5, ft7
                  fadd.s     fa6, ft7, ft9
                  fsgnjn.s   ft3, fa6, ft7
                  divu        s11, s3, t5
                  and         a7, s0, s8
                  nop
                  addi        s3, s3, 1704
                  fmv.w.x    ft3, s3
                  mulhu       s8, s9, tp
                  fsgnjx.s   fs4, fa2, fs6
                  sltiu       s5, a4, 653
                  fsgnjx.s   fs8, ft5, fs2
                  fcvt.s.wu  ft0, s9
                  sltu        t1, t4, a7
                  ori         t4, ra, 1871
                  rem         zero, s5, s3
                  fsgnj.s    ft0, fs6, ft0
                  sra         s11, s8, t3
                  srai        sp, s4, 5
                  auipc       zero, 307535
                  sltiu       ra, a3, 1401
                  div         s11, s1, s9
                  srai        t4, t3, 0
                  srl         a5, t6, t2
                  fsub.s     fa1, fa6, fs0
                  addi        zero, s8, 1302
                  slt         s4, t3, sp
                  sll         tp, t5, a3
                  or          zero, a7, a0
                  fsub.s     fs1, fa5, ft0
                  fclass.s   a4, ft4
                  fsgnjx.s   ft1, ft6, fs10
                  fclass.s   a2, fs5
                  feq.s      t2, fs0, ft8
                  srli        a3, ra, 28
                  mulhsu      s10, s4, a0
                  srl         s3, t3, s0
                  divu        zero, sp, zero
                  sltiu       a1, s10, 1335
                  fmv.w.x    fa1, s11
                  fclass.s   t4, ft9
                  fclass.s   gp, ft10
                  fmin.s     ft3, fa6, ft3
                  fcvt.s.wu  fa3, s2
                  fmv.w.x    ft7, s3
                  srai        s5, s10, 23
                  div         a1, t0, t2
                  addi        s3, t1, -1388
                  fsgnj.s    fs5, fa5, fs6
                  feq.s      zero, ft11, ft6
                  fclass.s   s2, fa7
                  fle.s      a0, fa3, fa3
                  fmv.w.x    fa7, a5
                  xor         a7, t5, t5
                  mul         a3, s5, a5
                  fdiv.s     fa4, ft9, ft9
                  lui         s2, 588706
                  xor         ra, t2, tp
                  fcvt.wu.s  s10, fs6
                  rem         zero, s6, zero
                  fmin.s     ft0, ft0, fa0
                  sltiu       a6, gp, 1572
                  nop
                  add         s6, a6, s10
                  ori         a3, s2, -1198
                  add         s0, s11, t5
                  srli        s2, a4, 3
                  mulhu       s7, gp, a7
                  sra         s6, s7, sp
                  fadd.s     ft1, fs5, fa2
                  srl         gp, s1, s5
                  slt         s3, t4, s4
                  fsub.s     ft5, fs0, fa1
                  srli        ra, a3, 0
                  fdiv.s     fs4, ft2, fa0
                  srl         a7, a3, s7
                  div         s11, s10, a2
                  ori         t2, s3, -766
                  flt.s      zero, fs5, fs3
                  fcvt.w.s   a3, ft3
                  feq.s      t3, fs1, ft7
                  or          a7, zero, s11
                  fsub.s     fa2, fs0, ft5
                  slli        t2, s1, 26
                  div         a6, ra, t4
                  fcvt.wu.s  gp, fa2
                  fmul.s     fs1, ft11, ft2
                  fmv.w.x    fa0, s11
                  srli        a6, zero, 25
                  fmv.w.x    ft10, s8
                  lui         s0, 863718
                  fmv.w.x    fa5, a1
                  sltu        a4, t3, t0
                  flt.s      s2, ft0, fs2
                  fmv.x.w    s5, ft11
                  fmv.x.w    gp, fa4
                  srai        tp, t1, 17
                  sll         s3, s4, a3
                  add         tp, t5, s3
                  sll         s2, s9, s9
                  ori         a0, s11, 1993
                  fclass.s   ra, ft11
                  mulh        tp, a3, a1
                  fsgnjx.s   fs3, fs11, ft8
                  fcvt.wu.s  a1, ft8
                  fsgnjx.s   ft10, fa0, fs1
                  divu        s0, t2, t5
                  sltu        t4, a5, a3
                  sra         s2, s0, s9
                  rem         s10, s7, s2
                  fmin.s     ft3, ft6, fa7
                  fcvt.wu.s  s9, fa4
                  fcvt.s.w   ft10, s3
                  slt         a0, zero, s7
                  sltu        s2, s4, ra
                  sltiu       t0, t3, -1466
                  fmin.s     ft11, ft3, fs11
                  sra         s3, ra, t0
                  slli        s3, a3, 30
                  sltiu       s5, t2, -787
                  feq.s      zero, fs5, ft3
                  fmin.s     ft8, fs1, ft10
                  sltiu       zero, s5, 371
                  fmin.s     fa0, ft5, ft8
                  srai        s2, t4, 19
                  fmin.s     ft5, fa1, fa2
                  fmv.w.x    ft3, tp
                  div         a2, t6, t5
                  addi        s5, s4, 670
                  slli        s9, ra, 1
                  srli        s2, s5, 19
                  sll         a6, s11, s4
                  div         zero, t3, s3
                  fmv.w.x    fa4, s10
                  ori         t4, t1, 1198
                  flt.s      s9, fa7, ft2
                  and         zero, a0, zero
                  sra         gp, s10, t4
                  fcvt.w.s   sp, fs3
                  andi        a6, t4, -786
                  and         a4, t5, a4
                  sltiu       t3, s10, 1635
                  fmax.s     fs9, fs0, fs10
                  fle.s      gp, fs11, fa3
                  fmul.s     fs11, ft10, ft6
                  fsub.s     ft4, fs3, fa3
                  fsgnjn.s   ft3, fs4, fa2
                  feq.s      zero, ft7, fa1
                  divu        t1, t1, s8
                  div         a1, s5, gp
                  divu        s11, s3, gp
                  fsgnj.s    fs2, fa1, fa6
                  mulhsu      t4, s0, s6
                  srli        s4, a3, 10
                  fmin.s     fs0, fs9, ft0
                  lui         s5, 984652
                  sll         a5, a6, t5
                  sltiu       zero, a0, 738
                  slli        zero, t3, 8
                  add         t1, s7, tp
                  fdiv.s     ft3, fs6, fa2
                  fsgnjn.s   fs8, fs3, fs5
                  fsgnjx.s   ft11, fs3, fa7
                  or          tp, t6, s11
                  fle.s      zero, ft7, fs11
                  fle.s      a4, fs5, fa5
                  fle.s      s10, fa7, ft1
                  fdiv.s     fs4, fs9, ft1
                  div         a4, s0, a7
                  feq.s      sp, fa3, fs10
                  add         s7, sp, a5
                  or          gp, ra, a6
                  fadd.s     ft6, ft6, fa5
                  mul         t4, t5, a2
                  rem         tp, s1, s3
                  fcvt.s.w   fa5, a3
                  mulh        gp, ra, s3
                  auipc       t1, 948020
                  flt.s      s9, fs5, fa4
                  addi        sp, t6, -1658
                  fle.s      a0, ft1, ft0
                  lui         s10, 671264
                  sub         sp, a1, t1
                  fdiv.s     fa4, ft1, ft6
                  slti        s2, t2, -258
                  fadd.s     ft2, ft6, fs3
                  feq.s      s11, fs3, fs6
                  srl         a0, tp, s5
                  fmin.s     ft11, ft7, fs4
                  fsqrt.s    ft6, fs7
                  fmax.s     fa2, ft3, fs3
                  fsgnjx.s   ft11, fa1, ft10
                  or          s3, s5, a6
                  fsqrt.s    ft2, ft6
                  rem         a7, s9, a5
                  sltu        a0, s11, s2
                  fadd.s     ft9, fs6, ft7
                  sra         tp, s1, a4
                  fmv.w.x    fs10, t1
                  fsgnjn.s   ft11, ft3, ft5
                  andi        s0, s2, 503
                  andi        s9, a1, -1205
                  xor         s2, zero, s11
                  fsgnjn.s   ft11, fs0, ft1
                  fsgnj.s    fa0, fs5, fs10
                  mulhsu      zero, s3, a7
                  div         a5, s4, t3
                  nop
                  xori        t0, s2, 692
                  sra         s8, s10, a7
                  mulhu       s9, zero, a0
                  fsub.s     fs7, fa3, fs10
                  sltiu       t1, gp, 1334
                  fadd.s     fs6, ft4, fa1
                  divu        a5, s3, t6
                  div         t0, s5, s5
                  mulhsu      t4, t4, tp
                  feq.s      a3, fs0, ft8
                  or          zero, t3, a1
                  srai        a3, ra, 8
                  fsqrt.s    fa3, ft2
                  fcvt.w.s   a3, fa0
                  mulhu       sp, s5, tp
                  sra         t0, t1, s10
                  feq.s      tp, fa3, ft8
                  flt.s      s5, ft3, fs8
                  ori         a6, t6, 661
                  add         s4, t0, t5
                  fsgnj.s    fs6, fa1, fa2
                  fmax.s     ft8, ft6, fs2
                  sltu        a1, t6, a4
                  sra         s7, a5, t5
                  addi        s10, a4, -1510
                  slli        t1, a4, 8
                  sltiu       zero, s8, 1701
                  rem         zero, s1, t2
                  sll         a4, s8, zero
                  div         a6, t0, t5
                  fadd.s     ft2, ft3, fa6
                  fclass.s   a3, fa4
                  andi        a2, t3, 261
                  slt         t3, s8, a5
                  fmv.w.x    fa2, zero
                  fcvt.w.s   zero, fs4
                  fsqrt.s    fs5, ft11
                  mulhu       s9, a0, zero
                  sub         s11, t3, a0
                  and         s0, sp, a5
                  fcvt.w.s   s2, ft2
                  fmv.x.w    s10, ft4
                  lui         ra, 634736
                  srai        zero, t0, 19
                  mulhu       gp, a2, a1
                  fsgnjx.s   fa1, fs8, ft9
                  sub         s4, a0, s4
                  fdiv.s     fa0, ft4, fs4
                  srli        s0, zero, 28
                  feq.s      s8, fs11, fs6
                  mulhu       t4, s1, sp
                  mul         zero, a5, s11
                  srli        gp, a1, 6
                  fmin.s     ft11, ft5, ft4
                  add         s0, s9, sp
                  srli        s4, s6, 10
                  fsub.s     fs8, fs9, fa2
                  and         zero, t1, t6
                  fdiv.s     ft10, fa2, fs3
                  xor         t0, a3, t4
                  srl         sp, a0, t5
                  srli        a6, a4, 13
                  sll         s5, s1, t4
                  addi        t1, ra, -1059
                  srai        a5, s7, 30
                  fdiv.s     ft3, ft0, fs2
                  auipc       a0, 578842
                  mul         s6, t5, s11
                  fclass.s   s3, ft0
                  slli        a1, s3, 18
                  fsqrt.s    fs11, ft3
                  srl         s2, s1, s4
                  xor         s4, zero, t6
                  div         a7, t2, a1
                  slli        tp, s7, 16
                  sub         sp, s1, t2
                  xor         a4, tp, t1
                  sub         t2, s3, ra
                  fmin.s     fs7, fa7, ft2
                  mulhsu      a7, t6, a3
                  sra         a5, t2, s8
                  fcvt.wu.s  s11, ft11
                  sltu        s9, ra, a7
                  sll         s0, s3, s2
                  fmul.s     ft11, fa3, fs6
                  sra         s4, t0, s1
                  slti        a3, ra, -1853
                  feq.s      s6, fs10, fs6
                  mulhsu      a5, s11, tp
                  lui         gp, 7256
                  fsgnj.s    ft5, ft6, fa4
                  andi        s3, s7, 930
                  nop
                  slt         s8, sp, s6
                  fcvt.s.w   fa5, a3
                  fmul.s     fs10, ft1, ft1
                  fsgnjx.s   fs5, fs4, fs5
                  fmv.w.x    fs11, s3
                  feq.s      gp, ft9, ft3
                  srli        s7, zero, 22
                  fmin.s     fs2, fs11, fs5
                  divu        a5, t4, a6
                  fsgnjx.s   fa7, fa1, ft6
                  sra         zero, s9, s1
                  srai        s4, t3, 5
                  addi        a3, ra, -2004
                  fsgnjx.s   ft9, ft3, ft2
                  mul         gp, t1, s4
                  fcvt.s.w   ft9, sp
                  fmax.s     ft3, ft3, fa2
                  fmv.w.x    fa2, tp
                  fcvt.s.wu  fs9, s10
                  fcvt.wu.s  s4, fs9
                  sltiu       s5, s8, 832
                  feq.s      s4, fs2, fa0
                  andi        zero, ra, -1978
                  mulh        t2, s0, s6
                  fle.s      s4, fa5, ft4
                  fdiv.s     fa7, fs5, fa4
                  fcvt.s.w   fa6, t4
                  srl         s0, s6, t1
                  sub         t3, ra, a5
                  andi        sp, s5, -1098
                  lui         a6, 693531
                  and         a2, zero, ra
                  sltu        s11, s4, s4
                  add         s2, a6, a2
                  fsqrt.s    fa3, ft7
                  or          s5, s6, s0
                  fclass.s   tp, fs6
                  addi        s10, a4, -1994
                  srli        s3, t6, 25
                  auipc       a3, 939707
                  rem         a2, s11, t1
                  sll         sp, s7, a6
                  sltiu       sp, s5, -1512
                  mulhu       t4, a4, t2
                  fmul.s     fs0, ft10, fs4
                  fsub.s     fs0, fa0, fs6
                  fsqrt.s    fs7, fa1
                  fcvt.w.s   s6, fs3
                  fcvt.wu.s  a5, fs11
                  rem         a4, s4, s1
                  fadd.s     ft0, fa7, fa4
                  ori         zero, s9, -206
                  fsqrt.s    ft3, fs9
                  fmv.w.x    fa3, s1
                  rem         a4, a0, tp
                  or          a3, s0, zero
                  fsgnj.s    fs11, ft8, fs9
                  mulh        a3, s3, s3
                  fcvt.w.s   a0, fa2
                  fadd.s     fa4, fs11, ft7
                  sltu        s9, ra, s5
                  fcvt.w.s   a7, fa0
                  fdiv.s     ft1, fs10, fa2
                  fmv.x.w    gp, fs11
                  fcvt.s.w   fs2, s7
                  slt         gp, tp, s6
                  fsqrt.s    ft10, fa1
                  mulh        s0, s0, s0
                  fsub.s     ft5, ft8, fs8
                  fclass.s   s2, ft4
                  mulh        t1, gp, s9
                  nop
                  fmv.w.x    fa3, a7
                  lui         zero, 132059
                  fmax.s     ft9, fs0, ft2
                  fcvt.s.wu  ft9, s2
                  srl         a5, tp, s9
                  ori         zero, s9, 1716
                  sltu        a1, t6, s3
                  fcvt.wu.s  t4, fa3
                  fmax.s     ft11, fs8, ft6
                  div         s7, ra, t5
                  sra         s10, t1, s5
                  srli        t1, s1, 2
                  lui         s9, 641283
                  srl         sp, a0, s2
                  srl         tp, a2, a0
                  xor         tp, s3, s5
                  fdiv.s     fs0, fa0, fs3
                  slli        a5, t6, 19
                  feq.s      s7, ft7, fa3
                  nop
                  fle.s      s10, ft9, ft6
                  auipc       s9, 58619
                  slt         a5, s10, t5
                  fsgnjx.s   ft11, ft5, fs3
                  flt.s      s5, ft10, ft4
                  fcvt.wu.s  ra, ft6
                  slti        a3, t3, -1975
                  and         gp, a7, s1
                  fcvt.wu.s  zero, ft6
                  divu        tp, tp, s2
                  fmv.w.x    ft0, zero
                  ori         zero, gp, 300
                  fmin.s     fs6, fs1, fa2
                  and         a5, s1, zero
                  addi        gp, t4, -959
                  rem         zero, s10, s3
                  la x31, test_done
                  jalr x0, x31, 0
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
mmode_intr_vector_1:
                  csrrw x30, 0x340, x30
                  add x30, x9, zero
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
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_2:
                  csrrw x30, 0x340, x30
                  add x30, x9, zero
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
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_3:
                  csrrw x30, 0x340, x30
                  add x30, x9, zero
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
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_4:
                  csrrw x30, 0x340, x30
                  add x30, x9, zero
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
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_5:
                  csrrw x30, 0x340, x30
                  add x30, x9, zero
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
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_6:
                  csrrw x30, 0x340, x30
                  add x30, x9, zero
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
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_7:
                  csrrw x30, 0x340, x30
                  add x30, x9, zero
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
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_8:
                  csrrw x30, 0x340, x30
                  add x30, x9, zero
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
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_9:
                  csrrw x30, 0x340, x30
                  add x30, x9, zero
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
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_10:
                  csrrw x30, 0x340, x30
                  add x30, x9, zero
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
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_11:
                  csrrw x30, 0x340, x30
                  add x30, x9, zero
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
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_12:
                  csrrw x30, 0x340, x30
                  add x30, x9, zero
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
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_13:
                  csrrw x30, 0x340, x30
                  add x30, x9, zero
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
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_14:
                  csrrw x30, 0x340, x30
                  add x30, x9, zero
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
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_15:
                  csrrw x30, 0x340, x30
                  add x30, x9, zero
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
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

.align 4
mtvec_handler:    
                  .option norvc;
                  j mmode_exception_handler
                  j mmode_intr_vector_1
                  j mmode_intr_vector_2
                  j mmode_intr_vector_3
                  j mmode_intr_vector_4
                  j mmode_intr_vector_5
                  j mmode_intr_vector_6
                  j mmode_intr_vector_7
                  j mmode_intr_vector_8
                  j mmode_intr_vector_9
                  j mmode_intr_vector_10
                  j mmode_intr_vector_11
                  j mmode_intr_vector_12
                  j mmode_intr_vector_13
                  j mmode_intr_vector_14
                  j mmode_intr_vector_15

mmode_exception_handler:
                  csrrw x30, 0x340, x30
                  add x30, x9, zero
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
                  csrr x26, 0x341 # MEPC
                  csrr x26, 0x342 # MCAUSE
                  li x22, 0xb # ECALL_MMODE
                  beq x26, x22, ecall_handler
                  li x22, 0x2 # ILLEGAL_INSTRUCTION
                  beq x26, x22, illegal_instr_handler
                  csrr x22, 0x343 # MTVAL
                  1: la x31, test_done
                  jalr x1, x31, 0

ecall_handler:    
                  la x26, _start
                  sw x0, 0(x26)
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  la x31, write_tohost
                  jalr x0, x31, 0

illegal_instr_handler:
                  csrr  x26, 0x341
                  addi  x26, x26, 4
                  csrw  0x341, x26
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
                  add x9, x30, zero
                  csrrw x30, 0x340, x30
                  mret

pt_fault_handler: 

.align 2
mmode_intr_handler:
                  csrr  x26, 0x300 # MSTATUS;
                  csrr  x26, 0x304 # MIE;
                  csrr  x26, 0x344 # MIP;
                  csrrc x26, 0x344, x26 # MIP;
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
                  add x9, x30, zero
                  csrrw x30, 0x340, x30
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
