void main() {
	object o231_warbot2 = GetObjectByTag("231_mercdm", 0);
	DelayCommand(0.1, ChangeToStandardFaction(o231_warbot2, 1));
	DelayCommand(0.2, AssignCommand(o231_warbot2, ActionAttack(GetFirstPC(), 0)));
	o231_warbot2 = GetObjectByTag("231_warbot", 0);
	DelayCommand(0.1, ChangeToStandardFaction(o231_warbot2, 1));
	DelayCommand(0.2, AssignCommand(o231_warbot2, ActionAttack(GetFirstPC(), 0)));
	o231_warbot2 = GetObjectByTag("231_warbot2", 0);
	DelayCommand(0.1, ChangeToStandardFaction(o231_warbot2, 1));
	DelayCommand(0.2, AssignCommand(o231_warbot2, ActionAttack(GetFirstPC(), 0)));
}
