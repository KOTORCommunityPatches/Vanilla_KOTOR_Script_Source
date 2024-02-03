void main() {
	DelayCommand(0.2, ChangeToStandardFaction(GetObjectByTag("HK50T1", 0), 1));
	DelayCommand(0.2, AssignCommand(GetObjectByTag("HK50T1", 0), ActionAttack(GetFirstPC(), 0)));
	DelayCommand(0.2, ChangeToStandardFaction(GetObjectByTag("HK50T2", 0), 1));
	DelayCommand(0.2, AssignCommand(GetObjectByTag("HK50T2", 0), ActionAttack(GetFirstPC(), 0)));
	DelayCommand(0.2, ChangeToStandardFaction(GetObjectByTag("HK50T3", 0), 1));
	DelayCommand(0.2, AssignCommand(GetObjectByTag("HK50T3", 0), ActionAttack(GetFirstPC(), 0)));
}

