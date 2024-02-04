void main() {
	object oAtris = GetObjectByTag("Atris", 0);
	SetCommandable(1, OBJECT_SELF);
	ClearAllEffects();
	ClearAllActions();
	SetLightsaberPowered(oAtris, 1, 0, 1);
}