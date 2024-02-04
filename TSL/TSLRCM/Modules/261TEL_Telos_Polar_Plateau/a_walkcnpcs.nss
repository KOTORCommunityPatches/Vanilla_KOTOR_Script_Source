void main() {
	object oKreia = GetObjectByTag("Kreia", 0);
	object oAtton = GetObjectByTag("Atton", 0);
	object oPC = GetFirstPC();
	object oBaoDur = GetObjectByTag("BaoDur", 0);
	object oHK501 = GetObjectByTag("HK501", 0);
	DelayCommand(1.0, AssignCommand(oKreia, ClearAllActions()));
	DelayCommand(1.0, AssignCommand(oKreia, PlayAnimation(0, 1.0, 2.0)));
	DelayCommand(1.0, AssignCommand(oKreia, SetFacingPoint(GetPosition(oHK501))));
	AssignCommand(oAtton, ClearAllActions());
	AssignCommand(oAtton, PlayAnimation(0, 1.0, 2.0));
	AssignCommand(oAtton, SetFacingPoint(GetPosition(oHK501)));
	AssignCommand(oPC, ClearAllActions());
	AssignCommand(oPC, PlayAnimation(0, 1.0, 2.0));
	DelayCommand(2.0, AssignCommand(oPC, ActionForceMoveToObject(GetObjectByTag("WP_PC_1", 0), 0, 1.0, 30.0)));
}