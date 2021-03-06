.rdata
glabel D_80A23AC8
    .asciz "../z_en_g_switch.c"
    .balign 4

glabel D_80A23ADC
    .asciz "../z_en_g_switch.c"
    .balign 4

glabel D_80A23AF0
    .asciz "../z_en_g_switch.c"
    .balign 4

.late_rodata
glabel D_80A23B24
    .float 10000.0

.text
glabel func_80A234D4
/* 01614 80A234D4 27BDFF70 */  addiu   $sp, $sp, 0xFF70           ## $sp = FFFFFF70
/* 01618 80A234D8 AFBF004C */  sw      $ra, 0x004C($sp)           
/* 0161C 80A234DC AFBE0048 */  sw      $s8, 0x0048($sp)           
/* 01620 80A234E0 AFB70044 */  sw      $s7, 0x0044($sp)           
/* 01624 80A234E4 AFB60040 */  sw      $s6, 0x0040($sp)           
/* 01628 80A234E8 AFB5003C */  sw      $s5, 0x003C($sp)           
/* 0162C 80A234EC AFB40038 */  sw      $s4, 0x0038($sp)           
/* 01630 80A234F0 AFB30034 */  sw      $s3, 0x0034($sp)           
/* 01634 80A234F4 AFB20030 */  sw      $s2, 0x0030($sp)           
/* 01638 80A234F8 AFB1002C */  sw      $s1, 0x002C($sp)           
/* 0163C 80A234FC AFB00028 */  sw      $s0, 0x0028($sp)           
/* 01640 80A23500 F7B60020 */  sdc1    $f22, 0x0020($sp)          
/* 01644 80A23504 F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 01648 80A23508 8CB20000 */  lw      $s2, 0x0000($a1)           ## 00000000
/* 0164C 80A2350C 00A0A825 */  or      $s5, $a1, $zero            ## $s5 = 00000000
/* 01650 80A23510 0080B025 */  or      $s6, $a0, $zero            ## $s6 = 00000000
/* 01654 80A23514 249001C8 */  addiu   $s0, $a0, 0x01C8           ## $s0 = 000001C8
/* 01658 80A23518 3C0680A2 */  lui     $a2, %hi(D_80A23AC8)       ## $a2 = 80A20000
/* 0165C 80A2351C 24C63AC8 */  addiu   $a2, $a2, %lo(D_80A23AC8)  ## $a2 = 80A23AC8
/* 01660 80A23520 27A40068 */  addiu   $a0, $sp, 0x0068           ## $a0 = FFFFFFD8
/* 01664 80A23524 24070431 */  addiu   $a3, $zero, 0x0431         ## $a3 = 00000431
/* 01668 80A23528 0C031AB1 */  jal     Graph_OpenDisps              
/* 0166C 80A2352C 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 01670 80A23530 0C024F46 */  jal     func_80093D18              
/* 01674 80A23534 8EA40000 */  lw      $a0, 0x0000($s5)           ## 00000000
/* 01678 80A23538 86C4015C */  lh      $a0, 0x015C($s6)           ## 0000015C
/* 0167C 80A2353C 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
/* 01680 80A23540 3C0180A2 */  lui     $at, %hi(D_80A23B24)       ## $at = 80A20000
/* 01684 80A23544 18800050 */  blez    $a0, .L80A23688            
/* 01688 80A23548 3C17DA38 */  lui     $s7, 0xDA38                ## $s7 = DA380000
/* 0168C 80A2354C 3C1E80A2 */  lui     $s8, %hi(D_80A23ADC)       ## $s8 = 80A20000
/* 01690 80A23550 27DE3ADC */  addiu   $s8, $s8, %lo(D_80A23ADC)  ## $s8 = 80A23ADC
/* 01694 80A23554 C4363B24 */  lwc1    $f22, %lo(D_80A23B24)($at) 
/* 01698 80A23558 36F70003 */  ori     $s7, $s7, 0x0003           ## $s7 = DA380003
.L80A2355C:
/* 0169C 80A2355C 920E0012 */  lbu     $t6, 0x0012($s0)           ## 000001DA
/* 016A0 80A23560 51C00044 */  beql    $t6, $zero, .L80A23674     
/* 016A4 80A23564 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000001
/* 016A8 80A23568 860F000C */  lh      $t7, 0x000C($s0)           ## 000001D4
/* 016AC 80A2356C 3C140404 */  lui     $s4, 0x0404                ## $s4 = 04040000
/* 016B0 80A23570 26942440 */  addiu   $s4, $s4, 0x2440           ## $s4 = 04042440
/* 016B4 80A23574 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 016B8 80A23578 C60C0000 */  lwc1    $f12, 0x0000($s0)          ## 000001C8
/* 016BC 80A2357C C60E0004 */  lwc1    $f14, 0x0004($s0)          ## 000001CC
/* 016C0 80A23580 468021A0 */  cvt.s.w $f6, $f4                   
/* 016C4 80A23584 8E060008 */  lw      $a2, 0x0008($s0)           ## 000001D0
/* 016C8 80A23588 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 016CC 80A2358C 0C034261 */  jal     Matrix_Translate              
/* 016D0 80A23590 46163503 */  div.s   $f20, $f6, $f22            
/* 016D4 80A23594 4406A000 */  mfc1    $a2, $f20                  
/* 016D8 80A23598 4600A306 */  mov.s   $f12, $f20                 
/* 016DC 80A2359C 4600A386 */  mov.s   $f14, $f20                 
/* 016E0 80A235A0 0C0342A3 */  jal     Matrix_Scale              
/* 016E4 80A235A4 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 016E8 80A235A8 C60C0020 */  lwc1    $f12, 0x0020($s0)          ## 000001E8
/* 016EC 80A235AC 0C0342DC */  jal     Matrix_RotateX              
/* 016F0 80A235B0 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 016F4 80A235B4 C60C0024 */  lwc1    $f12, 0x0024($s0)          ## 000001EC
/* 016F8 80A235B8 0C034348 */  jal     Matrix_RotateY              
/* 016FC 80A235BC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 01700 80A235C0 C60C0028 */  lwc1    $f12, 0x0028($s0)          ## 000001F0
/* 01704 80A235C4 0C0343B5 */  jal     Matrix_RotateZ              
/* 01708 80A235C8 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0170C 80A235CC 8E4202C0 */  lw      $v0, 0x02C0($s2)           ## 000002C0
/* 01710 80A235D0 03C02825 */  or      $a1, $s8, $zero            ## $a1 = 80A23ADC
/* 01714 80A235D4 24060440 */  addiu   $a2, $zero, 0x0440         ## $a2 = 00000440
/* 01718 80A235D8 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 0171C 80A235DC AE5802C0 */  sw      $t8, 0x02C0($s2)           ## 000002C0
/* 01720 80A235E0 AC570000 */  sw      $s7, 0x0000($v0)           ## 00000000
/* 01724 80A235E4 8EA40000 */  lw      $a0, 0x0000($s5)           ## 00000000
/* 01728 80A235E8 0C0346A2 */  jal     Matrix_NewMtx              
/* 0172C 80A235EC 00408825 */  or      $s1, $v0, $zero            ## $s1 = 00000000
/* 01730 80A235F0 AE220004 */  sw      $v0, 0x0004($s1)           ## 00000004
/* 01734 80A235F4 8E4202C0 */  lw      $v0, 0x02C0($s2)           ## 000002C0
/* 01738 80A235F8 3C08DB06 */  lui     $t0, 0xDB06                ## $t0 = DB060000
/* 0173C 80A235FC 35080020 */  ori     $t0, $t0, 0x0020           ## $t0 = DB060020
/* 01740 80A23600 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 01744 80A23604 AE5902C0 */  sw      $t9, 0x02C0($s2)           ## 000002C0
/* 01748 80A23608 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 0174C 80A2360C 86090010 */  lh      $t1, 0x0010($s0)           ## 000001D8
/* 01750 80A23610 3C0480A2 */  lui     $a0, %hi(D_80A2375C)       ## $a0 = 80A20000
/* 01754 80A23614 3C0F8016 */  lui     $t7, %hi(gSegments)
/* 01758 80A23618 00095080 */  sll     $t2, $t1,  2               
/* 0175C 80A2361C 008A2021 */  addu    $a0, $a0, $t2              
/* 01760 80A23620 8C84375C */  lw      $a0, %lo(D_80A2375C)($a0)  
/* 01764 80A23624 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 01768 80A23628 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 0176C 80A2362C 00046100 */  sll     $t4, $a0,  4               
/* 01770 80A23630 000C6F02 */  srl     $t5, $t4, 28               
/* 01774 80A23634 000D7080 */  sll     $t6, $t5,  2               
/* 01778 80A23638 01EE7821 */  addu    $t7, $t7, $t6              
/* 0177C 80A2363C 8DEF6FA8 */  lw      $t7, %lo(gSegments)($t7)
/* 01780 80A23640 00815824 */  and     $t3, $a0, $at              
/* 01784 80A23644 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 01788 80A23648 016FC021 */  addu    $t8, $t3, $t7              
/* 0178C 80A2364C 0301C821 */  addu    $t9, $t8, $at              
/* 01790 80A23650 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 01794 80A23654 8E4202C0 */  lw      $v0, 0x02C0($s2)           ## 000002C0
/* 01798 80A23658 3C09DE00 */  lui     $t1, 0xDE00                ## $t1 = DE000000
/* 0179C 80A2365C 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 017A0 80A23660 AE4802C0 */  sw      $t0, 0x02C0($s2)           ## 000002C0
/* 017A4 80A23664 AC540004 */  sw      $s4, 0x0004($v0)           ## 00000004
/* 017A8 80A23668 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 017AC 80A2366C 86C4015C */  lh      $a0, 0x015C($s6)           ## 0000015C
/* 017B0 80A23670 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000002
.L80A23674:
/* 017B4 80A23674 00139C00 */  sll     $s3, $s3, 16               
/* 017B8 80A23678 00139C03 */  sra     $s3, $s3, 16               
/* 017BC 80A2367C 0264082A */  slt     $at, $s3, $a0              
/* 017C0 80A23680 1420FFB6 */  bne     $at, $zero, .L80A2355C     
/* 017C4 80A23684 2610002C */  addiu   $s0, $s0, 0x002C           ## $s0 = 000001F4
.L80A23688:
/* 017C8 80A23688 3C0680A2 */  lui     $a2, %hi(D_80A23AF0)       ## $a2 = 80A20000
/* 017CC 80A2368C 24C63AF0 */  addiu   $a2, $a2, %lo(D_80A23AF0)  ## $a2 = 80A23AF0
/* 017D0 80A23690 27A40068 */  addiu   $a0, $sp, 0x0068           ## $a0 = FFFFFFD8
/* 017D4 80A23694 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 017D8 80A23698 0C031AD5 */  jal     Graph_CloseDisps              
/* 017DC 80A2369C 24070447 */  addiu   $a3, $zero, 0x0447         ## $a3 = 00000447
/* 017E0 80A236A0 8FBF004C */  lw      $ra, 0x004C($sp)           
/* 017E4 80A236A4 D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 017E8 80A236A8 D7B60020 */  ldc1    $f22, 0x0020($sp)          
/* 017EC 80A236AC 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 017F0 80A236B0 8FB1002C */  lw      $s1, 0x002C($sp)           
/* 017F4 80A236B4 8FB20030 */  lw      $s2, 0x0030($sp)           
/* 017F8 80A236B8 8FB30034 */  lw      $s3, 0x0034($sp)           
/* 017FC 80A236BC 8FB40038 */  lw      $s4, 0x0038($sp)           
/* 01800 80A236C0 8FB5003C */  lw      $s5, 0x003C($sp)           
/* 01804 80A236C4 8FB60040 */  lw      $s6, 0x0040($sp)           
/* 01808 80A236C8 8FB70044 */  lw      $s7, 0x0044($sp)           
/* 0180C 80A236CC 8FBE0048 */  lw      $s8, 0x0048($sp)           
/* 01810 80A236D0 03E00008 */  jr      $ra                        
/* 01814 80A236D4 27BD0090 */  addiu   $sp, $sp, 0x0090           ## $sp = 00000000
/* 01818 80A236D8 00000000 */  nop
/* 0181C 80A236DC 00000000 */  nop
