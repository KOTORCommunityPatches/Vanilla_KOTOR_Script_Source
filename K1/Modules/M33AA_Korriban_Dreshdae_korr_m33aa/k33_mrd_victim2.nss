void main() {
	
	object oVictim2 = GetObjectByTag("kor33b_murdered", 0);
	
	ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_FRIENDLY_1);
	ChangeToStandardFaction(oVictim2, STANDARD_FACTION_FRIENDLY_2);
	
	ActionAttack(oVictim2);
}