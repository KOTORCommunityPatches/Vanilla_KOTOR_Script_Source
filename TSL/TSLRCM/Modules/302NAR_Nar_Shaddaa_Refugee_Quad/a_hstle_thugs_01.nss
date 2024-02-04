void main() {
	ChangeToStandardFaction(GetObjectByTag("ExchangeThug302_1", 0), 1);
	ChangeToStandardFaction(GetObjectByTag("ExchangeThug302_2", 0), 1);
	ActionAttack(GetObjectByTag("ExchangeThug302_1", 0), 0);
	ActionAttack(GetObjectByTag("ExchangeThug302_2", 0), 0);
}