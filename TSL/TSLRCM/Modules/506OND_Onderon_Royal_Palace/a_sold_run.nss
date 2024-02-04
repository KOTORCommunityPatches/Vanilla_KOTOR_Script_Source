void main() {
	object oVa_sold_grenCS = GetObjectByTag("va_sold_grenCS", 0);
	object oVa_sold_gunCS = GetObjectByTag("va_sold_gunCS", 0);
	object object5 = GetObjectByTag("va_sold_gunCS", 1);
	object oVa_sold_hvyCS = GetObjectByTag("va_sold_hvyCS", 0);
	object oWp_soldiers_move = GetObjectByTag("wp_soldiers_move", 0);
	object oWp_soldiers_move2 = GetObjectByTag("wp_soldiers_move2", 0);
	AssignCommand(oVa_sold_grenCS, ActionMoveToObject(oWp_soldiers_move, 1, 1.0));
	AssignCommand(oVa_sold_gunCS, ActionMoveToObject(oWp_soldiers_move2, 1, 1.0));
	AssignCommand(object5, ActionMoveToObject(oWp_soldiers_move, 1, 1.0));
	AssignCommand(oVa_sold_hvyCS, ActionMoveToObject(oWp_soldiers_move2, 1, 1.0));
	DelayCommand(6.0, ChangeToStandardFaction(oVa_sold_grenCS, 1));
	DelayCommand(6.0, ChangeToStandardFaction(oVa_sold_gunCS, 1));
	DelayCommand(6.0, ChangeToStandardFaction(object5, 1));
	DelayCommand(6.0, ChangeToStandardFaction(oVa_sold_hvyCS, 1));
	object oVa_speaker_1 = GetObjectByTag("va_speaker_1", 0);
	DelayCommand(2.0, AssignCommand(oVa_speaker_1, SetFacing(90.0)));
}