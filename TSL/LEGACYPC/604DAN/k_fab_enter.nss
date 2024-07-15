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
		if ((!GetLocalBoolean(GetModule(), 40))) {
			SetLocalBoolean(GetModule(), 40, 1);
			object oSpeaker_invis = GetObjectByTag("speaker_invis", 0);
			if ((!GetIsObjectValid(oSpeaker_invis))) {
				return;
			}
			AssignCommand(oSpeaker_invis, ClearAllActions());
			AssignCommand(oSpeaker_invis, ActionStartConversation(GetFirstPC(), "on_enter", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
		else {
			if ((!GetLocalBoolean(GetObjectByTag("tr_cont_cv", 0), 55))) {
				SetLocalBoolean(GetObjectByTag("tr_cont_cv", 0), 55, 1);
			}
		}
		if (((GetJournalEntry("ssensor") > 0) && (!GetIsObjectValid(GetObjectByTag("cont_sensor", 0))))) {
			AurPostString("Creating cont_sensor", 5, 5, 5.0);
			CreateObject(64, "cont_sensor", GetLocation(GetObjectByTag("sp_cont_sensor", 0)), 0);
		}
		if ((GetGlobalNumber("604DAN_Vrook_Status") == 1)) {
			SetGlobalNumber("604DAN_Vrook_Status", 2);
			sub1("g_merc_capt", 0);
			sub1("g_merc", 0);
			sub1("g_merc", 1);
			sub1("g_merc001", 0);
			sub1("g_merc002", 0);
			sub1("g_merc005", 0);
			sub1("npc_vrook", 0);
			DelayCommand(0.8, AssignCommand(GetObjectByTag("vrookcage", 0), ActionPlayAnimation(203, 1.0, 0.0)));
			CreateObject(64, "g_tresmillow004", GetLocation(GetObjectByTag("sp_g_tresmillow004", 0)), 0);
			CreateObject(64, "g_tresmillow004", GetLocation(GetObjectByTag("sp_g_tresmillow0041", 0)), 0);
			CreateObject(64, "g_tresmillow004", GetLocation(GetObjectByTag("sp_g_tresmillow0042", 0)), 0);
		}
		else {
			if (((GetGlobalNumber("604DAN_Vrook_Status") > 2) && GetIsObjectValid(GetObjectByTag("npc_vrook", 0)))) {
				AssignCommand(GetObjectByTag("vrookcage", 0), ActionPlayAnimation(202, 1.0, 0.0));
				object oNpc_vrook = GetObjectByTag("npc_vrook", 0);
				SetMinOneHP(oNpc_vrook, 0);
				DestroyObject(oNpc_vrook, 0.0, 0, 0.0, 0);
				object oG_merc_capt;
				object oG_merc;
				oG_merc_capt = GetObjectByTag("g_merc_capt", 0);
				int int10 = 0;
				while ((int10 <= 4)) {
					oG_merc = GetObjectByTag("g_merc", int10);
					if (GetIsObjectValid(oG_merc)) {
						DestroyObject(oG_merc, 0.0, 0, 0.0, 0);
					}
					(int10++);
				}
				if (GetIsObjectValid(oG_merc_capt)) {
					DestroyObject(oG_merc_capt, 0.0, 0, 0.0, 0);
				}
			}
		}
	}
}

