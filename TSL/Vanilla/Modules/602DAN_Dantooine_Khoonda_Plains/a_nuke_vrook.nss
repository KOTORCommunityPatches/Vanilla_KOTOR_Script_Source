void main() {
	object oNpc_vrook = GetObjectByTag("npc_vrook", 0);
	if (GetIsObjectValid(oNpc_vrook)) {
		DestroyObject(oNpc_vrook, 0.0, 0, 0.0, 0);
	}
}
