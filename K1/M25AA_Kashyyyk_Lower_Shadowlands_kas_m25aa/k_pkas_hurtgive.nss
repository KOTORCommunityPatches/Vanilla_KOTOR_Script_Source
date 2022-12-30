void main() {
	
	object oPC = GetPCSpeaker();
	object oCrystal = GetItemPossessedBy(OBJECT_SELF, "kas25_wookcrysta");
	
	ActionGiveItem(oCrystal, oPC);
}
