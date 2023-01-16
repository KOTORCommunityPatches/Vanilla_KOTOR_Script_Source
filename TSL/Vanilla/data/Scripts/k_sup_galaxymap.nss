//:: k_sup_galaxymap
/*
    Universal Script that fires when
    the galaxy map is used.
*/

#include "k_inc_hawk"

//turns off all of the core worlds and live planets.
void CUSTOM_TurnOffPlanets();

int CUSTOM_PlanetIDTo2DA(int nPlanetID);
int CUSTOM_2DAToPlanetID(int nPlanet2DA);

void DoFirst301()
{
    NoClicksFor(1.0);
    SetGlobalFadeOut();
    object oPlayer = GetFirstPC();
    object oAtton = GetObjectByTag("atton");
    object oMand = GetObjectByTag("mand");
    object oKreia = GetObjectByTag("kreia");
    object oT3M4 = GetObjectByTag("t3m4");
    object oDisc = GetObjectByTag("disciple");
    object oMaid = GetObjectByTag("handmaiden");

    TurnOffCutsceneMode(oAtton);
    TurnOffCutsceneMode(oMand);
    TurnOffCutsceneMode(oKreia);
    TurnOffCutsceneMode(oT3M4);
    TurnOffCutsceneMode(oDisc);
    TurnOffCutsceneMode(oMaid);

    //AssignCommand(oAtton, ClearAllActions());
    //AssignCommand(oMand, ClearAllActions());
    //AssignCommand(oKreia, ClearAllActions());
    //AssignCommand(oT3M4, ClearAllActions());
    //AssignCommand(oDisc, ClearAllActions());
    //AssignCommand(oMaid, ClearAllActions());

    //AssignCommand(oAtton, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_301_atton"))));
    AssignCommand(oMand, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_301_mand"))));
    AssignCommand(oKreia, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_301_kreia"))));
    AssignCommand(oT3M4, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_301_t3m4"))));
    AssignCommand(oDisc, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_301_disc"))));
    AssignCommand(oMaid, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_301_maid"))));

    SignalEvent(GetArea(oPlayer), EventUserDefined(1));
    AssignCommand(oPlayer, ClearAllActions());
    AssignCommand(oPlayer, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_301_player"))));
}

void DoFirst701()
{
    NoClicksFor(1.0);
    SetGlobalFadeOut();
    object oPlayer = GetFirstPC();
    object oAtton = GetObjectByTag("mand");
    object oVisas = GetObjectByTag("visasmarr");
    object oKreia = GetObjectByTag("kreia");

    TurnOffCutsceneMode(oAtton);
    TurnOffCutsceneMode(oKreia);
    TurnOffCutsceneMode(oVisas);

    //AssignCommand(oAtton, ClearAllActions());
    //AssignCommand(oKreia, ClearAllActions());
    //AssignCommand(oVisas, ClearAllActions());

    //AssignCommand(oAtton, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_301_atton"))));
    AssignCommand(oVisas, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_301_mand"))));
    AssignCommand(oKreia, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_301_kreia"))));

    SignalEvent(GetArea(oPlayer), EventUserDefined(1));
    AssignCommand(oPlayer, ClearAllActions());
    AssignCommand(oPlayer, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_301_player"))));
}


void DoPlanetChange()
{
    if(GetGlobalNumber("401DXN_STARTED") == 1)
    {
        SetGlobalNumber("401DXN_STARTED", 2);
        PlayMovieQueue();
        StartNewModule("003EBO", "WP_PC_WALK_MAP");
    }
    else if(GetModuleName() == "001EBO")
    {
        // if we are in tutorial, the galaxy map has different functionality
        SetGlobalNumber ( "001EBO_Movie_End", 1);
        PlayMovie("permov02");//play tutorial
        AssignCommand( GetObjectByTag("Galaxymap"),ActionStartConversation(GetFirstPC(),"outro") );
    }
    else if( (GetGlobalNumber("003EBO_BACKGROUND") == 3)  && !GetGlobalBoolean("301_FIRST_ENTER") && (GetGlobalNumber("301_INTRO_SCENE") == 0) )
    {// first time to nar shadda
        SetGlobalNumber("003EBO_RETURN_DEST",3);
        SetGlobalNumber("301_INTRO_SCENE", 1);
        DoFirst301();
    }
    else if( (GetGlobalNumber("003EBO_BACKGROUND") == 6) && !GetGlobalBoolean("701_FIRST_ENTER") && (GetGlobalNumber("701_INTRO_SCENE") == 0) )
    {//first time to koriban
        SetGlobalNumber("003EBO_RETURN_DEST",6);
        SetGlobalBoolean("701_FIRST_SCENE", TRUE);
        SetGlobalNumber("701_INTRO_SCENE", 1);
        DoFirst701();

        //old module load way below:
        //PlayMovieQueue();
        //StartNewModule("003EBO", "WP_from_outside");
    }
    //AWD-OEI 10-23-2004
    else if((GetGlobalNumber("003EBO_BACKGROUND") == 1) && (!GetGlobalBoolean("201_FIRST_ENTER")))//201 first time
    {//first time to Telos, go ahead and jump to 201
        PlayMovieQueue();
        StartNewModule("201TEL", "WP_from_ebonhawk");
    }
    // 262TEL cutscene triggers (JAB-OEI 10/22/04)
    else if( (GetGlobalNumber("000_Jedi_Found") >= 1) && (GetGlobalNumber("000_Jedi_Found") < 4) && (GetGlobalNumber("000_Atriscs1") == 0) && (GetGlobalBoolean("000_PLAYER_GENDER")))
    {//only if player is male
        PlayMovieQueue();
        SetGlobalNumber("000_Atriscs1",2);
        StartNewModule("262TEL");
    }
    else if( (GetGlobalNumber("000_Jedi_Found") >= 2) && (GetGlobalNumber("000_Jedi_Found") < 4) && (GetGlobalNumber("000_Siscut1") == 0) && (GetGlobalBoolean("000_PLAYER_GENDER")))
    {//only if player is male
        PlayMovieQueue();
        SetGlobalNumber("000_Siscut1",2);
        StartNewModule("262TEL");
    }
    else
    {
        SignalEvent(GetArea(GetFirstPC()), EventUserDefined(1));
        PlayMovieQueue();
    }
}


void main()
{
    int nSelected = GetSelectedPlanet();
    int nPrevPlanet = GetCurrentPlanet();

    if(nSelected == -1)
        return;


    // queue up leaving movie
    switch(GetGlobalNumber("003EBO_BACKGROUND"))
    {
        case 0://106PER
        {
            // I don't think we have a movie to play here
        }break;
        case 1://201TEL
        {
            QueueMovie("TelMov02");
            QueueMovie("HypMov01");
        }break;
        case 2://262TEL
        {
            QueueMovie("TelMov14");
            QueueMovie("HypMov01");
        }break;
        case 3://301NAR
        {
            QueueMovie("NarMov02");
            QueueMovie("HypMov01");
        }break;
        case 4://401DXN
        {
            QueueMovie("OndMov04");
            QueueMovie("HypMov01");
        }break;
        case 5://601DAN
        {
            QueueMovie("DanMov02");
            QueueMovie("HypMov01");
        }break;
        case 6://701KOR
        {
            QueueMovie("KorMov02");
            QueueMovie("HypMov01");
        }break;
        case 7://801DRO
        {
            QueueMovie("DroMov04");
            QueueMovie("HypMov01");
        }break;
        case 8://space
        {
            QueueMovie("HypMov01");
        }break;
        case 9://901MAL
        {
        }break;
        case 10://Hyperspace
        {
        }break;
    }

    int nPlanet = nSelected;


    // Do other stuff like play movies, do stuff to Ebon Hawk
    // we need two movies - the planet that we are leaving, and then the dest planet
    // after we get those two string, we can then play the two movies in sequence
    // we are setting two variables on the ebon hawk. One is for the background, and the
    // other is for the exit module.
    switch(nPlanet)
    {
        case PLANET_PERAGUS:
        {
            AurPostString("ERROR: We should not be able to travel back to peragus.",0,10,5.0);
        }break;
        case 10://citadel station
        {
            SetGlobalNumber("003EBO_RETURN_DEST",1);
            SetGlobalNumber("003EBO_BACKGROUND",1);

            // need to check where we are landing
            QueueMovie("TelMov01");
        }break;
        case PLANET_TELOS://polar region
        {
            SetGlobalNumber("003EBO_RETURN_DEST",2);
            SetGlobalNumber("003EBO_BACKGROUND",2);

            // need to check where we are landing
            QueueMovie("TelMov15");
        }break;
        case PLANET_NAR_SHADDAA:
        {
            SetGlobalNumber("003EBO_RETURN_DEST",3);
            SetGlobalNumber("003EBO_BACKGROUND",3);

            if(GetGlobalBoolean("301_FIRST_ENTER"))//only que this movie if we have been here before
                QueueMovie("NarMov01");
        }break;
        case PLANET_DXUN:
        {

            SetGlobalNumber("003EBO_RETURN_DEST",4);
            SetGlobalNumber("003EBO_BACKGROUND",4);

            QueueMovie("OndMov03");
        }break;
        case PLANET_ONDERON:
        {

            SetGlobalNumber("003EBO_RETURN_DEST",4);
            SetGlobalNumber("003EBO_BACKGROUND",4);

            //first time going to onderon?
            if( (GetGlobalNumber("401DXN_Visited") == 0) && (GetGlobalNumber("401DXN_STARTED") == 0) )
            {
                SetGlobalNumber("401DXN_STARTED", 1);
                SetGlobalNumber("003EBO_RETURN_DEST",8);
                SetGlobalNumber("003EBO_BACKGROUND",8);//set space background
                QueueMovie("OndScn01");
            }
            else
                AurPostString("ERROR!!! GALAXY MAP!",5,15,10.0);
        }break;
        case PLANET_DANTOOINE:
        {
            SetGlobalNumber("003EBO_RETURN_DEST",5);
            SetGlobalNumber("003EBO_BACKGROUND",5);

            QueueMovie("DanMov01");
        }break;
        case PLANET_KORRIBAN:
        {
            SetGlobalNumber("003EBO_RETURN_DEST",6);
            SetGlobalNumber("003EBO_BACKGROUND",6);

            QueueMovie("KorMov01");
        }break;
        case PLANET_M4_78:
        {
            SetGlobalNumber("003EBO_RETURN_DEST",7);
            SetGlobalNumber("003EBO_BACKGROUND",7);

            QueueMovie("DroMov02");
        }break;
        case PLANET_MALACHOR_V:
        {
            SetGlobalNumber("003EBO_RETURN_DEST",9);
            SetGlobalNumber("003EBO_BACKGROUND",9);

            QueueMovie("MalMov07");
        }break;
    }
    //fade out
    SetBackground();
    ExecuteScript("a_holoworld", GetFirstPC());
    DoPlanetChange();
}


//turns off all of the core worlds and live planets.
void CUSTOM_TurnOffPlanets()
{

    SetPlanetSelectable(PLANET_TELOS, FALSE);
    SetPlanetSelectable(PLANET_NAR_SHADDAA, FALSE);
    SetPlanetSelectable(PLANET_DXUN, FALSE);
    SetPlanetSelectable(PLANET_ONDERON, FALSE);
    SetPlanetSelectable(PLANET_DANTOOINE, FALSE);
    SetPlanetSelectable(PLANET_KORRIBAN, FALSE);
    SetPlanetSelectable(PLANET_MALACHOR_V, FALSE);

    if(GetIsLiveContentAvailable(LIVE_CONTENT_PKG1))
    {
        SetPlanetSelectable(PLANET_M4_78, FALSE);
    }
    if(GetIsLiveContentAvailable(LIVE_CONTENT_PKG2))
    {
        SetPlanetSelectable(PLANET_LIVE_01, FALSE);
    }
    if(GetIsLiveContentAvailable(LIVE_CONTENT_PKG3))
    {
        SetPlanetSelectable(PLANET_LIVE_02, FALSE);
    }
    if(GetIsLiveContentAvailable(LIVE_CONTENT_PKG4))
    {
        SetPlanetSelectable(PLANET_LIVE_03, FALSE);
    }
    if(GetIsLiveContentAvailable(LIVE_CONTENT_PKG5))
    {
        SetPlanetSelectable(PLANET_LIVE_04, FALSE);
    }
    if(GetIsLiveContentAvailable(LIVE_CONTENT_PKG6))
    {
        SetPlanetSelectable(PLANET_LIVE_05, FALSE);
    }
}

