void main() {
	int nParam1 = GetScriptParameter(1);
	object oPC = GetFirstPC();
	object o711_1st_door = GetObjectByTag("711_1st_door", 0);
	switch (nParam1) {
		case 0:
			{
				effect effect1 = EffectMovementSpeedDecrease(50);
				AssignCommand(oPC, ActionMoveToObject(o711_1st_door, 0, 1.0));
			}
			break;
		case 1:
			DelayCommand(4.5, AssignCommand(oPC, ActionOpenDoor(o711_1st_door)));
			break;
		case 2:
			DelayCommand(1.5, AssignCommand(oPC, ActionMoveToObject(GetObjectByTag("wp_1st_pc", 0), 0, 1.0)));
			SetGlobalFadeOut(2.0, 1.0, 0.0, 0.0, 0.0);
			break;
	}
}
