void main() {
	DelayCommand(0.2, ChangeToStandardFaction(GetObjectByTag("Rutum", 0), 1));
	DelayCommand(0.2, AssignCommand(GetObjectByTag("Rutum", 0), ActionAttack(GetFirstPC(), 0)));
}