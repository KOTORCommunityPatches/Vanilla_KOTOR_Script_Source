void main() {
	object oGeIthorian = GetObjectByTag("GeIthorian", 0);
	BarkString(OBJECT_SELF, 113012);
	DelayCommand(0.1, ChangeToStandardFaction(oGeIthorian, 1));
}

