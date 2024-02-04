void main() {
	AssignCommand(GetObjectByTag("Coorta", 0), ClearAllEffects());
	AssignCommand(GetObjectByTag("CoortaThug1", 0), ClearAllEffects());
	AssignCommand(GetObjectByTag("CoortaThug2", 0), ClearAllEffects());
	DestroyObject(GetObjectByTag("Coorta", 0), 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("CoortaThug1", 0), 0.0, 0, 0.0, 0);
	DestroyObject(GetObjectByTag("CoortaThug2", 0), 0.0, 0, 0.0, 0);
	if ((OBJECT_INVALID == GetObjectByTag("Coorta", 0))) {
		AurPostString("Dammit...", 15, 15, 3.0);
	}
	object oHoloDroid = GetObjectByTag("HoloDroid", 0);
	object object10 = GetObjectByTag("HoloDroid", 1);
	object object12 = GetObjectByTag("HoloDroid", 2);
	DestroyObject(oHoloDroid, 0.0, 0, 0.0, 0);
	DestroyObject(object10, 0.0, 0, 0.0, 0);
	DestroyObject(object12, 0.0, 0, 0.0, 0);
}