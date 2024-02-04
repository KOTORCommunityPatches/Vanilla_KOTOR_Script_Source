void main() {
	DelayCommand(0.2, ChangeToStandardFaction(GetObjectByTag("Sister1", 0), 1));
	DelayCommand(0.2, AssignCommand(GetObjectByTag("Sister1", 0), ActionAttack(GetFirstPC(), 0)));
	DelayCommand(0.2, ChangeToStandardFaction(GetObjectByTag("Sister2", 0), 1));
	DelayCommand(0.2, AssignCommand(GetObjectByTag("Sister2", 0), ActionAttack(GetFirstPC(), 0)));
	DelayCommand(0.2, ChangeToStandardFaction(GetObjectByTag("Sister3", 0), 1));
	DelayCommand(0.2, AssignCommand(GetObjectByTag("Sister3", 0), ActionAttack(GetFirstPC(), 0)));
	DelayCommand(0.2, ChangeToStandardFaction(GetObjectByTag("Sister4", 0), 1));
	DelayCommand(0.2, AssignCommand(GetObjectByTag("Sister4", 0), ActionAttack(GetFirstPC(), 0)));
	DelayCommand(0.2, ChangeToStandardFaction(GetObjectByTag("Sister5", 0), 1));
	DelayCommand(0.2, AssignCommand(GetObjectByTag("Sister5", 0), ActionAttack(GetFirstPC(), 0)));
	DelayCommand(0.2, ChangeToStandardFaction(GetObjectByTag("Handmaiden", 0), 1));
	DelayCommand(0.2, AssignCommand(GetObjectByTag("Handmaiden", 0), ActionAttack(GetFirstPC(), 0)));
}