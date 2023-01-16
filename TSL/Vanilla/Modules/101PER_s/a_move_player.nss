void main() {
	object oWP_wakeup_donnie = GetObjectByTag("WP_wakeup_donnie", 0);
	if (GetIsObjectValid(oWP_wakeup_donnie)) {
		AssignCommand(GetFirstPC(), JumpToLocation(GetLocation(oWP_wakeup_donnie)));
		SetLocalBoolean(oWP_wakeup_donnie, 29, 1);
	}
}

