// Byte code does not match

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
 			AssignCommand(GetCutsceneObject(2), ActionStartConversation(GetFirstPC(), "", FALSE, 0, TRUE));
 			ExecuteScript("k_pman_npcstop", GetTrask(), -1);
 			break;
 	}
 }