void main() {
	object oHK50AMBUSH;
	object oWP_T3_ATTACKER0 = GetObjectByTag("WP_T3_ATTACKER0", 0);
	object oWP_T3_ATTACKER = GetObjectByTag("WP_T3_ATTACKER", 0);
	location location1 = GetLocation(oWP_T3_ATTACKER);
	if ((GetGlobalNumber("103PER_T3_Ambush") == 1)) {
		SetGlobalNumber("103PER_T3_Ambush", 2);
		oHK50AMBUSH = GetObjectByTag("HK50AMBUSH", 0);
		DelayCommand(0.1, AssignCommand(oHK50AMBUSH, ActionJumpToLocation(location1)));
		DelayCommand(0.1, AssignCommand(oHK50AMBUSH, ActionStartConversation(GetPCSpeaker(), "hk50ambpc", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
}