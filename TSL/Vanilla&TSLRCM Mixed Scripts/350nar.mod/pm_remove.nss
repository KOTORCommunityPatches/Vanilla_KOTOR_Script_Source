void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering != GetPartyLeader())) {
		return;
	}
	SetPartyLeader(0);
	AssignCommand(oEntering, ClearAllActions());
	RemoveNPCFromPartyToBase(9);
	RemoveNPCFromPartyToBase(6);
	RemoveNPCFromPartyToBase(1);
	RemoveNPCFromPartyToBase(2);
	RemoveNPCFromPartyToBase(4);
	RemoveNPCFromPartyToBase(5);
	RemoveNPCFromPartyToBase(8);
	RemoveNPCFromPartyToBase(11);
	SetGlobalFadeOut(0.0, 1.5, 0.0, 0.0, 0.0);
	DelayCommand(1.7, StartNewModule("305NAR", "305back", "", "", "", "", "", ""));
}

