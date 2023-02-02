void main() {
	object oNearestExchangeThug302_3 = GetNearestObjectByTag("ExchangeThug302_3", OBJECT_SELF, 1);
	if (((GetIsObjectValid(oNearestExchangeThug302_3) && (!IsStealthed(GetPartyLeader()))) && (GetDistanceBetween(oNearestExchangeThug302_3, GetPartyLeader()) < 10.0))) {
		AssignCommand(oNearestExchangeThug302_3, ClearAllActions());
		SetKeepStealthInDialog(1);
		AssignCommand(oNearestExchangeThug302_3, ActionStartConversation(GetPartyLeader(), "thgyll01", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
	else {
		if (GetIsObjectValid(oNearestExchangeThug302_3)) {
			AssignCommand(oNearestExchangeThug302_3, ClearAllActions());
			SetKeepStealthInDialog(1);
			AssignCommand(oNearestExchangeThug302_3, ActionStartConversation(GetPartyLeader(), "thgyll03", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}
