#include "k_inc_debug"
#include "k_inc_utility"

void main() {
	
	if (GetGlobalNumber("EBO_GIZKA_PLOT") == 1)
		{
			GivePlotXP("k_pebo_gizkatrouble", 100);
		}
	
	SetGlobalNumber("EBO_GIZKA_PLOT", 99);
	
	object oPoison = GetItemPossessedBy(GetFirstPC(), "GizkaPoison");
	int nStack = GetItemStackSize(oPoison);
	
	if (GetIsObjectValid(oPoison))
		{
			UT_AlterItemStack(oPoison, 1, TRUE);
			
			ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDamage(1, DAMAGE_TYPE_UNIVERSAL, DAMAGE_POWER_NORMAL), OBJECT_SELF);
		}
		else
			{
				Db_PostString("No Poison Valid", 5, 5, 5.0);
			}
}