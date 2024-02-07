void main() {
	ClearAllActions();
	DelayCommand(0.2, ChangeToStandardFaction(GetObjectByTag("Atton", 0), 1));
	DelayCommand(0.2, AssignCommand(GetObjectByTag("Atton", 0), ActionAttack(GetFirstPC(), 0)));
}

