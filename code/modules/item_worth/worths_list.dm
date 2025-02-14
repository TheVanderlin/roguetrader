//Negative values indicate that instances of these types should use the Value proc
//Mainly used so that stuff inside them can also add to their value, and other things like material,
//stuff like that.

var/global/list/worths = list(
//ROBOT ASSEMBLIES,
					/obj/item/device/bot_kit = 300,
//REAGENT CONTAINERS,
					/obj/item/reagent_containers/hypospray = -90,
					/obj/item/reagent_containers/spray = -23,
					/obj/item/reagent_containers/food/snacks/monkeycube = -25,
					/obj/item/reagent_containers/food/snacks/human = -300,
					/obj/item/reagent_containers/food/snacks/sliceable = -15,
					/obj/item/reagent_containers/food/snacks/slice = -3,
					/obj/item/reagent_containers/food/drinks/bottle = -11,
					/obj/item/reagent_containers/food/drinks = -8,
					/obj/item/reagent_containers/glass/rag = -5,
					/obj/item/reagent_containers/glass = -60,
					/obj/item/reagent_containers = -1,
//WARHAMMER SLUG SIDEARM,
					/obj/item/gun/projectile/pistol/slug = 990,
					/obj/item/gun/projectile/pistol/slug/shotgun = 1650,
					/obj/item/gun/projectile/pistol/stub = 880,
					/obj/item/gun/projectile/pistol/stub/talon = 1140,
					/obj/item/gun/projectile/pistol/bolt_pistol = 2140,
					/obj/item/gun/projectile/pistol/bolt_pistol/gold = 2640,
					/obj/item/gun/projectile/pistol/bolt_pistol/drusian = 2540,
					/obj/item/gun/projectile/pistol/bolt_pistol/sob = 2740,
					/obj/item/gun/projectile/revolver = 1140,
					/obj/item/gun/projectile/revolver/imperial/holdout = 1040,
					/obj/item/gun/projectile/revolver/imperial/heavy = 1340,
					/obj/item/gun/projectile/revolver/imperial/heavy/autogun = 1550,
					/obj/item/gun/projectile/revolver/imperial/heavy/mateba = 1640,
//WARHAMMER SLUG HEAVY,
					/obj/item/gun/projectile/heavysniper/boltaction/imperial/triangong = 1240,
					/obj/item/gun/projectile/heavysniper/boltaction/imperial/crucible = 1340,
					/obj/item/gun/projectile/heavysniper/boltaction/imperial/thrower = 3100,
					/obj/item/gun/projectile/heavysniper/boltaction/imperial = 1040,
					/obj/item/gun/projectile/shotgun/pump/voxlegis/magrave = 1340,
					/obj/item/gun/projectile/shotgun/pump/voxlegis = 1140,
					/obj/item/gun/projectile/shotgun = 1040,
					/obj/item/gun/projectile/automatic/autogun/stubber/cognis = 2720,
					/obj/item/gun/projectile/automatic/autogun/stubber = 2220,
					/obj/item/gun/projectile/automatic/autogun/krieg = 2120,
					/obj/item/gun/projectile/automatic/autogun/valhalla = 2020,
					/obj/item/gun/projectile/automatic/autogun/a80 = 1920,
					/obj/item/gun/projectile/automatic/autogun = 1720,
					/obj/item/gun/projectile/automatic/slugrifle/agri = 1820,
					/obj/item/gun/projectile/automatic/slugrifle/scipio = 1820,
					/obj/item/gun/projectile/automatic/slugrifle = 1920,
					/obj/item/gun/projectile/automatic/boltrifle/lockebolter/sister = 5200,
					/obj/item/gun/projectile/automatic/boltrifle/lockebolter/drusian = 5100,
					/obj/item/gun/projectile/automatic/boltrifle/lockebolter = 4400,
					/obj/item/gun/projectile/automatic/boltrifle = 7400,
					/obj/item/gun/projectile/automatic/radcarbine/radpistol = 3100,
					/obj/item/gun/projectile/automatic/radcarbine = 3600,
					/obj/item/gun/projectile/automatic/gaussrifle = 12800,
//WARHAMMER ENERGY GUNS,
					/obj/item/gun/energy/lasgun/laspistol = 1440,
					/obj/item/gun/energy/lasgun/laspistol/militarum = 1640,
					/obj/item/gun/energy/lasgun/laspistol/lucius = 1740,
					/obj/item/gun/energy/lasgun/laspistol/grim = 1340,
					/obj/item/gun/energy/lasgun/laspistol/hellpistol = 2340,
					/obj/item/gun/energy/lasgun/hotshot/volkite = 6540,
					/obj/item/gun/energy/lasgun/hotshot/masterwork = 4940,
					/obj/item/gun/energy/lasgun/hotshot/krieg = 4240,
					/obj/item/gun/energy/lasgun/hotshot = 4140,
					/obj/item/gun/energy/lasgun/accatran = 2540,
					/obj/item/gun/energy/lasgun/catachan = 2740,
					/obj/item/gun/energy/lasgun/triplex = 2540,
					/obj/item/gun/energy/lasgun/lucius = 2640,
					/obj/item/gun/energy/lasgun/kantrael = 2340,
					/obj/item/gun/energy/lasgun = 2140,
					/obj/item/gun/energy/meltagun = 6100,
					/obj/item/gun/energy/meltagun/multi = 7300,
					/obj/item/gun/energy/plasma = 5600,
					/obj/item/gun/energy/plasma/pistol = 5500,
					/obj/item/gun/energy/plasma/pistol/archeotech = 7300,
					/obj/item/gun/energy/plasma/pistol/mechanicus = 6400,
					/obj/item/gun/energy/plasma/pistol/xenos = 7100,
					/obj/item/gun/energy/tau/ionrifle = 6600,
					/obj/item/gun/energy/tau/railgun = 6100,
					/obj/item/gun/energy/tau/pulserifle = 4200,
					/obj/item/gun/energy/tau/pulsepistol = 4000,



//GUNS,
					/obj/item/gun/energy/laser/practice = 440,
					/obj/item/gun/energy/laser/dogan = 1025,
					/obj/item/gun/energy/laser = 1280,
					/obj/item/gun/energy/retro = 1050,
					/obj/item/gun/energy/captain = 1650,
					/obj/item/gun/energy/lasercannon = 1880,
					/obj/item/gun/energy/xray = 1960,
					/obj/item/gun/energy/sniperrifle = 2300,
					/obj/item/gun/energy/lasertag = 250,
					/obj/item/gun/energy/gun/nuclear = 1950,
					/obj/item/gun/energy/pulse_rifle/destroyer = 3630,
					/obj/item/gun/energy/pulse_rifle = 3285,
					/obj/item/gun/energy/taser = 940,
					/obj/item/gun/energy/crossbow/largecrossbow = 2050,
					/obj/item/gun/energy/crossbow = 2310,
					/obj/item/gun/energy = 1615,
//LAUNCHERS,
					/obj/item/gun/launcher/crossbow = 460,
					/obj/item/gun/launcher/pneumatic/small = 370,
					/obj/item/gun/launcher/pneumatic = 420,
					/obj/item/gun/launcher/syringe = 315,
					/obj/item/gun/launcher/alien = 1975,
					/obj/item/gun/launcher = 450,
//AUTOMATICS,
					/obj/item/gun/projectile/automatic/merc_smg = 2215,
					/obj/item/gun/projectile/automatic/assault_rifle = 2675,
					/obj/item/gun/projectile/automatic/bullpup_rifle = 2960,
					/obj/item/gun/projectile/automatic/battlerifle = 1985,
					/obj/item/gun/projectile/automatic/l6_saw = 5470,
					/obj/item/gun/projectile/automatic/machine_pistol/usi = 1860,
					/obj/item/gun/projectile/automatic = 2060,
//PROJECTILE,
					/obj/item/gun/projectile/pistol/sec/MK = 800,
					/obj/item/gun/projectile/pistol/magnum_pistol = 1160,
					/obj/item/gun/projectile/pistol/gyropistol = 2960,
					/obj/item/gun/projectile/heavysniper/ant = 1035, // Toy anti mataerial rifle
					/obj/item/gun/projectile/heavysniper/boltaction = 1365,
					/obj/item/gun/projectile/heavysniper = 3190,
					/obj/item/gun/projectile/sniper/semistrip = 1250,
					/obj/item/gun/projectile/sniper/garand = 2650,
					/obj/item/gun/projectile = 1275,
//GUN,
					/obj/item/gun = 1400,
//MATERIAL STACKS,
					/obj/item/stack/material/marble = -20,
					/obj/item/stack/material/diamond = -60,
					/obj/item/stack/material/uranium = -120,
					/obj/item/stack/material/plastic = -15,
					/obj/item/stack/material/gold = -55,
					/obj/item/stack/material/silver = -45,
					/obj/item/stack/material/platinum = -95,
					/obj/item/stack/material/mhydrogen = -110,
					/obj/item/stack/material/tritium = -100,
					/obj/item/stack/material/osmium = -100,
					/obj/item/stack/material/plasteel = -40,
					/obj/item/stack/material/wood = -2,
					/obj/item/stack/material/cloth = -3,
					/obj/item/stack/material/cardboard = -1,
					/obj/item/stack/material/glass/reinforced = -12,
					/obj/item/stack/material/glass/boron = -35,
					/obj/item/stack/material/glass/boron_reinforced = -65,
					/obj/item/stack/material = -5,
//STACKS,
					/obj/item/stack/medical/advanced/bruise_pack = -30,
					/obj/item/stack/medical/advanced/ointment = -40,
					/obj/item/stack/medical/splint = -25,
					/obj/item/stack/medical = -15,
					/obj/item/stack/nanopaste = -30,
					/obj/item/stack/material/rods = -5,
					/obj/item/stack/telecrystal = -100,
					/obj/item/stack/wax = -5,
					/obj/item/stack = -5,
//STORAGE,
					/obj/item/storage/briefcase/crimekit = -50,
					/obj/item/storage = -30,
//SPECIAL
					/obj/item/spacecash = -1,
					/obj/item/stack/thrones = -1,
					/obj/item/ore = -10,
					/obj/item/device/batterer = 4000,
					/obj/item/device/scanner/mining =  130,
					/obj/item/exploration_loot = -1,
					/obj/item/rnd = -1,
//PICK AXES,
					/obj/item/pickaxe/hand/silver = 300,
					/obj/item/pickaxe/drill = 100,
					/obj/item/pickaxe/jackhammer = 90,
					/obj/item/pickaxe/hand/gold = 400,
					/obj/item/gun/energy/plasmacutter = 300,
					/obj/item/pickaxe/hand/diamond = 900,
					/obj/item/pickaxe/diamonddrill = 1500,
					/obj/item/pickaxe = 30,
					/obj/item/shovel/spade = 20,
					/obj/item/slimepotion = 400,
					/obj/item/slimepotion2 = 500,
					/obj/item/slimesteroid = 350,
					/obj/item/slimesteroid2 = 350,
					/obj/item/portable_destructive_analyzer = 980,
					/obj/item/inflatable_dispenser = 300,
					/obj/item/matter_decompiler = 400,
//COMPUTER HARDWARE,
					/obj/item/stock_parts/computer/battery_module/advanced = 110,
					/obj/item/stock_parts/computer/battery_module/super = 150,
					/obj/item/stock_parts/computer/battery_module/ultra = 190,
					/obj/item/stock_parts/computer/battery_module/micro = 80,
					/obj/item/stock_parts/computer/battery_module/nano = 60,
					/obj/item/stock_parts/computer/battery_module/lambda = 100000,
					/obj/item/stock_parts/computer/hard_drive/advanced = 160,
					/obj/item/stock_parts/computer/hard_drive/super = 250,
					/obj/item/stock_parts/computer/hard_drive/cluster = 500,
					/obj/item/stock_parts/computer/hard_drive/small = 100,
					/obj/item/stock_parts/computer/hard_drive/micro = 60,
					/obj/item/stock_parts/computer/hard_drive/portable = 30,
					/obj/item/stock_parts/computer/hard_drive/portable/advanced = 60,
					/obj/item/stock_parts/computer/hard_drive/portable/super = 125,
					/obj/item/stock_parts/computer/network_card/advanced = 90,
					/obj/item/stock_parts/computer/network_card/wired = 40,
					/obj/item/stock_parts/computer/processor_unit/small = 80,
					/obj/item/stock_parts/computer/processor_unit/photonic = 400,
					/obj/item/stock_parts/computer/processor_unit/photonic/small = 120,
					/obj/item/stock_parts/computer/processor_unit = 200,
					/obj/item/stock_parts/computer/tesla_link = 350,
					/obj/item/stock_parts/computer = 80,
					/obj/item/stock_parts/computer/hard_drive = 125,
					/obj/item/material/clipboard = 15,
//POWER CELLS,
					/obj/item/cell/device/high/laspack = 400,
					/obj/item/cell/device/high/laspack/hotshot = 600,
					/obj/item/cell/device/high/mechanicus = 800,
					/obj/item/cell/device/high/melta = 600,
					/obj/item/cell/device/high/xenos = 900,
					/obj/item/cell/device = 200,
					/obj/item/cell/crap = 100,
					/obj/item/cell/standard = 400,
					/obj/item/cell/high = 860,
					/obj/item/cell/super = 1280,
					/obj/item/cell/hyper = 1910,
					/obj/item/cell/infinite = 50000,
					/obj/item/cell/potato = 200,
					/obj/item/cell/slime = 260,
//SMES COILS,
					/obj/item/stock_parts/smes_coil/weak = 1000,
					/obj/item/stock_parts/smes_coil/super_capacity = 5000,
					/obj/item/stock_parts/smes_coil/super_io = 4500,
					/obj/item/stock_parts/smes_coil = 2000,
					/obj/item/tracker_electronics = 150,
					/obj/item/syringe_cartridge = 20,
					/obj/item/silencer = 60,
					/obj/item/fossil = 100,
					/obj/item/vampiric = 666,
					/obj/item/anobattery = 1800,
					/obj/item/anodevice = 3300,
					/obj/item/scrying = 1000,
					/obj/item/magic_rock = 1500,
					/obj/item/cane/concealed = 150,
					/obj/item/cane = 40,
					/obj/item/caution = 15,
					/obj/item/module = 100,
//STOCK PARTS,
					/obj/item/stock_parts/capacitor/adv = 160,
					/obj/item/stock_parts/scanning_module/adv = 160,
					/obj/item/stock_parts/manipulator/nano = 160,
					/obj/item/stock_parts/micro_laser/high = 160,
					/obj/item/stock_parts/matter_bin/adv = 160,
					/obj/item/stock_parts/capacitor/super = 300,
					/obj/item/stock_parts/scanning_module/phasic = 300,
					/obj/item/stock_parts/manipulator/pico = 250,
					/obj/item/stock_parts/micro_laser/ultra = 290,
					/obj/item/stock_parts/matter_bin/super = 310,
					/obj/item/stock_parts/subspace/ansible = 500,
					/obj/item/stock_parts/subspace/filter = 560,
					/obj/item/stock_parts/subspace/amplifier = 540,
					/obj/item/stock_parts/subspace/treatment = 570,
					/obj/item/stock_parts/subspace/analyzer = 630,
					/obj/item/stock_parts/subspace/crystal = 530,
					/obj/item/stock_parts/subspace/transmitter = 620,
					/obj/item/stock_parts = 80,
					/obj/item/ectoplasm = 10,
					/obj/item/toy/xmas_cracker = 20,
					/obj/item/pinpointer = 180,
					/obj/item/pinpointer/advpinpointer = 330,
					/obj/item/airalarm_electronics = 90,
					/obj/item/firealarm_electronics = 80,
					/obj/item/intercom_electronics = 80,
					/obj/item/disk/nuclear = 10000,
					/obj/item/disk = -90,
					/obj/item/camera_assembly = 35,
					/obj/item/orion_ship = 100,
					/obj/item/airlock_electronics/secure = 600,
					/obj/item/airlock_electronics = 300,
					/obj/item/aiModule = 3000,
					/obj/item/autopsy_scanner = 180,
//CARDS,
					/obj/item/card/emag = 300,
					/obj/item/card/id/silver = 200,
					/obj/item/card/id/gold = 300,
					/obj/item/card/id/captains_spare = 300,
					/obj/item/card/id = 30,
					/obj/item/flame/match = 1,
					/obj/item/flame/lighter/zippo = 10,
					/obj/item/plastique = 200,
					/obj/item/extinguisher/mini = 20,
					/obj/item/extinguisher = 40,
					/obj/item/flamethrower = 60,
					/obj/item/handcuffs/cable = 5,
					/obj/item/handcuffs = 35,
					/obj/item/rcd = 1000,
					/obj/item/rcd_ammo = 50,
					/obj/item/rsf = 300,
					/obj/item/teleportation_scroll = 1000,
					/obj/item/shield/buckler = 300, //More expensive because people don't make them anymore,
					/obj/item/shield/riot = 150,
					/obj/item/shield/energy = 1200,
//SURGERY,
					/obj/item/retractor = 80,
					/obj/item/hemostat = 90,
					/obj/item/cautery = 110,
					/obj/item/surgicaldrill = 130,
					/obj/item/scalpel/laser = 900,
					/obj/item/scalpel/ims = 1200,
					/obj/item/scalpel = 60,
					/obj/item/circular_saw = 140,
					/obj/item/bonegel = 300,
					/obj/item/FixOVein = 500,
					/obj/item/bonesetter = 150,
					/obj/item/locator = 100,
					/obj/item/integrated_circuit/manipulation/bluespace_rift = 7600,
					/obj/item/wrench = 30,
					/obj/item/screwdriver = 15,
					/obj/item/wirecutters = 25,
//WELDINGTOOLS,
					/obj/item/weldingtool/largetank = 150,
					/obj/item/weldingtool/hugetank = 300,
					/obj/item/weldingtool/experimental = 600,
					/obj/item/weldingtool = 100,
					/obj/item/crowbar = 10,
					/obj/item/beartrap = 35,
					/obj/item/nullrod = 60,
					/obj/item/storage/backpack/weldpack = 300,
					/obj/item/stock_parts/circuitboard/aicore = 6000,
					/obj/item/stock_parts/circuitboard = 1000,
//GRENADES,
					/obj/item/grenade/fake = 50,
					/obj/item/grenade/anti_photon = 200,
					/obj/item/grenade/empgrenade = 180,
					/obj/item/grenade/frag = 300,
					/obj/item/grenade/spawnergrenade/viscerator = 600,
					/obj/item/grenade/spawnergrenade/spesscarp = 350,
					/obj/item/grenade/spawnergrenade = 300,
					/obj/item/grenade = 150,
					/obj/item/implant = 100,
					/obj/item/implanter = 80,
//MELEE,
					/obj/item/melee/cultblade = 500,
					/obj/item/melee/energy/axe = 3400,
					/obj/item/melee/energy = 1200,
					/obj/item/melee/whip = 200,
					/obj/item/melee/whip/abyssal = 1025,
					/obj/item/melee/baton/cattleprod = 30,
					/obj/item/melee/baton = 80,
					/obj/item/melee/classic_baton = 30,
					/obj/item/melee/telebaton = 90,
					/obj/item/excalibur = 5000,
					/obj/item/tank/jetpack = 390,
					/obj/item/tank = 40,
					/obj/item/contraband/poster = 25,
//MATERIAL,
					/obj/item/material/sword/katana/replica = -120,
					/obj/item/material/sword/katana = -150,
					/obj/item/material/sword/replica = -100,
					/obj/item/material/sword = -120,
					/obj/item/material/scythe = -100,
					/obj/item/material/twohanded/fireaxe = -150,
					/obj/item/material/harpoon = -70,
					/obj/item/material = -5,
//RIGS,
					/obj/item/rig/unathi/fancy = 30000,
					/obj/item/rig/unathi = 17000,
					/obj/item/rig/combat = 25000,
					/obj/item/rig/ert = 20000,
					/obj/item/rig/light/hacker = 13000,
					/obj/item/rig/light/ninja = 16000,
					/obj/item/rig/light/stealth = 11000,
					/obj/item/rig/light/internalaffairs = 9000,
					/obj/item/rig/light = 14000,
					/obj/item/rig/merc = 25000,
					/obj/item/rig = 15000,
					/obj/item/forensics = 65,
					/obj/item/evidencebag = 5,
					/obj/item/sample = 15,
					/obj/item/board = 15,
					/obj/item/deck/holder = 10,
					/obj/item/pack = 6,
					/obj/item/holo = 0,
					/obj/item/beach_ball/holoball = 0,
					/obj/item/book = 15,
//CLOTHING,
//EARS,
					/obj/item/clothing/ears/skrell = 100,
					/obj/item/clothing/ears/skrell/chain/silver = 170,
					/obj/item/clothing/ears/skrell/chain/bluejewels = 400,
					/obj/item/clothing/ears/skrell/chain/redjewels = 450,
					/obj/item/clothing/ears/skrell/chain/ebony = 440,
					/obj/item/clothing/ears/skrell/chain = 220,
					/obj/item/clothing/ears/skrell/band/silver = 160,
					/obj/item/clothing/ears/skrell/band/bluejewels = 350,
					/obj/item/clothing/ears/skrell/band/redjewels = 360,
					/obj/item/clothing/ears/skrell/band/ebony = 355,
					/obj/item/clothing/ears/skrell/band = 200,
//GLASSES,
					/obj/item/clothing/glasses/meson/prescription = 880,
					/obj/item/clothing/glasses/meson = 800,
					/obj/item/clothing/glasses/science = 400,
					/obj/item/clothing/glasses/night = 1000,
					/obj/item/clothing/glasses/hipster = 400,
					/obj/item/clothing/glasses/prescription = 300,
					/obj/item/clothing/glasses/welding/superior = 450,
					/obj/item/clothing/glasses/welding = 250,
					/obj/item/clothing/glasses/sunglasses/prescription = 230,
					/obj/item/clothing/glasses/hud/security/prot = 550,
					/obj/item/clothing/glasses/hud/security/prot/sunglasses = 530,
					/obj/item/clothing/glasses/thermal = 1990,
					/obj/item/clothing/glasses = 150,
					/obj/item/clothing/glasses/tacgoggles = 1200,
//GLOVES,
					/obj/item/clothing/gloves/boxing = 60,
					/obj/item/clothing/gloves/color/white = 20,
					/obj/item/clothing/gloves/insulated = 300,
					/obj/item/clothing/gloves/insulated/cheap = 25, //cheap cheap cheap,
					/obj/item/clothing/gloves/thick = 350,
					/obj/item/clothing/gloves/captain = 100,
					/obj/item/clothing/gloves/thick/swat = 125,
					/obj/item/clothing/gloves/thick/combat = 400,
					/obj/item/clothing/gloves/latex = 5,
					/obj/item/clothing/gloves/thick/leather = 6,
//MASKS,
					/obj/item/clothing/mask/luchador = 60,
					/obj/item/clothing/mask/breath/medical = 180,
					/obj/item/clothing/mask/breath = 80,
					/obj/item/clothing/mask/gas/plaguedoctor = 100,
					/obj/item/clothing/mask/gas/swat = 200,
					/obj/item/clothing/mask/gas/vox = 400,
					/obj/item/clothing/mask/chameleon/voice = 600,
					/obj/item/clothing/mask/gas = 160,
					/obj/item/clothing/mask/muzzle/tape = 2,
					/obj/item/clothing/mask/muzzle = 100,
					/obj/item/clothing/mask/surgical = 20,
					/obj/item/clothing/mask/fakemoustache = 5,
					/obj/item/clothing/mask/snorkel = 5,
					/obj/item/clothing/mask/ai = 3000,
					/obj/item/clothing/mask/smokable/cigarette = 2,
					/obj/item/clothing/mask/smokable/ecig/util = 100,
					/obj/item/clothing/mask/smokable/ecig/simple = 150,
					/obj/item/clothing/shoes/magboots = 350,
					/obj/item/clothing/shoes/swat = 100,
					/obj/item/clothing/shoes/combat = 200,
//SUITS,
					/obj/item/clothing/suit/space/void/skrell = 1500,
					/obj/item/clothing/suit/space/void/merc = 3000,
					/obj/item/clothing/suit/space/void/security = 3000,
					/obj/item/clothing/suit/space/void = 2800,
					/obj/item/clothing/suit/space/syndicate = 2200,
					/obj/item/clothing/suit/space/vox = 1000,
					/obj/item/clothing/suit/space/cult = 250,
					/obj/item/clothing/suit/space = 730,
					/obj/item/clothing/suit/unathi/mantle = 80,
					/obj/item/clothing/suit/xeno/furs = 90,
					/obj/item/clothing/suit/cultrobes = 200,
					/obj/item/clothing/suit/armor/vest = 550,
					/obj/item/clothing/suit/armor/bulletproof = 500,
					/obj/item/clothing/suit/armor/laserproof = 600,
					/obj/item/clothing/suit/armor/reactive = 1000,
					/obj/item/clothing/suit/armor/centcomm = 2000,
					/obj/item/clothing/suit/armor/heavy = 1000,
					/obj/item/clothing/suit/armor/captain = 2000,
					/obj/item/clothing/suit/armor = 500,
					/obj/item/clothing/suit/armor/grim/bio_suit = 150,
					/obj/item/clothing/suit/captunic/capjacket = 100,
					/obj/item/clothing/suit/security/navyhos = 80,
					/obj/item/clothing/suit/armor/grim/storage/hazardvest = 60,
					/obj/item/clothing/suit/armor/grim/toggle/labcoat = 55,
					/obj/item/clothing/suit/bluetag = 20,
					/obj/item/clothing/suit/redtag = 20,
					/obj/item/clothing/suit/fire/heavy = 600,
					/obj/item/clothing/suit/fire = 500,
					/obj/item/clothing/suit/radiation = 450,
					/obj/item/clothing/suit/bomb_suit = 300,
					/obj/item/clothing/suit/caretakercloak = 50,
					/obj/item/clothing/suit/champarmor = 5050,
					/obj/item/clothing/suit/fiendcowl = 560,
					/obj/item/clothing/suit/infilsuit = 250,
					/obj/item/clothing/suit/straight_jacket/overseercloak = 100,
//HEADS,
					/obj/item/clothing/head/collectable/petehat = 350,
					/obj/item/clothing/head/collectable = 80,
					/obj/item/clothing/head/hardhat = 180,
					/obj/item/clothing/head/helmet/swat = 400,
					/obj/item/clothing/head/helmet/gladiator = 280,
					/obj/item/clothing/head/helmet/tactical = 300,
					/obj/item/clothing/head/helmet/augment = 600,
					/obj/item/clothing/head/helmet/ert = 1000,
					/obj/item/clothing/head/helmet = 250,
					/obj/item/clothing/head/culthood = 150,
					/obj/item/clothing/head/caphat/hop = 100,
					/obj/item/clothing/head/caphat = 200,
					/obj/item/clothing/head/centhat = 600,
					/obj/item/clothing/head/hairflower = 5,
					/obj/item/clothing/head/powdered_wig = 80,
					/obj/item/clothing/head/philosopher_wig = 70,
					/obj/item/clothing/head/welding = 150,
					/obj/item/clothing/head/bomb_hood = 200,
					/obj/item/clothing/head/radiation = 250,
					/obj/item/clothing/head/bio_hood = 100,
					/obj/item/clothing/head/xeno/scarf = 30,
					/obj/item/clothing/head/helmet/space/void/merc = 2000,
					/obj/item/clothing/head/helmet/space/void/security = 2000,
					/obj/item/clothing/head/helmet/space/void = 1900,
					/obj/item/clothing/head/helmet/space/syndicate = 1200,
					/obj/item/clothing/head/helmet/space/deathsquad = 2400,
					/obj/item/clothing/head/helmet/space/vox = 1200,
					/obj/item/clothing/head/helmet/space/capspace = 1200,
					/obj/item/clothing/head/helmet/space/void/skrell = 1200,
					/obj/item/clothing/head/helmet/space/cult = 200,
					/obj/item/clothing/head/helmet/space = 450,
					/obj/item/clothing/head/caretakerhood = 10,
					/obj/item/clothing/head/champhelm = 3200,
					/obj/item/clothing/head/familiarband = 5,
					/obj/item/clothing/head/fiendhood = 100,
					/obj/item/clothing/head/infilhat = 80,
					/obj/item/clothing/head/overseerhood = 50,
//ACCESSORIES,
					/obj/item/clothing/accessory/storage = 55,
					/obj/item/clothing/accessory/stethoscope = 70,
					/obj/item/clothing/accessory/medal = 100,
					/obj/item/clothing/accessory/armband = 30,
					/obj/item/clothing/accessory/badge = 60,
					/obj/item/clothing/accessory/toggleable/suit_vest = 50,
					/obj/item/clothing/accessory/toggleable/tan_jacket = 210,
					/obj/item/clothing/accessory/toggleable/charcoal_jacket = 300,
					/obj/item/clothing/accessory/toggleable/navy_jacket = 170,
					/obj/item/clothing/accessory/toggleable/burgundy_jacket = 160,
					/obj/item/clothing/accessory/toggleable/checkered_jacket = 200,
					/obj/item/clothing/accessory = 15,
//UNDERS,
					/obj/item/clothing/under/rank/captain = 100,
					/obj/item/clothing/under/rank/head_of_personnel = 60,
					/obj/item/clothing/under/rank/head_of_personnel_whimsy = 80,
					/obj/item/clothing/under/rank/chief_engineer = 95,
					/obj/item/clothing/under/rank/research_director = 60,
					/obj/item/clothing/under/rank/chief_medical_officer = 65,
					/obj/item/clothing/under/rank/warden = 5,
					/obj/item/clothing/under/caretaker = 10,
					/obj/item/clothing/under/bluetunic = 60,
					/obj/item/clothing/under/familiargarb = 70,
					/obj/item/clothing/under/lawyer/fiendsuit = 60,
					/obj/item/clothing/under/grimhoodie = 20,
					/obj/item/clothing = 50,
//DEVICES,
					/obj/item/device/personal_shield = 6600,
					/obj/item/device/dociler = 490,
					/obj/item/device/bot_controller = 50,
					/obj/item/device/mmi = 1200,
					/obj/item/device/kit/paint = 500,
					/obj/item/device/kit = 100,
					/obj/item/aicard = 6000,
					/obj/item/device/chameleon = 4000,
					/obj/item/device/paicard = 720,
					/obj/item/device/powersink = 1800,
					/obj/item/device/scanner/spectrometer/adv = 400,
					/obj/item/device/scanner/spectrometer = 300,
					/obj/item/device/scanner/reagent/adv = 600,
					/obj/item/device/scanner/reagent = 500,
					/obj/item/device/scanner/xenobio = 300,
					/obj/item/device/transfer_valve = 50,
					/obj/item/device/synthesized_instrument/violin = 250,
					/obj/item/modular_computer/pda = 60,
					/obj/item/device/radio = 150,
					/obj/item/tank/phoron/onetankbomb = 200,
					/obj/item/device/assembly/igniter = 15,
					/obj/item/device/assembly/infra = 10,
					/obj/item/device/assembly/mousetrap = 5,
					/obj/item/device/assembly/signaler = 30,
					/obj/item/device/assembly = 50,
					/obj/item/device/uv_light = 150,
					/obj/item/device/eftpos = 30,
					/obj/item/device = 90,
//ORGANS,
					/obj/item/organ/internal/heart = 1200,
					/obj/item/organ/internal/brain = 1200,
					/obj/item/organ = 400,
//ITEMS,
					/obj/item/slime_extract = 200,
					/obj/item/robot_parts/robot_component = 250,
					/obj/item/robot_parts = 30,
					/obj/item/modular_computer/tablet = 1300,
					/obj/item/modular_computer = 4000,
					/obj/item/solar_assembly = 680,
					/obj/item/ammo_casing = 5,
					/obj/item/ammo_magazine = -1,
					/obj/item/conveyor_construct = 100,
					/obj/item/conveyor_switch_construct = 30,
					/obj/item/supply_beacon = 5000,
					/obj/item/frame = 60,
					/obj/item/pipe = 100,
					/obj/item/machine_chassis/pipe_meter = 300,
					/obj/item/missile = 1200,
					/obj/item/blueprints = 4000, //Information is valuable,
					/obj/item/bodybag/cryobag = 2000,
					/obj/item/bodybag = 20,
					/obj/item/glass_jar = 10,
					/obj/item/inflatable = 30,
					/obj/item/roller_bed = 80,
					/obj/item/rig_module/grenade_launcher = 1500,
					/obj/item/rig_module/mounted/energy/egun = 2100,
					/obj/item/rig_module/mounted/energy/energy_blade = 2200,
					/obj/item/rig_module/mounted/energy/lcannon = 4100,
					/obj/item/rig_module/stealth_field = 2500,
					/obj/item/rig_module/teleporter = 3000,
					/obj/item/rig_module/fabricator/energy_net = 1200,
					/obj/item/rig_module/fabricator = 2800,
					/obj/item/rig_module = 1000,
					/obj/item/seeds = 10,
					/obj/item/bee_smoker = 60,
					/obj/item/honey_frame = 15,
					/obj/item/beehive_assembly = 100,
					/obj/item/bee_pack = 200,
					/obj/item/weedkiller = 30,
					/obj/item/sign/medipolma = 1500,
					/obj/item = 5,
//STRUCTURES,
					/obj/structure/dogbed = 15,
					/obj/structure/ore_box = 12,
					/obj/structure/constructshell = 100,
					/obj/structure/cable = 1,
					/obj/structure/particle_accelerator = 2000,
					/obj/structure/droppod_door = 65,
					/obj/structure/disposalconstruct = 0, //Similar to cables, they are assembled into something else,
					/obj/structure/disposalpipe/tagger = 70,
					/obj/structure/disposalpipe/sortjunction = 65,
					/obj/structure/disposalpipe = 35,
					/obj/structure/disposaloutlet = 65,
					/obj/structure/boulder = 0, //just a dumb boulder,
					/obj/structure/shuttle = 150,
					/obj/structure/plasticflaps = 15,
					/obj/structure/cult/pylon = 700,
					/obj/structure/cult = 160,
					/obj/structure/cryofeed = 450,
					/obj/structure/AIcore = 6000,
					/obj/structure/AIcore/deactivated = 4000,
					/obj/machinery/constructable_frame/computerframe = 50,
					/obj/structure/plushie = 7,
					/obj/structure/bedsheetbin = 25,
					/obj/structure/coatrack = 10,
					/obj/structure/displaycase = 86,
					/obj/structure/door_assembly = 35,
					/obj/structure/girder = 15,
					/obj/structure/grille = 5,
					/obj/structure/hygiene/shower = -300,
					/obj/structure/hygiene/toilet = 50,
					/obj/structure/inflatable = 1,
					/obj/structure/janitorialcart = 120,
					/obj/structure/kitchenspike = 35,
					/obj/structure/lattice = 1,
					/obj/structure/morgue = 100,
					/obj/structure/crematorium = 600,
					/obj/structure/synthesized_instrument/synthesizer/piano = 1200, //pianos are expensive,
					/obj/structure/noticeboard = 15,
					/obj/structure/safe/floor = 180,
					/obj/structure/safe = 200,
					/obj/structure/sign = 25,
					/obj/structure/dispenser = 500,
					/obj/structure/transit_tube = 80,
					/obj/structure/transit_tube_pod = 100,
					/obj/structure/closet = 15,
					/obj/structure/bed = 7,
					/obj/structure/holostool = 0,
					/obj/structure/holohoop = 0,
					/obj/structure/bookcase = 50,
					/obj/structure/barricade = -1,
					/obj/structure = 30,
//BOTS,
					/mob/living/bot/remotebot = 250,
					/mob/living/bot/cleanbot = 260,
					/mob/living/bot/farmbot = 500,
					/mob/living/bot/floorbot = 190,
					/mob/living/bot/medbot = 600,
					/mob/living/bot/secbot/ed209 = 1200,
					/mob/living/bot/secbot = 800,
					/mob/living/bot = 300,
//MOBS,
					/mob/living/carbon/human = -10000,
					/mob/living/carbon/slime = 5000,
					/mob/living/silicon/robot = 10000,
					/mob/living/silicon/pai = 1000,
					/mob/living/silicon/ai = 10000,
					/mob/living/silicon = 5000,
					/mob/living/simple_animal/borer = 10000,
					/mob/living/simple_animal/passive/corgi/Ian = 1000, //Ian is valuable,
					/mob/living/simple_animal/passive/cow = 2000, //Cow expensive,
					/mob/living/simple_animal/hostile  = 1000,
					/mob/living/simple_animal = 500,
					/mob/living = 100,
//MACHINERY,
					/obj/machinery/mineral/unloading_machine = -500,
					/obj/machinery/mining/brace = -300,
					/obj/machinery/drone_fabricator = -3000,
					/obj/machinery/photocopier/faxmachine = -500,
					/obj/machinery/papershredder = -80,
					/obj/machinery/gravity_generator = -16000,
					/obj/machinery/light = 25,
					/obj/machinery/power/smes/buildable = -15000,
					/obj/machinery/compressor = -4000,
					/obj/machinery/power/turbine = -6000,
					/obj/machinery/computer/turbine_computer = -2000,
					/obj/machinery/chem_master = -6000,
					/obj/machinery/chemical_dispenser = -5000,
					/obj/machinery/conveyor = 200,
					/obj/machinery/conveyor_switch = 100,
					/obj/machinery/disposal = 500,
					/obj/machinery/r_n_d/protolathe = -15000,
					/obj/machinery/r_n_d/server = -20000,
					/obj/machinery/r_n_d = -1000,
					/obj/machinery/auto_cloner = -13000,
					/obj/machinery/giga_drill = -1900,
					/obj/machinery/artifact = -13500,
					/obj/machinery/artifact_analyser = -11900,
					/obj/machinery/artifact_harvester = -12300,
					/obj/machinery/artifact_scanpad = -1800,
					/obj/machinery/suspension_gen = -3000,
					/obj/machinery/keycard_auth = -100,
					/obj/machinery/power/supermatter/shard = 100000,
					/obj/machinery/power/supermatter = 500000,
					/obj/machinery/atmospherics/pipe/simple/heat_exchanging = -1000,
					/obj/machinery/atmospherics/pipe = -100,
					/obj/machinery/atmospherics/portables_connector = -500,
					/obj/machinery/atmospherics/tvalve = -150,
					/obj/machinery/atmospherics/valve = -120,
					/obj/machinery/atmospherics/binary/circulator = -2500,
					/obj/machinery/atmospherics/binary/passive_gate = -1600,
					/obj/machinery/atmospherics/binary/pump = -1900,
					/obj/machinery/atmospherics/binary/pump/high_power = -2500,
					/obj/machinery/atmospherics/omni/filter = -4000,
					/obj/machinery/atmospherics/omni/mixer = -3600,
					/obj/machinery/atmospherics/unary/freezer = -6000,
					/obj/machinery/atmospherics/unary/generator_input = -2500,
					/obj/machinery/atmospherics/unary/heater = -6000,
					/obj/machinery/atmospherics/unary/outlet_injector = -2300,
					/obj/machinery/atmospherics/unary/vent_pump = -2000,
					/obj/machinery/atmospherics/unary/vent_scrubber = -2300,
					/obj/machinery/bodyscanner = -6000,
					/obj/machinery/body_scanconsole = -1500,
					/obj/machinery/alarm = -800,
					/obj/machinery/air_sensor = -800,
					/obj/machinery/fabricator = -3300,
					/obj/machinery/bluespacerelay = -4000,
					/obj/machinery/button = 100,
					/obj/machinery/cablelayer = -1700,
					/obj/machinery/cell_charger = -90,
					/obj/machinery/constructable_frame = -500,
					/obj/machinery/cryopod = -3000,
					/obj/machinery/barrier = -500,
					/obj/machinery/floodlight = -200,
					/obj/machinery/floor_light = -100,
					/obj/machinery/floorlayer = -1500,
					/obj/machinery/igniter = -300,
					/obj/machinery/sparker = -500,
					/obj/structure/iv_stand = -100,
					/obj/machinery/jukebox = -700,
					/obj/machinery/mass_driver = -500,
					/obj/machinery/navbeacon = -90,
					/obj/machinery/newscaster = -100,
					/obj/machinery/nuclearbomb = -10000,
					/obj/machinery/recharger = -200,
					/obj/machinery/sleeper = -4000,
					/obj/machinery/space_heater = -500,
					/obj/machinery/ai_status_display = -600,
					/obj/machinery/camera = -700,
					/obj/machinery/airlock_sensor = -800,
					/obj/machinery/door/airlock = -800,
					/obj/machinery/door/blast/shutters = -300,
					/obj/machinery/door/blast = -1000,
					/obj/machinery/door/firedoor = -600,
					/obj/machinery/door = -100,
					/obj/machinery/door_timer = -300,
					/obj/machinery/embedded_controller/radio/airlock = -600,
					/obj/machinery/gibber = -600,
					/obj/machinery/microwave = -70,
					/obj/machinery/pipedispenser = -100,
					/obj/machinery/telecomms/broadcaster = -10000,
					/obj/machinery/telecomms = -7000,
					/obj/machinery/acting/changer = -3000,
					/obj/machinery/dnaforensics = -1200,
					/obj/machinery/microscope = -550,
					/obj/machinery/computer/account_database = -3000,
					/obj/machinery/atm = -4500,
					/obj/machinery/readybutton = -0,
					/obj/machinery/botany/editor = -16000,
					/obj/machinery/botany = -9050,
					/obj/machinery/seed_storage = -500,
					/obj/machinery/beehive = -500,
					/obj/machinery/portable_atmospherics/hydroponics/soil = 1, //its dirt,
					/obj/machinery/portable_atmospherics/hydroponics = -2300,
					/obj/machinery/libraryscanner = -1000,
					/obj/machinery/bookbinder = -1200,
					/obj/machinery = -1000,
					) //Must be in descending order. Child before parents, otherwise it doesn't work.,
