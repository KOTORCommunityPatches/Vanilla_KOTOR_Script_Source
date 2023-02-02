void main() {
	object oExchangeThug302_1 = GetObjectByTag("ExchangeThug302_1", 0);
	object oExchangeThug302_2 = GetObjectByTag("ExchangeThug302_2", 0);
	if (((((GetEnteringObject() == GetPartyLeader()) && (GetStandardFaction(oExchangeThug302_1) != 1)) && (GetStandardFaction(oExchangeThug302_2) != 1)) && (!GetLocalBoolean(OBJECT_SELF, 36)))) {
		SetLocalBoolean(OBJECT_SELF, 36, 1);
		AssignCommand(oExchangeThug302_1, ClearAllActions());
		AssignCommand(oExchangeThug302_2, ClearAllActions());
		DelayCommand(0.1, AssignCommand(oExchangeThug302_1, ActionStartConversation(GetFirstPC(), "excthg1", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
}
