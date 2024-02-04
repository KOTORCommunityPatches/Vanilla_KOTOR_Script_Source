void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			SetGlobalNumber("003EBO_T3_Holo_Seq", 1);
			break;
		case 2:
			SetGlobalNumber("003EBO_ATTON_T3_START", 1);
			break;
		case 3:
			SetGlobalNumber("003EBO_T3_Pazaak", 1);
			break;
		case 4:
			SetInfluence(8, 40);
			break;
		case 5:
			SetGlobalNumber("003EBO_Handmaid_Fight", 1);
			SetGlobalNumber("003EBO_Atton_Hand", 0);
			break;
		case 6:
			SetGlobalNumber("003EBO_Visas_Hand", 0);
			SetInfluence(9, (GetInfluence(4) + 3));
			break;
		case 7:
			SetGlobalNumber("003EBO_Visas_Hand", 1);
			SetGlobalNumber("003EBO_Mira_Hand", 0);
			break;
		case 8:
			{
				int int4 = GetInfluence(4);
				SetInfluence(9, (int4 + 5));
				SetGlobalNumber("003EBO_Visas_Hand", 1);
			}
			break;
		case 9:
			{
				int int6 = GetInfluence(4);
				SetInfluence(9, (int6 + 10));
				SetGlobalNumber("003EBO_Visas_Hand", 2);
			}
			break;
		case 10:
			SetGlobalNumber("003EBO_Goto_HK47", 0);
			break;
		case 11:
			SetGlobalNumber("003EBO_G0t0_Remote", 0);
			break;
		case 12:
			SetGlobalNumber("003EBO_G0t0_Remote", 1);
			SetGlobalNumber("000_Jedi_Found", 3);
			break;
		case 13:
			SetGlobalNumber("003EBO_HK47_T3", 0);
			break;
		case 14:
			SetGlobalNumber("003EBO_Disciple_Med", 1);
			SetGlobalNumber("003EBO_Mediate_Event", 0);
			break;
		case 15:
			{
				int int8 = GetInfluence(0);
				SetInfluence(11, (int8 + 2));
				SetGlobalNumber("003EBO_Disciple_Atton", 0);
			}
			break;
		case 16:
			{
				int int10 = GetInfluence(0);
				SetInfluence(11, (int10 + 5));
				SetGlobalNumber("003EBO_Disciple_Atton", 1);
			}
			break;
		case 17:
			SetGlobalNumber("000_Jedi_Found", 3);
			SetGlobalNumber("003EBO_Disciple_Atton", 2);
			SetGlobalNumber("003EBO_T3_Disciple", 0);
			break;
		case 18:
			break;
		case 19:
			SetGlobalNumber("003EBO_T3_Disciple", 1);
			SetGlobalNumber("003EBO_Disciple_Atton", 4);
			break;
		case 20:
			SetGlobalNumber("003EBO_Atton_End", 1);
			break;
		case 21:
			SetInfluence(11, (GetInfluence(0) + 5));
			SetGlobalNumber("003EBO_Disciple_Atton", 3);
			break;
		case 22:
			break;
		case 23:
			AdjustAlignment(GetFirstPC(), 3, 100, 0);
			SetInfluence(1, 4);
			break;
		case 24:
			SetGlobalNumber("003EBO_Disciple_Event", 0);
			SetGlobalBoolean("201_FIRST_ENTER", 1);
			SetGlobalBoolean("301_FIRST_ENTER", 1);
			SetGlobalBoolean("401_FIRST_ENTER", 1);
			break;
		case 25:
			SetGlobalNumber("003EBO_Disciple_Event", 1);
			SetGlobalBoolean("201_FIRST_ENTER", 1);
			SetGlobalBoolean("301_FIRST_ENTER", 1);
			SetGlobalBoolean("401_FIRST_ENTER", 1);
			SetGlobalBoolean("701_FIRST_ENTER", 1);
			break;
		case 26:
			SetGlobalNumber("003EBO_Disciple_Event", 2);
			SetGlobalNumber("003EBO_Kreia_Disciple", 3);
			break;
		case 27:
			SetGlobalNumber("003EBO_Kreia_Disciple", 0);
			break;
		case 28:
			SetGlobalNumber("003EBO_Kreia_Disciple", 1);
			break;
		case 29:
			SetGlobalNumber("003EBO_Kreia_Disciple", 2);
			SetGlobalNumber("003EBO_Disciple_Event", 1);
			break;
		case 30:
			SetGlobalBoolean("000_PLAYER_GENDER", 0);
			SetInfluence(0, 5);
			break;
		case 31:
			break;
		case 32:
			break;
		case 33:
			break;
		case 34:
			break;
		case 35:
			break;
		case 36:
			break;
		case 37:
			break;
		case 38:
			break;
		case 39:
			SetInfluence(1, 2);
			break;
		case 40:
			break;
		case 41:
			break;
	}
}