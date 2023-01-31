#include "k_inc_lev"

void JailBreakerSpawn() {
	
	location lPC = GetLocation(GetFirstPC());
	object oJailBreaker;
	int nGlobal = GetGlobalNumber("Lev_Escape");
	object oSlotHead = GetObjectByTag("lev40_headslot", 0);
	object oSlotBody = GetObjectByTag("lev40_bodyslot", 0);
	object oSlotHandR = GetObjectByTag("lev40_rhandslot", 0);
	object oSlotHandL = GetObjectByTag("lev40_lhandslot", 0);
	object oInvItem;
	
	GiveItem(GetItemInSlot(INVENTORY_SLOT_HEAD, GetFirstPC()), oSlotHead);
	GiveItem(GetItemInSlot(INVENTORY_SLOT_BODY, GetFirstPC()), oSlotBody);
	GiveItem(GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON, GetFirstPC()), oSlotHandR);
	GiveItem(GetItemInSlot(INVENTORY_SLOT_LEFTWEAPON, GetFirstPC()), oSlotHandL);
	
	SwitchPlayerCharacter(NPC_PLAYER);
	
	AssignCommand(GetFirstPC(), ActionJumpToObject(GetObjectByTag("lev40_wppcesc", 0), 0));
	
	switch (nGlobal)
		{
			case 1:
				oJailBreaker = CreateObject(OBJECT_TYPE_CREATURE, "p_mission", lPC);
				break;
			case 2:
				oJailBreaker = CreateObject(OBJECT_TYPE_CREATURE, "p_t3m4", lPC);
				break;
			case 3:
				oJailBreaker = CreateObject(OBJECT_TYPE_CREATURE, "p_jolee", lPC);
				break;
			case 4:
				oJailBreaker = CreateObject(OBJECT_TYPE_CREATURE, "p_cand", lPC);
				break;
			case 5:
				oJailBreaker = CreateObject(OBJECT_TYPE_CREATURE, "p_juhani", lPC);
				break;
			default:
				oJailBreaker = CreateObject(OBJECT_TYPE_CREATURE, "p_hk47", lPC);
				break;
		}
	
	oInvItem = GetFirstItemInInventory(oSlotHead);
	
	if (GetIsObjectValid(oInvItem))
		{
			GiveItem(oInvItem, oJailBreaker);
			AssignCommand(oJailBreaker, ActionDoCommand(ActionEquipItem(oInvItem, INVENTORY_SLOT_HEAD, TRUE)));
		}
		else
			{
				AssignCommand(oJailBreaker, ActionDoCommand(ActionUnequipItem(GetItemInSlot(INVENTORY_SLOT_HEAD, oJailBreaker), FALSE)));
			}
	
	oInvItem = GetFirstItemInInventory(oSlotBody);
	
	if (GetIsObjectValid(oInvItem))
		{
			GiveItem(oInvItem, oJailBreaker);
			AssignCommand(oJailBreaker, ActionDoCommand(ActionEquipItem(oInvItem, INVENTORY_SLOT_BODY, TRUE)));
		}
		else
			{
				AssignCommand(oJailBreaker, ActionDoCommand(ActionUnequipItem(GetItemInSlot(INVENTORY_SLOT_BODY, oJailBreaker), FALSE)));
			}
	
	oInvItem = GetFirstItemInInventory(oSlotHandR);
	
	if (GetIsObjectValid(oInvItem))
		{
			GiveItem(oInvItem, oJailBreaker);
			AssignCommand(oJailBreaker, ActionDoCommand(ActionEquipItem(oInvItem, INVENTORY_SLOT_RIGHTWEAPON, TRUE)));
		}
			else
			{
				AssignCommand(oJailBreaker, ActionDoCommand(ActionUnequipItem(GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON, oJailBreaker), FALSE)));
			}
	
	oInvItem = GetFirstItemInInventory(oSlotHandL);
	
	if (GetIsObjectValid(oInvItem))
		{
			GiveItem(oInvItem, oJailBreaker);
			AssignCommand(oJailBreaker, ActionDoCommand(ActionEquipItem(oInvItem, INVENTORY_SLOT_LEFTWEAPON, TRUE)));
		}
		else
			{
				AssignCommand(oJailBreaker, ActionDoCommand(ActionUnequipItem(GetItemInSlot(INVENTORY_SLOT_LEFTWEAPON, oJailBreaker), FALSE)));
			}
}

void main() {
	
	object oPtyJnk = GetObjectByTag("lev40_partyjunk", 0);
	object oPtyZone = GetObjectByTag("lev40_partyarea", 0);
	object oNPC;
	int nCnt;
	
	JailBreakerSpawn();
	
	nCnt = 0;
	oNPC = GetFirstInPersistentObject(oPtyZone, OBJECT_TYPE_CREATURE, PERSISTENT_ZONE_ACTIVE);
	
	while (GetIsObjectValid(oNPC))
		{
			Db_PostString(("STRIPPING - " + GetTag(oNPC)), 5, (5 + nCnt), 5.0);
			LEV_StripCharacter(oNPC, oPtyJnk);
			
			oNPC = GetNextInPersistentObject(oPtyZone, OBJECT_TYPE_CREATURE, PERSISTENT_ZONE_ACTIVE);
			
			nCnt++;
		}
	
	ActionPauseConversation();
	ActionWait(3.0);
	ActionResumeConversation();
}