// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

#include "k_inc_end"

void main() {
 	
	int nEvent = GetUserDefinedEventNumber();
 	
	switch (nEvent) {
 		case 10:
 			{
 				effect efVisual = EffectVisualEffect(VFX_IMP_SCREEN_SHAKE, FALSE);
 				ApplyEffectToObject(DURATION_TYPE_INSTANT, efVisual, GetFirstPC(), 0.0);
 				PlayRumblePattern(16);
 				SoundObjectPlay(GetObjectByTag("rumble4", 0));
 				float fRandom = IntToFloat(20 + Random(20));
 				DelayCommand(fRandom, SignalEvent(OBJECT_SELF, EventUserDefined(10)));
 			}
 			break;
 		case 20:
 			CancelCombat(GetFirstPC());
 			CancelCombat(GetTrask());
 			AssignCommand(GetCutsceneObject(2), ActionStartConversation(GetFirstPC(), "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
 			ExecuteScript("k_pman_npcstop", GetTrask());
 			break;
 	}
}
