void main() {
	DelayCommand(0.2, ChangeToStandardFaction(OBJECT_SELF, 1));
	DelayCommand(0.3, ExecuteScript("a_force_combat", OBJECT_SELF, 0xFFFFFFFF));
}
