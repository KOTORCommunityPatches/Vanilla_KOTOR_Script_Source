void main() {
	object oKHoundA1 = GetObjectByTag("KHoundA1", 0);
	object oKHoundA2 = GetObjectByTag("KHoundA2", 0);
	object oKHoundA3 = GetObjectByTag("KHoundA3", 0);
	DelayCommand(0.3, ChangeToStandardFaction(oKHoundA1, 1));
	DelayCommand(0.3, ChangeToStandardFaction(oKHoundA2, 1));
	DelayCommand(0.3, ChangeToStandardFaction(oKHoundA3, 1));
}