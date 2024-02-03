void main() {
	object oG_merc_holo = GetObjectByTag("g_merc_holo", 0);
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	DestroyObject(oG_merc_holo, 0.0, 0, 0.0, 0);
	SetGlobalFadeIn(0.3, 2.0, 0.0, 0.0, 0.0);
}

