void main() {
	object oDs_mil_droid_mk1 = GetObjectByTag("ds_mil_droid_mk1", 0);
	object object3 = GetObjectByTag("ds_mil_droid_mk1", 1);
	object oRo_officer = GetObjectByTag("ro_officer", 0);
	object oRo_sold_hvy = GetObjectByTag("ro_sold_hvy", 0);
	object object9 = GetObjectByTag("ro_sold_hvy", 1);
	object oRo_sold_gren = GetObjectByTag("ro_sold_gren", 1);
	ChangeToStandardFaction(oDs_mil_droid_mk1, 1);
	ChangeToStandardFaction(object3, 1);
	ChangeToStandardFaction(oRo_officer, 1);
	ChangeToStandardFaction(oRo_sold_hvy, 1);
	ChangeToStandardFaction(object9, 1);
	ChangeToStandardFaction(oRo_sold_gren, 1);
}

