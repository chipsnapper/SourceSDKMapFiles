$modelname player/hwm/demo.mdl

// Define the variable that demo.qci will use to load the dmx files for high and low end models.
$definevariable dmxFile "../parts/dmx/demo_morphs_high.dmx"

$cdmaterials "models/player/demo/hwm/"

$definevariable 01_lod "../parts/dmx/demo_lod_01_high.dmx"
$definevariable 02_lod "../parts/dmx/demo_lod_02_high.dmx"
$definevariable 03_lod "../parts/dmx/demo_lod_03_high.dmx"
$definevariable 04_lod "../parts/dmx/demo_lod_04_high.dmx"
$definevariable 05_lod "../parts/dmx/demo_lod_05_high.dmx"

$include demo.qci
$proceduralbones "demo.vrd"
