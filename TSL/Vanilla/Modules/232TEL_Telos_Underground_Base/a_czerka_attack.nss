void main() {
	DelayCommand(0.1, ChangeToStandardFaction(GetObjectByTag("Salvage", 0), 1));
	DelayCommand(0.2, AssignCommand(GetObjectByTag("Salvage", 0), ActionAttack(GetFirstPC(), 0)));
}

