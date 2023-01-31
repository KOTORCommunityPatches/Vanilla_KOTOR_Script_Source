#include "k_inc_debug"


void SpawnBomb(object oWP) {
	
	PlaySound("gui_minearm");
	CreateItemOnFloor("G_I_TRAPKIT009", GetLocation(oWP), 0);
}

void SetBomb(object oWP) {
	
	Db_PostString("SET BOMB", 5, 5, 5.0);
	
	ActionPlayAnimation(10, 1.0, 3.0);
	DelayCommand(1.0, SpawnBomb(oWP));
}

void MatrixMove(object oWP) {
	
	if (GetTag(oWP) == "tar03_wpbomb1")
		{
			SetDialogPlaceableCamera(7);
		}
	
	ActionMoveToObject(oWP, FALSE, 2.0);
	ActionDoCommand(SetBomb(oWP));
}

void PartyMove(object oPM) {
	
	SetCommandable(TRUE, oPM);
	AssignCommand(oPM, ClearAllActions());
	AssignCommand(oPM, ActionMoveToObject(GetObjectByTag("tar03_wppcexp", 0), TRUE, 1.0));
}

void main() {
	
	DestroyObject(GetItemPossessedBy(GetPCSpeaker(), "ptar_permacrete"));
	
	PartyMove(GetPartyMemberByIndex(1));
	DelayCommand(1.0, PartyMove(GetPartyMemberByIndex(2)));
	
	ActionPauseConversation();
	
	MatrixMove(GetObjectByTag("tar03_wpbomb0", 0));
	DelayCommand(8.0, MatrixMove(GetObjectByTag("tar03_wpbomb1", 0)));
	
	DelayCommand(14.0, ActionResumeConversation());
}