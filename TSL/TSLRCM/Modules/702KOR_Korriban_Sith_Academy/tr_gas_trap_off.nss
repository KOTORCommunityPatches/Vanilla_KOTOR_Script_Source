void main() {
	if ((!GetIsPartyLeader(GetEnteringObject()))) {
		return;
	}
	object oTr_gas_trap = GetObjectByTag("tr_gas_trap", 0);
	if ((GetLocalBoolean(oTr_gas_trap, 40) && (!GetLocalBoolean(oTr_gas_trap, 41)))) {
		AurPostString("Trying to stop gas", 5, 4, 5.0);
		SetLocalBoolean(oTr_gas_trap, 40, 0);
		SetLocalBoolean(oTr_gas_trap, 41, 1);
	}
}