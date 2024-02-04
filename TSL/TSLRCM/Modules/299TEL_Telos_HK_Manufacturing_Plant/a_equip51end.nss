void main() {
	AssignCommand(GetObjectByTag("HK511", 0), ClearAllActions());
	AssignCommand(GetObjectByTag("HK511", 0), ActionEquipMostDamagingRanged(GetObjectByTag("hk50cut2", 0)));
}