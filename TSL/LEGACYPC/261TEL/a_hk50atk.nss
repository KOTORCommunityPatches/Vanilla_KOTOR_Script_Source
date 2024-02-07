void main() {
	DelayCommand(0.2, ChangeToStandardFaction(GetObjectByTag("HK501", 0), 1));
	DelayCommand(0.2, AssignCommand(GetObjectByTag("HK501", 0), ActionAttack(GetFirstPC(), 0)));
	DelayCommand(0.2, ChangeToStandardFaction(GetObjectByTag("HK502", 0), 1));
	DelayCommand(0.2, AssignCommand(GetObjectByTag("HK502", 0), ActionAttack(GetFirstPC(), 0)));
	DelayCommand(0.2, ChangeToStandardFaction(GetObjectByTag("HK503", 0), 1));
	DelayCommand(0.2, AssignCommand(GetObjectByTag("HK503", 0), ActionAttack(GetFirstPC(), 0)));
}

