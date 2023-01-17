// Prototypes
void sub1();

void sub1() {
	string string1;
	object oNPC;
	int int1 = 0;
	while ((int1 < 3)) {
		oNPC = GetPartyMemberByIndex(int1);
		string1 = ("WP_party_" + IntToString(int1));
		AurPostString(string1, 5, (15 + int1), 10.0);
		if (GetIsObjectValid(oNPC)) {
			AssignCommand(oNPC, ClearAllActions());
			AssignCommand(oNPC, ActionJumpToObject(GetObjectByTag(string1, 0), 1));
		}
		(int1++);
	}
}

void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			SetGlobalFadeOut(0.0, 0.5, 0.0, 0.0, 0.0);
			SetFadeUntilScript();
			sub1();
			SetGlobalFadeIn(0.0, 0.5, 0.0, 0.0, 0.0);
			{
				object oIth_plant = GetObjectByTag("ith_plant", 0);
				if (GetIsObjectValid(oIth_plant)) {
				object oWP_ith_comp = GetObjectByTag("WP_ith_comp", 0);
				if (GetIsObjectValid(oWP_ith_comp)) {
					AssignCommand(oIth_plant, ClearAllActions());
					AssignCommand(oIth_plant, ActionForceMoveToLocation(GetLocation(oWP_ith_comp), 0, 30.0));
					vector struct2 = GetPositionFromLocation(GetLocation(GetObjectByTag("WP_ithfacing", 0)));
					AssignCommand(OBJECT_SELF, SetFacingPoint(struct2));
					AssignCommand(oIth_plant, ActionPlayAnimation(113, 1.0, 0.0));
					AssignCommand(oIth_plant, SetLockOrientationInDialog(oIth_plant, 1));
				}
				}
			}
			break;
		case 2:
			{
				object object6 = GetObjectByTag("ith_plant", 0);
				if (GetIsObjectValid(object6)) {
				object oSpeaker = GetPCSpeaker();
				if (GetIsObjectValid(oSpeaker)) {
					AssignCommand(object6, ClearAllActions());
					AssignCommand(object6, ActionMoveToObject(oSpeaker, 1, 1.0));
					vector struct4 = GetPositionFromLocation(GetLocation(oSpeaker));
					AssignCommand(OBJECT_SELF, SetFacingPoint(struct4));
					AssignCommand(object6, SetLockOrientationInDialog(object6, 1));
				}
				}
			}
			break;
		default:
			AurPostString("ERROR: plant smuggling cut scene!", 5, 15, 10.0);
			break;
	}
}

