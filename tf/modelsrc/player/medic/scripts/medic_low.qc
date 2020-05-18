$modelname "player/medic.mdl"

// Define the variable that medic.qci will use to load the dmx files for high and low end models.
$definevariable dmxFile "../parts/dmx/medic_morphs_low.dmx"

$cdmaterials "models/player/medic/"
$texturegroup "medic_Skins"
{
	{ "medic_red"        "medic_head_red"        "eyeball_r"     "eyeball_l"     "medic_backpack_red" }
	{ "medic_blue"       "medic_head_blue"       "eyeball_r"     "eyeball_l"     "medic_backpack_blue" }
	{ "medic_red_invun"  "medic_head_red_invun"  "eyeball_invun" "eyeball_invun" "..\..\effects\invulnfx_red" }
	{ "medic_blue_invun" "medic_head_blue_invun" "eyeball_invun" "eyeball_invun" "..\..\effects\invulnfx_blue" }
}

$definevariable 01_lod "../parts/dmx/medic_lod_01_low.dmx"
$definevariable 02_lod "../parts/dmx/medic_lod_02_low.dmx"
$definevariable 03_lod "../parts/dmx/medic_lod_03_low.dmx"
$definevariable 04_lod "../parts/dmx/medic_lod_04_low.dmx"
$definevariable 05_lod "../parts/dmx/medic_lod_05_low.dmx"

$include medic.qci

//deliberately collapsed due to bone count concerns
$alwayscollapse "prp_hippouch_0_L"
$alwayscollapse "prp_hippouch_0_B"

$alwayscollapse "def_elbow_twist_01_L"
$alwayscollapse "def_elbow_twist_01_R"
$alwayscollapse "def_elbow_twist_02_L"
$alwayscollapse "def_elbow_twist_02_R"
$alwayscollapse "def_wrist_up_deform_01_L"
$alwayscollapse "def_wrist_up_deform_02_L"
$alwayscollapse "def_wrist_up_deform_01_R"
$alwayscollapse "def_wrist_up_deform_02_R"
