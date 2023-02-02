void main() {
	ClearAllActions();
	DelayCommand(0.2, ChangeToStandardFaction(GetObjectByTag("Mk2Droid1", 0), 1));
	DelayCommand(0.2, AssignCommand(GetObjectByTag("Mk2Droid1", 0), ActionAttack(GetFirstPC(), 0)));
	DelayCommand(0.2, ChangeToStandardFaction(GetObjectByTag("Mk2Droid2", 0), 1));
	DelayCommand(0.2, AssignCommand(GetObjectByTag("Mk2Droid2", 0), ActionAttack(GetFirstPC(), 0)));
}
