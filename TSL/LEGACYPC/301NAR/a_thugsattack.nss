void main() {
	DelayCommand(0.2, ChangeToStandardFaction(GetObjectByTag("ExchangeThug1", 0), 1));
	DelayCommand(0.2, AssignCommand(GetObjectByTag("ExchangeThug1", 0), ActionAttack(GetFirstPC(), 0)));
	DelayCommand(0.2, ChangeToStandardFaction(GetObjectByTag("ExchangeThug2", 0), 1));
	DelayCommand(0.2, AssignCommand(GetObjectByTag("ExchangeThug2", 0), ActionAttack(GetFirstPC(), 0)));
}

