void main() {
	AurPostString("k_destroytu: Console was hit", 5, 15, 10.0);
	object oTurboConsole = GetObjectByTag("TurboConsole", 0);
	effect efVisual = EffectVisualEffect(3003, 0);
	location location1 = GetLocation(oTurboConsole);
	ApplyEffectAtLocation(0, efVisual, location1, 0.0);
	object oDestroyTu = GetObjectByTag("DestroyTu", 0);
	if (GetIsObjectValid(oDestroyTu)) {
		AssignCommand(GetFirstPC(), ClearAllActions());
		AssignCommand(oDestroyTu, ClearAllActions());
		AssignCommand(oDestroyTu, ActionStartConversation(GetPCSpeaker(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
	DestroyObject(oTurboConsole, 0.0, 1, 0.0, 0);
}