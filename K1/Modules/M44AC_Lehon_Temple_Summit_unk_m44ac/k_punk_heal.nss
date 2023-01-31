#include "k_inc_debug"

void main() {
	
	Db_PostString("v2.0 HEALING", 5, 5, 4.0);
	
	object oNPC;
	object oBastila = GetObjectByTag("bastila", 0);
	int nCount = 1;
	effect efHeal;
	int nMaxHP;
	
	oNPC = GetFirstObjectInArea(GetArea(GetFirstPC(), OBJECT_TYPE_CREATURE));
	
	while (GetIsObjectValid(oNPC))
		{
			nMaxHP = GetMaxHitPoints(oNPC);
			nMaxHP = (nMaxHP - (nMaxHP / 4) - GetCurrentHitPoints(oNPC));
			
			if (nMaxHP > 0)
				{
					efHeal = EffectHeal(nMaxHP);
					ApplyEffectToObject(0, efHeal, oNPC, 0.0);
				}
			
			oNPC = GetNextObjectInArea(GetArea(GetFirstPC()), OBJECT_TYPE_CREATURE);
		}
}