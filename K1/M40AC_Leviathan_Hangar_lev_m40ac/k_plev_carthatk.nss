#include "k_inc_utility"

void main() {
	
	object oPC = GetFirstPC();
	object oBastila = GetObjectByTag("Bastila", 0);
	object oMalak = GetObjectByTag("DarthMalak400", 0);
	object oCarth = GetObjectByTag("Carth", 0);
	object oTarget = GetObjectByTag("carth_attack_target", 0);
	int nAnim;
	
	if (GetItemInSlot(INVENTORY_SLOT_LEFTWEAPON, oCarth) != OBJECT_INVALID)
		{
			nAnim = 232; // B6A2 = Dual Blasters Attack 2
		}
		else
			{
				nAnim = 239; // B7A1 = Rifle Attack 1
			}
	
	UT_ActionPauseConversation(1.1);
	
	AssignCommand(oMalak, ActionEquipMostDamagingMelee(OBJECT_INVALID));
	
	DelayCommand(0.1, AssignCommand(oCarth, CutsceneAttack(oTarget, nAnim, ATTACK_RESULT_DEFLECTED, 0)));
	DelayCommand(1.1, CancelCombat(oMalak));
	DelayCommand(1.1, CancelCombat(oCarth));
	DelayCommand(1.1, CancelCombat(oBastila));
	DelayCommand(1.1, CancelCombat(oPC));
}
