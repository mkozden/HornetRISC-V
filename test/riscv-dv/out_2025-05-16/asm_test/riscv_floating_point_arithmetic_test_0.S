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
                  li x31, 0x40001120
                  csrw 0x301, x31
kernel_sp:        
                  la x24, kernel_stack_end

trap_vec_init:    
                  la x31, mtvec_handler
                  ori x31, x31, 1
                  csrw 0x305, x31 # MTVEC

mepc_setup:       
                  la x31, init
                  csrw 0x341, x31

init_machine_mode:
                  li x31, 0x3a00
                  csrw 0x300, x31 # MSTATUS
                  li x31, 0x0
                  csrw 0x304, x31 # MIE
                  mret
init:             
                  li x31, 0x8078760d
                  fmv.w.x f0, x31
                  li x31, 0xff7fffff
                  fmv.w.x f1, x31
                  li x31, 0x80000000
                  fmv.w.x f2, x31
                  li x31, 0x50229
                  fmv.w.x f3, x31
                  li x31, 0xdf33e
                  fmv.w.x f4, x31
                  li x31, 0xff7fffff
                  fmv.w.x f5, x31
                  li x31, 0x7f800001
                  fmv.w.x f6, x31
                  li x31, 0xff7fffff
                  fmv.w.x f7, x31
                  li x31, 0xfea49fee
                  fmv.w.x f8, x31
                  li x31, 0x7f7fffff
                  fmv.w.x f9, x31
                  li x31, 0x7f7fffff
                  fmv.w.x f10, x31
                  li x31, 0x7f800000
                  fmv.w.x f11, x31
                  li x31, 0xd5739
                  fmv.w.x f12, x31
                  li x31, 0xff7fffff
                  fmv.w.x f13, x31
                  li x31, 0x7fc00000
                  fmv.w.x f14, x31
                  li x31, 0x7f7fffff
                  fmv.w.x f15, x31
                  li x31, 0xff800000
                  fmv.w.x f16, x31
                  li x31, 0x0
                  fmv.w.x f17, x31
                  li x31, 0x7fc00000
                  fmv.w.x f18, x31
                  li x31, 0x5e11e0db
                  fmv.w.x f19, x31
                  li x31, 0x0
                  fmv.w.x f20, x31
                  li x31, 0x7f800001
                  fmv.w.x f21, x31
                  li x31, 0x7f800001
                  fmv.w.x f22, x31
                  li x31, 0x80754a70
                  fmv.w.x f23, x31
                  li x31, 0x80000000
                  fmv.w.x f24, x31
                  li x31, 0x7fc00000
                  fmv.w.x f25, x31
                  li x31, 0xff7fffff
                  fmv.w.x f26, x31
                  li x31, 0xc267cc87
                  fmv.w.x f27, x31
                  li x31, 0xff800000
                  fmv.w.x f28, x31
                  li x31, 0x0
                  fmv.w.x f29, x31
                  li x31, 0x53734
                  fmv.w.x f30, x31
                  li x31, 0x0
                  fmv.w.x f31, x31
                  fsrmi 3
                  li x0, 0xc
                  li x1, 0x9
                  li x2, 0x0
                  li x3, 0xe
                  li x4, 0xbdaf9aab
                  li x5, 0xb
                  li x6, 0x80000000
                  li x7, 0xfde7424d
                  li x8, 0x0
                  li x9, 0xf6a36fd8
                  li x10, 0xa8ecbb24
                  li x11, 0x80000000
                  li x12, 0x80000000
                  li x13, 0x9852156e
                  li x15, 0x0
                  li x16, 0x0
                  li x17, 0x80000000
                  li x18, 0xf986822c
                  li x19, 0xd6e28cf
                  li x20, 0xfb41287a
                  li x21, 0xf3905218
                  li x22, 0x0
                  li x23, 0x6
                  li x25, 0xd
                  li x26, 0x0
                  li x27, 0xbed08aad
                  li x28, 0x80000000
                  li x29, 0xfa73c25a
                  li x30, 0x80000000
                  li x31, 0x0
                  la x14, user_stack_end
main:             fmin.s     ft0, fa5, ft3
                  fmv.w.x    fa6, s11
                  fmax.s     fs10, fa3, fs0
                  fmv.x.w    s5, ft1
                  fcvt.wu.s  zero, fa2
                  fdiv.s     ft1, ft10, fs8
                  add         sp, s3, sp
                  xori        t6, s1, 1306
                  addi        s10, ra, 398
                  ori         ra, tp, 1913
                  slti        s7, t5, -52
                  fadd.s     fs7, fa5, fs0
                  fdiv.s     fs4, ft0, fs6
                  rem         a2, t2, zero
                  flt.s      t2, fs5, ft6
                  addi        zero, s7, 277
                  fsub.s     ft5, ft4, fs10
                  fmv.x.w    t1, fa0
                  fdiv.s     ft11, ft0, ft7
                  slli        a7, s6, 22
                  xor         s4, tp, s8
                  srl         a2, a7, s5
                  add         ra, s9, s7
                  add         a6, s5, s0
                  fmin.s     ft10, fs3, fs4
                  fcvt.s.w   ft9, a0
                  srl         a7, s0, s6
                  srl         zero, a5, t4
                  mulh        tp, s4, s8
                  fmin.s     fs11, ft2, ft7
                  and         a7, t3, a5
                  sub         t2, t6, a6
                  srli        s0, s1, 6
                  xori        zero, s0, -1017
                  ori         s4, t3, 348
                  or          a1, t5, a3
                  divu        zero, a3, a6
                  fsgnjn.s   fs5, fa4, ft3
                  srli        t3, s10, 8
                  sub         a7, a2, s4
                  flt.s      zero, fs7, ft2
                  fmv.w.x    fs6, s0
                  andi        t3, a1, -125
                  sll         t5, s4, a0
                  auipc       s5, 362416
                  auipc       s5, 506829
                  sub         tp, s4, zero
                  divu        s10, s5, s6
                  fmin.s     fa6, fs6, ft2
                  mulhsu      t0, t3, t1
                  slti        tp, s6, -421
                  fmv.x.w    a0, ft8
                  fclass.s   t0, fa6
                  fcvt.w.s   t2, fa6
                  srl         a3, t2, s6
                  fsgnj.s    ft0, fa7, fa7
                  fmv.x.w    zero, ft3
                  fcvt.s.w   fa6, s3
                  fmv.w.x    fa7, zero
                  mulh        s6, s6, a2
                  addi        a6, a1, -661
                  xor         s9, zero, s4
                  nop
                  srli        zero, s6, 7
                  fsgnjx.s   fs1, fs9, ft5
                  mulhsu      zero, t3, a7
                  fcvt.s.wu  ft5, s2
                  div         zero, ra, t2
                  feq.s      s11, ft9, fs7
                  sltu        s2, s0, s11
                  auipc       t3, 935853
                  or          gp, zero, tp
                  flt.s      s1, fa1, ft0
                  fmv.w.x    fa2, t0
                  fmv.w.x    ft1, s7
                  flt.s      s4, fa4, fs8
                  mulhsu      s10, t3, s1
                  feq.s      zero, fs2, ft5
                  addi        s5, s2, -712
                  sub         sp, s4, ra
                  lui         tp, 698407
                  xor         t2, zero, a1
                  slti        ra, a7, -1273
                  fsgnj.s    fa1, fs6, fs3
                  lui         s0, 720738
                  fsgnjx.s   fs4, ft5, fs11
                  sra         s11, gp, s2
                  feq.s      t5, ft11, ft0
                  sltu        zero, s1, s4
                  divu        zero, s10, t0
                  fle.s      s3, ft8, fa1
                  fmv.w.x    fs8, s8
                  andi        t1, t3, -1226
                  auipc       t1, 171206
                  mul         zero, s9, s0
                  sltiu       a6, t3, -1070
                  sll         s2, s0, s8
                  fcvt.wu.s  t4, fa5
                  ori         gp, s2, 764
                  fcvt.w.s   ra, ft7
                  feq.s      a7, ft4, fs9
                  fsqrt.s    ft4, fs0
                  fsqrt.s    fa4, fs9
                  sub         zero, a5, a0
                  fmax.s     ft6, fa2, ft10
                  fsub.s     fa5, ft0, fs2
                  xori        t2, t0, 1978
                  fcvt.s.wu  ft2, s11
                  fsgnjx.s   fs4, fa3, fa7
                  fmv.x.w    s10, ft3
                  flt.s      s1, fa5, fa6
                  sll         zero, s5, t2
                  feq.s      ra, ft6, ft4
                  srli        s3, sp, 28
                  srl         zero, s4, t5
                  fmin.s     ft7, fs6, fa2
                  rem         s1, t0, s11
                  fsgnjx.s   fs2, fa2, fs1
                  fmv.w.x    ft10, t0
                  slt         zero, s9, s10
                  lui         a6, 50182
                  andi        s1, t0, 104
                  fmv.w.x    fa4, t3
                  srai        tp, ra, 9
                  mulhu       s4, a3, s5
                  fsqrt.s    fs0, ft0
                  fsqrt.s    fs8, fs2
                  flt.s      s9, fa1, fa6
                  slti        tp, a1, -101
                  fcvt.s.wu  ft10, s0
                  fdiv.s     fs0, fs3, ft6
                  or          s1, s9, s5
                  xor         zero, zero, sp
                  fadd.s     fs6, ft11, fs3
                  fle.s      s6, fs4, fa0
                  fsqrt.s    fa0, ft10
                  fcvt.s.wu  ft6, t4
                  auipc       t3, 497722
                  fmv.w.x    fs10, s7
                  slti        a0, s11, 761
                  div         a2, a0, s6
                  srl         s2, a3, zero
                  fdiv.s     ft0, ft2, ft5
                  srl         zero, a6, t5
                  and         zero, s0, a5
                  fle.s      sp, fs2, fa5
                  div         t6, a1, a7
                  srai        s3, s2, 18
                  and         a0, t5, t6
                  fdiv.s     ft2, fa4, fs6
                  sltu        t5, s0, s11
                  slt         tp, t0, a7
                  flt.s      t6, fa2, ft7
                  flt.s      t4, ft4, fa4
                  fsub.s     fs1, fa4, fs10
                  rem         gp, s10, a4
                  srl         t6, t0, s10
                  srl         s11, s2, s5
                  fcvt.w.s   a0, fs0
                  fmax.s     fa2, ft11, fa7
                  slt         t2, t3, s7
                  sltu        s2, s8, s7
                  xori        zero, t4, 2022
                  mulhsu      t0, s8, t2
                  fle.s      gp, ft0, fs5
                  andi        s0, s10, -1639
                  fsub.s     ft6, fa4, fs1
                  sra         zero, s6, s7
                  xori        tp, s8, -1009
                  slt         s7, tp, t4
                  mulh        s3, s11, s6
                  feq.s      t4, ft9, fa1
                  fsub.s     ft1, ft7, fs10
                  fsgnjx.s   fs7, fs10, ft6
                  fdiv.s     fs2, ft1, fs3
                  fsqrt.s    ft0, fa4
                  xor         zero, tp, a7
                  fle.s      s9, fs11, ft10
                  mulhu       zero, a3, a6
                  fcvt.w.s   s6, fs1
                  sltiu       s6, t6, 147
                  ori         t4, a2, 1313
                  fsgnjn.s   ft8, ft4, fs8
                  or          t0, t6, a1
                  sll         s5, s8, t2
                  add         a6, t3, s4
                  auipc       t2, 71869
                  fmin.s     ft11, ft11, ft2
                  fcvt.wu.s  t0, ft7
                  sra         t4, a4, s1
                  rem         sp, s0, s3
                  andi        ra, sp, 1779
                  xori        s0, a7, -276
                  mulhsu      s2, a4, a3
                  fsgnjx.s   ft10, ft11, ft7
                  fcvt.w.s   sp, fs4
                  ori         s0, zero, -722
                  fsgnjn.s   fa6, ft4, fa2
                  mulhsu      a7, s1, a5
                  mulhsu      a2, s2, t2
                  auipc       a7, 457777
                  slt         t3, zero, s6
                  fmin.s     fa3, fs5, fs0
                  flt.s      a3, fs0, fs7
                  fsgnjx.s   fs9, ft9, fa2
                  mul         gp, a1, a4
                  addi        zero, a5, 805
                  div         s4, s11, s7
                  mul         t6, t5, s2
                  nop
                  divu        s4, a7, s1
                  sra         a0, s9, s8
                  srai        zero, t1, 16
                  fsgnj.s    ft6, fs9, ft8
                  fsgnjn.s   fs3, fa0, fa4
                  and         a6, zero, a2
                  fmv.w.x    fa5, a4
                  sll         a6, t4, t2
                  fsub.s     fs0, fs3, ft9
                  mulh        a3, s5, tp
                  fmul.s     fs4, ft1, fs11
                  sltu        sp, a4, s10
                  fsgnj.s    ft11, ft2, fs9
                  flt.s      t2, ft3, fa0
                  mulhu       zero, a2, a1
                  fcvt.s.wu  fa2, s8
                  fmul.s     fs4, fa3, fs8
                  lui         tp, 307803
                  fmax.s     fa7, ft6, fa4
                  div         s9, zero, t4
                  fsgnj.s    fs3, ft6, fs7
                  srl         s10, a3, tp
                  srli        s7, a1, 7
                  div         t2, sp, ra
                  fsgnj.s    ft1, fa3, fa2
                  sra         a3, s1, s9
                  fmul.s     fa3, ft3, ft8
                  srai        zero, s1, 18
                  sub         s6, s3, gp
                  sltiu       gp, t0, 1333
                  fsub.s     fs1, ft8, ft7
                  andi        a2, a3, -1616
                  mul         ra, s4, tp
                  mul         s3, a0, s9
                  feq.s      zero, ft9, fa4
                  and         a3, t1, a6
                  fle.s      s1, ft11, fa6
                  xori        t1, gp, -1957
                  slti        t5, t1, -649
                  sra         s6, s6, a6
                  andi        sp, tp, -1760
                  fsqrt.s    fs5, ft10
                  slti        t1, a6, -709
                  fsgnjn.s   fs6, ft9, fs11
                  mul         ra, a4, s10
                  rem         s11, s3, a4
                  srl         a2, s2, gp
                  fcvt.wu.s  t3, ft8
                  addi        zero, t2, -406
                  slli        s2, s1, 25
                  fcvt.wu.s  t6, ft11
                  fcvt.w.s   ra, fs10
                  divu        a2, s5, t0
                  fsqrt.s    fa5, fs10
                  mulhu       t6, s5, s11
                  fclass.s   t3, fs3
                  auipc       a7, 929816
                  add         a6, s2, s6
                  fcvt.s.w   fs9, t4
                  fmax.s     fs3, ft10, fs6
                  fcvt.s.w   fs9, s0
                  xor         t6, s4, s3
                  sub         t5, s8, s1
                  srli        gp, a0, 8
                  xor         s10, zero, sp
                  srl         s2, t5, t4
                  mulhsu      t6, s6, t4
                  sltu        s3, a7, s8
                  flt.s      zero, fs10, fs0
                  mulhsu      s4, a5, t1
                  sll         a7, s0, s1
                  fmul.s     ft4, fs6, fs7
                  nop
                  andi        s0, ra, 1916
                  sltiu       zero, t0, -1027
                  fle.s      tp, ft9, fs1
                  sra         gp, s4, t6
                  lui         s5, 958072
                  add         s7, s10, tp
                  auipc       zero, 577431
                  srl         a3, a4, t0
                  fcvt.s.w   fa5, t6
                  mulh        a7, a6, s6
                  sll         s7, a3, s8
                  addi        zero, a7, 1831
                  srai        t1, a6, 13
                  sltu        zero, gp, a7
                  fmax.s     fs2, fa1, fs1
                  div         s11, a0, sp
                  slt         s9, a2, s7
                  auipc       zero, 891176
                  fsgnjx.s   fa2, fa7, fa4
                  nop
                  fmax.s     fa0, fa6, ft7
                  sub         t5, tp, s3
                  mulhsu      ra, s0, t3
                  mulhu       a1, t4, s4
                  flt.s      a1, fa1, ft3
                  xori        a6, zero, -717
                  fcvt.s.wu  fs5, s2
                  add         t5, tp, a3
                  fdiv.s     fa7, fs3, fa1
                  fmv.w.x    fs5, sp
                  fmul.s     fs1, fa5, fa7
                  add         gp, s4, s7
                  sltiu       a0, a3, -1451
                  sltiu       s10, s7, -702
                  mulhsu      t0, sp, s3
                  sub         t4, s1, gp
                  fmv.w.x    fa4, s5
                  rem         zero, t1, s11
                  or          t2, s2, a7
                  rem         t6, s7, sp
                  fle.s      t5, fs3, fs11
                  mulh        t3, tp, a7
                  feq.s      a0, fs0, ft2
                  fadd.s     ft0, ft1, fs10
                  and         s9, sp, a2
                  fsgnjx.s   ft9, fa2, fa7
                  div         s3, zero, s1
                  xori        s0, t5, -1679
                  add         t1, s6, t6
                  fsgnjx.s   fs7, ft6, fa4
                  lui         zero, 217704
                  addi        t5, gp, -1815
                  nop
                  fcvt.s.wu  ft1, a4
                  divu        s4, t1, zero
                  fsgnj.s    ft1, ft3, fa7
                  fmul.s     fs9, fa6, fs4
                  div         s9, s5, sp
                  mulh        a2, tp, a3
                  sra         zero, t5, s4
                  fcvt.s.w   ft10, t2
                  addi        t0, s10, -710
                  fadd.s     fa4, fa6, fs5
                  fsgnj.s    ft8, fa4, fs10
                  lui         a1, 102907
                  mulhsu      s1, ra, s10
                  srli        a6, t1, 20
                  nop
                  fsub.s     fs0, fa3, ft5
                  sltu        tp, ra, a0
                  fle.s      s11, fs2, fs0
                  mulhu       s10, a7, a0
                  auipc       a7, 510444
                  fmin.s     fs8, fs6, fa3
                  slli        t4, t0, 20
                  add         a3, s4, s5
                  nop
                  fmin.s     fs0, fa1, fs0
                  slli        zero, a1, 1
                  ori         a3, a1, 271
                  fcvt.s.w   fs10, a4
                  and         a3, s4, a5
                  nop
                  feq.s      a3, fs3, ft3
                  fcvt.w.s   s7, ft1
                  srli        s4, s3, 21
                  mulhu       sp, a4, t4
                  xori        t3, a6, 1933
                  and         a6, s10, s4
                  andi        a2, t0, -71
                  srl         zero, t1, a1
                  div         s0, zero, s6
                  slt         a2, a3, s3
                  div         t5, s11, a2
                  fsgnj.s    fs10, fs7, fa0
                  slt         s6, t1, t2
                  mul         sp, zero, s5
                  fdiv.s     fs6, fs7, fs10
                  addi        a3, t0, -1890
                  mulhsu      a1, s5, a3
                  mul         a1, a0, a7
                  nop
                  srl         s11, ra, a2
                  divu        s4, s0, a3
                  fsqrt.s    ft1, ft9
                  fmin.s     fa0, ft2, ft7
                  ori         a1, a3, -1406
                  srai        s1, ra, 11
                  fmul.s     fs1, ft9, fs0
                  auipc       tp, 868789
                  and         a2, s0, s2
                  fsub.s     fs8, fa2, fs6
                  fle.s      s11, fs5, fs3
                  sub         s2, s6, s2
                  and         a1, t3, s4
                  mulhu       s1, t2, t4
                  sltu        a7, t2, s10
                  fclass.s   gp, ft9
                  ori         zero, s8, -534
                  fmax.s     ft7, fa2, fs6
                  fmv.w.x    ft7, a6
                  xor         s9, t4, ra
                  fsgnjn.s   ft3, fa5, ft0
                  slt         zero, a0, s1
                  nop
                  fclass.s   s3, fs0
                  fsqrt.s    ft11, fa4
                  div         a6, s4, s9
                  nop
                  div         gp, s5, tp
                  fmv.x.w    gp, fa7
                  nop
                  slli        t5, s7, 8
                  fmul.s     fa5, ft9, fa3
                  fmin.s     fs6, fa0, ft5
                  fcvt.w.s   ra, fs6
                  sra         t6, t4, s0
                  feq.s      tp, ft1, fs4
                  slti        s10, s1, -1910
                  fsgnjn.s   fa1, fs0, fa4
                  fsgnjn.s   fs10, fa3, fa1
                  srl         t6, a3, s1
                  sll         ra, a4, a6
                  rem         t1, ra, s6
                  or          zero, sp, s2
                  slt         t6, s8, s5
                  mul         t5, a3, gp
                  rem         t6, s2, s9
                  fsub.s     fs5, fs2, fa7
                  divu        s0, s5, gp
                  auipc       s6, 16001
                  fle.s      t2, fa4, fs6
                  fsqrt.s    ft4, fs9
                  fmin.s     fs6, ft11, fs4
                  mulhsu      a7, s6, s1
                  mul         s6, a0, a3
                  feq.s      a6, fa2, fs1
                  lui         ra, 787824
                  addi        a3, s3, 1285
                  nop
                  fmv.x.w    s0, fa5
                  sub         s5, t1, a2
                  sub         a3, t3, s11
                  fmul.s     ft4, fs0, ft2
                  slt         zero, t5, s3
                  fsgnjx.s   fa7, ft8, ft0
                  addi        t4, a4, -1309
                  div         s6, s6, zero
                  fsqrt.s    fs9, ft0
                  fcvt.wu.s  zero, ft7
                  mulhu       s2, t1, s2
                  mul         s6, t4, a2
                  addi        s11, a3, 1698
                  xor         s6, s2, s9
                  ori         s2, tp, 1278
                  xori        zero, a5, 438
                  fcvt.w.s   s11, fs6
                  auipc       sp, 332385
                  fmv.x.w    s3, fs11
                  fcvt.wu.s  a2, ft6
                  fmv.x.w    t2, ft1
                  feq.s      s4, fs3, fs4
                  mulhsu      zero, t2, a5
                  fdiv.s     ft1, ft6, fa0
                  fcvt.w.s   a3, ft3
                  sll         zero, a1, t2
                  sub         t2, t3, a0
                  auipc       t3, 334041
                  fdiv.s     ft5, fa3, fs7
                  addi        t4, s0, -688
                  fsgnj.s    ft11, ft10, ft1
                  fcvt.s.w   fs9, s8
                  mulhsu      a2, a1, s8
                  fclass.s   s5, fs0
                  srai        ra, s7, 23
                  fsgnjx.s   ft5, fa0, fa2
                  fmul.s     ft1, fs10, fs1
                  fclass.s   zero, ft6
                  slt         s1, a5, s11
                  div         s10, t1, a2
                  mulhu       a6, s0, s6
                  and         t3, s11, s10
                  andi        s11, t4, -1695
                  fclass.s   ra, ft3
                  mul         a3, s3, s11
                  sll         t5, t1, t1
                  and         a1, s3, s4
                  slti        t2, s8, -885
                  slli        t5, s1, 22
                  or          a2, s5, a1
                  feq.s      s11, fs2, fa2
                  fclass.s   t5, fa4
                  fcvt.s.wu  fs1, t5
                  sll         s11, a6, a2
                  auipc       s3, 225668
                  fsqrt.s    fs11, fa6
                  fsgnjx.s   fa5, ft7, ft5
                  auipc       s3, 636073
                  sub         ra, s6, t0
                  fclass.s   tp, fs10
                  sra         tp, s11, a7
                  lui         t0, 422398
                  andi        t0, a1, -733
                  srli        zero, t5, 26
                  fdiv.s     fs5, fs8, fa7
                  lui         s1, 244126
                  srai        a0, s7, 1
                  andi        ra, s11, 125
                  nop
                  addi        s6, a5, 1596
                  and         s5, a0, t5
                  fcvt.wu.s  zero, fa1
                  srai        t3, s6, 8
                  flt.s      s3, fa7, fs10
                  fcvt.wu.s  t1, fs4
                  fle.s      s1, ft5, fs2
                  fmin.s     ft6, fs10, ft11
                  fmv.w.x    fs10, tp
                  sltu        a0, a4, s2
                  sra         s7, t1, a6
                  mulhu       a3, a3, s11
                  fcvt.s.wu  fa1, t5
                  fdiv.s     fa6, ft9, fa7
                  sltiu       a2, s5, -517
                  fmax.s     ft11, fa5, fs3
                  fcvt.w.s   t5, ft8
                  fcvt.s.w   fa4, a3
                  fmin.s     ft6, ft6, fa6
                  flt.s      zero, fs4, fs4
                  srai        sp, a0, 10
                  fcvt.w.s   zero, fa0
                  fmul.s     ft10, fs4, ft11
                  fmv.w.x    ft6, a3
                  fmv.w.x    fs2, t6
                  slt         zero, s0, s0
                  fle.s      s5, fa2, fs11
                  sra         tp, s10, t2
                  feq.s      s5, ft4, fa6
                  lui         t4, 394831
                  slli        zero, gp, 4
                  fclass.s   zero, ft5
                  or          s9, sp, s4
                  fsgnjx.s   fs3, fs5, ft7
                  andi        zero, s5, 1304
                  mulh        tp, s0, a4
                  slli        s11, s0, 17
                  fsgnjn.s   ft8, ft7, fa3
                  feq.s      zero, ft11, ft0
                  fsgnj.s    ft5, fa3, ft10
                  rem         tp, a2, t0
                  andi        a2, t3, 64
                  addi        t0, s11, 1244
                  fsgnjx.s   ft5, fa3, ft7
                  mul         a6, a6, a4
                  sltu        t4, a1, s9
                  fmax.s     fs10, fs4, fs5
                  feq.s      sp, ft3, fs10
                  fmv.w.x    fa1, sp
                  div         s6, s10, a4
                  lui         zero, 413359
                  mulh        s2, a2, a4
                  fmul.s     fs9, fa3, fs0
                  fmv.w.x    fa7, t2
                  sltiu       zero, s3, -2028
                  div         sp, a4, t4
                  xori        sp, t4, 246
                  fle.s      s3, ft1, fa3
                  ori         s4, t5, -539
                  or          t5, zero, s10
                  fcvt.s.w   fs2, a2
                  fsub.s     ft2, fa0, fs10
                  auipc       a1, 418538
                  fdiv.s     fa4, fs3, fs11
                  or          t3, t5, sp
                  fclass.s   t5, fs9
                  lui         a3, 237521
                  fmv.x.w    s10, fs0
                  fsgnj.s    fa4, fa3, ft4
                  fdiv.s     fs10, fs7, fa6
                  fmax.s     fa4, ft8, fa1
                  fsgnjn.s   fa7, ft6, fa0
                  fle.s      s2, fs11, fs11
                  mulhsu      s2, t5, s1
                  xor         a0, s7, sp
                  andi        a0, s8, 1763
                  or          s11, t2, s6
                  fsqrt.s    fs1, ft0
                  mulhsu      t0, t3, a4
                  slli        s3, t1, 28
                  fsgnjx.s   ft5, ft9, fs0
                  fcvt.s.w   fs4, a1
                  lui         s1, 389858
                  feq.s      ra, fs8, ft7
                  slt         a6, s0, t3
                  ori         sp, t1, 1408
                  lui         t4, 533236
                  sub         t5, a3, tp
                  feq.s      t2, ft0, ft3
                  sub         a0, s10, s4
                  mulhsu      t5, s3, s11
                  fsgnjx.s   ft6, fa0, ft11
                  rem         s4, s0, t4
                  fsgnj.s    fs2, fs11, fa1
                  slt         zero, a2, s6
                  sra         s4, t2, a7
                  fadd.s     fs2, fs10, fs11
                  nop
                  feq.s      t2, fs4, fa5
                  ori         s0, s6, -565
                  addi        tp, s10, -192
                  fclass.s   t4, fa4
                  sltu        t5, a1, t5
                  slti        t1, s11, -554
                  sub         s2, zero, s3
                  feq.s      s2, ft6, ft8
                  xori        s0, s7, 288
                  divu        a1, sp, s9
                  ori         zero, a6, 989
                  mulhsu      s1, s2, s3
                  srai        a3, s4, 23
                  xori        a7, ra, 488
                  srl         s5, tp, s2
                  addi        tp, t5, 1722
                  andi        s1, s2, 1097
                  xori        ra, a6, 157
                  sltiu       s10, zero, -1937
                  slti        tp, gp, -1908
                  mul         s0, s1, a0
                  fsgnjn.s   ft3, fa7, fa3
                  fmv.x.w    s3, fs4
                  sltu        t5, s2, a2
                  fmul.s     ft6, ft5, fs3
                  rem         a1, s3, a6
                  rem         t0, gp, gp
                  div         s4, t1, t3
                  fsqrt.s    fa1, fs7
                  addi        a0, gp, -1105
                  slli        a0, s7, 3
                  sra         t5, a3, s0
                  fmv.x.w    a3, ft5
                  nop
                  fsub.s     fs10, fs5, ft3
                  sltu        t3, s3, a0
                  ori         a0, s2, -1198
                  or          s7, s5, s7
                  fmul.s     fs10, fs1, ft10
                  add         s2, t1, sp
                  auipc       tp, 487614
                  fcvt.wu.s  a7, fs11
                  ori         t0, t4, -151
                  slti        zero, t6, 137
                  fsgnjn.s   fa0, fs6, fa7
                  slti        a6, t2, 113
                  addi        a1, s0, -966
                  fcvt.s.w   fs0, a0
                  sra         t1, s9, a0
                  sltiu       t4, zero, 24
                  slti        a0, a1, -117
                  srai        a2, t3, 13
                  fmv.x.w    s9, fs2
                  and         zero, a0, s1
                  div         s11, a1, s3
                  sll         t1, t4, s7
                  fcvt.s.wu  fa7, s7
                  divu        sp, s2, t5
                  fmv.x.w    gp, fs5
                  mulhsu      s1, s0, t2
                  div         s2, t6, s4
                  fcvt.w.s   s6, fa6
                  fle.s      s1, ft4, fa1
                  mul         a2, s4, s1
                  fmv.w.x    fs8, t1
                  fsqrt.s    fs7, fs4
                  slt         tp, a0, s6
                  srli        ra, tp, 17
                  sra         zero, t6, t2
                  and         a2, s1, s5
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
mmode_intr_vector_1:
                  csrrw x14, 0x340, x14
                  add x14, x24, zero
                  1: addi x14, x14, -124
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
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_2:
                  csrrw x14, 0x340, x14
                  add x14, x24, zero
                  1: addi x14, x14, -124
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
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_3:
                  csrrw x14, 0x340, x14
                  add x14, x24, zero
                  1: addi x14, x14, -124
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
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_4:
                  csrrw x14, 0x340, x14
                  add x14, x24, zero
                  1: addi x14, x14, -124
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
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_5:
                  csrrw x14, 0x340, x14
                  add x14, x24, zero
                  1: addi x14, x14, -124
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
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_6:
                  csrrw x14, 0x340, x14
                  add x14, x24, zero
                  1: addi x14, x14, -124
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
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_7:
                  csrrw x14, 0x340, x14
                  add x14, x24, zero
                  1: addi x14, x14, -124
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
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_8:
                  csrrw x14, 0x340, x14
                  add x14, x24, zero
                  1: addi x14, x14, -124
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
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_9:
                  csrrw x14, 0x340, x14
                  add x14, x24, zero
                  1: addi x14, x14, -124
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
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_10:
                  csrrw x14, 0x340, x14
                  add x14, x24, zero
                  1: addi x14, x14, -124
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
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_11:
                  csrrw x14, 0x340, x14
                  add x14, x24, zero
                  1: addi x14, x14, -124
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
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_12:
                  csrrw x14, 0x340, x14
                  add x14, x24, zero
                  1: addi x14, x14, -124
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
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_13:
                  csrrw x14, 0x340, x14
                  add x14, x24, zero
                  1: addi x14, x14, -124
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
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_14:
                  csrrw x14, 0x340, x14
                  add x14, x24, zero
                  1: addi x14, x14, -124
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
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_15:
                  csrrw x14, 0x340, x14
                  add x14, x24, zero
                  1: addi x14, x14, -124
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
                  csrr x31, 0x342 # MCAUSE
                  srli x31, x31, 0x1f
                  beqz x31, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

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
                  csrrw x14, 0x340, x14
                  add x14, x24, zero
                  1: addi x14, x14, -124
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
                  csrr x31, 0x341 # MEPC
                  csrr x31, 0x342 # MCAUSE
                  li x30, 0xb # ECALL_MMODE
                  beq x31, x30, ecall_handler
                  li x30, 0x2 # ILLEGAL_INSTRUCTION
                  beq x31, x30, illegal_instr_handler
                  csrr x30, 0x343 # MTVAL
                  1: la x15, test_done
                  jalr x1, x15, 0

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
                  la x15, write_tohost
                  jalr x0, x15, 0

illegal_instr_handler:
                  csrr  x31, 0x341
                  addi  x31, x31, 4
                  csrw  0x341, x31
                  lw x1, 4(x14)
                  lw x2, 8(x14)
                  lw x3, 12(x14)
                  lw x4, 16(x14)
                  lw x5, 20(x14)
                  lw x6, 24(x14)
                  lw x7, 28(x14)
                  lw x8, 32(x14)
                  lw x9, 36(x14)
                  lw x10, 40(x14)
                  lw x11, 44(x14)
                  lw x12, 48(x14)
                  lw x13, 52(x14)
                  lw x14, 56(x14)
                  lw x15, 60(x14)
                  lw x16, 64(x14)
                  lw x17, 68(x14)
                  lw x18, 72(x14)
                  lw x19, 76(x14)
                  lw x20, 80(x14)
                  lw x21, 84(x14)
                  lw x22, 88(x14)
                  lw x23, 92(x14)
                  lw x24, 96(x14)
                  lw x25, 100(x14)
                  lw x26, 104(x14)
                  lw x27, 108(x14)
                  lw x28, 112(x14)
                  lw x29, 116(x14)
                  lw x30, 120(x14)
                  lw x31, 124(x14)
                  addi x14, x14, 124
                  add x24, x14, zero
                  csrrw x14, 0x340, x14
                  mret

pt_fault_handler: 

.align 2
mmode_intr_handler:
                  csrr  x31, 0x300 # MSTATUS;
                  csrr  x31, 0x304 # MIE;
                  csrr  x31, 0x344 # MIP;
                  csrrc x31, 0x344, x31 # MIP;
                  lw x1, 4(x14)
                  lw x2, 8(x14)
                  lw x3, 12(x14)
                  lw x4, 16(x14)
                  lw x5, 20(x14)
                  lw x6, 24(x14)
                  lw x7, 28(x14)
                  lw x8, 32(x14)
                  lw x9, 36(x14)
                  lw x10, 40(x14)
                  lw x11, 44(x14)
                  lw x12, 48(x14)
                  lw x13, 52(x14)
                  lw x14, 56(x14)
                  lw x15, 60(x14)
                  lw x16, 64(x14)
                  lw x17, 68(x14)
                  lw x18, 72(x14)
                  lw x19, 76(x14)
                  lw x20, 80(x14)
                  lw x21, 84(x14)
                  lw x22, 88(x14)
                  lw x23, 92(x14)
                  lw x24, 96(x14)
                  lw x25, 100(x14)
                  lw x26, 104(x14)
                  lw x27, 108(x14)
                  lw x28, 112(x14)
                  lw x29, 116(x14)
                  lw x30, 120(x14)
                  lw x31, 124(x14)
                  addi x14, x14, 124
                  add x24, x14, zero
                  csrrw x14, 0x340, x14
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
