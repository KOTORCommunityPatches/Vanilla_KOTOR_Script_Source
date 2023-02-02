void main() {
	ChangeToStandardFaction(GetObjectByTag("Overseer", 0), 1);
	int int1;
	int int2 = 25;
	int1 = 0;
	while ((int1 <= int2)) {
		{
			object oExchangeThug302_3 = GetObjectByTag("ExchangeThug302_3", int1);
			object oExchangeThug302_4 = GetObjectByTag("ExchangeThug302_4", int1);
			if (GetIsObjectValid(oExchangeThug302_3)) {
				ChangeToStandardFaction(oExchangeThug302_3, 1);
			}
			if (GetIsObjectValid(oExchangeThug302_4)) {
				ChangeToStandardFaction(oExchangeThug302_4, 1);
			}
		}
		(int1++);
	}
	ChangeToStandardFaction(GetObjectByTag("ExchangeThug302_1", 0), 1);
	ChangeToStandardFaction(GetObjectByTag("ExchangeThug302_2", 0), 1);
	object oPersonal_guard2 = GetObjectByTag("personal_guard1", 0);
	if (GetIsObjectValid(oPersonal_guard2)) {
		ChangeToStandardFaction(oPersonal_guard2, 1);
	}
	oPersonal_guard2 = GetObjectByTag("personal_guard2", 0);
	if (GetIsObjectValid(oPersonal_guard2)) {
		ChangeToStandardFaction(oPersonal_guard2, 1);
	}
}
