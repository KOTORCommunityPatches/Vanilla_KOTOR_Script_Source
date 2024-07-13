#include "k_inc_utility"

void main() {
	
	object oMalak = GetObjectByTag("sta_45darthMalak", 0);
	object oDrain = GetNearestObjectByTag("sta_malak_drain", oMalak, 1);
	string sName = GetName(oDrain);
	int nCaptive = StringToInt(sName);
	object oWP = GetNearestObjectByTag("sta_malak_facing", oMalak, 1);
	location lJump = GetLocation(oWP);
	int StaticCam2;
	int StaticCam8;
	int StaticCam3;
	int StaticCam4;
	int StaticCam7;
	object oObject;
	
	StaticCam2 = 102;
	StaticCam8 = 108;
	StaticCam3 = 103;
	StaticCam4 = 104;
	StaticCam7 = 107;
	
	UT_ActionPauseConversation(18.0);
	
	SetDialogPlaceableCamera(StaticCam2);
	
	AssignCommand(oMalak, ClearAllActions());
	AssignCommand(oMalak, JumpToLocation(lJump));
	DelayCommand(3.0, AssignCommand(oMalak, SetFacingPoint(GetPosition(GetFirstPC()))));
	
	DelayCommand(3.0, SetDialogPlaceableCamera(StaticCam8));
	DelayCommand(6.0, SetDialogPlaceableCamera(StaticCam3));
	DelayCommand(9.0, SetDialogPlaceableCamera(StaticCam4));
	DelayCommand(12.0, SetDialogPlaceableCamera(StaticCam7));
}
