struct structtype1 {
	float float1;
	float float3;
};

void main() {
	location location1 = Location(Vector((-11.39794), 105.95697, 11.05343), 0.0);
	location location3 = Location(Vector((-11.59501), 108.40697, 11.05343), 0.0);
	location location5 = Location(Vector((-13.34613), 108.80064, 11.05343), 0.0);
	object oZhugdogad1 = CreateObject(1, "zhugdogad1", location1, 0);
	object oZhugdogad2 = CreateObject(1, "zhugdogad2", location3, 0);
	object oZhugdogad3 = CreateObject(1, "zhugdogad3", location5, 0);
	object oPC = GetFirstPC();
	DelayCommand(0.5, AssignCommand(oPC, ActionStartConversation(oZhugdogad2, "zhug", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}

