; 2041 bytes, 337 instructions

; Engine types:
; E0: Effect
; E1: Event
; E2: Location
; E3: Talent

_start:
  0000000D 1E 00 00000008             JSR _global
  00000013 20 00                      RETN
  -------- -------------------------- ---
_global:
  00000015 02 03                      RSADDI
  00000017 04 03 00000000             CONSTI 0
  0000001D 01 01 FFFFFFF8 0004        CPDOWNSP -8 4
  00000025 1B 00 FFFFFFFC             MOVSP -4
  0000002B 02 03                      RSADDI
  0000002D 04 03 00000001             CONSTI 1
  00000033 01 01 FFFFFFF8 0004        CPDOWNSP -8 4
  0000003B 1B 00 FFFFFFFC             MOVSP -4
  00000041 02 03                      RSADDI
  00000043 04 03 00000002             CONSTI 2
  00000049 01 01 FFFFFFF8 0004        CPDOWNSP -8 4
  00000051 1B 00 FFFFFFFC             MOVSP -4
  00000057 02 03                      RSADDI
  00000059 04 03 00000003             CONSTI 3
  0000005F 01 01 FFFFFFF8 0004        CPDOWNSP -8 4
  00000067 1B 00 FFFFFFFC             MOVSP -4
  0000006D 02 03                      RSADDI
  0000006F 04 03 00000004             CONSTI 4
  00000075 01 01 FFFFFFF8 0004        CPDOWNSP -8 4
  0000007D 1B 00 FFFFFFFC             MOVSP -4
  00000083 02 03                      RSADDI
  00000085 04 03 00000005             CONSTI 5
  0000008B 01 01 FFFFFFF8 0004        CPDOWNSP -8 4
  00000093 1B 00 FFFFFFFC             MOVSP -4
  00000099 02 03                      RSADDI
  0000009B 04 03 00000006             CONSTI 6
  000000A1 01 01 FFFFFFF8 0004        CPDOWNSP -8 4
  000000A9 1B 00 FFFFFFFC             MOVSP -4
  000000AF 02 03                      RSADDI
  000000B1 04 03 00000007             CONSTI 7
  000000B7 01 01 FFFFFFF8 0004        CPDOWNSP -8 4
  000000BF 1B 00 FFFFFFFC             MOVSP -4
  000000C5 02 03                      RSADDI
  000000C7 04 03 00000008             CONSTI 8
  000000CD 01 01 FFFFFFF8 0004        CPDOWNSP -8 4
  000000D5 1B 00 FFFFFFFC             MOVSP -4
  000000DB 02 03                      RSADDI
  000000DD 04 03 00000009             CONSTI 9
  000000E3 01 01 FFFFFFF8 0004        CPDOWNSP -8 4
  000000EB 1B 00 FFFFFFFC             MOVSP -4
  000000F1 02 03                      RSADDI
  000000F3 04 03 0000000A             CONSTI 10
  000000F9 01 01 FFFFFFF8 0004        CPDOWNSP -8 4
  00000101 1B 00 FFFFFFFC             MOVSP -4
  00000107 02 03                      RSADDI
  00000109 04 03 0000000B             CONSTI 11
  0000010F 01 01 FFFFFFF8 0004        CPDOWNSP -8 4
  00000117 1B 00 FFFFFFFC             MOVSP -4
  0000011D 02 03                      RSADDI
  0000011F 04 03 0000000C             CONSTI 12
  00000125 01 01 FFFFFFF8 0004        CPDOWNSP -8 4
  0000012D 1B 00 FFFFFFFC             MOVSP -4
  00000133 02 03                      RSADDI
  00000135 04 03 0000000D             CONSTI 13
  0000013B 01 01 FFFFFFF8 0004        CPDOWNSP -8 4
  00000143 1B 00 FFFFFFFC             MOVSP -4
  00000149 02 03                      RSADDI
  0000014B 04 03 0000000E             CONSTI 14
  00000151 01 01 FFFFFFF8 0004        CPDOWNSP -8 4
  00000159 1B 00 FFFFFFFC             MOVSP -4
  0000015F 02 03                      RSADDI
  00000161 04 03 0000000F             CONSTI 15
  00000167 01 01 FFFFFFF8 0004        CPDOWNSP -8 4
  0000016F 1B 00 FFFFFFFC             MOVSP -4
  00000175 02 03                      RSADDI
  00000177 04 03 00000010             CONSTI 16
  0000017D 01 01 FFFFFFF8 0004        CPDOWNSP -8 4
  00000185 1B 00 FFFFFFFC             MOVSP -4
  0000018B 02 03                      RSADDI
  0000018D 04 03 00000011             CONSTI 17
  00000193 01 01 FFFFFFF8 0004        CPDOWNSP -8 4
  0000019B 1B 00 FFFFFFFC             MOVSP -4
  000001A1 02 03                      RSADDI
  000001A3 04 03 00000012             CONSTI 18
  000001A9 01 01 FFFFFFF8 0004        CPDOWNSP -8 4
  000001B1 1B 00 FFFFFFFC             MOVSP -4
  000001B7 02 03                      RSADDI
  000001B9 04 03 00000013             CONSTI 19
  000001BF 01 01 FFFFFFF8 0004        CPDOWNSP -8 4
  000001C7 1B 00 FFFFFFFC             MOVSP -4
  000001CD 02 03                      RSADDI
  000001CF 04 03 0000044C             CONSTI 1100
  000001D5 01 01 FFFFFFF8 0004        CPDOWNSP -8 4
  000001DD 1B 00 FFFFFFFC             MOVSP -4
  000001E3 02 03                      RSADDI
  000001E5 04 03 00000006             CONSTI 6
  000001EB 19 03                      NEGI
  000001ED 01 01 FFFFFFF8 0004        CPDOWNSP -8 4
  000001F5 1B 00 FFFFFFFC             MOVSP -4
  000001FB 02 03                      RSADDI
  000001FD 04 03 00000005             CONSTI 5
  00000203 19 03                      NEGI
  00000205 01 01 FFFFFFF8 0004        CPDOWNSP -8 4
  0000020D 1B 00 FFFFFFFC             MOVSP -4
  00000213 02 03                      RSADDI
  00000215 04 03 00000004             CONSTI 4
  0000021B 19 03                      NEGI
  0000021D 01 01 FFFFFFF8 0004        CPDOWNSP -8 4
  00000225 1B 00 FFFFFFFC             MOVSP -4
  0000022B 02 03                      RSADDI
  0000022D 04 03 00000002             CONSTI 2
  00000233 19 03                      NEGI
  00000235 01 01 FFFFFFF8 0004        CPDOWNSP -8 4
  0000023D 1B 00 FFFFFFFC             MOVSP -4
  00000243 02 03                      RSADDI
  00000245 04 03 00000001             CONSTI 1
  0000024B 19 03                      NEGI
  0000024D 01 01 FFFFFFF8 0004        CPDOWNSP -8 4
  00000255 1B 00 FFFFFFFC             MOVSP -4
  0000025B 02 03                      RSADDI
  0000025D 04 03 00000000             CONSTI 0
  00000263 01 01 FFFFFFF8 0004        CPDOWNSP -8 4
  0000026B 1B 00 FFFFFFFC             MOVSP -4
  00000271 2A 00                      SAVEBP
  00000273 1E 00 00000010             JSR main
  00000279 2B 00                      RESTOREBP
  0000027B 1B 00 FFFFFF94             MOVSP -108
  00000281 20 00                      RETN
  -------- -------------------------- ---
main: ; void main()
  00000283 04 06 00000000             CONSTO 0
  00000289 1E 00 00000021             JSR sub_000002AA
  0000028F 05 00 00FB 00              ACTION GetLoadFromSaveGame 0
  00000294 22 03                      NOTI
  00000296 1F 00 00000012             JZ loc_000002A8
  0000029C 1E 00 000001A4             JSR sub_00000440
  000002A2 1D 00 00000006             JMP loc_000002A8
  -------- -------------------------- ---
loc_000002A8:
  000002A8 20 00                      RETN
  -------- -------------------------- ---
sub_000002AA: ; void sub_000002AA(object)
  000002AA 02 06                      RSADDO
  000002AC 04 03 00000001             CONSTI 1
  000002B2 03 01 FFFFFFF4 0004        CPTOPSP -12 4
  000002BA 05 00 005D 02              ACTION GetFirstObjectInArea 2
  000002BF 01 01 FFFFFFF8 0004        CPDOWNSP -8 4
  000002C7 1B 00 FFFFFFFC             MOVSP -4
loc_000002CD:
  000002CD 03 01 FFFFFFFC 0004        CPTOPSP -4 4
  000002D5 05 00 002A 01              ACTION GetIsObjectValid 1
  000002DA 1F 00 00000070             JZ loc_0000034A
  000002E0 02 03                      RSADDI
  000002E2 27 01 FFFFFFB8 0004        CPTOPBP -72 4
  000002EA 03 01 FFFFFFF4 0004        CPTOPSP -12 4
  000002F2 1E 00 00000066             JSR sub_00000358
  000002F8 1F 00 0000002B             JZ loc_00000323
  000002FE 04 04 00000000             CONSTF 0.000000
  00000304 04 03 00000001             CONSTI 1
  0000030A 04 04 00000000             CONSTF 0.000000
  00000310 03 01 FFFFFFF0 0004        CPTOPSP -16 4
  00000318 05 00 00F1 04              ACTION DestroyObject 4
  0000031D 1D 00 00000006             JMP loc_00000323
  -------- -------------------------- ---
loc_00000323:
  00000323 04 03 00000001             CONSTI 1
  00000329 03 01 FFFFFFF4 0004        CPTOPSP -12 4
  00000331 05 00 005E 02              ACTION GetNextObjectInArea 2
  00000336 01 01 FFFFFFF8 0004        CPDOWNSP -8 4
  0000033E 1B 00 FFFFFFFC             MOVSP -4
  00000344 1D 00 FFFFFF89             JMP loc_000002CD
  -------- -------------------------- ---
loc_0000034A:
  0000034A 1B 00 FFFFFFFC             MOVSP -4
  00000350 1B 00 FFFFFFFC             MOVSP -4
  00000356 20 00                      RETN
  -------- -------------------------- ---
sub_00000358: ; int sub_00000358(object, int)
  00000358 02 03                      RSADDI
  0000035A 03 01 FFFFFFF4 0004        CPTOPSP -12 4
  00000362 04 03 00000000             CONSTI 0
  00000368 0D 20                      GEQII
  0000036A 03 01 FFFFFFFC 0004        CPTOPSP -4 4
  00000372 1F 00 00000018             JZ loc_0000038A
  00000378 03 01 FFFFFFF0 0004        CPTOPSP -16 4
  00000380 04 03 00000013             CONSTI 19
  00000386 10 20                      LEQII
  00000388 06 20                      LOGANDII
loc_0000038A:
  0000038A 03 01 FFFFFFFC 0004        CPTOPSP -4 4
  00000392 1F 00 00000015             JZ loc_000003A7
  00000398 03 01 FFFFFFF4 0004        CPTOPSP -12 4
  000003A0 05 00 002A 01              ACTION GetIsObjectValid 1
  000003A5 06 20                      LOGANDII
loc_000003A7:
  000003A7 1F 00 0000006B             JZ loc_00000412
  000003AD 03 01 FFFFFFF4 0004        CPTOPSP -12 4
  000003B5 03 01 FFFFFFF4 0004        CPTOPSP -12 4
  000003BD 05 00 02A7 02              ACTION GetLocalBoolean 2
  000003C2 01 01 FFFFFFF8 0004        CPDOWNSP -8 4
  000003CA 1B 00 FFFFFFFC             MOVSP -4
  000003D0 03 01 FFFFFFFC 0004        CPTOPSP -4 4
  000003D8 04 03 00000000             CONSTI 0
  000003DE 0E 20                      GTII
  000003E0 1F 00 0000002C             JZ loc_0000040C
  000003E6 04 03 00000001             CONSTI 1
  000003EC 01 01 FFFFFFEC 0004        CPDOWNSP -20 4
  000003F4 1B 00 FFFFFFF8             MOVSP -8
  000003FA 1D 00 0000003E             JMP loc_00000438
  -------- -------------------------- ---
  00000400 1B 00 FFFFFFFC             MOVSP -4
  00000406 1D 00 00000006             JMP loc_0000040C
  -------- -------------------------- ---
loc_0000040C:
  0000040C 1D 00 00000006             JMP loc_00000412
  -------- -------------------------- ---
loc_00000412:
  00000412 04 03 00000000             CONSTI 0
  00000418 01 01 FFFFFFEC 0004        CPDOWNSP -20 4
  00000420 1B 00 FFFFFFF8             MOVSP -8
  00000426 1D 00 00000012             JMP loc_00000438
  -------- -------------------------- ---
  0000042C 1B 00 FFFFFFFC             MOVSP -4
  00000432 1B 00 FFFFFFFC             MOVSP -4
loc_00000438:
  00000438 1B 00 FFFFFFF8             MOVSP -8
  0000043E 20 00                      RETN
  -------- -------------------------- ---
sub_00000440: ; void sub_00000440()
  00000440 02 06                      RSADDO
  00000442 02 06                      RSADDO
  00000444 02 03                      RSADDI
  00000446 04 03 00000001             CONSTI 1
  0000044C 04 06 00000001             CONSTO 1
  00000452 05 00 005D 02              ACTION GetFirstObjectInArea 2
  00000457 01 01 FFFFFFF0 0004        CPDOWNSP -16 4
  0000045F 1B 00 FFFFFFFC             MOVSP -4
  00000465 04 03 00000000             CONSTI 0
  0000046B 01 01 FFFFFFF8 0004        CPDOWNSP -8 4
  00000473 1B 00 FFFFFFFC             MOVSP -4
loc_00000479:
  00000479 03 01 FFFFFFF4 0004        CPTOPSP -12 4
  00000481 05 00 002A 01              ACTION GetIsObjectValid 1
  00000486 1F 00 0000006E             JZ loc_000004F4
  0000048C 03 01 FFFFFFF4 0004        CPTOPSP -12 4
  00000494 05 00 00A8 01              ACTION GetTag 1
  00000499 04 05 str                  CONSTS "tar04_alphaghoul"
  000004AD 0B 23                      EQSS
  000004AF 1F 00 00000020             JZ loc_000004CF
  000004B5 03 01 FFFFFFFC 0004        CPTOPSP -4 4
  000004BD 24 03 FFFFFFF8             INCSPI -8
  000004C3 1B 00 FFFFFFFC             MOVSP -4
  000004C9 1D 00 00000006             JMP loc_000004CF
  -------- -------------------------- ---
loc_000004CF:
  000004CF 04 03 00000001             CONSTI 1
  000004D5 04 06 00000001             CONSTO 1
  000004DB 05 00 005E 02              ACTION GetNextObjectInArea 2
  000004E0 01 01 FFFFFFF0 0004        CPDOWNSP -16 4
  000004E8 1B 00 FFFFFFFC             MOVSP -4
  000004EE 1D 00 FFFFFF8B             JMP loc_00000479
  -------- -------------------------- ---
loc_000004F4:
  000004F4 03 01 FFFFFFFC 0004        CPTOPSP -4 4
  000004FC 04 03 00000003             CONSTI 3
  00000502 0D 20                      GEQII
  00000504 1F 00 00000018             JZ loc_0000051C
  0000050A 1B 00 FFFFFFF4             MOVSP -12
  00000510 1D 00 000002A7             JMP loc_000007B7
  -------- -------------------------- ---
  00000516 1D 00 00000006             JMP loc_0000051C
  -------- -------------------------- ---
loc_0000051C:
  0000051C 04 04 40A00000             CONSTF 5.000000
  00000522 04 03 00000005             CONSTI 5
  00000528 04 03 00000005             CONSTI 5
  0000052E 04 05 str                  CONSTS "SPAWNING RAKGHOULS"
  00000544 1E 00 00000275             JSR sub_000007B9
  0000054A 04 03 00000000             CONSTI 0
  00000550 01 01 FFFFFFF8 0004        CPDOWNSP -8 4
  00000558 1B 00 FFFFFFFC             MOVSP -4
  0000055E 04 06 00000001             CONSTO 1
  00000564 01 01 FFFFFFF4 0004        CPDOWNSP -12 4
  0000056C 1B 00 FFFFFFFC             MOVSP -4
loc_00000572:
  00000572 03 01 FFFFFFFC 0004        CPTOPSP -4 4
  0000057A 04 05 str                  CONSTS "tar04_rakspawn"
  0000058C 05 00 00C8 02              ACTION GetObjectByTag 2
  00000591 01 01 FFFFFFF0 0004        CPDOWNSP -16 4
  00000599 05 00 002A 01              ACTION GetIsObjectValid 1
  0000059E 1F 00 00000092             JZ loc_00000630
  000005A4 04 03 00000001             CONSTI 1
  000005AA 03 01 FFFFFFF0 0004        CPTOPSP -16 4
  000005B2 04 05 str                  CONSTS "tar04_alphaghoul"
  000005C6 05 00 00E5 03              ACTION GetNearestObjectByTag 3
  000005CB 03 01 FFFFFFF0 0004        CPTOPSP -16 4
  000005D3 05 00 0097 02              ACTION GetDistanceBetween 2
  000005D8 04 04 41F00000             CONSTF 30.000000
  000005DE 0E 21                      GTFF
  000005E0 1F 00 00000036             JZ loc_00000616
  000005E6 03 01 FFFFFFF4 0004        CPTOPSP -12 4
  000005EE 01 01 FFFFFFF4 0004        CPDOWNSP -12 4
  000005F6 1B 00 FFFFFFFC             MOVSP -4
  000005FC 04 03 00000064             CONSTI 100
  00000602 01 01 FFFFFFF8 0004        CPDOWNSP -8 4
  0000060A 1B 00 FFFFFFFC             MOVSP -4
  00000610 1D 00 00000006             JMP loc_00000616
  -------- -------------------------- ---
loc_00000616:
  00000616 03 01 FFFFFFFC 0004        CPTOPSP -4 4
  0000061E 24 03 FFFFFFF8             INCSPI -8
  00000624 1B 00 FFFFFFFC             MOVSP -4
  0000062A 1D 00 FFFFFF48             JMP loc_00000572
  -------- -------------------------- ---
loc_00000630:
  00000630 03 01 FFFFFFF8 0004        CPTOPSP -8 4
  00000638 05 00 002A 01              ACTION GetIsObjectValid 1
  0000063D 22 03                      NOTI
  0000063F 1F 00 0000003C             JZ loc_0000067B
  00000645 04 03 00000004             CONSTI 4
  0000064B 05 00 0000 01              ACTION Random 1
  00000650 04 05 str                  CONSTS "tar04_rakspawn"
  00000662 05 00 00C8 02              ACTION GetObjectByTag 2
  00000667 01 01 FFFFFFF4 0004        CPDOWNSP -12 4
  0000066F 1B 00 FFFFFFFC             MOVSP -4
  00000675 1D 00 00000006             JMP loc_0000067B
  -------- -------------------------- ---
loc_0000067B:
  0000067B 04 04 40A00000             CONSTF 5.000000
  00000681 04 03 00000006             CONSTI 6
  00000687 04 03 00000005             CONSTI 5
  0000068D 04 05 str                  CONSTS "SPAWN POINT - "
  0000069F 03 01 FFFFFFE8 0004        CPTOPSP -24 4
  000006A7 05 00 00A8 01              ACTION GetTag 1
  000006AC 14 23                      ADDSS
  000006AE 1E 00 0000010B             JSR sub_000007B9
  000006B4 04 03 00000000             CONSTI 0
  000006BA 03 01 FFFFFFF4 0004        CPTOPSP -12 4
  000006C2 05 00 00D5 01              ACTION GetLocation 1
  000006C7 04 05 str                  CONSTS "tar04_rakghou001"
  000006DB 04 03 00000001             CONSTI 1
  000006E1 05 00 00F3 04              ACTION CreateObject 4
  000006E6 01 01 FFFFFFF0 0004        CPDOWNSP -16 4
  000006EE 1B 00 FFFFFFFC             MOVSP -4
  000006F4 03 01 FFFFFFF4 0004        CPTOPSP -12 4
  000006FC 05 00 002A 01              ACTION GetIsObjectValid 1
  00000701 1F 00 00000035             JZ loc_00000736
  00000707 04 04 40A00000             CONSTF 5.000000
  0000070D 04 03 00000007             CONSTI 7
  00000713 04 03 00000005             CONSTI 5
  00000719 04 05 str                  CONSTS "ALPHA SPAWNED"
  0000072A 1E 00 0000008F             JSR sub_000007B9
  00000730 1D 00 00000006             JMP loc_00000736
  -------- -------------------------- ---
loc_00000736:
  00000736 04 03 00000000             CONSTI 0
  0000073C 01 01 FFFFFFF8 0004        CPDOWNSP -8 4
  00000744 1B 00 FFFFFFFC             MOVSP -4
loc_0000074A:
  0000074A 03 01 FFFFFFFC 0004        CPTOPSP -4 4
  00000752 04 03 00000004             CONSTI 4
  00000758 0F 20                      LTII
  0000075A 1F 00 00000057             JZ loc_000007B1
  00000760 04 03 00000000             CONSTI 0
  00000766 03 01 FFFFFFF4 0004        CPTOPSP -12 4
  0000076E 05 00 00D5 01              ACTION GetLocation 1
  00000773 04 05 str                  CONSTS "tar04_rakghoulr"
  00000786 04 03 00000001             CONSTI 1
  0000078C 05 00 00F3 04              ACTION CreateObject 4
  00000791 1B 00 FFFFFFFC             MOVSP -4
  00000797 03 01 FFFFFFFC 0004        CPTOPSP -4 4
  0000079F 24 03 FFFFFFF8             INCSPI -8
  000007A5 1B 00 FFFFFFFC             MOVSP -4
  000007AB 1D 00 FFFFFF9F             JMP loc_0000074A
  -------- -------------------------- ---
loc_000007B1:
  000007B1 1B 00 FFFFFFF4             MOVSP -12
loc_000007B7:
  000007B7 20 00                      RETN
  -------- -------------------------- ---
sub_000007B9: ; void sub_000007B9(string, int, int, float)
  000007B9 05 00 02F9 00              ACTION ShipBuild 0
  000007BE 22 03                      NOTI
  000007C0 1F 00 00000031             JZ loc_000007F1
  000007C6 03 01 FFFFFFF0 0004        CPTOPSP -16 4
  000007CE 03 01 FFFFFFF0 0004        CPTOPSP -16 4
  000007D6 03 01 FFFFFFF0 0004        CPTOPSP -16 4
  000007DE 03 01 FFFFFFF0 0004        CPTOPSP -16 4
  000007E6 05 00 0246 04              ACTION AurPostString 4
  000007EB 1D 00 00000006             JMP loc_000007F1
  -------- -------------------------- ---
loc_000007F1:
  000007F1 1B 00 FFFFFFF0             MOVSP -16
  000007F7 20 00                      RETN
  -------- -------------------------- ---
