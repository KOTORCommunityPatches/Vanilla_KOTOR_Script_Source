#include "k_inc_utility"

void main() {
	
	ActionPauseConversation();
	
	UT_TeleportPartyMember(GetPartyMemberByIndex(0), GetLocation(GetObjectByTag("playerwp1", 0)));
	UT_TeleportPartyMember(GetPartyMemberByIndex(1), GetLocation(GetObjectByTag("pm1wp1", 0)));
	UT_TeleportPartyMember(GetPartyMemberByIndex(2), GetLocation(GetObjectByTag("pm2wp1", 0)));
	
	SetGlobalFadeIn(0.0, 1.0);
	
	AssignCommand(GetPartyMemberByIndex(0), ActionMoveToLocation(GetLocation(GetObjectByTag("playerwp2", 0)), FALSE));
	AssignCommand(GetPartyMemberByIndex(0), ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("unk41_blk1", 0)))));
	AssignCommand(GetPartyMemberByIndex(1), ActionMoveToLocation(GetLocation(GetObjectByTag("pm1wp2", 0)), FALSE));
	AssignCommand(GetPartyMemberByIndex(1), ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("unk41_blk1", 0)))));
	AssignCommand(GetPartyMemberByIndex(2), ActionMoveToLocation(GetLocation(GetObjectByTag("pm2wp2", 0)), FALSE));
	AssignCommand(GetPartyMemberByIndex(2), ActionDoCommand(SetFacingPoint(GetPosition(GetObjectByTag("unk41_blk1", 0)))));
	
	CreateObject(OBJECT_TYPE_CREATURE, "unk41_blk1", GetLocation(GetObjectByTag("blk1wp2", 0)));
	CreateObject(OBJECT_TYPE_CREATURE, "unk41_blk2", GetLocation(GetObjectByTag("blk2wp2", 0)));
	CreateObject(OBJECT_TYPE_CREATURE, "unk41_blk3", GetLocation(GetObjectByTag("blk3wp2", 0)));
	CreateObject(OBJECT_TYPE_CREATURE, "unk41_blk4", GetLocation(GetObjectByTag("blk4wp2", 0)));
	CreateObject(OBJECT_TYPE_CREATURE, "unk41_rancor01", GetLocation(GetObjectByTag("rancor01wp2", 0)));
	CreateObject(OBJECT_TYPE_CREATURE, "unk41_rancor02", GetLocation(GetObjectByTag("rancor02wp2", 0)));
	
	ActionWait(3.0);
	ActionResumeConversation();
}