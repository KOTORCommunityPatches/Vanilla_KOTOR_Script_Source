void main() {
	object oWP_THUGS_JUMP = GetWaypointByTag("WP_THUGS_JUMP");
	object oExchangeThug1 = GetObjectByTag("ExchangeThug1", 0);
	object oExchangeThug2 = GetObjectByTag("ExchangeThug2", 0);
	AssignCommand(oExchangeThug1, ActionWait(0.7));
	AssignCommand(oExchangeThug1, ActionMoveToObject(oWP_THUGS_JUMP, 1, 1.0));
	AssignCommand(oExchangeThug2, ActionMoveToObject(oWP_THUGS_JUMP, 1, 1.0));
	object oWp_kreia = GetObjectByTag("wp_kreia", 0);
	AssignCommand(oExchangeThug1, ActionJumpToObject(oWp_kreia, 1));
	AssignCommand(oExchangeThug2, ActionJumpToObject(oWp_kreia, 1));
	AssignCommand(oExchangeThug1, ActionWait(0.1));
	AssignCommand(oExchangeThug2, ActionWait(0.1));
	AssignCommand(oExchangeThug1, ActionDoCommand(ChangeToStandardFaction(oExchangeThug1, 1)));
	AssignCommand(oExchangeThug2, ActionDoCommand(ChangeToStandardFaction(oExchangeThug1, 1)));
	AssignCommand(oExchangeThug1, ActionDoCommand(ApplyEffectToObject(0, EffectDeath(0, 1, 0), oExchangeThug1, 0.0)));
	AssignCommand(oExchangeThug2, ActionDoCommand(ApplyEffectToObject(0, EffectDeath(0, 1, 0), oExchangeThug2, 0.0)));
}