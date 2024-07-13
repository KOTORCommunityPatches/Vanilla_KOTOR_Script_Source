#include "k_inc_utility"

void main() {
	
	UT_ActionPauseConversation(2.0);
	
	DelayCommand(0.1, ClearAllActions());
	DelayCommand(0.4, ActionEquipMostDamagingMelee(OBJECT_INVALID));
}
