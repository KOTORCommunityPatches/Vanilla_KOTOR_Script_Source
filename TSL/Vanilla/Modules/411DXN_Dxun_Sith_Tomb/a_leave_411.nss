// Prototypes
void sub1();

void sub1() {
	RemoveNPCFromPartyToBase(GetGlobalNumber("403DXN_PARTY2_NPC2"));
	RemoveNPCFromPartyToBase(GetGlobalNumber("403DXN_PARTY2_NPC3"));
	SetPartyLeader(GetGlobalNumber("403DXN_PARTY2_NPC1"));
	SwitchPlayerCharacter(0xFFFFFFFF);
}

void main() {
	SetGlobalNumber("411DXN_Complete", 1);
	DelayCommand(1.0, AssignCommand(GetFirstPC(), ClearAllEffects()));
	SetGlobalFadeOut(0.0, 2.0, 0.0, 0.0, 0.0);
	DelayCommand(2.1, sub1());
	DelayCommand(2.2, StartNewModule("403DXN", "From_411DXN2", "", "", "", "", "", ""));
}
