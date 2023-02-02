void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			SetGlobalFadeIn(0.0, 0.0, 0.0, 0.0, 0.0);
			{
				string string1 = "WP_czerka_";
				int int3 = 0;
				while ((int3 < 3)) {
				{
					string string2 = (string1 + IntToString((int3 + 1)));
					object object1 = GetObjectByTag(string2, 0);
					object oNPC = GetPartyMemberByIndex(int3);
					if ((GetIsObjectValid(oNPC) && GetIsObjectValid(object1))) {
						AssignCommand(oNPC, ClearAllActions());
						AssignCommand(oNPC, ActionJumpToLocation(GetLocation(object1)));
					}
				}
					(int3++);
				}
				SetGlobalFadeIn(0.5, 0.5, 0.0, 0.0, 0.0);
			}
			break;
		case 2:
			SetGlobalFadeIn(0.0, 0.0, 0.0, 0.0, 0.0);
			{
				string string4 = "WP_ith_";
				int int6 = 0;
				while ((int6 < 3)) {
				{
					string string5 = (string4 + IntToString((int6 + 1)));
					object object5 = GetObjectByTag(string5, 0);
					object object7 = GetPartyMemberByIndex(int6);
					if ((GetIsObjectValid(object7) && GetIsObjectValid(object5))) {
						AssignCommand(object7, ClearAllActions());
						AssignCommand(object7, ActionJumpToLocation(GetLocation(object5)));
					}
				}
					(int6++);
				}
				SetGlobalFadeIn(0.5, 0.5, 0.0, 0.0, 0.0);
			}
			break;
		default:
			AurPostString("ERROR: 201 Shuttle error, should not bere here.", 5, 15, 20.0);
	}
}
