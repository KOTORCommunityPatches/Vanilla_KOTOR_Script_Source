// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	if ((GetIsObjectValid(GetObjectByTag("Mission", 0)) == 1)) {
		sub1("mission is here", 5, 5, 1.0);
		object oMission = GetObjectByTag("Mission", 0);
		object oBeltItem = GetItemInSlot(10, oMission);
		object oBodyItem = GetItemInSlot(1, oMission);
		object oHandsItem = GetItemInSlot(3, oMission);
		object oHeadItem = GetItemInSlot(0, oMission);
		object oImplantItem = GetItemInSlot(9, oMission);
		object oLArmItem = GetItemInSlot(7, oMission);
		object oLWeapItem = GetItemInSlot(5, oMission);
		object oRArmItem = GetItemInSlot(8, oMission);
		object oRWeapItem = GetItemInSlot(4, oMission);
		if ((GetIsObjectValid(oBeltItem) == 1)) {
			CreateItemOnObject(GetTag(oBeltItem), GetObjectByTag("missdrop", 0), 1);
		}
		if ((GetIsObjectValid(oBodyItem) == 1)) {
			CreateItemOnObject(GetTag(oBodyItem), GetObjectByTag("missdrop", 0), 1);
		}
		if ((GetIsObjectValid(oHandsItem) == 1)) {
			CreateItemOnObject(GetTag(oHandsItem), GetObjectByTag("missdrop", 0), 1);
		}
		if ((GetIsObjectValid(oHeadItem) == 1)) {
			CreateItemOnObject(GetTag(oHeadItem), GetObjectByTag("missdrop", 0), 1);
		}
		if ((GetIsObjectValid(oImplantItem) == 1)) {
			CreateItemOnObject(GetTag(oImplantItem), GetObjectByTag("missdrop", 0), 1);
		}
		if ((GetIsObjectValid(oLArmItem) == 1)) {
			CreateItemOnObject(GetTag(oLArmItem), GetObjectByTag("missdrop", 0), 1);
		}
		if ((GetIsObjectValid(oLWeapItem) == 1)) {
			CreateItemOnObject(GetTag(oLWeapItem), GetObjectByTag("missdrop", 0), 1);
		}
		if ((GetIsObjectValid(oRArmItem) == 1)) {
			CreateItemOnObject(GetTag(oRArmItem), GetObjectByTag("missdrop", 0), 1);
		}
		if ((GetIsObjectValid(oRWeapItem) == 1)) {
			CreateItemOnObject(GetTag(oRWeapItem), GetObjectByTag("missdrop", 0), 1);
		}
	}
}
