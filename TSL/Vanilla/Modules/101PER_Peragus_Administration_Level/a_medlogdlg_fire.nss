void main() {
	object oMedCom = GetObjectByTag("MedCom", 0);
	if (GetIsObjectValid(oMedCom)) {
		DisableVideoEffect();
		SetGlobalFadeOut(0.0, 0.5, 0.0, 0.0, 0.0);
		SetFadeUntilScript();
		AssignCommand(oMedCom, ClearAllActions());
		AssignCommand(oMedCom, ActionStartConversation(GetPCSpeaker(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
	DelayCommand(0.1, DestroyObject(GetObjectByTag("MedOff", 0), 0.0, 1, 0.0, 0));
}
