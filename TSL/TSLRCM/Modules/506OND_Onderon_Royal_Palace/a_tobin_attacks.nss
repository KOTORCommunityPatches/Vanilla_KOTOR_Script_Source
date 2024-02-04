void main() {
	object oDrexl_boss = GetObjectByTag("drexl_boss", 0);
	AssignCommand(oDrexl_boss, ActionDoCommand(SetFacing(270.0)));
	DelayCommand(2.0, ChangeToStandardFaction(oDrexl_boss, 1));
	DelayCommand(0.1, AssignCommand(oDrexl_boss, ActionMoveToObject(GetWaypointByTag("wp_entry_tgone"), 0, 1.0)));
	AssignCommand(oDrexl_boss, ActionUseTalentOnObject(TalentSpell(257), oDrexl_boss));
	SetNPCAIStyle(oDrexl_boss, 7);
}