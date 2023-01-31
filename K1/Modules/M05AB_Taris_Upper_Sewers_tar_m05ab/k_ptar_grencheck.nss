#include "k_inc_debug"

int StartingConditional() {
	
	object oPile = GetObjectByTag("tar05_corpsepile", 0);
	object oInvItem;
	int nInvNum;
	int nGrenCheck;
	
	nGrenCheck = (GetIsObjectValid(GetItemPossessedBy(oPile, "g_w_fraggren01")) || GetIsObjectValid(GetItemPossessedBy(oPile, "G_w_ThermlDet01")) ||
				GetIsObjectValid(GetItemPossessedBy(oPile, "G_w_StunGren01")) || GetIsObjectValid(GetItemPossessedBy(oPile, "g_w_poisngren01")) ||
				GetIsObjectValid(GetItemPossessedBy(oPile, "G_w_SonicGren01")) || GetIsObjectValid(GetItemPossessedBy(oPile, "g_w_adhsvgren001")) ||
				GetIsObjectValid(GetItemPossessedBy(oPile, "G_W_CRYOBGREN001")) || GetIsObjectValid(GetItemPossessedBy(oPile, "G_W_FIREGREN001")) ||
				GetIsObjectValid(GetItemPossessedBy(oPile, "g_w_iongren01")));
	
	nInvNum = 0;
	
	oInvItem = GetFirstItemInInventory(oPile);
	
	while (GetIsObjectValid(oInvItem))
		{
			Db_MyPrintString(("EATING - " + GetTag(oInvItem)), 5, (5 + nInvNum), 5.0);
			
			DestroyObject(oInvItem);
			oInvItem = GetNextItemInInventory(oPile);
			(nInvNum++);
		}
	return nGrenCheck;
}