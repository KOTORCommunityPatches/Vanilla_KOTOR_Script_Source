void main() {
	
	object oSpeaker = GetPCSpeaker();
	object oVaporators = GetItemPossessedBy(oSpeaker, "tat17_vaporator");
	
	ActionTakeItem(oVaporators, oSpeaker);
}