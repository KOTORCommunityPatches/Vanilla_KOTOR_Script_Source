void main() {
	
	object oPC = GetFirstPC();
	object oItem = GetModuleItemAcquired();
	
	if (GetTag(oItem) == "ptar_shieldcodes" && GetIsObjectValid(GetItemPossessedBy(oPC, "ptar_shieldcodes")))
		{
			AddJournalQuestEntry("tar_escape", 25);
		}
}
