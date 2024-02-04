void main() {
	object o233_warbot2 = GetObjectByTag("233_mercdm", 0);
	DelayCommand(0.1, ChangeToStandardFaction(o233_warbot2, 1));
	DelayCommand(0.2, AssignCommand(o233_warbot2, ActionAttack(GetFirstPC(), 0)));
	o233_warbot2 = GetObjectByTag("233_warbot", 0);
	DelayCommand(0.1, ChangeToStandardFaction(o233_warbot2, 1));
	DelayCommand(0.2, AssignCommand(o233_warbot2, ActionAttack(GetFirstPC(), 0)));
	o233_warbot2 = GetObjectByTag("233_warbot2", 0);
	DelayCommand(0.1, ChangeToStandardFaction(o233_warbot2, 1));
	DelayCommand(0.2, AssignCommand(o233_warbot2, ActionAttack(GetFirstPC(), 0)));
}