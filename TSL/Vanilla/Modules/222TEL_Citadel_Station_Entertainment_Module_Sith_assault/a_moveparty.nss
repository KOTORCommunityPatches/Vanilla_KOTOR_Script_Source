void main() {
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	object oNPC;
	object object2;
	int int1 = 1;
	while ((int1 < 4)) {
		{
			string string1 = ("WP_party_" + IntToString(int1));
			object2 = GetObjectByTag(string1, 0);
			oNPC = GetPartyMemberByIndex((int1 - 1));
			AssignCommand(oNPC, ClearAllActions());
			AssignCommand(oNPC, ActionJumpToLocation(GetLocation(object2)));
		}
		(int1++);
	}
	SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
}
