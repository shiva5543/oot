glabel func_8083399C
/* 0178C 8083399C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01790 808339A0 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 01794 808339A4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01798 808339A8 8CB8067C */  lw      $t8, 0x067C($a1)           ## 0000067C
/* 0179C 808339AC 00063600 */  sll     $a2, $a2, 24               
/* 017A0 808339B0 00063603 */  sra     $a2, $a2, 24               
/* 017A4 808339B4 3C01FEFF */  lui     $at, 0xFEFF                ## $at = FEFF0000
/* 017A8 808339B8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 017AC 808339BC A0A60154 */  sb      $a2, 0x0154($a1)           ## 00000154
/* 017B0 808339C0 3421FFF7 */  ori     $at, $at, 0xFFF7           ## $at = FEFFFFF7
/* 017B4 808339C4 80AE0154 */  lb      $t6, 0x0154($a1)           ## 00000154
/* 017B8 808339C8 90AF0159 */  lbu     $t7, 0x0159($a1)           ## 00000159
/* 017BC 808339CC 0301C824 */  and     $t9, $t8, $at              
/* 017C0 808339D0 ACB9067C */  sw      $t9, 0x067C($a1)           ## 0000067C
/* 017C4 808339D4 3C198085 */  lui     $t9, %hi(D_80853FE8)       ## $t9 = 80850000
/* 017C8 808339D8 00064080 */  sll     $t0, $a2,  2               
/* 017CC 808339DC A4A00860 */  sh      $zero, 0x0860($a1)         ## 00000860
/* 017D0 808339E0 0328C821 */  addu    $t9, $t9, $t0              
/* 017D4 808339E4 E4A0085C */  swc1    $f0, 0x085C($a1)           ## 0000085C
/* 017D8 808339E8 E4A00858 */  swc1    $f0, 0x0858($a1)           ## 00000858
/* 017DC 808339EC A0AE0151 */  sb      $t6, 0x0151($a1)           ## 00000151
/* 017E0 808339F0 A0AF0158 */  sb      $t7, 0x0158($a1)           ## 00000158
/* 017E4 808339F4 8F393FE8 */  lw      $t9, %lo(D_80853FE8)($t9)  
/* 017E8 808339F8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 017EC 808339FC 0320F809 */  jalr    $ra, $t9                   
/* 017F0 80833A00 00000000 */  nop
/* 017F4 80833A04 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 017F8 80833A08 0C023B01 */  jal     func_8008EC04              
/* 017FC 80833A0C 90850158 */  lbu     $a1, 0x0158($a0)           ## 00000158
/* 01800 80833A10 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01804 80833A14 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01808 80833A18 03E00008 */  jr      $ra                        
/* 0180C 80833A1C 00000000 */  nop
