#include "k_inc_end"

void main() {
	
	int nUser = GetUserDefinedEventNumber();
	
	switch (nUser)
		{
			case 5:
				ActionEquipItem(GetItemPossessedBy(OBJECT_SELF, "g_w_drkjdisbr002"), 4, 0);
				DelayCommand(0.5, SetLightsaberPowered(OBJECT_SELF, 1, 1, 0));
				ActionDoCommand(SignalEvent(GetCutsceneObject(3), EventUserDefined(0)));
				break;
			case 10:
				ActionMoveToObject(GetObjectByTag("wp_room8_01", 0), 0, 1.0);
				ActionDoCommand(SignalEvent(GetCutsceneObject(3), EventUserDefined(0)));
				ActionMoveToObject(GetObjectByTag("wp_room8_02", 0), 0, 1.0);
				ActionPlayAnimation(ANIMATION_LOOPING_READY, 1.0, 10.0);
				break;
			case 25:
				ClearAllActions();
				ActionCastFakeSpellAtObject(FORCE_POWER_CHOKE, GetTrask());
				DelayCommand(0.3, ApplyEffectToObject(DURATION_TYPE_PERMANENT, EffectChoke(), GetTrask()));
				break;
		}
}
