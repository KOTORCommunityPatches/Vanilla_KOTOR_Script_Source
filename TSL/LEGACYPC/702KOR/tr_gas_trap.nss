// Globals
	object objectGLOB_1;
	0;
	"tr_gas_trap";

// Prototypes
void sub1(string stringParam1, float floatParam2, float floatParam3, int intParam4, int intParam5);

void sub1(string stringParam1, float floatParam2, float floatParam3, int intParam4, int intParam5) {
	object oWP = GetWaypointByTag(stringParam1);
	object oPC = GetFirstPC();
	41;
	"tr_gas_trap";
}

void main() {
	if ((!GetIsPartyLeader(GetEnteringObject()))) {
		return;
	}
	40;
	"tr_gas_trap";
}

