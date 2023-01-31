void main() {
	
	object oPC = GetFirstPC();
	object oHelm = GetItemPossessedBy(oPC, "kas25_mandhelmet");
	
	if (GetIsObjectValid(oHelm) == TRUE)
		{
			CreateItemOnObject("g_w_vbroshort03", oPC, 1);
			DestroyObject(oHelm);
		}
}