void main() {
	DelayCommand(0.1, ChangeToStandardFaction(GetObjectByTag("203_thugd2", 0), 1));
	DelayCommand(0.2, AssignCommand(GetObjectByTag("203_thugd2", 0), ActionAttack(GetFirstPC(), 0)));
}

