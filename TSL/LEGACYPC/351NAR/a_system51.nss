void main() {
	int nParam1 = GetScriptParameter(1);
	int int3;
	int int4 = 80;
	switch (nParam1) {
		case 41:
			AurPostString("Advanced Diagnostic on minefield", 10, 10, 5.0);
			break;
		case 42:
			if ((!GetGlobalNumber("351NAR_Mine01"))) {
				GivePlotXP("Nar_Shaddaa_Plot_Base_XP", 50);
			}
			SetGlobalNumber("351NAR_Mine01", 1);
			SetGlobalNumber("800DRO_Console_56", 2);
			SoundObjectPlay(GetObjectByTag("Computer05", 0));
			int3 = 0;
			while ((int3 <= int4)) {
				{
					object oG_T_TRAP006 = GetObjectByTag("G_T_TRAP006", int3);
					if (GetIsObjectValid(oG_T_TRAP006)) {
						ChangeToStandardFaction(oG_T_TRAP006, 3);
					}
				}
				(int3++);
			}
			break;
		case 43:
			if ((!GetGlobalNumber("351NAR_Mine02"))) {
				GivePlotXP("Nar_Shaddaa_Plot_Base_XP", 50);
			}
			SetGlobalNumber("351NAR_Mine02", 1);
			SetGlobalNumber("800DRO_Console_56", 1);
			SoundObjectPlay(GetObjectByTag("Computer05", 0));
			int3 = 0;
			while ((int3 <= int4)) {
				{
					object object5 = GetObjectByTag("G_T_TRAP006", int3);
					if (GetIsObjectValid(object5)) {
						ChangeToStandardFaction(object5, 5);
					}
				}
				(int3++);
			}
			break;
		case 44:
			SetGlobalNumber("800DRO_Console_56", 0);
			SoundObjectPlay(GetObjectByTag("Computer05", 0));
			int3 = 0;
			while ((int3 <= int4)) {
				{
					object object8 = GetObjectByTag("G_T_TRAP006", int3);
					if (GetIsObjectValid(object8)) {
						ChangeToStandardFaction(object8, 1);
					}
				}
				(int3++);
			}
			break;
	}
}

