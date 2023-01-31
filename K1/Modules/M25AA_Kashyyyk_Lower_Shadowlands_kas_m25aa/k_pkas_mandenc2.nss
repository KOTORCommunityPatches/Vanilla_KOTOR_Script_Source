// Byte code does not match

#include "k_inc_utility"

void main() {
	
	object oEntering = GetEnteringObject();
	object oInvis = GetNearestObjectByTag("kas25_mand_invis", OBJECT_SELF, 1);
	
	if (GetIsPC(oEntering) == TRUE && !UT_GetUnderAttack(oEntering))
		{
			if (GetIsObjectValid(GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON, oEntering)) == FALSE && GetIsObjectValid(GetItemInSlot(INVENTORY_SLOT_LEFTWEAPON, oEntering)) == FALSE)
				{
					AssignCommand(oInvis, ActionStartConversation(oEntering, "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
					DestroyObject(OBJECT_SELF);
				}
		}
}