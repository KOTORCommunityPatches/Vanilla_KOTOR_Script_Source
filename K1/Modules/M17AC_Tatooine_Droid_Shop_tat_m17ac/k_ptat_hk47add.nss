void main() {
	
	AddAvailableNPCByTemplate(NPC_HK_47, "p_hk47");
	
	SetGlobalFadeOut(0.0, 1.0);
	SetGlobalFadeIn(1.0, 2.0);
	
	DelayCommand(1.0, ShowPartySelectionGUI());
	
	DelayCommand(1.5, DestroyObject(OBJECT_SELF, 0.0, TRUE));
}
