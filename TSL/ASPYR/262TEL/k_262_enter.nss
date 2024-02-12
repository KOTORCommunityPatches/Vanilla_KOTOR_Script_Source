// Prototypes
void sub1();

void sub1() {
	SetPartyLeader(0xFFFFFFFF);
	int int2 = 0;
	while ((int2 < 12)) {
		if (IsNPCPartyMember(int2)) {
			RemoveNPCFromPartyToBase(int2);
		}
		(int2++);
	}
}

void main() {
	object oEntering = GetEnteringObject();
	if ((GetFirstPC() == oEntering)) {
		SetAreaUnescapable(1);
		SetDisableTransit(1);
		DestroyObject(GetObjectByTag("AtrisWindCut", 0), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("AtrisCut", 0), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("Sister1Cut", 0), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("Sister2Cut", 0), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("Sister1Wind", 0), 0.0, 0, 0.0, 0);
		DestroyObject(GetObjectByTag("Sister2Wind", 0), 0.0, 0, 0.0, 0);
		if (GetLoadFromSaveGame()) {
			return;
		}
		if ((GetGlobalNumber("000_atriscs3") == 2)) {
			SetGlobalNumber("000_atriscs3", 1);
			DestroyObject(GetObjectByTag("Sister1", 0), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("Sister2", 0), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("Sister3", 0), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("Sister4", 0), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("Sister5", 0), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("SisterDojo", 0), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("Handmaiden", 0), 0.0, 0, 0.0, 0);
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			SetFadeUntilScript();
			object oAtriscut = CreateObject(1, "atriscut", GetLocation(GetObjectByTag("wp_atriscouncil_2", 0)), 0);
			object oSister1cut = CreateObject(1, "sister1cut", GetLocation(GetObjectByTag("wp_sister1council_3", 0)), 0);
			object oSister2cut = CreateObject(1, "sister2cut", GetLocation(GetObjectByTag("wp_sister2council_3", 0)), 0);
			AssignCommand(oSister1cut, ClearAllActions());
			AssignCommand(oSister1cut, ActionStartConversation(oAtriscut, "atriscs3", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
		else {
			if ((GetGlobalNumber("000_Jedi_Found") == 4)) {
				if ((((GetGlobalNumber("000_siscut1") == 2) || (GetGlobalNumber("000_atriscs1") == 2)) || (GetGlobalNumber("000_atriscs3") == 2))) {
					return;
				}
				if ((!GetLocalBoolean(OBJECT_SELF, 50))) {
					SetLocalBoolean(OBJECT_SELF, 50, 1);
					DestroyObject(GetObjectByTag("Sister1", 1), 0.0, 0, 0.0, 0);
					DestroyObject(GetObjectByTag("Sister2", 1), 0.0, 0, 0.0, 0);
					DestroyObject(GetObjectByTag("Sister1", 0), 0.0, 0, 0.0, 0);
					DestroyObject(GetObjectByTag("Sister2", 0), 0.0, 0, 0.0, 0);
					DestroyObject(GetObjectByTag("Sister3", 0), 0.0, 0, 0.0, 0);
					DestroyObject(GetObjectByTag("Sister4", 0), 0.0, 0, 0.0, 0);
					DestroyObject(GetObjectByTag("Sister5", 0), 0.0, 0, 0.0, 0);
					DestroyObject(GetObjectByTag("SisterDojo", 0), 0.0, 0, 0.0, 0);
					DestroyObject(GetObjectByTag("SisterFight", 2), 0.0, 0, 0.0, 0);
					DestroyObject(GetObjectByTag("SisterFight", 1), 0.0, 0, 0.0, 0);
					DestroyObject(GetObjectByTag("SisterFight", 0), 0.0, 0, 0.0, 0);
					DelayCommand(2.0, sub1());
					DelayCommand(2.0, DestroyObject(GetObjectByTag("Handmaiden", 0), 0.0, 0, 0.0, 0));
					SetLocked(GetObjectByTag("MedChamber", 0), 0);
					AssignCommand(GetObjectByTag("MedChamber", 0), ActionOpenDoor(GetObjectByTag("MedChamber", 0)));
					object oAtris = GetObjectByTag("Atris", 0);
					AssignCommand(oAtris, ActionJumpToObject(GetObjectByTag("wp_PC_Atris_End", 0), 1));
					object oP_kreia002 = CreateObject(1, "p_kreia002", GetLocation(GetWaypointByTag("wp_kreia_end")), 0);
					SetLockOrientationInDialog(oAtris, 1);
					SetLockOrientationInDialog(oP_kreia002, 1);
					AssignCommand(oP_kreia002, ClearAllActions());
					AssignCommand(oP_kreia002, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
				}
			}
			else {
				if ((GetGlobalNumber("000_siscut1") == 2)) {
					DestroyObject(GetObjectByTag("Sister1", 0), 0.0, 0, 0.0, 0);
					DestroyObject(GetObjectByTag("Sister2", 0), 0.0, 0, 0.0, 0);
					DestroyObject(GetObjectByTag("Sister3", 0), 0.0, 0, 0.0, 0);
					DestroyObject(GetObjectByTag("Sister4", 0), 0.0, 0, 0.0, 0);
					DestroyObject(GetObjectByTag("Sister5", 0), 0.0, 0, 0.0, 0);
					DestroyObject(GetObjectByTag("SisterDojo", 0), 0.0, 0, 0.0, 0);
					DestroyObject(GetObjectByTag("Handmaiden", 0), 0.0, 0, 0.0, 0);
					SetGlobalNumber("000_siscut1", 1);
					SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
					SetFadeUntilScript();
					object object55 = CreateObject(1, "sister1cut", GetLocation(GetObjectByTag("wp_sister1bay_1", 0)), 0);
					object object58 = CreateObject(1, "sister2cut", GetLocation(GetObjectByTag("wp_sister2bay_1", 0)), 0);
					AssignCommand(object55, ClearAllActions());
					AssignCommand(object55, ActionStartConversation(object58, "siscut1", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
				}
				else {
					if ((GetGlobalNumber("000_atriscs1") == 2)) {
						SetGlobalNumber("000_atriscs1", 1);
						DestroyObject(GetObjectByTag("Sister1", 0), 0.0, 0, 0.0, 0);
						DestroyObject(GetObjectByTag("Sister2", 0), 0.0, 0, 0.0, 0);
						DestroyObject(GetObjectByTag("Sister3", 0), 0.0, 0, 0.0, 0);
						DestroyObject(GetObjectByTag("Sister4", 0), 0.0, 0, 0.0, 0);
						DestroyObject(GetObjectByTag("Sister5", 0), 0.0, 0, 0.0, 0);
						DestroyObject(GetObjectByTag("SisterDojo", 0), 0.0, 0, 0.0, 0);
						DestroyObject(GetObjectByTag("Handmaiden", 0), 0.0, 0, 0.0, 0);
						SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
						SetFadeUntilScript();
						object object68 = CreateObject(1, "sister1cut", GetLocation(GetObjectByTag("wp_sister1council_1", 0)), 0);
						object object71 = CreateObject(1, "sister2cut", GetLocation(GetObjectByTag("wp_sister2council_1", 0)), 0);
						object object74 = CreateObject(1, "atriscut", GetLocation(GetObjectByTag("wp_atriscouncil_1", 0)), 0);
						AssignCommand(object68, ClearAllActions());
						AssignCommand(object68, ActionStartConversation(object74, "atriscs1", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
					}
				}
			}
		}
	}
}

