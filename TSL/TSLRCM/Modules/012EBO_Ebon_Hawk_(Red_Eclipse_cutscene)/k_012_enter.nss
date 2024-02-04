// Prototypes
void sub1();

void sub1() {
	string string1 = "003EBOq";
	int nGlobal = GetGlobalNumber("003EBO_BACKGROUND");
	switch (nGlobal) {
		case 0:
			nGlobal = 1;
			break;
		case 1:
			nGlobal = 2;
			break;
		case 2:
			nGlobal = 3;
			break;
		case 3:
			nGlobal = 4;
			break;
		case 4:
			nGlobal = 5;
			break;
		case 5:
			nGlobal = 6;
			break;
		case 6:
			nGlobal = 7;
			break;
		case 7:
			nGlobal = 8;
			break;
		case 8:
			nGlobal = 9;
			break;
		case 9:
			nGlobal = 10;
			break;
		case 10:
			nGlobal = 11;
			break;
		default:
			AurPostString("EBO ERROR: No background sepcified!", 5, 15, 10.0);
	}
	PlayRoomAnimation(string1, nGlobal);
}

void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		sub1();
		if (GetLoadFromSaveGame()) {
			return;
		}
		SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
		if (((!IsNPCPartyMember(4)) && IsAvailableCreature(4))) {
			object object4 = SpawnAvailableNPC(4, GetLocation(GetWaypointByTag("mn_cockpit")));
			AssignCommand(GetObjectByTag("Handmaiden", 0), ActionStartConversation(oEntering, "board", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0);
		}
		else {
			if (((!IsNPCPartyMember(11)) && IsAvailableCreature(11))) {
				object object8 = SpawnAvailableNPC(11, GetLocation(GetObjectByTag("mn_cockpit", 0)));
				AssignCommand(GetObjectByTag("Disciple", 0), ActionStartConversation(oEntering, "board", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
				SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0);
			}
			else {
				if ((((!IsNPCPartyMember(9)) && (!IsNPCPartyMember(9))) && IsAvailableCreature(9))) {
					object object12 = SpawnAvailableNPC(9, GetLocation(GetObjectByTag("mn_cockpit", 0)));
					AssignCommand(GetObjectByTag("VisasMarr", 0), ActionStartConversation(oEntering, "board", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
				}
				else {
					if ((((!IsNPCPartyMember(1)) && (!IsNPCPartyMember(1))) && IsAvailableCreature(1))) {
						object object16 = SpawnAvailableNPC(1, GetLocation(GetObjectByTag("mn_cockpit", 0)));
						AssignCommand(GetObjectByTag("BaoDur", 0), ActionStartConversation(oEntering, "board", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
					}
					else {
						SetGlobalFadeIn(0.5, 1.0, 0.0, 0.0, 0.0);
						CreateObject(1, "g_blkvulkgang008", GetLocation(GetObjectByTag("wp_red_003", 0)), 0);
						ExecuteScript("a_spawnrat", oEntering, 0xFFFFFFFF);
						object oRatrin = GetObjectByTag("Ratrin", 0);
						AssignCommand(oRatrin, ActionStartConversation(GetFirstPC(), "ratrin", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
					}
				}
			}
		}
	}
}