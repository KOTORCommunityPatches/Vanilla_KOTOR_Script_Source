// Byte code does not match

// Prototypes
void sub1();

void sub1() {
	PlayMovie("NarMov04", 0);
	CreateObject(32, "g_lastlocal", GetLocation(GetFirstPC()), 0);
	SetGlobalString("K_LAST_MODULE", GetModuleName());
	SetGlobalNumber("853NIH_CUTSCENE", 0);
	StartNewModule("853NIH", "", "", "", "", "", "", "");
	SetGlobalNumber("000_Event_Movie", 1);
	SetGlobalBoolean("003EBO_VISAS_ARRIVES", 1);
	if ((GetGlobalNumber("GBL_GAME_COMPLETE") > 2)) {
		SetGlobalNumber("GBL_MAIN_SITH_LORD", 1);
	}
	else {
		SetGlobalNumber("GBL_MAIN_SITH_LORD", 2);
	}
}

void main() {
	if ((GetGlobalNumber("000_Event_Movie") == 0)) {
		int nGlobal = GetGlobalNumber("G_PC_Dark_Total");
		int int4 = GetGlobalNumber("G_PC_Light_Total");
		int int6 = GetGlobalNumber("G_PC_Align_Val");
		int int8 = 0;
		if ((GetGlobalNumber("000_Jedi_Found") >= 3)) {
			int8 = 1;
		}
		int int10 = 1;
		int int11 = 0;
		while ((int11 < 3)) {
			{
				object oNPC = GetPartyMemberByIndex(int11);
				if (GetIsInCombat(oNPC, 0)) {
				int10 = 0;
				}
			}
			(int11++);
		}
		int10;
		int10;
		if ((int10 && (((int6 >= 75) || (int6 <= 25)) || ((nGlobal + int4) >= 50)))) {
			sub1();
		}
		else {
			if (int8) {
				sub1();
			}
		}
	}
	else {
		if (0) {
		}
	}
}