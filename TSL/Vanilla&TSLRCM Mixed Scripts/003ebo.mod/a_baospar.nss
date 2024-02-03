// Prototypes
void sub2();
void sub1();

void sub2() {
	object oRWeapItem = GetItemInSlot(4, GetFirstPC());
	object object4 = CreateItemOnObject(GetTag(oRWeapItem), GetObjectByTag("naked_fakpc", 0), 1, 0);
	AssignCommand(GetObjectByTag("naked_fakpc", 0), ActionEquipItem(object4, 4, 1));
}

void sub1() {
	object object1 = CreateItemOnObject("g_w_lghtsbr01", GetObjectByTag("nak_fakbao", 0), 1, 0);
	AssignCommand(GetObjectByTag("nak_fakbao", 0), ActionEquipItem(object1, 4, 0));
}

void main() {
	object oNaked_fakpc = GetObjectByTag("naked_fakpc", 0);
	object oNak_fakbao = GetObjectByTag("nak_fakbao", 0);
	sub1();
	sub2();
	SetGlobalFadeIn(0.0, 3.0, 0.0, 0.0, 0.0);
	ActionPauseConversation();
	ChangeToStandardFaction(oNak_fakbao, 17);
	ChangeToStandardFaction(oNaked_fakpc, 16);
	AssignCommand(oNak_fakbao, ActionAttack(oNaked_fakpc, 0));
	AssignCommand(oNaked_fakpc, ActionAttack(oNak_fakbao, 0));
	DelayCommand(0.5, AssignCommand(oNak_fakbao, ActionAttack(oNaked_fakpc, 0)));
	DelayCommand(1.0, AssignCommand(oNaked_fakpc, ActionAttack(oNak_fakbao, 0)));
	DelayCommand(1.5, AssignCommand(oNak_fakbao, ActionAttack(oNaked_fakpc, 0)));
	DelayCommand(2.0, AssignCommand(oNaked_fakpc, ActionAttack(oNak_fakbao, 0)));
	DelayCommand(2.5, AssignCommand(oNak_fakbao, ActionAttack(oNaked_fakpc, 0)));
	DelayCommand(2.0, AssignCommand(oNaked_fakpc, ActionAttack(oNak_fakbao, 0)));
	DelayCommand(3.5, AssignCommand(oNak_fakbao, ActionAttack(oNaked_fakpc, 0)));
	SetGlobalFadeOut(6.0, 1.0, 0.0, 0.0, 0.0);
	DelayCommand(8.0, DestroyObject(oNaked_fakpc, 0.0, 0, 0.0, 0));
	DelayCommand(9.0, ActionResumeConversation());
}

