void main() {
	object oSensor = GetObjectByTag("sensor", 0);
	if (GetIsObjectValid(oSensor)) {
		AssignCommand(oSensor, ActionStartConversation(GetPCSpeaker(), "sensorfi", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}

