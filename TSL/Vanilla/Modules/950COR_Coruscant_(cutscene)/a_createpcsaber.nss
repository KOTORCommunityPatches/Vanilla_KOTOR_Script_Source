// Prototypes
void sub1(string stringParam1);

void sub1(string stringParam1) {
	object object1 = CreateItemOnObject(stringParam1, GetFirstPC(), 1, 1);
	object object4 = CreateItemOnObject("a_robe_08", GetFirstPC(), 1, 1);
	AssignCommand(GetFirstPC(), ActionEquipItem(object1, 4, 0));
	AssignCommand(GetFirstPC(), ActionEquipItem(object4, 1, 0));
}

void main() {
	int nGlobal = 0;
	int int2 = 0;
	string string1;
	nGlobal = GetGlobalNumber("003EBO_PC_Hilt");
	int2 = GetGlobalNumber("003EBO_PC_Lightsaber");
	switch (int2) {
		case 0:
			switch (nGlobal) {
				case 0:
					string1 = "g_w_lghtsbr10";
					break;
				case 1:
					string1 = "g_w_shortsbr10";
					break;
				case 2:
					string1 = "g_w_dblsbr010";
					break;
			}
			break;
		case 1:
			switch (nGlobal) {
				case 0:
					string1 = "g_w_lghtsbr02";
					break;
				case 1:
					string1 = "g_w_shortsbr02";
					break;
				case 2:
					string1 = "g_w_dblsbr002";
					break;
			}
			break;
		case 2:
			switch (nGlobal) {
				case 0:
					string1 = "g_w_lghtsbr03";
					break;
				case 1:
					string1 = "g_w_shortsbr03";
					break;
				case 2:
					string1 = "g_w_dblsbr003";
					break;
			}
			break;
		case 3:
			switch (nGlobal) {
				case 0:
					string1 = "g_w_lghtsbr01";
					break;
				case 1:
					string1 = "g_w_shortsbr01";
					break;
				case 2:
					string1 = "g_w_dblsbr001";
					break;
			}
			break;
		case 4:
			switch (nGlobal) {
				case 0:
					string1 = "g_w_lghtsbr04";
					break;
				case 1:
					string1 = "g_w_shortsbr04";
					break;
				case 2:
					string1 = "g_w_dblsbr004";
					break;
			}
			break;
		case 5:
			switch (nGlobal) {
				case 0:
					string1 = "g_w_lghtsbr05";
					break;
				case 1:
					string1 = "g_w_shortsbr05";
					break;
				case 2:
					string1 = "g_w_dblsbr005";
					break;
			}
			break;
		case 6:
			switch (nGlobal) {
				case 0:
					string1 = "g_w_lghtsbr08";
					break;
				case 1:
					string1 = "g_w_shortsbr08";
					break;
				case 2:
					string1 = "g_w_dblsbr008";
					break;
			}
			break;
		case 7:
			switch (nGlobal) {
				case 0:
					string1 = "g_w_lghtsbr09";
					break;
				case 1:
					string1 = "g_w_shortsbr09";
					break;
				case 2:
					string1 = "g_w_dblsbr009";
					break;
			}
			break;
		case 8:
			switch (nGlobal) {
				case 0:
					string1 = "g_w_lghtsbr07";
					break;
				case 1:
					string1 = "g_w_shortsbr07";
					break;
				case 2:
					string1 = "g_w_dblsbr007";
					break;
			}
			break;
		case 9:
			switch (nGlobal) {
				case 0:
					string1 = "g_w_lghtsbr11";
					break;
				case 1:
					string1 = "g_w_shortsbr11";
					break;
				case 2:
					string1 = "g_w_dblsbr011";
					break;
			}
			break;
	}
	object oBodyItem = GetItemInSlot(1, GetFirstPC());
	object oLWeapItem = GetItemInSlot(5, GetFirstPC());
	object oRWeapItem = GetItemInSlot(4, GetFirstPC());
	object oBeltItem = GetItemInSlot(10, GetFirstPC());
	object oHeadItem = GetItemInSlot(0, GetFirstPC());
	AssignCommand(GetFirstPC(), GiveItem(oBodyItem, GetObjectByTag("HoldArmor", 0)));
	AssignCommand(GetFirstPC(), GiveItem(oRWeapItem, GetObjectByTag("HoldRight", 0)));
	AssignCommand(GetFirstPC(), GiveItem(oLWeapItem, GetObjectByTag("HoldLeft", 0)));
	AssignCommand(GetFirstPC(), GiveItem(oBeltItem, GetObjectByTag("HoldBelt", 0)));
	AssignCommand(GetFirstPC(), GiveItem(oHeadItem, GetObjectByTag("HoldHead", 0)));
	DelayCommand(1.0, sub1(string1));
	DelayCommand(1.5, SetLightsaberPowered(GetFirstPC(), 1, 0, 0));
}
