void main() {
	object oDarthNihilus = GetObjectByTag("DarthNihilus", 0);
	object oPC = GetFirstPC();
	object oVisasMarr = GetObjectByTag("VisasMarr", 0);
	object oMand = GetObjectByTag("Mand", 0);
	DelayCommand(2.0, AssignCommand(oDarthNihilus, ActionDoCommand(SetFacing(0.0))));
	DelayCommand(3.0, AssignCommand(oDarthNihilus, ActionPlayAnimation(121, 1.0, 2.0)));
	DelayCommand(3.0, AssignCommand(oDarthNihilus, ActionWait(4.0)));
	DelayCommand(3.0, AssignCommand(GetFirstPC(), ActionPlayAnimation(10460, 1.0, 3.0)));
	DelayCommand(3.0, AssignCommand(GetObjectByTag("VisasMarr", 0), ActionPlayAnimation(10460, 1.0, 3.0)));
	DelayCommand(3.0, AssignCommand(oMand, ActionPlayAnimation(10460, 1.0, 3.0)));
	DelayCommand(6.0, AssignCommand(oDarthNihilus, ActionMoveToLocation(GetLocation(GetObjectByTag("sp_nihilus", 0)), 0)));
	{
		effect effect1 = EffectCutSceneStunned();
		DelayCommand(4.0, ApplyEffectToObject(2, effect1, oPC, 0.0));
		DelayCommand(4.0, ApplyEffectToObject(2, effect1, oVisasMarr, 0.0));
		DelayCommand(4.0, ApplyEffectToObject(2, effect1, oMand, 0.0));
		SetLockOrientationInDialog(oPC, 1);
		SetLockOrientationInDialog(oDarthNihilus, 1);
	}
}

