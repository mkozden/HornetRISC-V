
fpu_test_stdio.o:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	callq  *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 9a 2f 00 00    	pushq  0x2f9a(%rip)        # 3fc0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 9b 2f 00 00 	bnd jmpq *0x2f9b(%rip)        # 3fc8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	pushq  $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmpq 1020 <.plt>
    103f:	90                   	nop

Disassembly of section .plt.got:

0000000000001040 <__cxa_finalize@plt>:
    1040:	f3 0f 1e fa          	endbr64 
    1044:	f2 ff 25 ad 2f 00 00 	bnd jmpq *0x2fad(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    104b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001050 <printf@plt>:
    1050:	f3 0f 1e fa          	endbr64 
    1054:	f2 ff 25 75 2f 00 00 	bnd jmpq *0x2f75(%rip)        # 3fd0 <printf@GLIBC_2.2.5>
    105b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001060 <_start>:
    1060:	f3 0f 1e fa          	endbr64 
    1064:	31 ed                	xor    %ebp,%ebp
    1066:	49 89 d1             	mov    %rdx,%r9
    1069:	5e                   	pop    %rsi
    106a:	48 89 e2             	mov    %rsp,%rdx
    106d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1071:	50                   	push   %rax
    1072:	54                   	push   %rsp
    1073:	4c 8d 05 f6 02 00 00 	lea    0x2f6(%rip),%r8        # 1370 <__libc_csu_fini>
    107a:	48 8d 0d 7f 02 00 00 	lea    0x27f(%rip),%rcx        # 1300 <__libc_csu_init>
    1081:	48 8d 3d c1 00 00 00 	lea    0xc1(%rip),%rdi        # 1149 <main>
    1088:	ff 15 52 2f 00 00    	callq  *0x2f52(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    108e:	f4                   	hlt    
    108f:	90                   	nop

0000000000001090 <deregister_tm_clones>:
    1090:	48 8d 3d 89 2f 00 00 	lea    0x2f89(%rip),%rdi        # 4020 <__TMC_END__>
    1097:	48 8d 05 82 2f 00 00 	lea    0x2f82(%rip),%rax        # 4020 <__TMC_END__>
    109e:	48 39 f8             	cmp    %rdi,%rax
    10a1:	74 15                	je     10b8 <deregister_tm_clones+0x28>
    10a3:	48 8b 05 2e 2f 00 00 	mov    0x2f2e(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    10aa:	48 85 c0             	test   %rax,%rax
    10ad:	74 09                	je     10b8 <deregister_tm_clones+0x28>
    10af:	ff e0                	jmpq   *%rax
    10b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10b8:	c3                   	retq   
    10b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010c0 <register_tm_clones>:
    10c0:	48 8d 3d 59 2f 00 00 	lea    0x2f59(%rip),%rdi        # 4020 <__TMC_END__>
    10c7:	48 8d 35 52 2f 00 00 	lea    0x2f52(%rip),%rsi        # 4020 <__TMC_END__>
    10ce:	48 29 fe             	sub    %rdi,%rsi
    10d1:	48 89 f0             	mov    %rsi,%rax
    10d4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10d8:	48 c1 f8 03          	sar    $0x3,%rax
    10dc:	48 01 c6             	add    %rax,%rsi
    10df:	48 d1 fe             	sar    %rsi
    10e2:	74 14                	je     10f8 <register_tm_clones+0x38>
    10e4:	48 8b 05 05 2f 00 00 	mov    0x2f05(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    10eb:	48 85 c0             	test   %rax,%rax
    10ee:	74 08                	je     10f8 <register_tm_clones+0x38>
    10f0:	ff e0                	jmpq   *%rax
    10f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    10f8:	c3                   	retq   
    10f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001100 <__do_global_dtors_aux>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	80 3d 15 2f 00 00 00 	cmpb   $0x0,0x2f15(%rip)        # 4020 <__TMC_END__>
    110b:	75 2b                	jne    1138 <__do_global_dtors_aux+0x38>
    110d:	55                   	push   %rbp
    110e:	48 83 3d e2 2e 00 00 	cmpq   $0x0,0x2ee2(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1115:	00 
    1116:	48 89 e5             	mov    %rsp,%rbp
    1119:	74 0c                	je     1127 <__do_global_dtors_aux+0x27>
    111b:	48 8b 3d e6 2e 00 00 	mov    0x2ee6(%rip),%rdi        # 4008 <__dso_handle>
    1122:	e8 19 ff ff ff       	callq  1040 <__cxa_finalize@plt>
    1127:	e8 64 ff ff ff       	callq  1090 <deregister_tm_clones>
    112c:	c6 05 ed 2e 00 00 01 	movb   $0x1,0x2eed(%rip)        # 4020 <__TMC_END__>
    1133:	5d                   	pop    %rbp
    1134:	c3                   	retq   
    1135:	0f 1f 00             	nopl   (%rax)
    1138:	c3                   	retq   
    1139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001140 <frame_dummy>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	e9 77 ff ff ff       	jmpq   10c0 <register_tm_clones>

0000000000001149 <main>:
    1149:	f3 0f 1e fa          	endbr64 
    114d:	55                   	push   %rbp
    114e:	48 89 e5             	mov    %rsp,%rbp
    1151:	48 83 ec 10          	sub    $0x10,%rsp
    1155:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    115c:	e9 7f 01 00 00       	jmpq   12e0 <main+0x197>
    1161:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1164:	48 98                	cltq   
    1166:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    116d:	00 
    116e:	48 8d 05 ab 0e 00 00 	lea    0xeab(%rip),%rax        # 2020 <inputSignal>
    1175:	f3 0f 10 04 02       	movss  (%rdx,%rax,1),%xmm0
    117a:	f3 0f 11 05 b6 2e 00 	movss  %xmm0,0x2eb6(%rip)        # 4038 <x>
    1181:	00 
    1182:	f3 0f 10 0d 86 2e 00 	movss  0x2e86(%rip),%xmm1        # 4010 <a0>
    1189:	00 
    118a:	f3 0f 10 05 a6 2e 00 	movss  0x2ea6(%rip),%xmm0        # 4038 <x>
    1191:	00 
    1192:	f3 0f 59 c8          	mulss  %xmm0,%xmm1
    1196:	f3 0f 10 15 76 2e 00 	movss  0x2e76(%rip),%xmm2        # 4014 <a1>
    119d:	00 
    119e:	f3 0f 10 05 82 2e 00 	movss  0x2e82(%rip),%xmm0        # 4028 <x1>
    11a5:	00 
    11a6:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
    11aa:	f3 0f 58 c8          	addss  %xmm0,%xmm1
    11ae:	f3 0f 10 15 62 2e 00 	movss  0x2e62(%rip),%xmm2        # 4018 <a2>
    11b5:	00 
    11b6:	f3 0f 10 05 6e 2e 00 	movss  0x2e6e(%rip),%xmm0        # 402c <x2>
    11bd:	00 
    11be:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
    11c2:	f3 0f 58 c1          	addss  %xmm1,%xmm0
    11c6:	f3 0f 10 15 56 2e 00 	movss  0x2e56(%rip),%xmm2        # 4024 <b1>
    11cd:	00 
    11ce:	f3 0f 10 0d 5a 2e 00 	movss  0x2e5a(%rip),%xmm1        # 4030 <y_1>
    11d5:	00 
    11d6:	f3 0f 59 ca          	mulss  %xmm2,%xmm1
    11da:	f3 0f 5c c1          	subss  %xmm1,%xmm0
    11de:	f3 0f 10 15 36 2e 00 	movss  0x2e36(%rip),%xmm2        # 401c <b2>
    11e5:	00 
    11e6:	f3 0f 10 0d 46 2e 00 	movss  0x2e46(%rip),%xmm1        # 4034 <y2>
    11ed:	00 
    11ee:	f3 0f 59 ca          	mulss  %xmm2,%xmm1
    11f2:	f3 0f 5c c1          	subss  %xmm1,%xmm0
    11f6:	f3 0f 11 05 3e 2e 00 	movss  %xmm0,0x2e3e(%rip)        # 403c <y>
    11fd:	00 
    11fe:	f3 0f 10 05 36 2e 00 	movss  0x2e36(%rip),%xmm0        # 403c <y>
    1205:	00 
    1206:	0f 2e 05 ff 0e 00 00 	ucomiss 0xeff(%rip),%xmm0        # 210c <inputSignal+0xec>
    120d:	7a 2d                	jp     123c <main+0xf3>
    120f:	0f 2e 05 f6 0e 00 00 	ucomiss 0xef6(%rip),%xmm0        # 210c <inputSignal+0xec>
    1216:	75 24                	jne    123c <main+0xf3>
    1218:	f3 0f 10 05 1c 2e 00 	movss  0x2e1c(%rip),%xmm0        # 403c <y>
    121f:	00 
    1220:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    1224:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1227:	89 c6                	mov    %eax,%esi
    1229:	48 8d 3d 50 0e 00 00 	lea    0xe50(%rip),%rdi        # 2080 <inputSignal+0x60>
    1230:	b8 01 00 00 00       	mov    $0x1,%eax
    1235:	e8 16 fe ff ff       	callq  1050 <printf@plt>
    123a:	eb 60                	jmp    129c <main+0x153>
    123c:	f3 0f 10 05 f8 2d 00 	movss  0x2df8(%rip),%xmm0        # 403c <y>
    1243:	00 
    1244:	0f 2e 05 c5 0e 00 00 	ucomiss 0xec5(%rip),%xmm0        # 2110 <inputSignal+0xf0>
    124b:	7a 2d                	jp     127a <main+0x131>
    124d:	0f 2e 05 bc 0e 00 00 	ucomiss 0xebc(%rip),%xmm0        # 2110 <inputSignal+0xf0>
    1254:	75 24                	jne    127a <main+0x131>
    1256:	f3 0f 10 05 de 2d 00 	movss  0x2dde(%rip),%xmm0        # 403c <y>
    125d:	00 
    125e:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    1262:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1265:	89 c6                	mov    %eax,%esi
    1267:	48 8d 3d 42 0e 00 00 	lea    0xe42(%rip),%rdi        # 20b0 <inputSignal+0x90>
    126e:	b8 01 00 00 00       	mov    $0x1,%eax
    1273:	e8 d8 fd ff ff       	callq  1050 <printf@plt>
    1278:	eb 22                	jmp    129c <main+0x153>
    127a:	f3 0f 10 05 ba 2d 00 	movss  0x2dba(%rip),%xmm0        # 403c <y>
    1281:	00 
    1282:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
    1286:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1289:	89 c6                	mov    %eax,%esi
    128b:	48 8d 3d 4e 0e 00 00 	lea    0xe4e(%rip),%rdi        # 20e0 <inputSignal+0xc0>
    1292:	b8 01 00 00 00       	mov    $0x1,%eax
    1297:	e8 b4 fd ff ff       	callq  1050 <printf@plt>
    129c:	f3 0f 10 05 84 2d 00 	movss  0x2d84(%rip),%xmm0        # 4028 <x1>
    12a3:	00 
    12a4:	f3 0f 11 05 80 2d 00 	movss  %xmm0,0x2d80(%rip)        # 402c <x2>
    12ab:	00 
    12ac:	f3 0f 10 05 84 2d 00 	movss  0x2d84(%rip),%xmm0        # 4038 <x>
    12b3:	00 
    12b4:	f3 0f 11 05 6c 2d 00 	movss  %xmm0,0x2d6c(%rip)        # 4028 <x1>
    12bb:	00 
    12bc:	f3 0f 10 05 6c 2d 00 	movss  0x2d6c(%rip),%xmm0        # 4030 <y_1>
    12c3:	00 
    12c4:	f3 0f 11 05 68 2d 00 	movss  %xmm0,0x2d68(%rip)        # 4034 <y2>
    12cb:	00 
    12cc:	f3 0f 10 05 68 2d 00 	movss  0x2d68(%rip),%xmm0        # 403c <y>
    12d3:	00 
    12d4:	f3 0f 11 05 54 2d 00 	movss  %xmm0,0x2d54(%rip)        # 4030 <y_1>
    12db:	00 
    12dc:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    12e0:	83 7d fc 16          	cmpl   $0x16,-0x4(%rbp)
    12e4:	0f 8e 77 fe ff ff    	jle    1161 <main+0x18>
    12ea:	b8 00 00 00 00       	mov    $0x0,%eax
    12ef:	c9                   	leaveq 
    12f0:	c3                   	retq   
    12f1:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    12f8:	00 00 00 
    12fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001300 <__libc_csu_init>:
    1300:	f3 0f 1e fa          	endbr64 
    1304:	41 57                	push   %r15
    1306:	4c 8d 3d ab 2a 00 00 	lea    0x2aab(%rip),%r15        # 3db8 <__frame_dummy_init_array_entry>
    130d:	41 56                	push   %r14
    130f:	49 89 d6             	mov    %rdx,%r14
    1312:	41 55                	push   %r13
    1314:	49 89 f5             	mov    %rsi,%r13
    1317:	41 54                	push   %r12
    1319:	41 89 fc             	mov    %edi,%r12d
    131c:	55                   	push   %rbp
    131d:	48 8d 2d 9c 2a 00 00 	lea    0x2a9c(%rip),%rbp        # 3dc0 <__do_global_dtors_aux_fini_array_entry>
    1324:	53                   	push   %rbx
    1325:	4c 29 fd             	sub    %r15,%rbp
    1328:	48 83 ec 08          	sub    $0x8,%rsp
    132c:	e8 cf fc ff ff       	callq  1000 <_init>
    1331:	48 c1 fd 03          	sar    $0x3,%rbp
    1335:	74 1f                	je     1356 <__libc_csu_init+0x56>
    1337:	31 db                	xor    %ebx,%ebx
    1339:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1340:	4c 89 f2             	mov    %r14,%rdx
    1343:	4c 89 ee             	mov    %r13,%rsi
    1346:	44 89 e7             	mov    %r12d,%edi
    1349:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    134d:	48 83 c3 01          	add    $0x1,%rbx
    1351:	48 39 dd             	cmp    %rbx,%rbp
    1354:	75 ea                	jne    1340 <__libc_csu_init+0x40>
    1356:	48 83 c4 08          	add    $0x8,%rsp
    135a:	5b                   	pop    %rbx
    135b:	5d                   	pop    %rbp
    135c:	41 5c                	pop    %r12
    135e:	41 5d                	pop    %r13
    1360:	41 5e                	pop    %r14
    1362:	41 5f                	pop    %r15
    1364:	c3                   	retq   
    1365:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    136c:	00 00 00 00 

0000000000001370 <__libc_csu_fini>:
    1370:	f3 0f 1e fa          	endbr64 
    1374:	c3                   	retq   

Disassembly of section .fini:

0000000000001378 <_fini>:
    1378:	f3 0f 1e fa          	endbr64 
    137c:	48 83 ec 08          	sub    $0x8,%rsp
    1380:	48 83 c4 08          	add    $0x8,%rsp
    1384:	c3                   	retq   
