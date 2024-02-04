void main() {
	int int1;
	int int2 = 25;
	int1 = 0;
	while ((int1 <= int2)) {
		{
			object oSerrocoThugCommon = GetObjectByTag("SerrocoThugCommon", int1);
			object oSerrocoThug1 = GetObjectByTag("SerrocoThug1", int1);
			object oSerrocoThugVeteran = GetObjectByTag("SerrocoThugVeteran", int1);
			if (GetIsObjectValid(oSerrocoThugCommon)) {
				AssignCommand(oSerrocoThugCommon, ClearAllActions());
				AssignCommand(oSerrocoThugCommon, ActionForceMoveToObject(GetObjectByTag("WP_serroco_1", 0), 1, 1.0, 30.0));
			}
			if (GetIsObjectValid(oSerrocoThug1)) {
				AssignCommand(oSerrocoThug1, ClearAllActions());
				AssignCommand(oSerrocoThug1, ActionForceMoveToObject(GetObjectByTag("WP_serroco_1", 0), 1, 1.0, 30.0));
			}
			if (GetIsObjectValid(oSerrocoThugVeteran)) {
				AssignCommand(oSerrocoThugVeteran, ClearAllActions());
				AssignCommand(oSerrocoThugVeteran, ActionForceMoveToObject(GetObjectByTag("WP_serroco_1", 0), 1, 1.0, 30.0));
			}
		}
		(int1++);
	}
	AssignCommand(GetObjectByTag("SerrocoLeader", 0), ClearAllActions());
	AssignCommand(GetObjectByTag("SerrocoLeader", 0), ActionForceMoveToObject(GetObjectByTag("WP_serroco_1", 0), 1, 1.0, 30.0));
	SetGlobalNumber("302NAR_Serroco", 2);
	if ((((((GetJournalEntry("30004") == 43) || (GetJournalEntry("30004") == 41)) || (GetJournalEntry("30004") == 42)) || (GetJournalEntry("30004") == 40)) || (GetJournalEntry("30004") == 44))) {
		return;
	}
	else {
		AddJournalQuestEntry("30004", 21, 1);
	}
}