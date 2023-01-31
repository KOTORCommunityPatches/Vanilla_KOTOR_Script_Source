#include "k_inc_end"

void main() {
	
	if (GetIsPC(GetEnteringObject()))
		{
			if (HasNeverTriggered())
				{
					SetGlobalFadeOut();
					PlayMovie("01A");
					SetReturnStrref(FALSE, 32228, 0); //String 32228 is "Return To Hideout". Should instead be 38550, "Transit Disabled".
					SetGlobalNumber("K_CURRENT_PLANET", 5);
					SpawnStartingEquipment();
					SetGlobalFadeOut();
					SetGlobalFadeIn(3.0, 1.5);
					DelayCommand(0.1, AssignCommand(GetTrask(), ActionStartConversation(GetFirstPC(), "m01aa_c01", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE)));
					SetMinOneHP(GetFirstPC(), TRUE);
				}
		}
}