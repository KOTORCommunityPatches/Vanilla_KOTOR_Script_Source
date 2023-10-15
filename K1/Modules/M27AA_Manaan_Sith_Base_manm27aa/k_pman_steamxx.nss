// GetStringByStrRef hotfix

#include "k_inc_man"
 
 void main() {
 	
	int nState = !GetIsVentActive(OBJECT_SELF);
 	
	SetVentActive(nState, OBJECT_SELF);
 	
	AurPostString("HB Fired", 5, 5, 5.0);
 	
	if (nState)
		{
			AurPostString("State On", 5, 10, 5.0);
			
			object oTarget = GetFirstInPersistentObject(GetObjectByTag("man27_steam01", 0), OBJECT_TYPE_CREATURE, PERSISTENT_ZONE_ACTIVE);
			
			while (GetIsObjectValid(oTarget))
				{
					AurPostString("Target Found", 5, 15, 5.0);
					
					ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(STEAM_DAMAGE_AMOUNT, DAMAGE_TYPE_UNIVERSAL), oTarget);
					
					oTarget = GetNextInPersistentObject(GetObjectByTag("man27_steam01", 0), OBJECT_TYPE_CREATURE, PERSISTENT_ZONE_ACTIVE);
				}
		}
 }
