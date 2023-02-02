void main() {
	object oKolTank = GetObjectByTag("KolTank", 0);
	if ((GetIsObjectValid(oKolTank) && (!GetLocalBoolean(oKolTank, 30)))) {
		SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
		SetFadeUntilScript();
		object oPC = GetFirstPC();
		AssignCommand(oPC, ClearAllActions());
		object oInv_talker = GetObjectByTag("inv_talker", 0);
		if (GetIsObjectValid(oInv_talker)) {
			DelayCommand(1.0, AssignCommand(oInv_talker, ActionStartConversation(oPC, "101Awake", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
		}
		SetLocalBoolean(oKolTank, 30, 1);
	}
}
