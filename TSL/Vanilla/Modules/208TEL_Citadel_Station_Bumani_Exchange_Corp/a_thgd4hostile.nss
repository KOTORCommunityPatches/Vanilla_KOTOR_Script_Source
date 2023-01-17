void main() {
	DelayCommand(0.1, ChangeToStandardFaction(GetObjectByTag("203_thugd4", 0), 1));
	DelayCommand(0.2, AssignCommand(GetObjectByTag("203_thugd4", 0), ActionAttack(GetFirstPC(), 0)));
}

