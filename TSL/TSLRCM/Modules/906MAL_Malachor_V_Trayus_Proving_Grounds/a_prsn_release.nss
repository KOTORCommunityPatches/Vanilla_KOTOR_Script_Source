// Prototypes
void sub1(object objectParam1);

void sub1(object objectParam1) {
	SetLocked(objectParam1, 0);
	AssignCommand(objectParam1, ActionOpenDoor(objectParam1));
}

void main() {
	object oMand = GetObjectByTag("Mand", 0);
	object oMira = GetObjectByTag("Mira", 0);
	object oDisciple = GetObjectByTag("Disciple", 0);
	object oHandmaiden = GetObjectByTag("Handmaiden", 0);
	object oVisasmarr = GetObjectByTag("Visasmarr", 0);
	sub1(GetObjectByTag("PrisonDoor01", 0));
	sub1(GetObjectByTag("PrisonDoor02", 0));
	sub1(GetObjectByTag("PrisonDoor03", 0));
	sub1(GetObjectByTag("PrisonDoor04", 0));
	sub1(GetObjectByTag("PrisonDoor05", 0));
	sub1(GetObjectByTag("PrisonDoor06", 0));
	sub1(GetObjectByTag("PrisonDoor07", 0));
	sub1(GetObjectByTag("PrisonDoor08", 0));
	sub1(GetObjectByTag("PrisonDoor09", 0));
	sub1(GetObjectByTag("PrisonDoor10", 0));
	SetGlobalNumber("906_HandDisc_Free", 1);
	SetGlobalNumber("906_Visas_Free", 1);
	DelayCommand(0.5, AssignCommand(oMand, ActionMoveToObject(GetObjectByTag("WP_NPC_mand", 0), 1, 1.0)));
	DelayCommand(0.7, AssignCommand(oDisciple, ActionMoveToObject(GetObjectByTag("WP_NPC_disc", 0), 1, 1.0)));
	DelayCommand(0.7, AssignCommand(oHandmaiden, ActionMoveToObject(GetObjectByTag("WP_NPC_disc", 0), 1, 1.0)));
	DelayCommand(0.7, AssignCommand(oMira, ActionMoveToObject(GetObjectByTag("WP_NPC_mira", 0), 1, 1.0)));
	DelayCommand(0.7, AssignCommand(oVisasmarr, ActionMoveToObject(GetObjectByTag("WP_NPC_visas", 0), 1, 1.0)));
}