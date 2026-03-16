// Prototypes
void sub1();

void sub1() {
	int int1 = 0;
	while ((int1 < 3)) {
		{
			object oNPC = GetPartyMemberByIndex(int1);
			if (GetIsObjectValid(oNPC)) {
			string string1 = ("WP_vog_pc_" + IntToString((int1 + 1)));
			object object3 = GetObjectByTag(string1, 0);
			if (GetIsObjectValid(object3)) {
				AurPostString(((GetTag(oNPC) + " jump to WP: ") + string1), 5, (18 + int1), 10.0);
				AssignCommand(oNPC, ClearAllActions());
				AssignCommand(oNPC, ActionJumpToObject(object3, 1));
			}
			}
		}
		(int1++);
	}
}

void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetPartyLeader())) {
		if ((!GetGlobalBoolean("303NAR_Kath_Asleep"))) {
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			SetFadeUntilScript();
			sub1();
			object oKathVogga = GetObjectByTag("KathVogga", 0);
			SetLocalBoolean(oKathVogga, 31, 1);
			SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0);
			AssignCommand(oKathVogga, ClearAllActions());
			DelayCommand(0.2, AssignCommand(oKathVogga, ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
		}
		else {
			if ((!GetGlobalBoolean("303NAR_Vogga_Asleep"))) {
				SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
				SetFadeUntilScript();
				sub1();
				object oVogga = GetObjectByTag("Vogga", 0);
				SetLocalBoolean(oVogga, 31, 1);
				SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0);
				AssignCommand(oVogga, ClearAllActions());
				DelayCommand(0.2, AssignCommand(oVogga, ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
			}
		}
	}
}

