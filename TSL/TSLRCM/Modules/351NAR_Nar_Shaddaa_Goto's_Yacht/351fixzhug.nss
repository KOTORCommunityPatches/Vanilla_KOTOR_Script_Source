void main() {
	location location1 = Location(Vector((-14.65325), 109.72357, 11.05343), 0.0);
	location location3 = Location(Vector((-10.1859), 110.63412, 11.05343), 0.0);
	location location5 = Location(Vector((-8.87109), 107.69463, 11.05343), 0.0);
	object oZhugdogad1 = CreateObject(1, "zhugdogad1", location1, 0);
	object oZhugdogad2 = CreateObject(1, "zhugdogad2", location3, 0);
	object oZhugdogad3 = CreateObject(1, "zhugdogad3", location5, 0);
	object oPC = GetFirstPC();
	DelayCommand(0.5, AssignCommand(oPC, ActionStartConversation(oZhugdogad2, "zhug", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}