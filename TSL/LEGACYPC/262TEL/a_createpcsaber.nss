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
	object object1 = CreateItemOnObject(string1, OBJECT_SELF, 1, 0);
	ActionEquipItem(object1, 4, 0);
	ActionPlayAnimation(115, 1.0, 0.0);
}

