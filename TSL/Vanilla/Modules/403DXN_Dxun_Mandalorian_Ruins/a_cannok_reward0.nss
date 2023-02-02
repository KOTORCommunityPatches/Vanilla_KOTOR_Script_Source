void main() {
	SetGlobalNumber("403DXN_CannokTrouble", 5);
	ActionTakeItem(GetObjectByTag("PhasePulseConverterAssembly", 0), GetFirstPC());
	ActionTakeItem(GetObjectByTag("PhasePulseConverterCore", 0), GetFirstPC());
	ActionTakeItem(GetObjectByTag("PhasePulseConverterPS", 0), GetFirstPC());
}
