void main() {
	RemoveNPCFromPartyToBase(1);
	AurPostString("k_ptel_shuttle: fade out 0.0", 5, 5, 5.0);
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	SetFadeUntilScript();
	StartNewModule("235TEL", "", "", "", "", "", "", "");
}

