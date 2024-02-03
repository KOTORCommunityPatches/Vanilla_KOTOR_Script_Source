void main() {
	DelayCommand(0.1, AssignCommand(GetObjectByTag("HK50Vic", 0), ClearAllActions()));
	DelayCommand(0.2, ChangeToStandardFaction(GetObjectByTag("HK50M1", 0), 1));
	DelayCommand(0.2, AssignCommand(GetObjectByTag("HK50M1", 0), ActionAttack(GetFirstPC(), 0)));
	DelayCommand(0.2, ChangeToStandardFaction(GetObjectByTag("HK50M2", 0), 1));
	DelayCommand(0.2, AssignCommand(GetObjectByTag("HK50M2", 0), ActionAttack(GetFirstPC(), 0)));
	DelayCommand(0.2, ChangeToStandardFaction(GetObjectByTag("HK50M3", 0), 1));
	DelayCommand(0.2, AssignCommand(GetObjectByTag("HK50M3", 0), ActionAttack(GetFirstPC(), 0)));
}

