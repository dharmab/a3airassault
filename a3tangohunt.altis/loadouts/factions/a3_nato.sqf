_loadout = _this select 1;

// Uniform
_uniform = "U_B_CombatUniform_mcam";
// Armor vest/ammo rig
_vest = "V_PlateCarrier2_rgr";
// Armor vest/ammo rig for Grenadier
_vest_gl = "V_PlateCarrierGL_rgr";
// Backpack
_backpack = "B_AssaultPack_mcamo";
// Helmet or headgear. Set to empty string for no headgear.
_headgear = "H_HelmetB";
// Night vision goggles. Set to empty string for no night vision goggles.
_goggles = "";

// Primary weapon for Light Anti-Tank
_rifle = "arifle_MX_Black_F";
// Primary weapon for Grenadier 
_rifle_gl = "arifle_MX_GL_Black_F";
// Primary weapon for Medic
_rifle_carbine = "arifle_MXC_Black_F";
// Primary weapon for Designated Marksman
_rifle_dmr = "arifle_MXM_Black_F";
// Primary weapon for Automatic Rifleman
_automatic_rifle = "LMG_Mk200_F";
// Secondary weapon for all loadouts
_pistol = "hgun_P07_F";
// Launcher for Light Anti-Tank
_light_at = "launch_NLAW_F";

// Ammo for Light Anti-Tank and Grenadier primary weapon
_rifle_ammo = "30Rnd_65x39_caseless_mag";
// Ammo for Designated Marksman primary weapon
_rifle_dmr_ammo = "30Rnd_65x39_caseless_mag";
// Ammo for Automatic Rifleman primary weapon
_automatic_rifle_ammo = "200Rnd_65x39_cased_Box";
// Ammo for secondary weapon
_pistol_ammo = "16Rnd_9x21_Mag";
// Ammo for Light Anti-Tank launcher
_light_at_ammo = "NLAW_F";

// Optic used on all primary weapons except Designated Marksman. Set to empty string for iron sights.
_rifle_optic = "optic_Aco";
// Optic used on Designated Marksman primary weapon. Set to empty string for iron sights.
_rifle_dmr_optic = "optic_Hamr";
// Primary weapon accessory, e.g. IR pointer or flashlight. Set to empty string for no accessory.
_rifle_accessory = "acc_pointer_IR";

// Fragmentation grenade
_frag_grenade = "HandGrenade";
// Smoke grenade
_smoke_grenade = "SmokeShell";
// Chemical light
_chemlight = "Chemlight_green";
// Infrared marker. Set to empty string for no IR grenades.
_ir_grenade = "B_IR_Grenade";

// Grenade launcher high-explosive round
_gl_he = "1Rnd_HE_Grenade_shell";
// Grenade launcher red flare round
_gl_flare_red = "UGL_FlareRed_F";
// Grenade launcher green flare round
_gl_flare_green = "UGL_FlareGreen_F";
// Grenade launcher red smoke round
_gl_smoke_red = "1Rnd_SmokeRed_Grenade_shell";
// Grenade launcher green smoke round
_gl_smoke_green = "1Rnd_SmokeGreen_Grenade_shell";

[
    _loadout,
    _uniform,
    _vest,
    _vest_gl,
    _backpack,
    _headgear,
    _goggles,
    _rifle,
    _rifle_gl,
    _rifle_carbine,
    _rifle_dmr,
    _automatic_rifle,
    _pistol,
    _light_at,
    _rifle_ammo,
    _rifle_dmr_ammo,
    _automatic_rifle_ammo,
    _pistol_ammo,
    _light_at_ammo,
    _rifle_optic,
    _rifle_dmr_optic,
    _rifle_accessory,
    _frag_grenade,
    _smoke_grenade,
    _chemlight,
    _ir_grenade,
    _gl_he,
    _gl_flare_red,
    _gl_flare_green,
    _gl_smoke_red,
    _gl_smoke_green
] call TH_fnc_applyLoadout;