struct structtype1 {
	float float1;
	float float3;
};

void main() {
	object oPC = GetFirstPC();
	if ((GetGender(oPC) == 1)) {
		return;
	}
	if ((!GetGlobalBoolean("262TEL_Hand_Send"))) {
		return;
	}
	object oZ2_atris = CreateObject(1, "z2_atris", Location(Vector(16.16035, (-50.75756), 24.10791), 318.21307), 0);
	CreateObject(1, "z2_brianna", Location(Vector(7.82054, (-33.09632), 23.99826), 323.99393), 0);
	AssignCommand(oZ2_atris, ActionStartConversation(oPC, "atrhand", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

