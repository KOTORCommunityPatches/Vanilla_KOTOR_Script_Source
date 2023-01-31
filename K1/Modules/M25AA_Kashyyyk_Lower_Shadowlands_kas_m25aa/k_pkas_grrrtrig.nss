// Byte code does not match

void main() {
 	
 	object oPC = GetFirstPC();
 	object oEntering = GetEnteringObject();
 	object oWook = GetObjectByTag("kas25_hurt_01", 0);
 	object oInvis = GetObjectByTag("kas25_cutspeak_1", 0);
 	
 	if (GetIsPC(oEntering) == TRUE)
 		{
 			CancelCombat(oPC);
 			
 			SetPartyLeader(NPC_PLAYER);
 			
 			AssignCommand(oInvis, ActionStartConversation(oPC, "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
 			
 			ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(GetCurrentHitPoints(oWook) - 1), oWook);
 			
 			DestroyObject(OBJECT_SELF);
 		}
 }