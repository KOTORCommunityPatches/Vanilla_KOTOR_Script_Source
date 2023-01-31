#include "k_inc_debug"
#include "k_inc_utility"

void main() {
	
	object oRakghoul = GetObjectByTag("hendarsfate", 0);
	object oHendar = GetObjectByTag("OutcastMan046", 0);
	
	Db_PostString("UNLOCKING GATE", 5, 5, 5.0);
	
	SetPlotFlag(oRakghoul, FALSE);
	
	SignalEvent(oRakghoul, EventUserDefined(2000));
	
	DelayCommand(4.0, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectDeath(), oHendar));
	
	ActionPauseConversation();
	ActionWait(6.0);
	ActionResumeConversation();
	
	UT_SetPlotBooleanFlag(GetObjectByTag("tar04_tpparty", 0), SW_PLOT_BOOLEAN_01, TRUE);
	
	ExecuteScript("k_act_cmusic_on", OBJECT_SELF, -1);
}