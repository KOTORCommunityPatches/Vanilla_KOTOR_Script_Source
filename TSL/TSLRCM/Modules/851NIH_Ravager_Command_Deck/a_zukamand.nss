// Prototypes
void sub1();

void sub1() {
	object oN_mandalorian001 = CreateObject(1, "n_mandalorian001", GetLocation(GetObjectByTag("sp_mandy_run2", 0)), 0);
	AssignCommand(oN_mandalorian001, ActionMoveToObject(GetObjectByTag("wp_mandy_run2", 0), 1, 1.0));
	AssignCommand(oN_mandalorian001, ActionDoCommand(DestroyObject(oN_mandalorian001, 0.0, 0, 0.0, 0)));
}

void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			{
				object oMand = GetObjectByTag("Mand", 0);
				object oZuka = GetObjectByTag("Zuka", 0);
				SetGlobalFadeIn(0.1, 2.0, 0.0, 0.0, 0.0);
				ClearAllActions();
				ActionPauseConversation();
				AssignCommand(oMand, ClearAllActions());
				AssignCommand(oMand, ActionJumpToObject(GetObjectByTag("wp_mand_start", 0), 1));
				AssignCommand(oMand, ActionMoveToObject(GetObjectByTag("wp_mand_move", 0), 0, 1.0));
				SetLockOrientationInDialog(oMand, 1);
				AssignCommand(oZuka, ClearAllActions());
				effect effect1 = EffectMovementSpeedDecrease(60);
				ApplyEffectToObject(2, effect1, oZuka, 0.0);
				effect1 = EffectMovementSpeedDecrease(40);
				ApplyEffectToObject(2, effect1, oMand, 0.0);
				AssignCommand(oZuka, ActionMoveToObject(GetObjectByTag("wp_zuka_move", 0), 0, 1.0));
				SetLockOrientationInDialog(oZuka, 1);
				DelayCommand(3.0, ActionResumeConversation());
			}
			break;
		case 1:
			DelayCommand(0.2, SoundObjectPlay(GetObjectByTag("ShipHit2", 0)));
			DelayCommand(0.5, ApplyEffectToObject(1, EffectVisualEffect(6002, 0), GetFirstPC(), 2.0));
			break;
		case 2:
			{
				object oN_mandalorian001 = CreateObject(1, "n_mandalorian001", GetLocation(GetObjectByTag("sp_mandy_run1", 0)), 0);
				DelayCommand(4.0, AssignCommand(oN_mandalorian001, ActionMoveToObject(GetObjectByTag("wp_mandy_run1", 0), 1, 1.0)));
				DelayCommand(4.0, AssignCommand(oN_mandalorian001, ActionDoCommand(DestroyObject(oN_mandalorian001, 0.0, 0, 0.0, 0))));
				DelayCommand(13.0, sub1());
			}
			break;
		case 3:
			{
				object oP_visas = SpawnAvailableNPC(9, GetLocation(GetObjectByTag("sp_visas", 0)));
				if ((!GetIsObjectValid(oP_visas))) {
				oP_visas = CreateObject(1, "p_visas", GetLocation(GetObjectByTag("sp_visas", 0)), 0);
				}
				DelayCommand(1.0, AssignCommand(oP_visas, ActionMoveToObject(GetObjectByTag("wp_visas", 0), 0, 1.0)));
				DelayCommand(1.0, AssignCommand(oP_visas, ActionDoCommand(SetFacing(GetFacing(GetObjectByTag("wp_visas", 0))))));
				object object21 = GetObjectByTag("Mand", 0);
				SetLockOrientationInDialog(oP_visas, 1);
				SetLockOrientationInDialog(object21, 1);
				AssignCommand(object21, ClearAllEffects());
			}
			break;
	}
}