void main() {
	AurPostString("k_destroydorm: Console was hit", 5, 15, 10.0);
	object oShiftConsole = GetObjectByTag("ShiftConsole", 0);
	effect efVisual = EffectVisualEffect(3003, 0);
	location location1 = GetLocation(OBJECT_SELF);
	ApplyEffectAtLocation(0, efVisual, location1, 0.0);
	object oDestroyDorm = GetObjectByTag("DestroyDorm", 0);
	if (GetIsObjectValid(oDestroyDorm)) {
		AssignCommand(oDestroyDorm, ClearAllActions());
		AssignCommand(oDestroyDorm, ActionStartConversation(GetPCSpeaker(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
	DestroyObject(oShiftConsole, 0.2, 1, 0.0, 0);
}

