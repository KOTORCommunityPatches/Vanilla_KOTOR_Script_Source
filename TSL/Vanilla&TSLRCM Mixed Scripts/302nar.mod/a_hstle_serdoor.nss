void main() {
	int int1 = GetJournalEntry("30003");
	if ((((((int1 != 21) && (int1 != 22)) && (int1 != 11)) && (GetGlobalNumber("302NAR_Serroco") != 2)) && (!IsStealthed(GetPartyLeader())))) {
		int int5;
		int int6 = 25;
		object oNearestSerrocoThugCommon = GetNearestObjectByTag("SerrocoThugCommon", OBJECT_SELF, 1);
		AssignCommand(oNearestSerrocoThugCommon, ClearAllActions());
		AssignCommand(oNearestSerrocoThugCommon, ActionBarkString(102819));
		int5 = 0;
		while ((int5 <= int6)) {
			{
				object oSerrocoThugCommon = GetObjectByTag("SerrocoThugCommon", int5);
				object oSerrocoThug1 = GetObjectByTag("SerrocoThug1", int5);
				if (GetIsObjectValid(oSerrocoThugCommon)) {
					AssignCommand(oSerrocoThugCommon, ClearAllActions());
					ChangeToStandardFaction(oSerrocoThugCommon, 1);
				}
				if (GetIsObjectValid(oSerrocoThug1)) {
					AssignCommand(oSerrocoThug1, ClearAllActions());
					ChangeToStandardFaction(oSerrocoThug1, 1);
				}
			}
			(int5++);
		}
		int int9 = 4;
		int5 = 0;
		while ((int5 <= int9)) {
			{
				object oSerrocoThugVeteran = GetObjectByTag("SerrocoThugVeteran", int5);
				if (GetIsObjectValid(oSerrocoThugVeteran)) {
					AssignCommand(oSerrocoThugVeteran, ClearAllActions());
					ChangeToStandardFaction(oSerrocoThugVeteran, 1);
				}
			}
			(int5++);
		}
		AssignCommand(GetObjectByTag("SerrocoLeader", 0), ClearAllActions());
		ChangeToStandardFaction(GetObjectByTag("SerrocoLeader", 0), 1);
		SetGlobalNumber("302NAR_Serroco", 2);
	}
}

