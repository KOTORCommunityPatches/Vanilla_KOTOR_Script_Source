// Prototypes
object sub1(string stringParam1, int intParam2);

object sub1(string stringParam1, int intParam2) {
	string string1;
	if ((intParam2 == 0)) {
		string1 = ("sp_" + stringParam1);
	}
	else {
		string1 = (("sp_" + stringParam1) + IntToString(intParam2));
	}
	return CreateObject(1, stringParam1, GetLocation(GetObjectByTag(string1, 0)), 0);
}

void main() {
	if (GetLoadFromSaveGame()) {
		return;
	}
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		object oTo_601 = GetObjectByTag("To_601", 0);
		if (((((!GetLocalBoolean(oTo_601, 44)) && GetGlobalNumber("604DAN_Vrook_Status")) && (!GetGlobalNumber("000_Disciple_Joined"))) && ((GetGlobalNumber("601DAN_Battle_Mili") == 0) || (GetGlobalNumber("601DAN_Battle_Mili") == 4)))) {
			SetLocalBoolean(oTo_601, 44, 1);
			sub1("p_disciple", 0);
			if ((GetGlobalNumber("101PER_Revan_End") == 0)) {
				sub1("carth_holo", 0);
			}
			AssignCommand(GetObjectByTag("disciple", 0), ActionStartConversation(GetFirstPC(), "disc_enc", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
		if (((!GetLocalBoolean(oTo_601, 42)) && (GetGlobalNumber("604DAN_Vrook_Status") >= 3))) {
			SetLocalBoolean(oTo_601, 42, 1);
			if ((GetGlobalNumber("601DAN_Battle_Mili") == 0)) {
				if ((GetGlobalNumber("604DAN_Vrook_Status") == 3)) {
					CreateObject(1, "npc_vrook", GetLocation(GetWaypointByTag("wp_vrook")), 0);
				}
				object oNpc_zherron = GetObjectByTag("npc_zherron", 0);
				if (GetIsObjectValid(oNpc_zherron)) {
					AssignCommand(oNpc_zherron, ClearAllActions());
					AssignCommand(oNpc_zherron, JumpToLocation(GetLocation(GetObjectByTag("wp_zherron_terena", 0))));
				}
			}
		}
		if ((GetGlobalNumber("602DAN_Gerevick") == 3)) {
			DestroyObject(GetObjectByTag("npc_gerevick", 0), 0.0, 0, 0.0, 0);
		}
		if (((GetGlobalNumber("601DAN_Battle_Mili") > 0) && (!GetLocalBoolean(oTo_601, 20)))) {
			SetLocalBoolean(oTo_601, 20, 1);
			if (((GetJournalEntry("danthief") > 0) && (GetJournalEntry("danthief") < 90))) {
				AddJournalQuestEntry("danthief", 89, 0);
			}
			if (((GetJournalEntry("ssensor") > 0) && (GetJournalEntry("ssensor") < 90))) {
				AddJournalQuestEntry("ssensor", 89, 0);
			}
		}
	}
}
