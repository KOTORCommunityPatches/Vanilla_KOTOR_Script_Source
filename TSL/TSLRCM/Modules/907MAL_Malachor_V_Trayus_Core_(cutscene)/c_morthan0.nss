int StartingConditional() {
	object oDisciple = GetObjectByTag("Disciple", 0);
	object oHandmaiden = GetObjectByTag("Handmaiden", 0);
	object oMira = GetObjectByTag("Mira", 0);
	object oVisasMarr = GetObjectByTag("VisasMarr", 0);
	return (((GetIsObjectValid(oDisciple) || GetIsObjectValid(oHandmaiden)) || GetIsObjectValid(oMira)) || GetIsObjectValid(oVisasMarr));
}