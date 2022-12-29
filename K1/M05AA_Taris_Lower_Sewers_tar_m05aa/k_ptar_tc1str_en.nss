; 130 bytes, 19 instructions

; Engine types:
; E0: Effect
; E1: Event
; E2: Location
; E3: Talent

_start:
  0000000D 1E 00 00000008             JSR main
  00000013 20 00                      RETN
  -------- -------------------------- ---
main: ; void main()
  00000015 02 06                      RSADDO
  00000017 04 03 00000000             CONSTI 0
  0000001D 04 05 str                  CONSTS "tar05_tcceiling1"
  00000031 05 00 00C8 02              ACTION GetObjectByTag 2
  00000036 01 01 FFFFFFF8 0004        CPDOWNSP -8 4
  0000003E 1B 00 FFFFFFFC             MOVSP -4
  00000044 2C 01 10 00000000 00000004 STORESTATE sta_00000054 0 4
  0000004E 1D 00 0000001F             JMP loc_0000006D
  -------- -------------------------- ---
sta_00000054:
  00000054 04 04 40A00000             CONSTF 5.000000
  0000005A 04 04 3A83126E             CONSTF 0.001000
  00000060 04 03 000000C9             CONSTI 201
  00000066 05 00 0028 03              ACTION ActionPlayAnimation 3
  0000006B 20 00                      RETN
  -------- -------------------------- ---
loc_0000006D:
  0000006D 03 01 FFFFFFFC 0004        CPTOPSP -4 4
  00000075 05 00 0006 02              ACTION AssignCommand 2
  0000007A 1B 00 FFFFFFFC             MOVSP -4
  00000080 20 00                      RETN
  -------- -------------------------- ---
