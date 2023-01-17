void main() {
	object oVandar_holo = GetObjectByTag("vandar_holo", 0);
	object oVrook_holo = GetObjectByTag("vrook_holo", 0);
	DestroyObject(oVandar_holo, 0.0, 0, 0.0, 0);
	DestroyObject(oVrook_holo, 0.0, 0, 0.0, 0);
}

