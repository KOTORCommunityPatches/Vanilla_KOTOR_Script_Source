void main() {
	PlayRoomAnimation("003EBOq", 6);
	object oPlc_holodant = CreateObject(64, "plc_holodant", GetLocation(GetObjectByTag("WP_hologram", 0)), 0);
	DelayCommand(0.2, AssignCommand(oPlc_holodant, ActionPlayAnimation(204, 1.0, 0.0)));
}

