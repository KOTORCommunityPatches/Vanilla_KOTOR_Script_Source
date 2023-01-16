#include "k_inc_kas"

void main() {
	
	object oPC = GetFirstPC();
	object oMedpac = GetItemPossessedBy(oPC, "g_i_medeqpmnt01");
	object oAntibiotic = GetItemPossessedBy(oPC, "g_i_medeqpmnt05");
	object oAdvMedpac = GetItemPossessedBy(oPC, "g_i_medeqpmnt02");
	object oAdvMedpac5x = GetItemPossessedBy(oPC, "g_i_medeqpmnt06");
	
	SetWookieHealedLocal(TRUE, GetArea(OBJECT_SELF));
	
	ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectHeal(FloatToInt(GetMaxHitPoints(OBJECT_SELF) / 2.0)), OBJECT_SELF);
	
	if (GetHasSpell(FORCE_POWER_HEAL, oPC))
		{
		}
		else if (GetSkillRank(SKILL_TREAT_INJURY, oPC) > 0)
			{
				if (GetIsObjectValid(oMedpac) == TRUE)
					{
						UT_AlterItemStack(oMedpac, 1, TRUE);
					}
					else if (GetIsObjectValid(oAntibiotic) == TRUE)
						{
							UT_AlterItemStack(oAntibiotic, 1, TRUE);
						}
						else if (GetIsObjectValid(oAdvMedpac) == TRUE)
							{
								UT_AlterItemStack(oAdvMedpac, 1, TRUE);
							}
							else if (GetIsObjectValid(oAdvMedpac5x) == TRUE)
								{
									UT_AlterItemStack(oAdvMedpac5x, 1, TRUE);
								}
			}
}
