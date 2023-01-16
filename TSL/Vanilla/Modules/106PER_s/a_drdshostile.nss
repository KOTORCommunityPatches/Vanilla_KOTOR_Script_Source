void main() {
	DelayCommand(0.2, ChangeToStandardFaction(GetObjectByTag("106DROID1", 0), 1));
	DelayCommand(0.2, AssignCommand(GetObjectByTag("106DROID1", 0), ActionAttack(GetFirstPC(), 0)));
	DelayCommand(0.2, ChangeToStandardFaction(GetObjectByTag("106DROID2", 0), 1));
	DelayCommand(0.2, AssignCommand(GetObjectByTag("106DROID2", 0), ActionAttack(GetFirstPC(), 0)));
}

