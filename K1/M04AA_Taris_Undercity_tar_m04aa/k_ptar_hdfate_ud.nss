#include "k_inc_tar"
#include "k_inc_generic"

void NPC_Move(object oObject, int nRun) {
	ActionForceMoveToObject(oObject, nRun);
	ActionDoCommand(SetCommandable(TRUE, OBJECT_SELF));
	SetCommandable(FALSE, OBJECT_SELF);
}

void Holster_Weapon(object oObject) {
	ActionUnequipItem(GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON, OBJECT_SELF), FALSE);
	NPC_Move(oObject, TRUE);
}

void main() {
    
	int nUser = GetUserDefinedEventNumber();

	if (nUser == 1001) // HEARTBEAT
		{

		}
    else if (nUser == 1002) // PERCEIVE
		{

		}
    else if (nUser == 1003) // END OF COMBAT
		{

		}
    else if (nUser == 1004) // ON DIALOGUE
		{

		}
    else if (nUser == 1005) // ATTACKED
		{

		}
    else if (nUser == 1006) // DAMAGED
		{

		}
    else if (nUser == 1007) // DEATH
		{
			object oHendar = GetObjectByTag("OutcastMan046", 0);
			object oHester = GetObjectByTag("OutcastWoman043", 0);
			object oGate = GetObjectByTag("tar04_maingate", 0);
			object oNPC;
			int nCount;
			
			Db_PostString("HENDAR SAFE", 5, 5, 1.0);
			
			GivePlotXP("tar_misc", 10);
			SetLocked(oGate, FALSE);
			ChangeToStandardFaction(oHendar, STANDARD_FACTION_NEUTRAL);
			
			UT_SetPlotBooleanFlag(GetObjectByTag("tar04_miscrt", 0), SW_PLOT_BOOLEAN_01, TRUE);
			
			if (!GetIsObjectValid(oHendar))
				{
					Db_PostString("HENDAR BAD", 5, 5, 5.0);
				}
			
			if (!GetIsObjectValid(oHester))
				{
					Db_PostString("HESTER BAD", 5, 5, 5.0);
				}
			
			if (GetGlobalNumber("TAR_HENDAR") != 2)
				{
					SetGlobalNumber("TAR_HENDAR", 98);
					AssignCommand(oHendar, Holster_Weapon(oHester));
				}
			
			nCount = 0;
			while (nCount < GetPartyMemberCount())
				{
					oNPC = GetPartyMemberByIndex(nCount);
					AssignCommand(oNPC, ClearAllActions());
					CancelCombat(oNPC);
					nCount++;
				}
		}
    else if (nUser == 1008) // DISTURBED
		{

		}
    else if (nUser == 1009) // BLOCKED
		{

		}
    else if (nUser == 1010) // SPELL CAST AT
		{

		}
    else if (nUser == 1011) // DIALOGUE END
		{
		
		}
    else if (nUser == 2000) // PLAYER REFUSES TO HELP HENDAR
		{
			object oHendar = GetObjectByTag("OutcastMan046", 0);
			object oSelf = OBJECT_SELF;
			
			SetPlotFlag(OBJECT_SELF, FALSE);
			ChangeToStandardFaction(oHendar, STANDARD_FACTION_FRIENDLY_1);
			ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_FRIENDLY_2);
			ActionWait(1.0);
			ActionAttack(oHendar);
		}
    else if (nUser == 3000) // PLAYER AGREES TO HELP HENDAR
		{
			object oHendar = GetObjectByTag("OutcastMan046", 0);
			object oSelf = OBJECT_SELF;
			
			SetPlotFlag(OBJECT_SELF, FALSE);
			ChangeToStandardFaction(oHendar, STANDARD_FACTION_FRIENDLY_1);
			ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_HOSTILE_1);
			GN_DetermineCombatRound(oHendar);
		}
    else if (nUser == HOSTILE_RETREAT)
		{
			UT_ReturnToBase();
		}
}
