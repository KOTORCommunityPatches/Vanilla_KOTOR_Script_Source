// Byte code does not match

#include "k_inc_utility"

void main() {
	
	object oExiting = GetExitingObject();
	object oInvis = GetNearestObjectByTag("kas25_mand_invis", OBJECT_SELF, 1);
	
	if (GetIsPC(oExiting) == TRUE && !UT_GetUnderAttack(oExiting))
		{
			if (GetIsObjectValid(GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON, oExiting)) == FALSE && GetIsObjectValid(GetItemInSlot(INVENTORY_SLOT_LEFTWEAPON, oExiting)) == FALSE)
				{
					AssignCommand(oInvis, ActionStartConversation(oExiting, "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
					DestroyObject(OBJECT_SELF);
				}
		}
}
