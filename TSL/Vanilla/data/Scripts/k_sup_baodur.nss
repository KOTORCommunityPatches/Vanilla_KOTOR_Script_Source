// k_sup_baodur
// Adds baodur and remote to party
// JAB-OEI 9/14/04

void main()
{
    vector vPos = GetPosition(GetPartyLeader());
    float fPCFace = GetFacing(GetPartyLeader());

    location lLoc = Location(vPos + AngleToVector(fPCFace) * 1.5f,fPCFace);

    object oBaoDur = CreateObject(OBJECT_TYPE_CREATURE,"p_baodur",lLoc);
    object oRemote = CreateObject(OBJECT_TYPE_CREATURE,"p_remote",lLoc);

    AddAvailableNPCByObject(NPC_BAO_DUR,oBaoDur);
    AddAvailablePUPByObject(PUP_SENSORBALL,oRemote);
    AddPartyMember(NPC_BAO_DUR, oBaoDur);
    AssignPUP(PUP_SENSORBALL,NPC_BAO_DUR);
    RemovePartyMember(NPC_BAO_DUR);


    DestroyObject(oBaoDur,0.0,TRUE);
    DestroyObject(oRemote,0.0,TRUE);
}
