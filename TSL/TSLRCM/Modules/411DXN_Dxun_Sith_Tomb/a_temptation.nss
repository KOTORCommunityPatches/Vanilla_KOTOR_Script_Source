void main() {
	int nParam1 = GetScriptParameter(1);
	SetGlobalNumber("411DXN_Tempt", (nParam1 + 1));
	object oPC = GetFirstPC();
	if ((GetTag(oPC) == "Atton")) {
		SetGlobalNumber("411DXN_Tempt_NPC", 0);
	}
	else {
		if ((GetTag(oPC) == "VisasMarr")) {
			SetGlobalNumber("411DXN_Tempt_NPC", 9);
		}
		else {
			if ((GetTag(oPC) == "Disciple")) {
				SetGlobalNumber("411DXN_Tempt_NPC", 11);
			}
			else {
				if ((GetTag(oPC) == "Handmaiden")) {
					SetGlobalNumber("411DXN_Tempt_NPC", 4);
				}
				else {
					if ((GetTag(oPC) == "Mira")) {
						SetGlobalNumber("411DXN_Tempt_NPC", 7);
					}
					else {
						if ((GetTag(oPC) == "baodur")) {
							SetGlobalNumber("411DXN_Tempt_NPC", 1);
						}
						else {
							AurPostString("Failed to set global number 411DXN_Tempt_NPC. Please tell someone!", 5, 5, 5.0);
						}
					}
				}
			}
		}
	}
}