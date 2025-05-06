void main() {
	AurPostString("k_destroytu: Console was hit", 5, 15, 10.0);
	object oDroCon = GetObjectByTag("DroCon", 0);
	effect efVisual = EffectVisualEffect(3003, 0);
	location location1 = GetLocation(oDroCon);
	ApplyEffectAtLocation(0, efVisual, location1, 0.0);
	object o@@@ = GetObjectByTag("@@@", 0);
	if (GetIsObjectValid(o@@@)) {
		AssignCommand(GetFirstPC(), ClearAllActions());
		AssignCommand(o@@@, ClearAllActions());
		AssignCommand(o@@@, ActionStartConversation(GetPCSpeaker(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
	DestroyObject(oDroCon, 0.0, 1, 0.0, 0);
}

