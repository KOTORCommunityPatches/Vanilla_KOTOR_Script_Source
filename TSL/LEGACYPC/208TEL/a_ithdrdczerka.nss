void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		object oCzerkaM = GetObjectByTag("CzerkaM", 0);
		SetLocked(oCzerkaM, 0);
		DelayCommand(0.1, AssignCommand(oCzerkaM, ActionOpenDoor(oCzerkaM)));
		DelayCommand(1.0, AssignCommand(GetObjectByTag("DrdIth", 0), ActionMoveToObject(GetObjectByTag("wp_czerkamainframe", 0), 0, 1.0)));
		DelayCommand(8.5, AssignCommand(oCzerkaM, ActionCloseDoor(oCzerkaM)));
		DelayCommand(8.6, SetLocked(oCzerkaM, 1));
	}
	else {
		if ((nParam1 == 2)) {
			object o203_Chano = GetObjectByTag("203_Chano", 0);
			AurPostString("Move Opo", 5, 15, 10.0);
			if (GetIsObjectValid(o203_Chano)) {
				AssignCommand(o203_Chano, ClearAllActions());
				AssignCommand(o203_Chano, ActionForceMoveToObject(GetObjectByTag("wp_chanoleave", 0), 0, 1.0, 30.0));
				AssignCommand(o203_Chano, ActionJumpToObject(GetObjectByTag("wp_203_chano", 0), 1));
			}
			else {
				AurPostString("Not valid", 5, 15, 10.0);
			}
		}
		else {
			if ((nParam1 == 3)) {
				AssignCommand(GetObjectByTag("DrdIth", 0), ActionMoveToObject(GetFirstPC(), 0, 1.0));
			}
		}
	}
}

