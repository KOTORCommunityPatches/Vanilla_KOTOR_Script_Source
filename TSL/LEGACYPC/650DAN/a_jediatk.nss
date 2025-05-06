void main() {
	DelayCommand(0.2, ChangeToStandardFaction(GetObjectByTag("Vrook", 0), 1));
	DelayCommand(0.2, AssignCommand(GetObjectByTag("Vrook", 0), ActionAttack(GetFirstPC(), 0)));
	DelayCommand(0.2, ChangeToStandardFaction(GetObjectByTag("Kavar", 0), 1));
	DelayCommand(0.2, AssignCommand(GetObjectByTag("Kavar", 0), ActionAttack(GetFirstPC(), 0)));
	DelayCommand(0.2, ChangeToStandardFaction(GetObjectByTag("ZezKaiEll", 0), 1));
	DelayCommand(0.2, AssignCommand(GetObjectByTag("ZezKaiEll", 0), ActionAttack(GetFirstPC(), 0)));
}

