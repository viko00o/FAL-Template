_isUsingBlacklistedAddons = false;
_addonBlacklist = 
[
    "PA_arsenal",
    "KA_VAA",
    "vaa_arsenal",
    "nks_arsenal",
    "IA_ACE_VAA",
    "Lordeath_arsenal",
    "SSPCM",
    "Seth_VirtualArsenal",
    "AIO_AIMENU",
    "PLP_AdvancedCheatMenu",
    "Roys_Arsenal",
    "HelpMe",
    "HubixPocketArsenal",
    "bbmb_ala",
    "KA_Suitcase_Nuke",
    "foxUVA",
    "MGI_TP_V3",
    "MGI_TG_v2",
    "MGI_TG",
    "pa_arsenal",
    "hpa_arsenal",
    "ACEInteractArsenal",
    "remote_arsenal",
    "fex_DisableVehicles",
    "TBT_main_2",
    "DCONVirtualGarage",
    "A3_Modded_Upgraded_Weapons",
    "SAMR_ATE_ALRPS",
    "SAMR_ATE_ANS",
    "SAMR_ATE_ANVG",
    "SAMR_ATE_FLARE",
    "SAMR_ATE_SLRR",
    "SAMR_ATE",
    "dzn_CasualGaming",
    "ace_medical_engine",
    "YD_regen",
    "NNV"

];
_playerBlacklistException = 
[
    "76561198130990529",
    "76561198242382112"
];

{
    if (isClass(configfile >> "CfgPatches" >> _x)) exitWith {_isUsingBlacklistedAddons = true};
    if (isClass(configfile >> "CfgFunctions" >> _x)) exitWith {_isUsingBlacklistedAddons = true};
} forEach _addonBlacklist;
if ((getPlayerUID player) in _playerBlacklistException) exitWith {};
if (_isUsingBlacklistedAddons) exitWith 
{
    format ["El jugador %1 tiene mods no permitidos.", (name player)] remoteExec ["systemChat"];
    endMission "EndBlacklist";
};

true