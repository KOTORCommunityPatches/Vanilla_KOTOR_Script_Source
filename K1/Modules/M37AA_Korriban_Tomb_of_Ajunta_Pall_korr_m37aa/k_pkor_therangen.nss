// Byte code does not match

#include "k_inc_utility"
 
 int GrenadeCheck() {
 	
 	object oItem = GetInventoryDisturbItem();
 	string sItemTag = GetTag(oItem);
 	
 	if (((((((((((((((((((sItemTag == "G_w_StunGren01") ||
 	(sItemTag == "g_w_adhsvgren001")) ||
 	(sItemTag == "g_w_fraggren01")) ||
 	(sItemTag == "G_w_SonicGren01")) ||
 	(sItemTag == "G_w_ThermlDet01")) ||
 	(sItemTag == "G_W_FIREGREN001")) ||
 	(sItemTag == "G_I_TRAPKIT002")) ||
 	(sItemTag == "G_I_TRAPKIT005")) ||
 	(sItemTag == "G_I_TRAPKIT011")) ||
 	(sItemTag == "G_I_TRAPKIT008")) ||
 	(sItemTag == "G_I_TRAPKIT003")) ||
 	(sItemTag == "G_I_TRAPKIT006")) ||
 	(sItemTag == "G_I_TRAPKIT012")) ||
 	(sItemTag == "G_I_TRAPKIT009")) ||
 	(sItemTag == "G_I_TRAPKIT001")) ||
 	(sItemTag == "G_I_TRAPKIT004")) ||
 	(sItemTag == "G_I_TRAPKIT010")) ||
 	(sItemTag == "G_I_TRAPKIT007")))
 		{
 			return TRUE;
 		}
 	else
 		{
 			return FALSE;
 		}
 }
 
 void main() {
 	
 	object oInvItem = GetInventoryDisturbItem();
 	
 	if (((GetInventoryDisturbType() == INVENTORY_DISTURB_TYPE_ADDED) && GrenadeCheck()))
 		{
 			ChangeFactionByFaction(STANDARD_FACTION_HOSTILE_1, STANDARD_FACTION_NEUTRAL);
 			DestroyObject(oInvItem);
 			PauseGame(FALSE);
 			UT_NPC_InitConversation("kor37_firescene");
 		}
 }