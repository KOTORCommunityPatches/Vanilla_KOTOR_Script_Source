void main() {
	object oQu_deadwill;
	if (GetIsObjectValid(GetItemPossessedBy(GetFirstPC(), "qu_fakewill"))) {
		oQu_deadwill = GetObjectByTag("qu_fakewill", 0);
	}
	else {
		oQu_deadwill = GetObjectByTag("qu_deadwill", 0);
	}
	DelayCommand(0.5, DisplayDatapad(oQu_deadwill));
}