void main() {
	object o231_merc03a = GetObjectByTag("231_mercc", 0);
	DelayCommand(0.1, ChangeToStandardFaction(o231_merc03a, 1));
	DelayCommand(0.2, AssignCommand(o231_merc03a, ActionAttack(GetFirstPC(), 0)));
	o231_merc03a = GetObjectByTag("231_merc01a", 0);
	DelayCommand(0.1, ChangeToStandardFaction(o231_merc03a, 1));
	DelayCommand(0.2, AssignCommand(o231_merc03a, ActionAttack(GetFirstPC(), 0)));
	o231_merc03a = GetObjectByTag("231_merc01a", 1);
	DelayCommand(0.1, ChangeToStandardFaction(o231_merc03a, 1));
	DelayCommand(0.2, AssignCommand(o231_merc03a, ActionAttack(GetFirstPC(), 0)));
	o231_merc03a = GetObjectByTag("231_merc02a", 0);
	DelayCommand(0.1, ChangeToStandardFaction(o231_merc03a, 1));
	DelayCommand(0.2, AssignCommand(o231_merc03a, ActionAttack(GetFirstPC(), 0)));
	o231_merc03a = GetObjectByTag("231_merc03a", 0);
	DelayCommand(0.1, ChangeToStandardFaction(o231_merc03a, 1));
	DelayCommand(0.2, AssignCommand(o231_merc03a, ActionAttack(GetFirstPC(), 0)));
}