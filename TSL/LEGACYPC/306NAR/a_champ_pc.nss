void main() {
	object oChamp = GetObjectByTag("champ", 0);
	AssignCommand(oChamp, ClearAllActions());
	AssignCommand(oChamp, ActionForceMoveToObject(GetFirstPC(), 0, 1.0, 30.0));
	DelayCommand(2.0, AssignCommand(oChamp, ActionForceMoveToObject(GetFirstPC(), 0, 1.0, 30.0)));
}

