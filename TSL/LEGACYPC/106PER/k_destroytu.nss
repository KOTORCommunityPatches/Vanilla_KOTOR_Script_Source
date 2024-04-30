void main() {
	object oSpeaker = GetPCSpeaker();
	object oInvisDecon = GetObjectByTag("InvisDecon", 0);
	object oDecCon = GetObjectByTag("DecCon", 0);
	effect efVisual = EffectVisualEffect(3003, 0);
	location location1 = GetLocation(oDecCon);
	ApplyEffectAtLocation(0, efVisual, location1, 0.0);
	DestroyObject(oInvisDecon, 0.0, 0, 0.0, 0);
}

