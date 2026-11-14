-- Whippy Mirror Park homes: every walk-in home placement of the resource. Matte-window fade, interior loader, a conflict
-- warning and read-only diagnostics. The homes' doors are NOT registered here: the server's door system (whip_core)
-- owns them (user decision 2026-10-04; a second door-system key for the same door can be refused by the game).
local VERSION = '0.12.0'
local doors = {
    { id = 'whippy_mp_mp_d01_p01_mp_d01_door_01', model = 'mp_d01_door_01', house = 'mp_d01_p01', position = vector3(905.6659849, -489.3123253, 59.5532800) },
    { id = 'whippy_mp_mp_d01_p01_mp_d01_door_02', model = 'mp_d01_door_02', house = 'mp_d01_p01', position = vector3(899.2794967, -474.6458880, 59.5682800) },
    { id = 'whippy_mp_mp_d01_p01_mp_d01_door_03', model = 'mp_d01_door_03', house = 'mp_d01_p01', position = vector3(906.0955770, -484.1260948, 63.0422798) },
    { id = 'whippy_mp_mp_d01_p01_mp_d01_door_04', model = 'mp_d01_door_04', house = 'mp_d01_p01', position = vector3(901.1900160, -479.9221120, 63.0422798) },
    { id = 'whippy_mp_mp_d01_p01_mp_d01_door_05', model = 'mp_d01_door_05', house = 'mp_d01_p01', position = vector3(900.5261874, -476.7299136, 63.0422798) },
    { id = 'whippy_mp_mp_d01_p02_mp_d01_door_01', model = 'mp_d01_door_01', house = 'mp_d01_p02', position = vector3(1101.4953599, -410.8656725, 67.6721900) },
    { id = 'whippy_mp_mp_d01_p02_mp_d01_door_02', model = 'mp_d01_door_02', house = 'mp_d01_p02', position = vector3(1117.4213721, -412.3668985, 67.6871900) },
    { id = 'whippy_mp_mp_d01_p02_mp_d01_door_03', model = 'mp_d01_door_03', house = 'mp_d01_p02', position = vector3(1105.8273204, -413.7493590, 71.1611898) },
    { id = 'whippy_mp_mp_d01_p02_mp_d01_door_04', model = 'mp_d01_door_04', house = 'mp_d01_p02', position = vector3(1111.8791448, -411.4880743, 71.1611898) },
    { id = 'whippy_mp_mp_d01_p02_mp_d01_door_05', model = 'mp_d01_door_05', house = 'mp_d01_p02', position = vector3(1114.9943555, -412.4504978, 71.1611898) },
    { id = 'whippy_mp_mp_d01_p03_mp_d01_door_01', model = 'mp_d01_door_01', house = 'mp_d01_p03', position = vector3(919.0888650, -569.4987041, 58.4834776) },
    { id = 'whippy_mp_mp_d01_p03_mp_d01_door_02', model = 'mp_d01_door_02', house = 'mp_d01_p03', position = vector3(912.2165925, -555.0535152, 58.4984776) },
    { id = 'whippy_mp_mp_d01_p03_mp_d01_door_03', model = 'mp_d01_door_03', house = 'mp_d01_p03', position = vector3(919.3451813, -564.3010278, 61.9724774) },
    { id = 'whippy_mp_mp_d01_p03_mp_d01_door_04', model = 'mp_d01_door_04', house = 'mp_d01_p03', position = vector3(914.3020873, -560.2630579, 61.9724774) },
    { id = 'whippy_mp_mp_d01_p03_mp_d01_door_05', model = 'mp_d01_door_05', house = 'mp_d01_p03', position = vector3(913.5321218, -557.0947852, 61.9724774) },
    { id = 'whippy_mp_mp_d01_p04_mp_d01_door_01', model = 'mp_d01_door_01', house = 'mp_d01_p04', position = vector3(1389.1559857, -568.8501604, 74.6135700) },
    { id = 'whippy_mp_mp_d01_p04_mp_d01_door_02', model = 'mp_d01_door_02', house = 'mp_d01_p04', position = vector3(1403.9471627, -562.7581426, 74.6285700) },
    { id = 'whippy_mp_mp_d01_p04_mp_d01_door_03', model = 'mp_d01_door_03', house = 'mp_d01_p04', position = vector3(1394.3325918, -569.3833435, 78.1025698) },
    { id = 'whippy_mp_mp_d01_p04_mp_d01_door_04', model = 'mp_d01_door_04', house = 'mp_d01_p04', position = vector3(1398.6338004, -564.5628041, 78.1025698) },
    { id = 'whippy_mp_mp_d01_p04_mp_d01_door_05', model = 'mp_d01_door_05', house = 'mp_d01_p04', position = vector3(1401.8386313, -563.9629227, 78.1025698) },
    { id = 'whippy_mp_mp_d01_p05_mp_d01_door_01', model = 'mp_d01_door_01', house = 'mp_d01_p05', position = vector3(1367.8032801, -606.9965365, 74.8280600) },
    { id = 'whippy_mp_mp_d01_p05_mp_d01_door_02', model = 'mp_d01_door_02', house = 'mp_d01_p05', position = vector3(1367.5543121, -622.9912101, 74.8430600) },
    { id = 'whippy_mp_mp_d01_p05_mp_d01_door_03', model = 'mp_d01_door_03', house = 'mp_d01_p05', position = vector3(1365.2678218, -611.5410919, 78.3170598) },
    { id = 'whippy_mp_mp_d01_p05_mp_d01_door_04', model = 'mp_d01_door_04', house = 'mp_d01_p05', position = vector3(1367.9962572, -617.3971684, 78.3170598) },
    { id = 'whippy_mp_mp_d01_p05_mp_d01_door_05', model = 'mp_d01_door_05', house = 'mp_d01_p05', position = vector3(1367.2808371, -620.5782015, 78.3170598) },
    { id = 'whippy_mp_mp_d01_p06_mp_d01_door_01', model = 'mp_d01_door_01', house = 'mp_d01_p06', position = vector3(1386.8733502, -593.2892393, 74.6025648) },
    { id = 'whippy_mp_mp_d01_p06_mp_d01_door_02', model = 'mp_d01_door_02', house = 'mp_d01_p06', position = vector3(1399.4532683, -603.1703920, 74.6175648) },
    { id = 'whippy_mp_mp_d01_p06_mp_d01_door_03', model = 'mp_d01_door_03', house = 'mp_d01_p06', position = vector3(1388.9555609, -598.0585082, 78.0915646) },
    { id = 'whippy_mp_mp_d01_p06_mp_d01_door_04', model = 'mp_d01_door_04', house = 'mp_d01_p06', position = vector3(1395.2683512, -599.4320661, 78.0915646) },
    { id = 'whippy_mp_mp_d01_p06_mp_d01_door_05', model = 'mp_d01_door_05', house = 'mp_d01_p06', position = vector3(1397.3671237, -601.9272512, 78.0915646) },
    { id = 'whippy_mp_mp_d01_p07_mp_d01_door_01', model = 'mp_d01_door_01', house = 'mp_d01_p07', position = vector3(1302.7927839, -526.8730619, 71.5777400) },
    { id = 'whippy_mp_mp_d01_p07_mp_d01_door_02', model = 'mp_d01_door_02', house = 'mp_d01_p07', position = vector3(1308.4088216, -511.8946864, 71.5927400) },
    { id = 'whippy_mp_mp_d01_p07_mp_d01_door_03', model = 'mp_d01_door_03', house = 'mp_d01_p07', position = vector3(1306.7094846, -523.4465487, 75.0667398) },
    { id = 'whippy_mp_mp_d01_p07_mp_d01_door_04', model = 'mp_d01_door_04', house = 'mp_d01_p07', position = vector3(1306.1104658, -517.0138840, 75.0667398) },
    { id = 'whippy_mp_mp_d01_p07_mp_d01_door_05', model = 'mp_d01_door_05', house = 'mp_d01_p07', position = vector3(1307.8544688, -514.2590242, 75.0667398) },
    { id = 'whippy_mp_mp_d01_p08_mp_d01_door_01', model = 'mp_d01_door_01', house = 'mp_d01_p08', position = vector3(1348.0174632, -546.2156494, 74.0087500) },
    { id = 'whippy_mp_mp_d01_p08_mp_d01_door_02', model = 'mp_d01_door_02', house = 'mp_d01_p08', position = vector3(1354.4720631, -531.5790598, 74.0237500) },
    { id = 'whippy_mp_mp_d01_p08_mp_d01_door_03', model = 'mp_d01_door_03', house = 'mp_d01_p08', position = vector3(1352.1217796, -543.0162551, 77.4977498) },
    { id = 'whippy_mp_mp_d01_p08_mp_d01_door_04', model = 'mp_d01_door_04', house = 'mp_d01_p08', position = vector3(1351.8877169, -536.5600013, 77.4977498) },
    { id = 'whippy_mp_mp_d01_p08_mp_d01_door_05', model = 'mp_d01_door_05', house = 'mp_d01_p08', position = vector3(1353.7848110, -533.9082410, 77.4977498) },
    { id = 'whippy_mp_mp_d01_p09_mp_d01_door_01', model = 'mp_d01_door_01', house = 'mp_d01_p09', position = vector3(1301.4506523, -574.7762701, 71.8492400) },
    { id = 'whippy_mp_mp_d01_p09_mp_d01_door_02', model = 'mp_d01_door_02', house = 'mp_d01_p09', position = vector3(1296.5788581, -590.0129731, 71.8642400) },
    { id = 'whippy_mp_mp_d01_p09_mp_d01_door_03', model = 'mp_d01_door_03', house = 'mp_d01_p09', position = vector3(1297.7074001, -578.3914586, 75.3382398) },
    { id = 'whippy_mp_mp_d01_p09_mp_d01_door_04', model = 'mp_d01_door_04', house = 'mp_d01_p09', position = vector3(1298.6223923, -584.7868295, 75.3382398) },
    { id = 'whippy_mp_mp_d01_p09_mp_d01_door_05', model = 'mp_d01_door_05', house = 'mp_d01_p09', position = vector3(1297.0161348, -587.6242105, 75.3382398) },
    { id = 'whippy_mp_mp_d01_p10_mp_d01_door_01', model = 'mp_d01_door_01', house = 'mp_d01_p10', position = vector3(1323.7151736, -583.7504278, 73.3633700) },
    { id = 'whippy_mp_mp_d01_p10_mp_d01_door_02', model = 'mp_d01_door_02', house = 'mp_d01_p10', position = vector3(1316.8763555, -598.2114801, 73.3783700) },
    { id = 'whippy_mp_mp_d01_p10_mp_d01_door_03', model = 'mp_d01_door_03', house = 'mp_d01_p10', position = vector3(1319.5278112, -586.8403335, 76.8523698) },
    { id = 'whippy_mp_mp_d01_p10_mp_d01_door_04', model = 'mp_d01_door_04', house = 'mp_d01_p10', position = vector3(1319.5913187, -593.3005148, 76.8523698) },
    { id = 'whippy_mp_mp_d01_p10_mp_d01_door_05', model = 'mp_d01_door_05', house = 'mp_d01_p10', position = vector3(1317.6248684, -595.9012581, 76.8523698) },
    { id = 'whippy_mp_mp_d01_p11_mp_d01_door_01', model = 'mp_d01_door_01', house = 'mp_d01_p11', position = vector3(959.8813701, -670.5461104, 58.5668300) },
    { id = 'whippy_mp_mp_d01_p11_mp_d01_door_02', model = 'mp_d01_door_02', house = 'mp_d01_p11', position = vector3(945.8067518, -678.1485255, 58.5818300) },
    { id = 'whippy_mp_mp_d01_p11_mp_d01_door_03', model = 'mp_d01_door_03', house = 'mp_d01_p11', position = vector3(954.6773874, -670.5560896, 62.0558298) },
    { id = 'whippy_mp_mp_d01_p11_mp_d01_door_04', model = 'mp_d01_door_04', house = 'mp_d01_p11', position = vector3(950.9027572, -675.7991958, 62.0558298) },
    { id = 'whippy_mp_mp_d01_p11_mp_d01_door_05', model = 'mp_d01_door_05', house = 'mp_d01_p11', position = vector3(947.7780334, -676.7302699, 62.0558298) },
    { id = 'whippy_mp_mp_h3_p02_mp_h3_door_01', model = 'mp_h3_door_01', house = 'mp_h3_p02', position = vector3(1250.6137549, -514.8059536, 69.4773400) },
    { id = 'whippy_mp_mp_h3_p02_mp_h3_door_02', model = 'mp_h3_door_02', house = 'mp_h3_p02', position = vector3(1241.4229707, -511.0425073, 69.4718400) },
    { id = 'whippy_mp_mp_h3_p02_mp_h3_door_03', model = 'mp_h3_door_03', house = 'mp_h3_p02', position = vector3(1245.2492751, -512.9261546, 69.4538400) },
    { id = 'whippy_mp_mp_h3_p02_mp_h3_door_04', model = 'mp_h3_door_04', house = 'mp_h3_p02', position = vector3(1248.8875202, -513.5328435, 69.4538400) },
    { id = 'whippy_mp_mp_h3_door_01', model = 'mp_h3_door_01', house = 'mp_h3', position = vector3(999.7678097, -569.2724583, 60.7228637) },
    { id = 'whippy_mp_mp_h3_door_02', model = 'mp_h3_door_02', house = 'mp_h3', position = vector3(1009.3352800, -571.9365848, 60.7173637) },
    { id = 'whippy_mp_mp_h3_door_03', model = 'mp_h3_door_03', house = 'mp_h3', position = vector3(1005.3151431, -570.5127749, 60.6993637) },
    { id = 'whippy_mp_mp_h3_door_04', model = 'mp_h3_door_04', house = 'mp_h3', position = vector3(1001.6309372, -570.3352154, 60.6993637) },
    { id = 'whippy_mp_mp_h3_p03_mp_h3_door_01', model = 'mp_h3_door_01', house = 'mp_h3_p03', position = vector3(1217.6671016, -621.8577999, 66.5669000) },
    { id = 'whippy_mp_mp_h3_p03_mp_h3_door_02', model = 'mp_h3_door_02', house = 'mp_h3_p03', position = vector3(1207.7939370, -620.7832433, 66.5614000) },
    { id = 'whippy_mp_mp_h3_p03_mp_h3_door_03', model = 'mp_h3_door_03', house = 'mp_h3_p03', position = vector3(1211.9919672, -621.5350920, 66.5434000) },
    { id = 'whippy_mp_mp_h3_p03_mp_h3_door_04', model = 'mp_h3_door_04', house = 'mp_h3_p03', position = vector3(1215.6560817, -621.1118138, 66.5434000) },
    { id = 'whippy_mp_mp_h3_p04_mp_h3_door_01', model = 'mp_h3_door_01', house = 'mp_h3_p04', position = vector3(996.1418706, -729.3814171, 57.9441619) },
    { id = 'whippy_mp_mp_h3_p04_mp_h3_door_02', model = 'mp_h3_door_02', house = 'mp_h3_p04', position = vector3(987.7273636, -734.6568438, 57.9386619) },
    { id = 'whippy_mp_mp_h3_p04_mp_h3_door_03', model = 'mp_h3_door_03', house = 'mp_h3_p04', position = vector3(991.4879703, -732.6452346, 57.9206619) },
    { id = 'whippy_mp_mp_h3_p04_mp_h3_door_04', model = 'mp_h3_door_04', house = 'mp_h3_p04', position = vector3(994.1012864, -730.0422595, 57.9206619) },
    { id = 'whippy_mp_mp_d05_p01_mp_d05_door_01', model = 'mp_d05_door_01', house = 'mp_d05_p01', position = vector3(854.8596459, -515.3958642, 57.7098651) },
    { id = 'whippy_mp_mp_d05_p01_mp_d05_door_02', model = 'mp_d05_door_02', house = 'mp_d05_p01', position = vector3(861.6158229, -508.3294232, 57.8148650) },
    { id = 'whippy_mp_mp_d05_p01_mp_d05_door_03', model = 'mp_d05_door_03', house = 'mp_d05_p01', position = vector3(854.9723252, -507.9564996, 57.8288651) },
    { id = 'whippy_mp_mp_d05_p01_mp_d05_door_04', model = 'mp_d05_door_04', house = 'mp_d05_p01', position = vector3(854.3803306, -510.8551264, 57.8288651) },
    { id = 'whippy_mp_mp_d05_p02_mp_d05_door_01', model = 'mp_d05_door_01', house = 'mp_d05_p02', position = vector3(1021.1474995, -413.5312470, 66.3303500) },
    { id = 'whippy_mp_mp_d05_p02_mp_d05_door_02', model = 'mp_d05_door_02', house = 'mp_d05_p02', position = vector3(1028.9885202, -407.6918150, 66.4353499) },
    { id = 'whippy_mp_mp_d05_p02_mp_d05_door_03', model = 'mp_d05_door_03', house = 'mp_d05_p02', position = vector3(1022.5004990, -406.2150821, 66.4493500) },
    { id = 'whippy_mp_mp_d05_p02_mp_d05_door_04', model = 'mp_d05_door_04', house = 'mp_d05_p02', position = vector3(1021.4329247, -408.9742098, 66.4493500) },
    { id = 'whippy_mp_mp_d05_p03_mp_d05_door_01', model = 'mp_d05_door_01', house = 'mp_d05_p03', position = vector3(956.9601809, -546.1050791, 59.7149767) },
    { id = 'whippy_mp_mp_d05_p03_mp_d05_door_02', model = 'mp_d05_door_02', house = 'mp_d05_p03', position = vector3(965.4891966, -541.3263306, 59.8199766) },
    { id = 'whippy_mp_mp_d05_p03_mp_d05_door_03', model = 'mp_d05_door_03', house = 'mp_d05_p03', position = vector3(959.2459928, -539.0246890, 59.8339767) },
    { id = 'whippy_mp_mp_d05_p03_mp_d05_door_04', model = 'mp_d05_door_04', house = 'mp_d05_p03', position = vector3(957.8312894, -541.6229792, 59.8339767) },
    { id = 'whippy_mp_mp_d05_p04_mp_d05_door_01', model = 'mp_d05_door_01', house = 'mp_d05_p04', position = vector3(1048.6091151, -479.3826687, 64.2847700) },
    { id = 'whippy_mp_mp_d05_p04_mp_d05_door_02', model = 'mp_d05_door_02', house = 'mp_d05_p04', position = vector3(1050.7795131, -469.8500955, 64.3897699) },
    { id = 'whippy_mp_mp_d05_p04_mp_d05_door_03', model = 'mp_d05_door_03', house = 'mp_d05_p04', position = vector3(1044.8867768, -472.9405358, 64.4037700) },
    { id = 'whippy_mp_mp_d05_p04_mp_d05_door_04', model = 'mp_d05_door_04', house = 'mp_d05_p04', position = vector3(1045.8667663, -475.7319730, 64.4037700) },
    { id = 'whippy_mp_mp_d05_p05_mp_d05_door_01', model = 'mp_d05_door_01', house = 'mp_d05_p05', position = vector3(1259.5466517, -710.4675415, 64.8965100) },
    { id = 'whippy_mp_mp_d05_p05_mp_d05_door_02', model = 'mp_d05_door_02', house = 'mp_d05_p05', position = vector3(1264.6808723, -702.1476672, 65.0015099) },
    { id = 'whippy_mp_mp_d05_p05_mp_d05_door_03', model = 'mp_d05_door_03', house = 'mp_d05_p05', position = vector3(1258.1056426, -703.1682030, 65.0155100) },
    { id = 'whippy_mp_mp_d05_p05_mp_d05_door_04', model = 'mp_d05_door_04', house = 'mp_d05_p05', position = vector3(1258.1310647, -706.1265556, 65.0155100) },
    { id = 'whippy_mp_mp_d07_p01_mp_d07_door_01', model = 'mp_d07_door_01', house = 'mp_d07_p01', position = vector3(922.1731316, -477.2074851, 61.2238640) },
    { id = 'whippy_mp_mp_d07_p01_mp_d07_door_02', model = 'mp_d07_door_02', house = 'mp_d07_p01', position = vector3(917.9837221, -465.3245289, 61.2258640) },
    { id = 'whippy_mp_mp_d07_p01_mp_d07_door_03', model = 'mp_d07_door_03', house = 'mp_d07_p01', position = vector3(921.9892592, -475.7197215, 61.2058640) },
    { id = 'whippy_mp_mp_d07_p01_mp_d07_door_04', model = 'mp_d07_door_04', house = 'mp_d07_p01', position = vector3(920.0718627, -471.5383832, 61.2058640) },
    { id = 'whippy_mp_mp_d07_p02_mp_d07_door_01', model = 'mp_d07_door_01', house = 'mp_d07_p02', position = vector3(893.8138626, -540.8860093, 58.6469900) },
    { id = 'whippy_mp_mp_d07_p02_mp_d07_door_02', model = 'mp_d07_door_02', house = 'mp_d07_p02', position = vector3(905.5607423, -536.3289697, 58.6489900) },
    { id = 'whippy_mp_mp_d07_p02_mp_d07_door_03', model = 'mp_d07_door_03', house = 'mp_d07_p02', position = vector3(895.2951862, -540.6559442, 58.6289900) },
    { id = 'whippy_mp_mp_d07_p02_mp_d07_door_04', model = 'mp_d07_door_04', house = 'mp_d07_p02', position = vector3(899.4148539, -538.6094017, 58.6289900) },
    { id = 'whippy_mp_mp_d07_p03_mp_d07_door_01', model = 'mp_d07_door_01', house = 'mp_d07_p03', position = vector3(928.1572979, -639.7673179, 58.3826851) },
    { id = 'whippy_mp_mp_d07_p03_mp_d07_door_02', model = 'mp_d07_door_02', house = 'mp_d07_p03', position = vector3(919.0718951, -648.4972240, 58.3846851) },
    { id = 'whippy_mp_mp_d07_p03_mp_d07_door_03', model = 'mp_d07_door_03', house = 'mp_d07_p03', position = vector3(926.8788718, -640.5501821, 58.3646851) },
    { id = 'whippy_mp_mp_d07_p03_mp_d07_door_04', model = 'mp_d07_door_04', house = 'mp_d07_p03', position = vector3(923.8652889, -644.0255696, 58.3646851) },
    { id = 'whippy_mp_mp_d08_p01_mp_d08_door_01', model = 'mp_d08_door_01', house = 'mp_d08_p01', position = vector3(942.2580018, -526.4273813, 60.7260433) },
    { id = 'whippy_mp_mp_d08_p01_mp_d08_door_02', model = 'mp_d08_door_02', house = 'mp_d08_p01', position = vector3(945.6840064, -519.7197424, 60.9265434) },
    { id = 'whippy_mp_mp_d08_p01_mp_d08_door_03', model = 'mp_d08_door_03', house = 'mp_d08_p01', position = vector3(943.1196721, -519.5698592, 60.7335434) },
    { id = 'whippy_mp_mp_d08_p01_mp_d08_door_04', model = 'mp_d08_door_04', house = 'mp_d08_p01', position = vector3(945.6887700, -522.6122487, 60.7335434) },
    { id = 'whippy_mp_mp_d08_p01_mp_d08_door_05', model = 'mp_d08_door_05', house = 'mp_d08_p01', position = vector3(952.0961999, -524.0458254, 60.7320434) },
    { id = 'whippy_mp_mp_d08_p01_mp_d08_door_06', model = 'mp_d08_door_06', house = 'mp_d08_p01', position = vector3(950.5923400, -517.3574479, 60.5465434) },
    { id = 'whippy_mp_mp_d08_p02_mp_d08_door_01', model = 'mp_d08_door_01', house = 'mp_d08_p02', position = vector3(1227.5371617, -674.8282010, 63.5936999) },
    { id = 'whippy_mp_mp_d08_p02_mp_d08_door_02', model = 'mp_d08_door_02', house = 'mp_d08_p02', position = vector3(1222.1587027, -669.5554306, 63.7942000) },
    { id = 'whippy_mp_mp_d08_p02_mp_d08_door_03', model = 'mp_d08_door_03', house = 'mp_d08_p02', position = vector3(1221.2498736, -671.9579929, 63.6012000) },
    { id = 'whippy_mp_mp_d08_p02_mp_d08_door_04', model = 'mp_d08_door_04', house = 'mp_d08_p02', position = vector3(1224.9206443, -670.4146713, 63.6012000) },
    { id = 'whippy_mp_mp_d08_p02_mp_d08_door_05', model = 'mp_d08_door_05', house = 'mp_d08_p02', position = vector3(1228.2022516, -664.7277252, 63.5997000) },
    { id = 'whippy_mp_mp_d08_p02_mp_d08_door_06', model = 'mp_d08_door_06', house = 'mp_d08_p02', position = vector3(1221.3699733, -664.1656179, 63.4142000) },
    { id = 'whippy_mp_mp_d08_p03_mp_d08_door_01', model = 'mp_d08_door_01', house = 'mp_d08_p03', position = vector3(935.3719117, -651.1620364, 58.5292354) },
    { id = 'whippy_mp_mp_d08_p03_mp_d08_door_02', model = 'mp_d08_door_02', house = 'mp_d08_p03', position = vector3(942.5776265, -653.3546642, 58.7297355) },
    { id = 'whippy_mp_mp_d08_p03_mp_d08_door_03', model = 'mp_d08_door_03', house = 'mp_d08_p03', position = vector3(942.2740760, -650.8039517, 58.5367355) },
    { id = 'whippy_mp_mp_d08_p03_mp_d08_door_04', model = 'mp_d08_door_04', house = 'mp_d08_p03', position = vector3(939.7310636, -653.8681792, 58.5367355) },
    { id = 'whippy_mp_mp_d08_p03_mp_d08_door_05', model = 'mp_d08_door_05', house = 'mp_d08_p03', position = vector3(939.4469837, -660.4278751, 58.5352355) },
    { id = 'whippy_mp_mp_d08_p03_mp_d08_door_06', model = 'mp_d08_door_06', house = 'mp_d08_p03', position = vector3(945.7665168, -657.7709025, 58.3497355) },
    { id = 'whippy_mp_mp_h1_door_01', model = 'mp_h1_door_01', house = 'mp_h1', position = vector3(993.6716078, -621.4967964, 59.3556300) },
    { id = 'whippy_mp_mp_h1_door_02', model = 'mp_h1_door_02', house = 'mp_h1', position = vector3(980.9251898, -627.7388594, 59.3556300) },
    { id = 'whippy_mp_mp_h1_door_03', model = 'mp_h1_door_03', house = 'mp_h1', position = vector3(982.6793500, -623.5041796, 59.3406300) },
    { id = 'whippy_mp_mp_h1_door_04', model = 'mp_h1_door_04', house = 'mp_h1', position = vector3(987.9935030, -619.3963976, 62.8406300) },
    { id = 'whippy_mp_mp_h1_door_05', model = 'mp_h1_door_05', house = 'mp_h1', position = vector3(984.8862007, -621.5837867, 62.8406300) },
    { id = 'whippy_mp_mp_h1_door_06', model = 'mp_h1_door_06', house = 'mp_h1', position = vector3(989.1305634, -623.0963291, 62.8406300) },
    { id = 'whippy_mp_mp_h1_door_07', model = 'mp_h1_door_07', house = 'mp_h1', position = vector3(986.6774300, -624.8232152, 62.8406300) },
    { id = 'whippy_mp_mp_h1_p02_mp_h1_door_01', model = 'mp_h1_door_01', house = 'mp_h1_p02', position = vector3(1381.0672757, -543.1942146, 74.8054500) },
    { id = 'whippy_mp_mp_h1_p02_mp_h1_door_02', model = 'mp_h1_door_02', house = 'mp_h1_p02', position = vector3(1373.8677821, -555.4253974, 74.8054500) },
    { id = 'whippy_mp_mp_h1_p02_mp_h1_door_03', model = 'mp_h1_door_03', house = 'mp_h1_p02', position = vector3(1372.9990349, -550.9248562, 74.7904500) },
    { id = 'whippy_mp_mp_h1_p02_mp_h1_door_04', model = 'mp_h1_door_04', house = 'mp_h1_p02', position = vector3(1375.1713319, -544.5691325, 78.2904500) },
    { id = 'whippy_mp_mp_h1_p02_mp_h1_door_05', model = 'mp_h1_door_05', house = 'mp_h1_p02', position = vector3(1373.7829687, -548.1064262, 78.2904500) },
    { id = 'whippy_mp_mp_h1_p02_mp_h1_door_06', model = 'mp_h1_door_06', house = 'mp_h1_p02', position = vector3(1378.1584913, -547.0306928, 78.2904500) },
    { id = 'whippy_mp_mp_h1_p02_mp_h1_door_07', model = 'mp_h1_door_07', house = 'mp_h1_p02', position = vector3(1377.0624151, -549.8232932, 78.2904500) },
    { id = 'whippy_mp_mp_h1_p03_mp_h1_door_01', model = 'mp_h1_door_01', house = 'mp_h1_p03', position = vector3(1336.0394138, -523.2160278, 72.5606100) },
    { id = 'whippy_mp_mp_h1_p03_mp_h1_door_02', model = 'mp_h1_door_02', house = 'mp_h1_p03', position = vector3(1329.2006241, -535.6524860, 72.5606100) },
    { id = 'whippy_mp_mp_h1_p03_mp_h1_door_03', model = 'mp_h1_door_03', house = 'mp_h1_p03', position = vector3(1328.2006577, -531.1792702, 72.5456100) },
    { id = 'whippy_mp_mp_h1_p03_mp_h1_door_04', model = 'mp_h1_door_04', house = 'mp_h1_p03', position = vector3(1330.1861918, -524.7627484, 76.0456100) },
    { id = 'whippy_mp_mp_h1_p03_mp_h1_door_05', model = 'mp_h1_door_05', house = 'mp_h1_p03', position = vector3(1328.9018487, -528.3391239, 76.0456100) },
    { id = 'whippy_mp_mp_h1_p03_mp_h1_door_06', model = 'mp_h1_door_06', house = 'mp_h1_p03', position = vector3(1333.2440473, -527.1359152, 76.0456100) },
    { id = 'whippy_mp_mp_h1_p03_mp_h1_door_07', model = 'mp_h1_door_07', house = 'mp_h1_p03', position = vector3(1332.2300921, -529.9593696, 76.0456100) },
    { id = 'whippy_mp_mp_h1_p04_mp_h1_door_01', model = 'mp_h1_door_01', house = 'mp_h1_p04', position = vector3(1330.6177509, -607.5129882, 74.8205300) },
    { id = 'whippy_mp_mp_h1_p04_mp_h1_door_02', model = 'mp_h1_door_02', house = 'mp_h1_p04', position = vector3(1340.6617737, -597.4854198, 74.8205300) },
    { id = 'whippy_mp_mp_h1_p04_mp_h1_door_03', model = 'mp_h1_door_03', house = 'mp_h1_p04', position = vector3(1340.3708029, -602.0597970, 74.8055300) },
    { id = 'whippy_mp_mp_h1_p04_mp_h1_door_04', model = 'mp_h1_door_04', house = 'mp_h1_p04', position = vector3(1336.6699778, -607.6649720, 78.3055300) },
    { id = 'whippy_mp_mp_h1_p04_mp_h1_door_05', model = 'mp_h1_door_05', house = 'mp_h1_p04', position = vector3(1338.9032826, -604.5905050, 78.3055300) },
    { id = 'whippy_mp_mp_h1_p04_mp_h1_door_06', model = 'mp_h1_door_06', house = 'mp_h1_p04', position = vector3(1334.3978532, -604.5313082, 78.3055300) },
    { id = 'whippy_mp_mp_h1_p04_mp_h1_door_07', model = 'mp_h1_door_07', house = 'mp_h1_p04', position = vector3(1336.1609887, -602.1040973, 78.3055300) },
    { id = 'whippy_mp_mp_h1_p05_mp_h1_door_01', model = 'mp_h1_door_01', house = 'mp_h1_p05', position = vector3(891.2457087, -624.5547397, 58.5731800) },
    { id = 'whippy_mp_mp_h1_p05_mp_h1_door_02', model = 'mp_h1_door_02', house = 'mp_h1_p05', position = vector3(902.2819420, -615.6308362, 58.5731800) },
    { id = 'whippy_mp_mp_h1_p05_mp_h1_door_03', model = 'mp_h1_door_03', house = 'mp_h1_p05', position = vector3(901.5148851, -620.1498197, 58.5581800) },
    { id = 'whippy_mp_mp_h1_p05_mp_h1_door_04', model = 'mp_h1_door_04', house = 'mp_h1_p05', position = vector3(897.2489758, -625.3378932, 62.0581800) },
    { id = 'whippy_mp_mp_h1_p05_mp_h1_door_05', model = 'mp_h1_door_05', house = 'mp_h1_p05', position = vector3(899.7911203, -622.5134467, 62.0581800) },
    { id = 'whippy_mp_mp_h1_p05_mp_h1_door_06', model = 'mp_h1_door_06', house = 'mp_h1_p05', position = vector3(895.3165047, -621.9840964, 62.0581800) },
    { id = 'whippy_mp_mp_h1_p05_mp_h1_door_07', model = 'mp_h1_door_07', house = 'mp_h1_p05', position = vector3(897.3234609, -619.7542702, 62.0581800) },
    { id = 'whippy_mp_mp_d10_p01_mp_d10_door_01', model = 'mp_d10_door_01', house = 'mp_d10_p01', position = vector3(1100.3628632, -451.3519071, 67.9147100) },
    { id = 'whippy_mp_mp_d10_p01_mp_d10_door_02', model = 'mp_d10_door_02', house = 'mp_d10_p01', position = vector3(1100.0213451, -439.1225955, 68.0082100) },
    { id = 'whippy_mp_mp_d10_p01_mp_d10_door_03', model = 'mp_d10_door_03', house = 'mp_d10_p01', position = vector3(1104.7324063, -436.6492423, 67.8917100) },
    { id = 'whippy_mp_mp_d10_p01_mp_d10_door_04', model = 'mp_d10_door_04', house = 'mp_d10_p01', position = vector3(1104.1200002, -441.4100141, 67.8917100) },
    { id = 'whippy_mp_mp_d10_p01_mp_d10_door_05', model = 'mp_d10_door_05', house = 'mp_d10_p01', position = vector3(1103.4310433, -446.7658826, 67.8917100) },
    { id = 'whippy_mp_mp_d10_p01_mp_d10_door_06', model = 'mp_d10_door_06', house = 'mp_d10_p01', position = vector3(1108.2163900, -445.2802788, 67.8167100) },
    { id = 'whippy_mp_mp_d10_p02_mp_d10_door_01', model = 'mp_d10_door_01', house = 'mp_d10_p02', position = vector3(1238.7920094, -493.7769962, 70.0309041) },
    { id = 'whippy_mp_mp_d10_p02_mp_d10_door_02', model = 'mp_d10_door_02', house = 'mp_d10_p02', position = vector3(1250.9952242, -494.6454751, 70.1244041) },
    { id = 'whippy_mp_mp_d10_p02_mp_d10_door_03', model = 'mp_d10_door_03', house = 'mp_d10_p02', position = vector3(1252.9909948, -499.5778654, 70.0079041) },
    { id = 'whippy_mp_mp_d10_p02_mp_d10_door_04', model = 'mp_d10_door_04', house = 'mp_d10_p02', position = vector3(1248.3140278, -498.4980645, 70.0079041) },
    { id = 'whippy_mp_mp_d10_p02_mp_d10_door_05', model = 'mp_d10_door_05', house = 'mp_d10_p02', position = vector3(1243.0524397, -497.2832884, 70.0079041) },
    { id = 'whippy_mp_mp_d10_p02_mp_d10_door_06', model = 'mp_d10_door_06', house = 'mp_d10_p02', position = vector3(1244.0579545, -502.1920055, 69.9329041) },
    { id = 'whippy_mp_mp_d10_p03_mp_d10_door_01', model = 'mp_d10_door_01', house = 'mp_d10_p03', position = vector3(971.5852428, -726.4667769, 58.3450558) },
    { id = 'whippy_mp_mp_d10_p03_mp_d10_door_02', model = 'mp_d10_door_02', house = 'mp_d10_p03', position = vector3(979.2960558, -716.9685643, 58.4385558) },
    { id = 'whippy_mp_mp_d10_p03_mp_d10_door_03', model = 'mp_d10_door_03', house = 'mp_d10_p03', position = vector3(984.4811699, -718.1627842, 58.3220558) },
    { id = 'whippy_mp_mp_d10_p03_mp_d10_door_04', model = 'mp_d10_door_04', house = 'mp_d10_p03', position = vector3(980.9140777, -721.3746124, 58.3220558) },
    { id = 'whippy_mp_mp_d10_p03_mp_d10_door_05', model = 'mp_d10_door_05', house = 'mp_d10_p03', position = vector3(976.9010989, -724.9879192, 58.3220558) },
    { id = 'whippy_mp_mp_d10_p03_mp_d10_door_06', model = 'mp_d10_door_06', house = 'mp_d10_p03', position = vector3(981.4988403, -726.9797357, 58.2470558) },
    { id = 'whippy_mp_mp_d11_p01_mp_d11_door_01', model = 'mp_d11_door_01', house = 'mp_d11_p01', position = vector3(834.9815959, -533.6814984, 57.9463499) },
    { id = 'whippy_mp_mp_d11_p01_mp_d11_door_02', model = 'mp_d11_door_02', house = 'mp_d11_p01', position = vector3(849.9063429, -532.0205175, 58.1063500) },
    { id = 'whippy_mp_mp_d11_p01_mp_d11_door_03', model = 'mp_d11_door_03', house = 'mp_d11_p01', position = vector3(846.8443946, -531.1090544, 57.8288500) },
    { id = 'whippy_mp_mp_d11_p01_mp_d11_door_04', model = 'mp_d11_door_04', house = 'mp_d11_p01', position = vector3(842.3532204, -530.8273582, 57.8288500) },
    { id = 'whippy_mp_mp_d11_p01_mp_d11_door_05', model = 'mp_d11_door_05', house = 'mp_d11_p01', position = vector3(837.8620461, -530.5456620, 57.8288500) },
    { id = 'whippy_mp_mp_d11_p02_mp_d11_door_01', model = 'mp_d11_door_01', house = 'mp_d11_p02', position = vector3(1105.6855628, -485.7793935, 65.6807899) },
    { id = 'whippy_mp_mp_d11_p02_mp_d11_door_02', model = 'mp_d11_door_02', house = 'mp_d11_p02', position = vector3(1090.6865653, -485.0466355, 65.8407900) },
    { id = 'whippy_mp_mp_d11_p02_mp_d11_door_03', model = 'mp_d11_door_03', house = 'mp_d11_p02', position = vector3(1093.5646776, -486.4332713, 65.5632900) },
    { id = 'whippy_mp_mp_d11_p02_mp_d11_door_04', model = 'mp_d11_door_04', house = 'mp_d11_p02', position = vector3(1097.9539555, -487.4253559, 65.5632900) },
    { id = 'whippy_mp_mp_d11_p02_mp_d11_door_05', model = 'mp_d11_door_05', house = 'mp_d11_p02', position = vector3(1102.3432335, -488.4174405, 65.5632900) },
    { id = 'whippy_mp_mp_d11_p03_mp_d11_door_01', model = 'mp_d11_door_01', house = 'mp_d11_p03', position = vector3(1250.6313673, -460.6601692, 70.5372844) },
    { id = 'whippy_mp_mp_d11_p03_mp_d11_door_02', model = 'mp_d11_door_02', house = 'mp_d11_p03', position = vector3(1265.3089399, -457.4859311, 70.6972845) },
    { id = 'whippy_mp_mp_d11_p03_mp_d11_door_03', model = 'mp_d11_door_03', house = 'mp_d11_p03', position = vector3(1262.1700087, -456.8914542, 70.4197845) },
    { id = 'whippy_mp_mp_d11_p03_mp_d11_door_04', model = 'mp_d11_door_04', house = 'mp_d11_p03', position = vector3(1257.6735207, -457.0692033, 70.4197845) },
    { id = 'whippy_mp_mp_d11_p03_mp_d11_door_05', model = 'mp_d11_door_05', house = 'mp_d11_p03', position = vector3(1253.1770327, -457.2469523, 70.4197845) },
    { id = 'whippy_mp_wh_bng_p02_wh_bng_door_01', model = 'wh_bng_door_01', house = 'wh_bng_p02', position = vector3(1249.7839027, -473.1957424, 70.2780645) },
    { id = 'whippy_mp_wh_bng_p02_wh_bng_door_02', model = 'wh_bng_door_02', house = 'wh_bng_p02', position = vector3(1258.8496426, -479.9050675, 70.3345645) },
    { id = 'whippy_mp_wh_bng_p02_wh_bng_door_03', model = 'wh_bng_door_03', house = 'wh_bng_p02', position = vector3(1254.6602938, -480.3532607, 70.2835645) },
    { id = 'whippy_mp_wh_bng_p02_wh_bng_door_04', model = 'wh_bng_door_04', house = 'wh_bng_p02', position = vector3(1251.1269018, -477.9329214, 70.2835645) },
    { id = 'whippy_mp_wh_bng_p03_wh_bng_door_01', model = 'wh_bng_door_01', house = 'wh_bng_p03', position = vector3(971.4753656, -514.3647709, 62.2302663) },
    { id = 'whippy_mp_wh_bng_p03_wh_bng_door_02', model = 'wh_bng_door_02', house = 'wh_bng_p03', position = vector3(970.7134447, -503.1121204, 62.2867663) },
    { id = 'whippy_mp_wh_bng_p03_wh_bng_door_03', model = 'wh_bng_door_03', house = 'wh_bng_p03', position = vector3(973.7688379, -506.0131703, 62.2357663) },
    { id = 'whippy_mp_wh_bng_p03_wh_bng_door_04', model = 'wh_bng_door_04', house = 'wh_bng_p03', position = vector3(974.2140690, -510.2728262, 62.2357663) },
    { id = 'whippy_mp_wh_bng_door_01', model = 'wh_bng_door_01', house = 'wh_bng', position = vector3(964.9965261, -608.1227494, 59.9921071) },
    { id = 'whippy_mp_wh_bng_door_02', model = 'wh_bng_door_02', house = 'wh_bng', position = vector3(964.5757111, -596.8521869, 60.0486071) },
    { id = 'whippy_mp_wh_bng_door_03', model = 'wh_bng_door_03', house = 'wh_bng', position = vector3(967.5418525, -599.8444307, 59.9976071) },
    { id = 'whippy_mp_wh_bng_door_04', model = 'wh_bng_door_04', house = 'wh_bng', position = vector3(967.8578870, -604.1156157, 59.9976071) },
    { id = 'whippy_mp_wh_bng_p04_wh_bng_door_01', model = 'wh_bng_door_01', house = 'wh_bng_p04', position = vector3(1211.9181399, -580.6442989, 69.2286641) },
    { id = 'whippy_mp_wh_bng_p04_wh_bng_door_02', model = 'wh_bng_door_02', house = 'wh_bng_p04', position = vector3(1201.7800281, -575.7025024, 69.2851641) },
    { id = 'whippy_mp_wh_bng_p04_wh_bng_door_03', model = 'wh_bng_door_03', house = 'wh_bng_p04', position = vector3(1205.8171828, -574.4971395, 69.2341641) },
    { id = 'whippy_mp_wh_bng_p04_wh_bng_door_04', model = 'wh_bng_door_04', house = 'wh_bng_p04', position = vector3(1209.7330066, -576.2318507, 69.2341641) },
    { id = 'whippy_mp_wh_bng_p05_wh_bng_door_01', model = 'wh_bng_door_01', house = 'wh_bng_p05', position = vector3(1230.6334618, -561.0925067, 69.7469200) },
    { id = 'whippy_mp_wh_bng_p05_wh_bng_door_02', model = 'wh_bng_door_02', house = 'wh_bng_p05', position = vector3(1240.6822639, -566.2134672, 69.8034200) },
    { id = 'whippy_mp_wh_bng_p05_wh_bng_door_03', model = 'wh_bng_door_03', house = 'wh_bng_p05', position = vector3(1236.6243511, -567.3469843, 69.7524200) },
    { id = 'whippy_mp_wh_bng_p05_wh_bng_door_04', model = 'wh_bng_door_04', house = 'wh_bng_p05', position = vector3(1232.7399338, -565.5430440, 69.7524200) },
    { id = 'whippy_mp_wh_bng_p06_wh_bng_door_01', model = 'wh_bng_door_01', house = 'wh_bng_p06', position = vector3(850.5364687, -587.9699033, 58.2460668) },
    { id = 'whippy_mp_wh_bng_p06_wh_bng_door_02', model = 'wh_bng_door_02', house = 'wh_bng_p06', position = vector3(861.1078033, -584.0393200, 58.3025668) },
    { id = 'whippy_mp_wh_bng_p06_wh_bng_door_03', model = 'wh_bng_door_03', house = 'wh_bng_p06', position = vector3(859.1954593, -587.7935776, 58.2515668) },
    { id = 'whippy_mp_wh_bng_p06_wh_bng_door_04', model = 'wh_bng_door_04', house = 'wh_bng_p06', position = vector3(855.2383079, -589.4318211, 58.2515668) },
    { id = 'whippy_mp_wh_bng_p07_wh_bng_door_01', model = 'wh_bng_door_01', house = 'wh_bng_p07', position = vector3(959.0248377, -703.6274429, 58.5714070) },
    { id = 'whippy_mp_wh_bng_p07_wh_bng_door_02', model = 'wh_bng_door_02', house = 'wh_bng_p07', position = vector3(970.1487141, -701.7667826, 58.6279070) },
    { id = 'whippy_mp_wh_bng_p07_wh_bng_door_03', model = 'wh_bng_door_03', house = 'wh_bng_p07', position = vector3(967.5609516, -705.0916894, 58.5769070) },
    { id = 'whippy_mp_wh_bng_p07_wh_bng_door_04', model = 'wh_bng_door_04', house = 'wh_bng_p07', position = vector3(963.3654049, -705.9520905, 58.5769070) },
    { id = 'whippy_mp_mp_h4_p02_mp_h4_door_01', model = 'mp_h4_door_01', house = 'mp_h4_p02', position = vector3(869.8860068, -496.4352436, 57.8965161) },
    { id = 'whippy_mp_mp_h4_p02_mp_h4_door_02', model = 'mp_h4_door_02', house = 'mp_h4_p02', position = vector3(877.8022118, -498.1185577, 58.1775161) },
    { id = 'whippy_mp_mp_h4_p02_mp_h4_door_03', model = 'mp_h4_door_03', house = 'mp_h4_p02', position = vector3(875.3797195, -499.0151602, 57.9915161) },
    { id = 'whippy_mp_mp_h4_p03_mp_h4_door_01', model = 'mp_h4_door_01', house = 'mp_h4_p03', position = vector3(1123.0069501, -390.4606984, 68.7536000) },
    { id = 'whippy_mp_mp_h4_p03_mp_h4_door_02', model = 'mp_h4_door_02', house = 'mp_h4_p03', position = vector3(1114.9303602, -390.9789014, 69.0346000) },
    { id = 'whippy_mp_mp_h4_p03_mp_h4_door_03', model = 'mp_h4_door_03', house = 'mp_h4_p03', position = vector3(1117.0204939, -389.4611053, 68.8486000) },
    { id = 'whippy_mp_mp_h4_p04_mp_h4_door_01', model = 'mp_h4_door_01', house = 'mp_h4_p04', position = vector3(1257.4850687, -437.0013701, 69.8204358) },
    { id = 'whippy_mp_mp_h4_p04_mp_h4_door_02', model = 'mp_h4_door_02', house = 'mp_h4_p04', position = vector3(1262.2796382, -430.4812533, 70.1014358) },
    { id = 'whippy_mp_mp_h4_p04_mp_h4_door_03', model = 'mp_h4_door_03', house = 'mp_h4_p04', position = vector3(1262.0988235, -433.0580086, 69.9154358) },
    { id = 'whippy_mp_mp_h4_p05_mp_h4_door_01', model = 'mp_h4_door_01', house = 'mp_h4_p05', position = vector3(931.7070768, -530.6371101, 59.5948500) },
    { id = 'whippy_mp_mp_h4_p05_mp_h4_door_02', model = 'mp_h4_door_02', house = 'mp_h4_p05', position = vector3(925.0148086, -526.0859094, 59.8758500) },
    { id = 'whippy_mp_mp_h4_p05_mp_h4_door_03', model = 'mp_h4_door_03', house = 'mp_h4_p05', position = vector3(927.5964761, -526.1717064, 59.6898500) },
    { id = 'whippy_mp_mp_h4_p06_mp_h4_door_01', model = 'mp_h4_door_01', house = 'mp_h4_p06', position = vector3(1022.7191888, -472.3446181, 64.3087700) },
    { id = 'whippy_mp_mp_h4_p06_mp_h4_door_02', model = 'mp_h4_door_02', house = 'mp_h4_p06', position = vector3(1015.2406647, -469.2508310, 64.5897700) },
    { id = 'whippy_mp_mp_h4_p06_mp_h4_door_03', model = 'mp_h4_door_03', house = 'mp_h4_p06', position = vector3(1017.7857518, -468.8093607, 64.4037700) },
    { id = 'whippy_mp_mp_h4_door_01', model = 'mp_h4_door_01', house = 'mp_h4', position = vector3(984.3824918, -584.5356577, 59.6558774) },
    { id = 'whippy_mp_mp_h4_door_02', model = 'mp_h4_door_02', house = 'mp_h4', position = vector3(977.2828366, -580.6504646, 59.9368774) },
    { id = 'whippy_mp_mp_h4_door_03', model = 'mp_h4_door_03', house = 'mp_h4', position = vector3(979.8607577, -580.4871074, 59.7508774) },
    { id = 'whippy_mp_mp_h4_p07_mp_h4_door_01', model = 'mp_h4_door_01', house = 'mp_h4_p07', position = vector3(980.1712749, -521.8093601, 60.4964841) },
    { id = 'whippy_mp_mp_h4_p07_mp_h4_door_02', model = 'mp_h4_door_02', house = 'mp_h4_p07', position = vector3(987.2347362, -525.7599752, 60.7774841) },
    { id = 'whippy_mp_mp_h4_p07_mp_h4_door_03', model = 'mp_h4_door_03', house = 'mp_h4_p07', position = vector3(984.6554157, -525.8995104, 60.5914841) },
    { id = 'whippy_mp_mp_h4_p08_mp_h4_door_01', model = 'mp_h4_door_01', house = 'mp_h4_p08', position = vector3(1212.3806413, -553.4527330, 69.4211200) },
    { id = 'whippy_mp_mp_h4_p08_mp_h4_door_02', model = 'mp_h4_door_02', house = 'mp_h4_p08', position = vector3(1205.2192450, -557.2229140, 69.7021200) },
    { id = 'whippy_mp_mp_h4_p08_mp_h4_door_03', model = 'mp_h4_door_03', house = 'mp_h4_p08', position = vector3(1206.5076693, -554.9840909, 69.5161200) },
    { id = 'whippy_mp_mp_d15_p01_mp_d15_door_01', model = 'mp_d15_door_01', house = 'mp_d15_p01', position = vector3(1099.3105226, -464.0692808, 67.5299101) },
    { id = 'whippy_mp_mp_d15_p01_mp_d15_door_02', model = 'mp_d15_door_02', house = 'mp_d15_p01', position = vector3(1109.8663106, -465.1811136, 67.5309100) },
    { id = 'whippy_mp_mp_d15_p01_mp_d15_door_03', model = 'mp_d15_door_03', house = 'mp_d15_p01', position = vector3(1101.4757904, -463.2193801, 67.4139100) },
    { id = 'whippy_mp_mp_d15_p01_mp_d15_door_04', model = 'mp_d15_door_04', house = 'mp_d15_p01', position = vector3(1104.5079076, -464.5827456, 67.4139100) },
    { id = 'whippy_mp_mp_d15_p02_mp_d15_door_01', model = 'mp_d15_door_01', house = 'mp_d15_p02', position = vector3(1055.5087942, -449.4146191, 66.4684101) },
    { id = 'whippy_mp_mp_d15_p02_mp_d15_door_02', model = 'mp_d15_door_02', house = 'mp_d15_p02', position = vector3(1044.9298682, -448.5502384, 66.4694100) },
    { id = 'whippy_mp_mp_d15_p02_mp_d15_door_03', model = 'mp_d15_door_03', house = 'mp_d15_p02', position = vector3(1053.3640192, -450.3149832, 66.3524100) },
    { id = 'whippy_mp_mp_d15_p02_mp_d15_door_04', model = 'mp_d15_door_04', house = 'mp_d15_p02', position = vector3(1050.3008122, -449.0229838, 66.3524100) },
    { id = 'whippy_mp_mp_d15_p03_mp_d15_door_01', model = 'mp_d15_door_01', house = 'mp_d15_p03', position = vector3(1204.1830835, -597.8259482, 68.2746401) },
    { id = 'whippy_mp_mp_d15_p03_mp_d15_door_02', model = 'mp_d15_door_02', house = 'mp_d15_p03', position = vector3(1214.6801393, -596.2534815, 68.2756400) },
    { id = 'whippy_mp_mp_d15_p03_mp_d15_door_03', model = 'mp_d15_door_03', house = 'mp_d15_p03', position = vector3(1206.0658133, -596.4599159, 68.1586400) },
    { id = 'whippy_mp_mp_d15_p03_mp_d15_door_04', model = 'mp_d15_door_04', house = 'mp_d15_p03', position = vector3(1209.3430259, -597.0188233, 68.1586400) },
    { id = 'whippy_mp_mp_d15_p04_mp_d15_door_01', model = 'mp_d15_door_01', house = 'mp_d15_p04', position = vector3(1270.4532049, -684.2178611, 66.2425001) },
    { id = 'whippy_mp_mp_d15_p04_mp_d15_door_02', model = 'mp_d15_door_02', house = 'mp_d15_p04', position = vector3(1260.0725942, -686.4322929, 66.2435000) },
    { id = 'whippy_mp_mp_d15_p04_mp_d15_door_03', model = 'mp_d15_door_03', house = 'mp_d15_p04', position = vector3(1268.6579610, -685.6969869, 66.1265000) },
    { id = 'whippy_mp_mp_d15_p04_mp_d15_door_04', model = 'mp_d15_door_04', house = 'mp_d15_p04', position = vector3(1265.3526013, -685.3404865, 66.1265000) },
    { id = 'whippy_mp_mp_h2_p02_mp_h2_door_01', model = 'mp_h2_door_01', house = 'mp_h2_p02', position = vector3(962.2561120, -446.2608145, 62.8646457) },
    { id = 'whippy_mp_mp_h2_p02_mp_h2_door_02', model = 'mp_h2_door_02', house = 'mp_h2_p02', position = vector3(966.4674473, -451.6699405, 62.9656457) },
    { id = 'whippy_mp_mp_h2_p02_mp_h2_door_03', model = 'mp_h2_door_03', house = 'mp_h2_p02', position = vector3(963.9311470, -453.1992696, 62.8946457) },
    { id = 'whippy_mp_mp_h2_p02_mp_h2_door_04', model = 'mp_h2_door_04', house = 'mp_h2_p02', position = vector3(966.3529532, -448.6766330, 62.8946457) },
    { id = 'whippy_mp_mp_h2_door_01', model = 'mp_h2_door_01', house = 'mp_h2', position = vector3(992.3172810, -593.6140747, 59.7134300) },
    { id = 'whippy_mp_mp_h2_door_02', model = 'mp_h2_door_02', house = 'mp_h2', position = vector3(999.1193636, -594.4659312, 59.8144300) },
    { id = 'whippy_mp_mp_h2_door_03', model = 'mp_h2_door_03', house = 'mp_h2', position = vector3(998.4052608, -597.3402526, 59.7434300) },
    { id = 'whippy_mp_mp_h2_door_04', model = 'mp_h2_door_04', house = 'mp_h2', position = vector3(996.9232801, -592.4287234, 59.7434300) },
    { id = 'whippy_mp_mp_h2_p03_mp_h2_door_01', model = 'mp_h2_door_01', house = 'mp_h2_p03', position = vector3(1223.2595965, -696.2520033, 61.1780574) },
    { id = 'whippy_mp_mp_h2_p03_mp_h2_door_02', model = 'mp_h2_door_02', house = 'mp_h2_p03', position = vector3(1221.4321880, -689.6448414, 61.2790574) },
    { id = 'whippy_mp_mp_h2_p03_mp_h2_door_03', model = 'mp_h2_door_03', house = 'mp_h2_p03', position = vector3(1224.3602286, -689.1995900, 61.2080574) },
    { id = 'whippy_mp_mp_h2_p03_mp_h2_door_04', model = 'mp_h2_door_04', house = 'mp_h2_p03', position = vector3(1220.3952942, -692.4551535, 61.2080574) },
    { id = 'whippy_mp_mp_d17_p01_mp_d17_door_01', model = 'mp_d17_door_01', house = 'mp_d17_p01', position = vector3(1045.5992282, -498.3947584, 64.4260273) },
    { id = 'whippy_mp_mp_d17_p01_mp_d17_door_02', model = 'mp_d17_door_02', house = 'mp_d17_p01', position = vector3(1031.8370865, -501.2027318, 64.4525273) },
    { id = 'whippy_mp_mp_d17_p01_mp_d17_door_03', model = 'mp_d17_door_03', house = 'mp_d17_p01', position = vector3(1034.4200026, -494.7567948, 64.3740273) },
    { id = 'whippy_mp_mp_d17_p01_mp_d17_door_04', model = 'mp_d17_door_04', house = 'mp_d17_p01', position = vector3(1041.6097687, -496.2831459, 64.3740273) },
    { id = 'whippy_mp_mp_d17_p01_mp_d17_door_05', model = 'mp_d17_door_05', house = 'mp_d17_p01', position = vector3(1039.5066398, -495.8366623, 64.3740273) },
    { id = 'whippy_mp_mp_d17_p02_mp_d17_door_01', model = 'mp_d17_door_01', house = 'mp_d17_p02', position = vector3(1265.3755290, -649.2452164, 68.2682857) },
    { id = 'whippy_mp_mp_d17_p02_mp_d17_door_02', model = 'mp_d17_door_02', house = 'mp_d17_p02', position = vector3(1256.8285111, -660.3910600, 68.2947857) },
    { id = 'whippy_mp_mp_d17_p02_mp_d17_door_03', model = 'mp_d17_door_03', house = 'mp_d17_p02', position = vector3(1254.5505901, -653.8311319, 68.2162857) },
    { id = 'whippy_mp_mp_d17_p02_mp_d17_door_04', model = 'mp_d17_door_04', house = 'mp_d17_p02', position = vector3(1260.9790461, -650.2677821, 68.2162857) },
    { id = 'whippy_mp_mp_d17_p02_mp_d17_door_05', model = 'mp_d17_door_05', house = 'mp_d17_p02', position = vector3(1259.0986134, -651.3101225, 68.2162857) },
    { id = 'whippy_mp_mp_d18_p01_mp_d18_door_01', model = 'mp_d18_door_01', house = 'mp_d18_p01', position = vector3(1009.6500477, -423.3696113, 65.4492200) },
    { id = 'whippy_mp_mp_d18_p01_mp_d18_door_02', model = 'mp_d18_door_02', house = 'mp_d18_p01', position = vector3(1007.1612034, -421.4434553, 65.4547200) },
    { id = 'whippy_mp_mp_d18_p01_mp_d18_door_03', model = 'mp_d18_door_03', house = 'mp_d18_p01', position = vector3(1003.2710015, -423.2781301, 65.4727200) },
    { id = 'whippy_mp_mp_d18_p01_mp_d18_door_04', model = 'mp_d18_door_04', house = 'mp_d18_p01', position = vector3(1001.1020331, -415.8079374, 65.4727200) },
    { id = 'whippy_mp_mp_d18_p02_mp_d18_door_01', model = 'mp_d18_door_01', house = 'mp_d18_p02', position = vector3(1239.9343157, -601.1648081, 69.8822945) },
    { id = 'whippy_mp_mp_d18_p02_mp_d18_door_02', model = 'mp_d18_door_02', house = 'mp_d18_p02', position = vector3(1239.0313048, -598.1500115, 69.8877945) },
    { id = 'whippy_mp_mp_d18_p02_mp_d18_door_03', model = 'mp_d18_door_03', house = 'mp_d18_p02', position = vector3(1234.8000205, -597.3780378, 69.9057945) },
    { id = 'whippy_mp_mp_d18_p02_mp_d18_door_04', model = 'mp_d18_door_04', house = 'mp_d18_p02', position = vector3(1237.3835682, -590.0409054, 69.9057945) },
    { id = 'whippy_mp_mp_d18_p03_mp_d18_door_01', model = 'mp_d18_door_01', house = 'mp_d18_p03', position = vector3(886.0293310, -608.2862292, 58.5446100) },
    { id = 'whippy_mp_mp_d18_p03_mp_d18_door_02', model = 'mp_d18_door_02', house = 'mp_d18_p03', position = vector3(883.2525930, -606.8049637, 58.5501100) },
    { id = 'whippy_mp_mp_d18_p03_mp_d18_door_03', model = 'mp_d18_door_03', house = 'mp_d18_p03', position = vector3(879.7253657, -609.2663387, 58.5681100) },
    { id = 'whippy_mp_mp_d18_p03_mp_d18_door_04', model = 'mp_d18_door_04', house = 'mp_d18_p03', position = vector3(876.3337754, -602.2659596, 58.5681100) },
    { id = 'whippy_mp_mp_d19_p01_mp_d19_door_01', model = 'mp_d19_door_01', house = 'mp_d19_p01', position = vector3(977.1125671, -436.9281292, 64.1421221) },
    { id = 'whippy_mp_mp_d19_p01_mp_d19_door_02', model = 'mp_d19_door_02', house = 'mp_d19_p01', position = vector3(987.7258122, -432.2205699, 64.3331220) },
    { id = 'whippy_mp_mp_d19_p01_mp_d19_door_03', model = 'mp_d19_door_03', house = 'mp_d19_p01', position = vector3(990.0334332, -425.6751660, 64.1401221) },
    { id = 'whippy_mp_mp_d19_p01_mp_d19_door_04', model = 'mp_d19_door_04', house = 'mp_d19_p01', position = vector3(982.5861662, -430.9047174, 64.1401221) },
    { id = 'whippy_mp_mp_d19_p01_mp_d19_door_05', model = 'mp_d19_door_05', house = 'mp_d19_p01', position = vector3(977.2666897, -434.6401113, 64.1401221) },
    { id = 'whippy_mp_mp_d19_p01_mp_d19_door_06', model = 'mp_d19_door_06', house = 'mp_d19_p01', position = vector3(980.7462460, -439.2472344, 64.1401221) },
    { id = 'whippy_mp_mp_d19_p01_mp_d19_door_07', model = 'mp_d19_door_07', house = 'mp_d19_p01', position = vector3(987.2738699, -438.4025559, 64.2826221) },
    { id = 'whippy_mp_mp_d19_p01_mp_d19_door_08', model = 'mp_d19_door_08', house = 'mp_d19_p01', position = vector3(978.4816779, -444.0529337, 64.2786221) },
    { id = 'whippy_mp_mp_d19_p02_mp_d19_door_01', model = 'mp_d19_door_01', house = 'mp_d19_p02', position = vector3(940.8563855, -452.6549205, 61.6471727) },
    { id = 'whippy_mp_mp_d19_p02_mp_d19_door_02', model = 'mp_d19_door_02', house = 'mp_d19_p02', position = vector3(945.1830826, -463.4290455, 61.8381726) },
    { id = 'whippy_mp_mp_d19_p02_mp_d19_door_03', model = 'mp_d19_door_03', house = 'mp_d19_p02', position = vector3(951.6421749, -465.9682479, 61.6451727) },
    { id = 'whippy_mp_mp_d19_p02_mp_d19_door_04', model = 'mp_d19_door_04', house = 'mp_d19_p02', position = vector3(946.6810943, -458.3395084, 61.6451727) },
    { id = 'whippy_mp_mp_d19_p02_mp_d19_door_05', model = 'mp_d19_door_05', house = 'mp_d19_p02', position = vector3(943.1374652, -452.8904086, 61.6451727) },
    { id = 'whippy_mp_mp_d19_p02_mp_d19_door_06', model = 'mp_d19_door_06', house = 'mp_d19_p02', position = vector3(938.4093761, -456.2037252, 61.6451727) },
    { id = 'whippy_mp_mp_d19_p02_mp_d19_door_07', model = 'mp_d19_door_07', house = 'mp_d19_p02', position = vector3(939.0211075, -462.7572843, 61.7876727) },
    { id = 'whippy_mp_mp_d19_p02_mp_d19_door_08', model = 'mp_d19_door_08', house = 'mp_d19_p02', position = vector3(933.6873523, -453.7694893, 61.7836727) },
    { id = 'whippy_mp_mp_d19_p03_mp_d19_door_01', model = 'mp_d19_door_01', house = 'mp_d19_p03', position = vector3(1004.1499439, -500.1355769, 61.0853746) },
    { id = 'whippy_mp_mp_d19_p03_mp_d19_door_02', model = 'mp_d19_door_02', house = 'mp_d19_p03', position = vector3(1007.2042067, -511.3370719, 61.2763745) },
    { id = 'whippy_mp_mp_d19_p03_mp_d19_door_03', model = 'mp_d19_door_03', house = 'mp_d19_p03', position = vector3(1013.3270647, -514.6047944, 61.0833746) },
    { id = 'whippy_mp_mp_d19_p03_mp_d19_door_04', model = 'mp_d19_door_04', house = 'mp_d19_p03', position = vector3(1009.2796267, -506.4544450, 61.0833746) },
    { id = 'whippy_mp_mp_d19_p03_mp_d19_door_05', model = 'mp_d19_door_05', house = 'mp_d19_p03', position = vector3(1006.3885995, -500.6327669, 61.0833746) },
    { id = 'whippy_mp_mp_d19_p03_mp_d19_door_06', model = 'mp_d19_door_06', house = 'mp_d19_p03', position = vector3(1001.3096954, -503.3782378, 61.0833746) },
    { id = 'whippy_mp_mp_d19_p03_mp_d19_door_07', model = 'mp_d19_door_07', house = 'mp_d19_p03', position = vector3(1001.1609456, -509.9586029, 61.2258746) },
    { id = 'whippy_mp_mp_d19_p03_mp_d19_door_08', model = 'mp_d19_door_08', house = 'mp_d19_p03', position = vector3(996.9001820, -500.4152678, 61.2218746) },
    { id = 'whippy_mp_mp_d19_p04_mp_d19_door_01', model = 'mp_d19_door_01', house = 'mp_d19_p04', position = vector3(1231.2471759, -714.4049685, 61.0493372) },
    { id = 'whippy_mp_mp_d19_p04_mp_d19_door_02', model = 'mp_d19_door_02', house = 'mp_d19_p04', position = vector3(1230.1485818, -725.9633054, 61.2403371) },
    { id = 'whippy_mp_mp_d19_p04_mp_d19_door_03', model = 'mp_d19_door_03', house = 'mp_d19_p04', position = vector3(1234.7228145, -731.1828659, 61.0473372) },
    { id = 'whippy_mp_mp_d19_p04_mp_d19_door_04', model = 'mp_d19_door_04', house = 'mp_d19_p04', position = vector3(1233.8146598, -722.1282962, 61.0473372) },
    { id = 'whippy_mp_mp_d19_p04_mp_d19_door_05', model = 'mp_d19_door_05', house = 'mp_d19_p04', position = vector3(1233.1659778, -715.6607463, 61.0473372) },
    { id = 'whippy_mp_mp_d19_p04_mp_d19_door_06', model = 'mp_d19_door_06', house = 'mp_d19_p04', position = vector3(1227.4447432, -716.4355776, 61.0473372) },
    { id = 'whippy_mp_mp_d19_p04_mp_d19_door_07', model = 'mp_d19_door_07', house = 'mp_d19_p04', position = vector3(1224.9815881, -722.5393644, 61.1898372) },
    { id = 'whippy_mp_mp_d19_p04_mp_d19_door_08', model = 'mp_d19_door_08', house = 'mp_d19_p04', position = vector3(1224.3658161, -712.1062339, 61.1858372) },
    { id = 'whippy_mp_mp_d19_p05_mp_d19_door_01', model = 'mp_d19_door_01', house = 'mp_d19_p05', position = vector3(1240.0564558, -623.3914172, 69.6648348) },
    { id = 'whippy_mp_mp_d19_p05_mp_d19_door_02', model = 'mp_d19_door_02', house = 'mp_d19_p05', position = vector3(1251.2241837, -620.2158922, 69.8558347) },
    { id = 'whippy_mp_mp_d19_p05_mp_d19_door_03', model = 'mp_d19_door_03', house = 'mp_d19_p05', position = vector3(1254.4253344, -614.0579651, 69.6628348) },
    { id = 'whippy_mp_mp_d19_p05_mp_d19_door_04', model = 'mp_d19_door_04', house = 'mp_d19_p05', position = vector3(1246.3193414, -618.1935283, 69.6628348) },
    { id = 'whippy_mp_mp_d19_p05_mp_d19_door_05', model = 'mp_d19_door_05', house = 'mp_d19_p05', position = vector3(1240.5293464, -621.1475021, 69.6628348) },
    { id = 'whippy_mp_mp_d19_p05_mp_d19_door_06', model = 'mp_d19_door_06', house = 'mp_d19_p05', position = vector3(1243.3297197, -626.1963446, 69.6628348) },
    { id = 'whippy_mp_mp_d19_p05_mp_d19_door_07', model = 'mp_d19_door_07', house = 'mp_d19_p05', position = vector3(1249.9113129, -626.2737448, 69.8053348) },
    { id = 'whippy_mp_mp_d19_p05_mp_d19_door_08', model = 'mp_d19_door_08', house = 'mp_d19_p05', position = vector3(1240.4147285, -630.6377233, 69.8013348) },
    { id = 'whippy_mp_mp_d19_p06_mp_d19_door_01', model = 'mp_d19_door_01', house = 'mp_d19_p06', position = vector3(832.9769540, -561.7970521, 58.0856951) },
    { id = 'whippy_mp_mp_d19_p06_mp_d19_door_02', model = 'mp_d19_door_02', house = 'mp_d19_p06', position = vector3(844.5847073, -562.0462777, 58.2766950) },
    { id = 'whippy_mp_mp_d19_p06_mp_d19_door_03', model = 'mp_d19_door_03', house = 'mp_d19_p06', position = vector3(849.4552817, -557.1020974, 58.0836951) },
    { id = 'whippy_mp_mp_d19_p06_mp_d19_door_04', model = 'mp_d19_door_04', house = 'mp_d19_p06', position = vector3(840.4915275, -558.6708813, 58.0836951) },
    { id = 'whippy_mp_mp_d19_p06_mp_d19_door_05', model = 'mp_d19_door_05', house = 'mp_d19_p06', position = vector3(834.0888459, -559.7914413, 58.0836951) },
    { id = 'whippy_mp_mp_d19_p06_mp_d19_door_06', model = 'mp_d19_door_06', house = 'mp_d19_p06', position = vector3(835.2805637, -565.4405735, 58.0836951) },
    { id = 'whippy_mp_mp_d19_p06_mp_d19_door_07', model = 'mp_d19_door_07', house = 'mp_d19_p06', position = vector3(841.5483393, -567.4501339, 58.2261951) },
    { id = 'whippy_mp_mp_d19_p06_mp_d19_door_08', model = 'mp_d19_door_08', house = 'mp_d19_p06', position = vector3(831.1883144, -568.8282723, 58.2221951) },
    { id = 'whippy_mp_mp_d20_p01_mp_d20_door_01', model = 'mp_d20_door_01', house = 'mp_d20_p01', position = vector3(1059.8033164, -378.2247297, 68.3626599) },
    { id = 'whippy_mp_mp_d20_p01_mp_d20_door_02', model = 'mp_d20_door_02', house = 'mp_d20_p01', position = vector3(1050.7054616, -369.5085581, 68.3736600) },
    { id = 'whippy_mp_mp_d20_p01_mp_d20_door_03', model = 'mp_d20_door_03', house = 'mp_d20_p01', position = vector3(1059.1782445, -378.2007218, 68.3536600) },
    { id = 'whippy_mp_mp_d20_p01_mp_d20_door_04', model = 'mp_d20_door_04', house = 'mp_d20_p01', position = vector3(1056.1603964, -374.7290372, 68.3536600) }
}

for _, door in ipairs(doors) do                  -- read-only: wh_debug counts and wh_home_check list the door objects
    door.modelHash = joaat(door.model)
end

-- Garage door wake-up (0.11.11). GTA's automatic doors (garage, sliding, roller) only wake their physics when a frame
-- takes long enough. At high frame rates a door that has closed falls asleep and stops noticing you, so it opens once
-- and then not again (from inside it looks one-sided). FiveM patched this for Legacy only (citizenfx/fivem pull request
-- 4058, tested on game build 3407); FiveM for Enhanced has no patch. While you're within WAKE_NEAR m of a garage door
-- (the d08/d19 house garages and the site garages' panels), this client wakes that door every frame, which is what the
-- patch does. GTA's own door logic, and whip_core's door system with its locks, still decide when it opens: nothing is
-- registered, unlocked or forced here.
-- 0.11.12 (CPU, the server session's resmon note): FiveM's own patch covers Legacy, so on Legacy it is off. 0.12.0: the
-- game is whip's whip_platform convar (setr whip_platform enhanced in an Enhanced server.cfg; unset is Legacy, as
-- whip_core reads it), no longer a line in a separate Enhanced copy's fxmanifest. The doors and their objects
-- are looked up on the scan, WAKE_SCAN_MS apart; in between a near door gets only ActivatePhysics, every frame. With
-- no door near, the scan sleeps until the nearest one could be within reach (WAKE_SPEED), 250 ms to 1 s.
-- F8: wh_garage_doors (status of the doors near you), wh_garage_doors off / on (switch it for a side-by-side test).
local WAKE_NEAR = 12.0                      -- m from the door's closed spot
local WAKE_SEARCH = 4.0                     -- m: an open garage door has moved off its closed spot
local WAKE_SCAN_MS = 250                    -- ms between scans (doors near you, their objects) while one is near
local WAKE_SPEED = 80.0                     -- m/s: no land vehicle is faster, so no door is missed while sleeping
local WAKE_DOORS = {
    { name = 'mp_d08_door_06', pos = vector3(950.5923, -517.3574, 60.5465) }, -- mp_d08_p01 garage door
    { name = 'mp_d08_door_06', pos = vector3(1221.3700, -664.1656, 63.4142) }, -- mp_d08_p02 garage door
    { name = 'mp_d08_door_06', pos = vector3(945.7665, -657.7709, 58.3497) }, -- mp_d08_p03 garage door
    { name = 'mp_d19_door_07', pos = vector3(987.2739, -438.4026, 64.2826) }, -- mp_d19_p01 garage door
    { name = 'mp_d19_door_08', pos = vector3(978.4817, -444.0529, 64.2786) }, -- mp_d19_p01 sliding door
    { name = 'mp_d19_door_07', pos = vector3(939.0211, -462.7573, 61.7877) }, -- mp_d19_p02 garage door
    { name = 'mp_d19_door_08', pos = vector3(933.6874, -453.7695, 61.7837) }, -- mp_d19_p02 sliding door
    { name = 'mp_d19_door_07', pos = vector3(1001.1609, -509.9586, 61.2259) }, -- mp_d19_p03 garage door
    { name = 'mp_d19_door_08', pos = vector3(996.9002, -500.4153, 61.2219) }, -- mp_d19_p03 sliding door
    { name = 'mp_d19_door_07', pos = vector3(1224.9816, -722.5394, 61.1898) }, -- mp_d19_p04 garage door
    { name = 'mp_d19_door_08', pos = vector3(1224.3658, -712.1062, 61.1858) }, -- mp_d19_p04 sliding door
    { name = 'mp_d19_door_07', pos = vector3(1249.9113, -626.2737, 69.8053) }, -- mp_d19_p05 garage door
    { name = 'mp_d19_door_08', pos = vector3(1240.4147, -630.6377, 69.8013) }, -- mp_d19_p05 sliding door
    { name = 'mp_d19_door_07', pos = vector3(841.5483, -567.4501, 58.2262) }, -- mp_d19_p06 garage door
    { name = 'mp_d19_door_08', pos = vector3(831.1883, -568.8283, 58.2222) }, -- mp_d19_p06 sliding door
    { name = 'mp_d01_p04_gar_door_01', pos = vector3(1405.2028, -570.5330, 74.5300) }, -- mp_d01_p04_gar
    { name = 'mp_d01_p05_gar_door_01', pos = vector3(1359.7943, -620.8948, 74.5505) }, -- mp_d01_p05_gar
    { name = 'mp_d01_p06_gar_door_01', pos = vector3(1393.0275, -608.1255, 74.5505) }, -- mp_d01_p06_gar
    { name = 'mp_d01_p07_gar_door_01', pos = vector3(1314.9077, -516.2241, 71.5428) }, -- mp_d01_p07_gar
    { name = 'mp_d01_p08_gar_door_01', pos = vector3(1360.7206, -536.4057, 73.8899) }, -- mp_d01_p08_gar
    { name = 'mp_d01_p09_gar_door_01', pos = vector3(1289.8167, -586.0490, 71.9448) }, -- mp_d01_p09_gar
    { name = 'mp_d01_p10_gar_door_01', pos = vector3(1310.7614, -593.2879, 73.1218) }, -- mp_d01_p10_gar
    { name = 'mp_d01_p11_gar_door_01', pos = vector3(939.7960, -672.4028, 58.2048) }, -- mp_d01_p11_gar
    { name = 'mp_d07_p03_gar_door_01', pos = vector3(911.8368, -632.1760, 58.2179) }, -- mp_d07_p03_gar
    { name = 'mp_d07_p03_gar2_door_01', pos = vector3(912.7848, -645.4061, 58.0531) }, -- mp_d07_p03_gar2
    { name = 'mp_d10_p01_gar_door_01', pos = vector3(1103.6552, -429.6674, 67.8592) }, -- mp_d10_p01_gar
    { name = 'mp_d10_p02_gar_door_01', pos = vector3(1250.9749, -490.1718, 69.9187) }, -- mp_d10_p02_gar
    { name = 'mp_d10_p03_gar_door_01', pos = vector3(975.9590, -714.2562, 58.2737) }, -- mp_d10_p03_gar
    { name = 'mp_d11_p02_gar_door_01', pos = vector3(1089.9391, -495.5219, 65.5345) }, -- mp_d11_p02_gar
    { name = 'mp_d15_p03_gar_door_01', pos = vector3(1192.8418, -596.9384, 64.3589) }, -- mp_d15_p03_gar
    { name = 'mp_d15_p03_gar_door_02', pos = vector3(1192.1940, -592.4549, 64.3589) }, -- mp_d15_p03_gar
    { name = 'mp_d15_p04_gar_door_01', pos = vector3(1266.8373, -673.6064, 66.0895) }, -- mp_d15_p04_gar
    { name = 'mp_d18_p03_gar_door_01', pos = vector3(869.8676, -603.1992, 58.4082) }, -- mp_d18_p03_gar
    { name = 'mp_h2_gar_door_01', pos = vector3(1003.4581, -588.1699, 59.5964) }, -- mp_h2_gar
    { name = 'mp_h2_p03_gar_door_01', pos = vector3(1228.9006, -703.5253, 60.9285) }, -- mp_h2_p03_gar
    { name = 'mp_h3_p03_gar_door_01', pos = vector3(1207.0658, -611.0458, 66.2636) }, -- mp_h3_p03_gar
    { name = 'mp_h3_p03_gar_door_02', pos = vector3(1207.1379, -613.9912, 66.2636) }, -- mp_h3_p03_gar
    { name = 'mp_h3_p04_gar_door_01', pos = vector3(1003.9945, -734.5092, 57.5969) }, -- mp_h3_p04_gar
    { name = 'mp_h4_p08_gar_door_01', pos = vector3(1192.1128, -552.6371, 64.9525) }, -- mp_h4_p08_gar
    { name = 'wh_bng_p04_gar_door_01', pos = vector3(1190.0225, -569.9691, 64.8958) }, -- wh_bng_p04_gar
    { name = 'wh_bng_p04_gar_door_02', pos = vector3(1190.1726, -573.7371, 64.8958) }, -- wh_bng_p04_gar
    { name = 'wh_bng_p06_gar_door_01', pos = vector3(867.6995, -594.8890, 58.5204) }, -- wh_bng_p06_gar
    { name = 'wh_bng_p07_gar_door_01', pos = vector3(969.4103, -688.6887, 58.1340) }, -- wh_bng_p07_gar
}
local WAKE_GAME = string.lower(GetConvar('whip_platform', 'legacy'))
local wakeOn = WAKE_GAME == 'enhanced'
local function wakeU32(h) return h % 4294967296 end      -- hashes come back signed or unsigned
for _, d in ipairs(WAKE_DOORS) do d.hash = wakeU32(GetHashKey(d.name)) end

local function wakeObject(d)                               -- the door's object, while GTA has it created
    if d.obj and DoesEntityExist(d.obj) and wakeU32(GetEntityModel(d.obj)) == d.hash then return d.obj end
    local o = GetClosestObjectOfType(d.pos.x, d.pos.y, d.pos.z, WAKE_SEARCH, d.hash, false, false, false)
    d.obj = (o and o ~= 0) and o or nil
    return d.obj
end

CreateThread(function()
    local objs, n, nextScan = {}, 0, 0                     -- the near doors' objects (reused, cleared in place)
    while true do
        local now, sleep = GetGameTimer(), 0
        if now >= nextScan then
            n, nextScan = 0, now + WAKE_SCAN_MS
            local nearest = math.huge
            if wakeOn then
                local p = GetEntityCoords(PlayerPedId())
                for _, d in ipairs(WAKE_DOORS) do
                    local dist = #(p - d.pos)
                    if dist < nearest then nearest = dist end
                    if dist < WAKE_NEAR then
                        local o = wakeObject(d)            -- nil: not created yet (interior not loaded), next scan
                        if o then n = n + 1; objs[n] = o end
                    end
                end
            end
            for i = n + 1, #objs do objs[i] = nil end
            if n == 0 then
                sleep = wakeOn and math.floor(math.min(1000.0, math.max(WAKE_SCAN_MS, (nearest - WAKE_NEAR) / WAKE_SPEED * 1000.0))) or 1000
                nextScan = 0
            end
        end
        for i = 1, n do ActivatePhysics(objs[i]) end
        Wait(sleep)
    end
end)

RegisterCommand('wh_garage_doors', function(_, args)
    if args[1] == 'off' or args[1] == 'on' then
        wakeOn = args[1] == 'on'
        print(('[whip_homes_mirrorpark] garage door wake-up %s'):format(wakeOn and 'ON' or 'OFF (GTA alone)'))
        return
    end
    local ped = PlayerPedId()
    local p = GetEntityCoords(ped)
    print(('[whip_homes_mirrorpark] garage door wake-up %s (%d doors, %s copy); you: interior %d room %d'):format(
        wakeOn and 'ON' or 'OFF', #WAKE_DOORS, tostring(WAKE_GAME or '?'), GetInteriorFromEntity(ped), GetRoomKeyFromEntity(ped)))
    local shown = 0
    for _, d in ipairs(WAKE_DOORS) do
        local dist = #(p - d.pos)
        if dist < 30.0 then
            shown = shown + 1
            local o = wakeObject(d)
            if o then
                print(('  %s: object %d, you %.1f m away, moved %.2f m from shut%s'):format(d.name, o, dist,
                    #(GetEntityCoords(o) - d.pos), dist < WAKE_NEAR and wakeOn and ', kept awake' or ''))
            else
                print(('  %s: no object (you %.1f m away)'):format(d.name, dist))
            end
        end
    end
    if shown == 0 then print('  no garage door within 30 m') end
end, false)

-- The retired standalone bungalow resource (whippy_test_bungalow) overrides the same stock map files (the four other homes untouched).
-- If it runs too, whichever loads last wins and the new homes show their old stock exteriors.
CreateThread(function()
    Wait(5000)
    for _, other in ipairs({ 'whippy_test_bungalow', 'whippy_test_bungalow_enhanced' }) do
        local state = GetResourceState(other)
        if state == 'started' or state == 'starting' then
            local msg = ('[whip_homes_mirrorpark] WARNING: %s is also running. It is retired and overrides the same stock files; remove it (this resource contains the bungalow).'):format(other)
            print(msg)
            TriggerEvent('chat:addMessage', { args = { msg } })
        end
    end
end)

-- No ambient (NPC) cars on the homes' driveways (0.6.1). Rockstar's driveway car generators are gone from this
-- resource's map files; the driveway vehicle scenario points (a parked empty car, a car pulling out with a driver,
-- a driveway an ambient driver may park in) are blocked here: one vehicles-only scenario blocking area per point,
-- local to this client (every client runs it), removed again when the resource stops. Street parking is untouched.
local DRIVEWAY_BLOCKS = {
    { home = 'mp_d07_p01', min = vector3(919.84, -466.79, 57.71), max = vector3(924.84, -461.79, 62.71) }, -- EMPTY
    { home = 'mp_d19_p02', min = vector3(939.05, -469.21, 58.26), max = vector3(944.05, -464.21, 63.26) }, -- DRIVE_SOLO
    { home = 'mp_d15_p02', min = vector3(1054.50, -447.09, 62.96), max = vector3(1059.50, -442.09, 67.96) }, -- DRIVE_SOLO
    { home = 'mp_d01_p02', min = vector3(1100.22, -425.03, 64.14), max = vector3(1105.22, -420.03, 69.14) }, -- EMPTY
    { home = 'mp_d05_p02', min = vector3(1020.56, -403.25, 62.95), max = vector3(1025.56, -398.25, 67.95) }, -- EMPTY
    { home = 'mp_h2_p03', min = vector3(1226.43, -694.54, 57.87), max = vector3(1231.43, -689.54, 62.87) }, -- EMPTY
    { home = 'mp_d08_p03', min = vector3(948.17, -656.14, 54.92), max = vector3(953.17, -651.14, 59.92) }, -- PARK_PERPENDICULAR_NOSE_IN
    { home = 'mp_d07_p03', min = vector3(926.50, -649.57, 54.86), max = vector3(931.50, -644.57, 59.86) }, -- EMPTY
    { home = 'mp_d15_p03', min = vector3(1207.75, -593.36, 64.74), max = vector3(1212.75, -588.36, 69.74) }, -- EMPTY
    { home = 'mp_d05_p01', min = vector3(853.86, -521.88, 54.31), max = vector3(858.86, -516.88, 59.31) }, -- DRIVE_SOLO
    { home = 'mp_h3', min = vector3(1002.98, -579.24, 57.20), max = vector3(1007.98, -574.24, 62.20) }, -- EMPTY
    { home = 'mp_d19_p06', min = vector3(846.60, -568.83, 54.71), max = vector3(851.60, -563.83, 59.71) }, -- DRIVE_SOLO
    { home = 'mp_d05_p04', min = vector3(1050.94, -485.09, 60.88), max = vector3(1055.94, -480.09, 65.88) }, -- DRIVE_PASSENGERS
    { home = 'mp_h3_p02', min = vector3(1240.74, -522.92, 65.98), max = vector3(1245.74, -517.92, 70.98) }, -- DRIVE_SOLO
    { home = 'mp_h1_p05', min = vector3(908.57, -626.41, 55.05), max = vector3(913.57, -621.41, 60.05) }, -- EMPTY
    { home = 'mp_h1', min = vector3(973.89, -620.68, 55.84), max = vector3(978.89, -615.68, 60.84) }, -- DRIVE_SOLO
    { home = 'mp_h2', min = vector3(991.41, -589.14, 56.26), max = vector3(996.41, -584.14, 61.26) }, -- EMPTY
    { home = 'mp_d10_p03', min = vector3(981.14, -711.08, 54.55), max = vector3(986.14, -706.08, 59.55) }, -- DRIVE_PASSENGERS
    { home = 'mp_d19_p01', min = vector3(997.84, -438.74, 61.14), max = vector3(1002.84, -433.74, 66.14) }, -- DRIVE_PASSENGERS
    { home = 'mp_h4_p07', min = vector3(978.62, -534.41, 57.12), max = vector3(983.62, -529.41, 62.12) }, -- DRIVE_SOLO
    { home = 'wh_bng_p06', min = vector3(873.18, -588.49, 54.49), max = vector3(878.18, -583.49, 59.49) }, -- DRIVE_PASSENGERS
    { home = 'mp_h2', min = vector3(1004.65, -591.57, 56.23), max = vector3(1009.65, -586.57, 61.23) }, -- DRIVE_SOLO
    { home = 'mp_h4', min = vector3(980.81, -576.34, 56.29), max = vector3(985.81, -571.34, 61.29) }, -- DRIVE_PASSENGERS
    { home = 'mp_d05_p03', min = vector3(955.89, -555.38, 56.23), max = vector3(960.89, -550.38, 61.23) }, -- DRIVE_SOLO
    { home = 'mp_d18_p03', min = vector3(871.34, -601.74, 55.22), max = vector3(876.34, -596.74, 60.22) }, -- PARK_PERPENDICULAR_NOSE_IN
    { home = 'mp_d05_p03', min = vector3(957.57, -558.31, 55.91), max = vector3(962.57, -553.31, 60.91) }, -- PARK_PERPENDICULAR_NOSE_IN
    { home = 'mp_d07_p03', min = vector3(913.44, -631.85, 55.05), max = vector3(918.44, -626.85, 60.05) }, -- DRIVE_PASSENGERS
    { home = 'wh_bng_p07', min = vector3(969.64, -688.88, 54.77), max = vector3(974.64, -683.88, 59.77) }, -- PARK_PERPENDICULAR_NOSE_IN
}
local drivewayBlockIds = {}
for _, b in ipairs(DRIVEWAY_BLOCKS) do
    drivewayBlockIds[#drivewayBlockIds + 1] = AddScenarioBlockingArea(b.min.x, b.min.y, b.min.z, b.max.x, b.max.y, b.max.z, false, false, false, true)
end
local function drivewayStatus()
    local active = 0
    for _, b in ipairs(DRIVEWAY_BLOCKS) do
        if DoesScenarioBlockingAreaExist(b.min.x, b.min.y, b.min.z, b.max.x, b.max.y, b.max.z) then active = active + 1 end
    end
    print(('[whip_homes_mirrorpark] driveway car spawns: %d/%d scenario points blocked, 26 car generators removed from the maps'):format(active, #DRIVEWAY_BLOCKS))
end

-- Matte-window prototype. Far away the plugged homes show Rockstar's original windows and closed doors. The map's own
-- LOD swap is <key>_plug (to 50 m) and clear <key>_glass (within NATIVE_GLASS m of the house origin); the interior is
-- instanced within INTERIOR m. The origin is not the middle of the house, so the native swap is set far enough out
-- that it always happens before the fade starts, on every side.
-- 'fade' mode adds a local, non-networked copy of the plug just in front of the glass and fades it by the distance
-- to the real walls (the plan outline, not a box), using the nearer of the player and the camera: opaque beyond
-- fadeFar, clear inside fadeNear. 'native' mode shows the engine swap alone (at NATIVE_GLASS m from the origin).
local GLASS_HOUSES = {
    { key = 'mp_d01_p01', model = 'mp_d01_plugfx', origin = vector3(904.5200, -481.1517, 58.0203), q = { x = -0.0000000, y = -0.0000000, z = 0.2122200, w = 0.9772219 }, poly = { { -2.660, -8.480 }, { -7.290, -8.480 }, { -7.290, 0.020 }, { -7.290, 8.500 }, { -2.300, 8.500 }, { -0.660, 8.500 }, { 0.010, 8.500 }, { 0.010, 5.700 }, { 2.630, 5.700 }, { 2.630, -3.320 }, { 2.950, -3.320 }, { 2.950, -8.480 }, { 2.630, -8.480 }, { -1.000, -8.480 }, { -2.630, -8.480 } }, zMin = -0.098, zMax = 8.146, tint = 0, glass = 41, ext = 100, interior = 46, forceOn = 46.0, forceOff = 56.0, ipl = 'mp_d01_p01_placement', mlo = 'mp_d01_mlo', rooms = 6, portals = 24 },
    { key = 'mp_d01_p02', model = 'mp_d01_plugfx', origin = vector3(1109.1927, -413.8084, 66.1392), q = { x = -0.0000000, y = -0.0000000, z = -0.7337930, w = 0.6793730 }, poly = { { -2.660, -8.480 }, { -7.290, -8.480 }, { -7.290, 0.020 }, { -7.290, 8.500 }, { -2.300, 8.500 }, { -0.660, 8.500 }, { 0.010, 8.500 }, { 0.010, 5.700 }, { 2.630, 5.700 }, { 2.630, -3.320 }, { 2.950, -3.320 }, { 2.950, -8.480 }, { 2.630, -8.480 }, { -1.000, -8.480 }, { -2.630, -8.480 } }, zMin = -0.098, zMax = 8.146, tint = 0, glass = 41, ext = 100, interior = 46, forceOn = 46.0, forceOff = 56.0, ipl = 'mp_d01_p02_placement', mlo = 'mp_d01_mlo', rooms = 6, portals = 24 },
    { key = 'mp_d01_p03', model = 'mp_d01_plugfx', origin = vector3(917.6712, -561.3809, 56.9505), q = { x = -0.0000000, y = -0.0000000, z = 0.2284950, w = 0.9735451 }, poly = { { -2.660, -8.480 }, { -7.290, -8.480 }, { -7.290, 0.020 }, { -7.290, 8.500 }, { -2.300, 8.500 }, { -0.660, 8.500 }, { 0.010, 8.500 }, { 0.010, 5.700 }, { 2.630, 5.700 }, { 2.630, -3.320 }, { 2.950, -3.320 }, { 2.950, -8.480 }, { 2.630, -8.480 }, { -1.000, -8.480 }, { -2.630, -8.480 } }, zMin = -0.098, zMax = 8.146, tint = 0, glass = 41, ext = 100, interior = 46, forceOn = 46.0, forceOff = 56.0, ipl = 'mp_d01_p03_placement', mlo = 'mp_d01_mlo', rooms = 6, portals = 24 },
    { key = 'mp_d01_p04', model = 'mp_d01_plugfx', origin = vector3(1397.3379, -567.8675, 73.0806), q = { x = -0.0000000, y = -0.0000000, z = -0.5493182, w = 0.8356132 }, poly = { { -2.660, -8.480 }, { -7.290, -8.480 }, { -7.290, 0.020 }, { -7.290, 8.500 }, { -2.300, 8.500 }, { -0.660, 8.500 }, { 0.010, 8.500 }, { 0.010, 5.700 }, { 2.630, 5.700 }, { 2.630, -3.320 }, { 2.950, -3.320 }, { 2.950, -8.480 }, { 2.630, -8.480 }, { -1.000, -8.480 }, { -2.630, -8.480 } }, zMin = -0.098, zMax = 8.146, tint = 0, glass = 41, ext = 100, interior = 46, forceOn = 46.0, forceOff = 56.0, ipl = 'mp_d01_p04_placement', mlo = 'mp_d01_mlo', rooms = 8, portals = 25, garages = { { key = 'mp_d01_p04_gar', ipl = 'mp_d01_p04_gar_placement', mlo = 'mp_d01_p04_gar_mlo', origin = vector3(1409.3143, -568.7234, 73.3290) } } },
    { key = 'mp_d01_p05', model = 'mp_d01_plugfx', origin = vector3(1365.4727, -614.9008, 73.2951), q = { x = -0.0000000, y = -0.0000000, z = -0.9999997, w = 0.0007200 }, poly = { { -2.660, -8.480 }, { -7.290, -8.480 }, { -7.290, 0.020 }, { -7.290, 8.500 }, { -2.300, 8.500 }, { -0.660, 8.500 }, { 0.010, 8.500 }, { 0.010, 5.700 }, { 2.630, 5.700 }, { 2.630, -3.320 }, { 2.950, -3.320 }, { 2.950, -8.480 }, { 2.630, -8.480 }, { -1.000, -8.480 }, { -2.630, -8.480 } }, zMin = -0.098, zMax = 8.146, tint = 0, glass = 41, ext = 100, interior = 46, forceOn = 46.0, forceOff = 56.0, ipl = 'mp_d01_p05_placement', mlo = 'mp_d01_mlo', rooms = 8, portals = 25, garages = { { key = 'mp_d01_p05_gar', ipl = 'mp_d01_p05_gar_placement', mlo = 'mp_d01_p05_gar_mlo', origin = vector3(1359.7988, -625.3899, 73.3500) } } },
    { key = 'mp_d01_p06', model = 'mp_d01_plugfx', origin = vector3(1391.7537, -599.9294, 73.0696), q = { x = -0.0000000, y = -0.0000000, z = -0.8956120, w = 0.4448360 }, poly = { { -2.660, -8.480 }, { -7.290, -8.480 }, { -7.290, 0.020 }, { -7.290, 8.500 }, { -2.300, 8.500 }, { -0.660, 8.500 }, { 0.010, 8.500 }, { 0.010, 5.700 }, { 2.630, 5.700 }, { 2.630, -3.320 }, { 2.950, -3.320 }, { 2.950, -8.480 }, { 2.630, -8.480 }, { -1.000, -8.480 }, { -2.630, -8.480 } }, zMin = -0.098, zMax = 8.146, tint = 0, glass = 41, ext = 100, interior = 46, forceOn = 46.0, forceOff = 56.0, ipl = 'mp_d01_p06_placement', mlo = 'mp_d01_mlo', rooms = 8, portals = 25, garages = { { key = 'mp_d01_p06_gar', ipl = 'mp_d01_p06_gar_placement', mlo = 'mp_d01_p06_gar_mlo', origin = vector3(1396.5049, -611.0110, 73.3500) } } },
    { key = 'mp_d01_p07', model = 'mp_d01_plugfx', origin = vector3(1307.6470, -520.2138, 70.0447), q = { x = -0.0000000, y = -0.0000000, z = -0.1700281, w = 0.9854392 }, poly = { { -2.660, -8.480 }, { -7.290, -8.480 }, { -7.290, 0.020 }, { -7.290, 8.500 }, { -2.300, 8.500 }, { -0.660, 8.500 }, { 0.010, 8.500 }, { 0.010, 5.700 }, { 2.630, 5.700 }, { 2.630, -3.320 }, { 2.950, -3.320 }, { 2.950, -8.480 }, { 2.630, -8.480 }, { -1.000, -8.480 }, { -2.630, -8.480 } }, zMin = -0.098, zMax = 8.146, tint = 0, glass = 41, ext = 100, interior = 46, forceOn = 46.0, forceOff = 56.0, ipl = 'mp_d01_p07_placement', mlo = 'mp_d01_mlo', rooms = 8, portals = 25, garages = { { key = 'mp_d01_p07_gar', ipl = 'mp_d01_p07_gar_placement', mlo = 'mp_d01_p07_gar_mlo', origin = vector3(1316.4196, -511.9887, 70.4060) } } },
    { key = 'mp_d01_p08', model = 'mp_d01_plugfx', origin = vector3(1353.2407, -539.8417, 72.4758), q = { x = -0.0000000, y = -0.0000000, z = -0.1978520, w = 0.9802319 }, poly = { { -2.660, -8.480 }, { -7.290, -8.480 }, { -7.290, 0.020 }, { -7.290, 8.500 }, { -2.300, 8.500 }, { -0.660, 8.500 }, { 0.010, 8.500 }, { 0.010, 5.700 }, { 2.630, 5.700 }, { 2.630, -3.320 }, { 2.950, -3.320 }, { 2.950, -8.480 }, { 2.630, -8.480 }, { -1.000, -8.480 }, { -2.630, -8.480 } }, zMin = -0.098, zMax = 8.146, tint = 0, glass = 41, ext = 100, interior = 46, forceOn = 46.0, forceOff = 56.0, ipl = 'mp_d01_p08_placement', mlo = 'mp_d01_mlo', rooms = 8, portals = 25, garages = { { key = 'mp_d01_p08_gar', ipl = 'mp_d01_p08_gar_placement', mlo = 'mp_d01_p08_gar_mlo', origin = vector3(1362.4490, -532.2570, 72.7060) } } },
    { key = 'mp_d01_p09', model = 'mp_d01_plugfx', origin = vector3(1296.9302, -581.6664, 70.3162), q = { x = -0.0000000, y = -0.0000000, z = -0.9893271, w = -0.1457110 }, poly = { { -2.660, -8.480 }, { -7.290, -8.480 }, { -7.290, 0.020 }, { -7.290, 8.500 }, { -2.300, 8.500 }, { -0.660, 8.500 }, { 0.010, 8.500 }, { 0.010, 5.700 }, { 2.630, 5.700 }, { 2.630, -3.320 }, { 2.950, -3.320 }, { 2.950, -8.480 }, { 2.630, -8.480 }, { -1.000, -8.480 }, { -2.630, -8.480 } }, zMin = -0.098, zMax = 8.146, tint = 0, glass = 41, ext = 100, interior = 46, forceOn = 46.0, forceOff = 56.0, ipl = 'mp_d01_p09_placement', mlo = 'mp_d01_mlo', rooms = 8, portals = 25, garages = { { key = 'mp_d01_p09_gar', ipl = 'mp_d01_p09_gar_placement', mlo = 'mp_d01_p09_gar_mlo', origin = vector3(1288.5049, -590.4805, 70.7440) } } },
    { key = 'mp_d01_p10', model = 'mp_d01_plugfx', origin = vector3(1318.3254, -589.9842, 71.8304), q = { x = -0.0000000, y = -0.0000000, z = -0.9775341, w = -0.2107770 }, poly = { { -2.660, -8.480 }, { -7.290, -8.480 }, { -7.290, 0.020 }, { -7.290, 8.500 }, { -2.300, 8.500 }, { -0.660, 8.500 }, { 0.010, 8.500 }, { 0.010, 5.700 }, { 2.630, 5.700 }, { 2.630, -3.320 }, { 2.950, -3.320 }, { 2.950, -8.480 }, { 2.630, -8.480 }, { -1.000, -8.480 }, { -2.630, -8.480 } }, zMin = -0.098, zMax = 8.146, tint = 0, glass = 41, ext = 100, interior = 46, forceOn = 46.0, forceOff = 56.0, ipl = 'mp_d01_p10_placement', mlo = 'mp_d01_mlo', rooms = 8, portals = 25, garages = { { key = 'mp_d01_p10_gar', ipl = 'mp_d01_p10_gar_placement', mlo = 'mp_d01_p10_gar_mlo', origin = vector3(1308.9340, -597.3214, 71.9210) } } },
    { key = 'mp_d01_p11', model = 'mp_d01_plugfx', origin = vector3(951.8467, -672.3773, 57.0338), q = { x = -0.0000000, y = -0.0000000, z = -0.8631754, w = -0.5049042 }, poly = { { -2.660, -8.480 }, { -7.290, -8.480 }, { -7.290, 0.020 }, { -7.290, 8.500 }, { -2.300, 8.500 }, { -0.660, 8.500 }, { 0.010, 8.500 }, { 0.010, 5.700 }, { 2.630, 5.700 }, { 2.630, -3.320 }, { 2.950, -3.320 }, { 2.950, -8.480 }, { 2.630, -8.480 }, { -1.000, -8.480 }, { -2.630, -8.480 } }, zMin = -0.098, zMax = 8.146, tint = 0, glass = 41, ext = 100, interior = 46, forceOn = 46.0, forceOff = 56.0, ipl = 'mp_d01_p11_placement', mlo = 'mp_d01_mlo', rooms = 8, portals = 26, garages = { { key = 'mp_d01_p11_gar', ipl = 'mp_d01_p11_gar_placement', mlo = 'mp_d01_p11_gar_mlo', origin = vector3(936.3759, -674.2916, 57.0168) } } },
    { key = 'mp_h3_p02', model = 'mp_h3_plugfx', origin = vector3(1245.9686, -512.8400, 67.9538), q = { x = -0.0000000, y = -0.0000000, z = -0.7845251, w = 0.6200971 }, poly = { { -5.510, -4.990 }, { 5.490, -4.990 }, { 5.490, 5.010 }, { -5.510, 5.010 } }, zMin = -0.066, zMax = 5.972, tint = 0, glass = 37, ext = 100, interior = 42, forceOn = 42.0, forceOff = 52.0, ipl = 'mp_h3_p02_placement', mlo = 'mp_h3_mlo', rooms = 4, portals = 15 },
    { key = 'mp_h3', model = 'mp_h3_plugfx', origin = vector3(1004.6108, -570.6824, 59.1994), q = { x = -0.0000000, y = -0.0000000, z = 0.6649330, w = 0.7469030 }, poly = { { -5.510, -4.990 }, { 5.490, -4.990 }, { 5.490, 5.010 }, { -5.510, 5.010 } }, zMin = -0.066, zMax = 5.972, tint = 0, glass = 37, ext = 100, interior = 42, forceOn = 42.0, forceOff = 52.0, ipl = 'mp_h3_placement', mlo = 'mp_h3_mlo', rooms = 4, portals = 15 },
    { key = 'mp_h3_p03', model = 'mp_h3_plugfx', origin = vector3(1212.6594, -621.2533, 65.0434), q = { x = -0.0000000, y = -0.0000000, z = -0.6902311, w = 0.7235890 }, poly = { { -5.510, -4.990 }, { 5.490, -4.990 }, { 5.490, 5.010 }, { -5.510, 5.010 } }, zMin = -0.066, zMax = 5.972, tint = 0, glass = 37, ext = 100, interior = 42, forceOn = 42.0, forceOff = 52.0, ipl = 'mp_h3_p03_placement', mlo = 'mp_h3v1_mlo', rooms = 6, portals = 12, garages = { { key = 'mp_h3_p03_gar', ipl = 'mp_h3_p03_gar_placement', mlo = 'mp_h3_p03_gar_mlo', origin = vector3(1214.3497, -612.2007, 65.1118) } } },
    { key = 'mp_h3_p04', model = 'mp_h3_plugfx', origin = vector3(991.8372, -732.0104, 56.4207), q = { x = -0.0000000, y = -0.0000000, z = -0.4146932, w = 0.9099613 }, poly = { { -5.510, -4.990 }, { 5.490, -4.990 }, { 5.490, 5.010 }, { -5.510, 5.010 } }, zMin = -0.066, zMax = 5.972, tint = 0, glass = 37, ext = 100, interior = 42, forceOn = 42.0, forceOff = 52.0, ipl = 'mp_h3_p04_placement', mlo = 'mp_h3_mlo', rooms = 6, portals = 17, garages = { { key = 'mp_h3_p04_gar', ipl = 'mp_h3_p04_gar_placement', mlo = 'mp_h3_p04_gar_mlo', origin = vector3(1001.0897, -737.1243, 56.4087) } } },
    { key = 'mp_d05_p01', model = 'mp_d05_plugfx', origin = vector3(857.1680, -510.0014, 56.3289), q = { x = -0.0000000, y = -0.0000000, z = -0.9335539, w = -0.3584369 }, poly = { { -2.370, -5.030 }, { 6.400, -5.030 }, { 6.400, 5.690 }, { -4.600, 5.690 }, { -4.600, -2.550 }, { -2.370, -2.550 } }, zMin = -0.217, zMax = 6.510, tint = 0, glass = 38, ext = 100, interior = 43, forceOn = 43.0, forceOff = 53.0, ipl = 'mp_d05_p01_placement', mlo = 'mp_d05_mlo', rooms = 4, portals = 10 },
    { key = 'mp_d05_p02', model = 'mp_d05_plugfx', origin = vector3(1024.3240, -408.5978, 64.9493), q = { x = -0.0000000, y = -0.0000000, z = -0.9002496, w = -0.4353743 }, poly = { { -2.370, -5.030 }, { 6.400, -5.030 }, { 6.400, 5.690 }, { -4.600, 5.690 }, { -4.600, -2.550 }, { -2.370, -2.550 } }, zMin = -0.217, zMax = 6.510, tint = 0, glass = 38, ext = 100, interior = 43, forceOn = 43.0, forceOff = 53.0, ipl = 'mp_d05_p02_placement', mlo = 'mp_d05_mlo', rooms = 4, portals = 10 },
    { key = 'mp_d05_p03', model = 'mp_d05_plugfx', origin = vector3(960.7468, -541.6228, 58.3340), q = { x = -0.0000000, y = -0.0000000, z = -0.8702150, w = -0.4926720 }, poly = { { -2.370, -5.030 }, { 6.400, -5.030 }, { 6.400, 5.690 }, { -4.600, 5.690 }, { -4.600, -2.550 }, { -2.370, -2.550 } }, zMin = -0.217, zMax = 6.510, tint = 0, glass = 38, ext = 100, interior = 43, forceOn = 43.0, forceOff = 53.0, ipl = 'mp_d05_p03_placement', mlo = 'mp_d05_mlo', rooms = 4, portals = 10 },
    { key = 'mp_d05_p04', model = 'mp_d05_plugfx', origin = vector3(1047.8208, -473.5682, 62.9038), q = { x = -0.0000000, y = -0.0000000, z = -0.9952945, w = -0.0968960 }, poly = { { -2.370, -5.030 }, { 6.400, -5.030 }, { 6.400, 5.690 }, { -4.600, 5.690 }, { -4.600, -2.550 }, { -2.370, -2.550 } }, zMin = -0.217, zMax = 6.510, tint = 0, glass = 38, ext = 100, interior = 43, forceOn = 43.0, forceOff = 53.0, ipl = 'mp_d05_p04_placement', mlo = 'mp_d05_mlo', rooms = 4, portals = 10 },
    { key = 'mp_d05_p05', model = 'mp_d05_plugfx', origin = vector3(1260.6794, -704.7103, 63.5155), q = { x = -0.0000000, y = -0.0000000, z = -0.9659863, w = -0.2585931 }, poly = { { -2.370, -5.030 }, { 6.400, -5.030 }, { 6.400, 5.690 }, { -4.600, 5.690 }, { -4.600, -2.550 }, { -2.370, -2.550 } }, zMin = -0.217, zMax = 6.510, tint = 0, glass = 38, ext = 100, interior = 43, forceOn = 43.0, forceOff = 53.0, ipl = 'mp_d05_p05_placement', mlo = 'mp_d05_mlo', rooms = 4, portals = 10 },
    { key = 'mp_d07_p01', model = 'mp_d07_plugfx', origin = vector3(920.8018, -473.5139, 59.7059), q = { x = -0.0000000, y = -0.0000000, z = 0.2133230, w = 0.9769818 }, poly = { { 0.020, -8.560 }, { 1.770, -8.560 }, { 2.190, -9.300 }, { 3.980, -9.300 }, { 4.400, -8.560 }, { 4.950, -8.560 }, { 4.950, 6.620 }, { 4.370, 6.620 }, { 4.370, 8.620 }, { 0.090, 8.620 }, { 0.090, 6.620 }, { -1.931, 6.620 }, { -2.299, 7.276 }, { -3.730, 7.276 }, { -4.097, 6.620 }, { -5.290, 6.620 }, { -5.290, -1.259 }, { -5.234, -1.785 }, { -5.097, -2.292 }, { -4.868, -2.767 }, { -4.580, -3.148 }, { -4.170, -3.509 }, { -3.663, -3.822 }, { -3.090, -4.000 }, { -2.377, -3.980 }, { 0.020, -3.980 } }, zMin = -0.007, zMax = 5.917, tint = 0, glass = 40, ext = 100, interior = 45, forceOn = 45.0, forceOff = 55.0, ipl = 'mp_d07_p01_placement', mlo = 'mp_d07_mlo', rooms = 4, portals = 20 },
    { key = 'mp_d07_p02', model = 'mp_d07_plugfx', origin = vector3(897.4630, -539.4004, 57.1290), q = { x = -0.0000000, y = -0.0000000, z = -0.5268299, w = 0.8499707 }, poly = { { 0.020, -8.560 }, { 1.770, -8.560 }, { 2.190, -9.300 }, { 3.980, -9.300 }, { 4.400, -8.560 }, { 4.950, -8.560 }, { 4.950, 6.620 }, { 4.370, 6.620 }, { 4.370, 8.620 }, { 0.090, 8.620 }, { 0.090, 6.620 }, { -1.931, 6.620 }, { -2.299, 7.276 }, { -3.730, 7.276 }, { -4.097, 6.620 }, { -5.290, 6.620 }, { -5.290, -1.259 }, { -5.234, -1.785 }, { -5.097, -2.292 }, { -4.868, -2.767 }, { -4.580, -3.148 }, { -4.170, -3.509 }, { -3.663, -3.822 }, { -3.090, -4.000 }, { -2.377, -3.980 }, { 0.020, -3.980 } }, zMin = -0.007, zMax = 5.917, tint = 0, glass = 40, ext = 100, interior = 45, forceOn = 45.0, forceOff = 55.0, ipl = 'mp_d07_p02_placement', mlo = 'mp_d07_mlo', rooms = 4, portals = 20 },
    { key = 'mp_d07_p03', model = 'mp_d07_plugfx', origin = vector3(925.3619, -642.5438, 56.8647), q = { x = -0.0000000, y = -0.0000000, z = -0.9368882, w = -0.3496291 }, poly = { { 0.020, -8.560 }, { 1.770, -8.560 }, { 2.190, -9.300 }, { 3.980, -9.300 }, { 4.400, -8.560 }, { 4.950, -8.560 }, { 4.950, 6.620 }, { 4.370, 6.620 }, { 4.370, 8.620 }, { 0.090, 8.620 }, { 0.090, 6.620 }, { -1.931, 6.620 }, { -2.299, 7.276 }, { -3.730, 7.276 }, { -4.097, 6.620 }, { -5.290, 6.620 }, { -5.290, -1.259 }, { -5.234, -1.785 }, { -5.097, -2.292 }, { -4.868, -2.767 }, { -4.580, -3.148 }, { -4.170, -3.509 }, { -3.663, -3.822 }, { -3.090, -4.000 }, { -2.377, -3.980 }, { 0.020, -3.980 } }, zMin = -0.007, zMax = 5.917, tint = 0, glass = 40, ext = 100, interior = 45, forceOn = 45.0, forceOff = 55.0, ipl = 'mp_d07_p03_placement', mlo = 'mp_d07_mlo', rooms = 8, portals = 24, garages = { { key = 'mp_d07_p03_gar', ipl = 'mp_d07_p03_gar_placement', mlo = 'mp_d07_p03_gar_mlo', origin = vector3(909.3251, -635.1611, 57.0277) }, { key = 'mp_d07_p03_gar2', ipl = 'mp_d07_p03_gar2_placement', mlo = 'mp_d07_p03_gar2_mlo', origin = vector3(910.2057, -648.3425, 56.8647) } } },
    { key = 'mp_d08_p01', model = 'mp_d08_plugfx', origin = vector3(946.6959, -520.7587, 59.2335), q = { x = -0.0000000, y = -0.0000000, z = -0.9658032, w = 0.2592761 }, poly = { { 2.100, 5.550 }, { 2.100, 7.480 }, { 6.680, 7.480 }, { 6.680, -7.520 }, { 2.100, -7.520 }, { 2.100, -2.960 }, { 0.250, -2.960 }, { 0.250, -0.990 }, { -2.800, -0.990 }, { -7.613, -0.990 }, { -7.613, 5.550 }, { -2.800, 5.550 } }, zMin = -0.216, zMax = 5.011, tint = 0, glass = 40, ext = 100, interior = 45, forceOn = 45.0, forceOff = 55.0, ipl = 'mp_d08_p01_placement', mlo = 'mp_d08_mlo', rooms = 5, portals = 17 },
    { key = 'mp_d08_p02', model = 'mp_d08_plugfx', origin = vector3(1223.4524, -668.9000, 62.1012), q = { x = -0.0000000, y = -0.0000000, z = -0.6247049, w = 0.7808609 }, poly = { { 2.100, 5.550 }, { 2.100, 7.480 }, { 6.680, 7.480 }, { 6.680, -7.520 }, { 2.100, -7.520 }, { 2.100, -2.960 }, { 0.250, -2.960 }, { 0.250, -0.990 }, { -2.800, -0.990 }, { -7.613, -0.990 }, { -7.613, 5.550 }, { -2.800, 5.550 } }, zMin = -0.216, zMax = 5.011, tint = 0, glass = 40, ext = 100, interior = 45, forceOn = 45.0, forceOff = 55.0, ipl = 'mp_d08_p02_placement', mlo = 'mp_d08_mlo', rooms = 5, portals = 17 },
    { key = 'mp_d08_p03', model = 'mp_d08_plugfx', origin = vector3(941.7329, -654.5335, 57.0367), q = { x = -0.0000000, y = -0.0000000, z = -0.9069924, w = -0.4211472 }, poly = { { 2.100, 5.550 }, { 2.100, 7.480 }, { 6.680, 7.480 }, { 6.680, -7.520 }, { 2.100, -7.520 }, { 2.100, -2.960 }, { 0.250, -2.960 }, { 0.250, -0.990 }, { -2.800, -0.990 }, { -7.613, -0.990 }, { -7.613, 5.550 }, { -2.800, 5.550 } }, zMin = -0.216, zMax = 5.011, tint = 0, glass = 40, ext = 100, interior = 45, forceOn = 45.0, forceOff = 55.0, ipl = 'mp_d08_p03_placement', mlo = 'mp_d08_mlo', rooms = 5, portals = 17 },
    { key = 'mp_h1', model = 'mp_h1_plugfx', origin = vector3(986.1494, -622.1621, 57.8406), q = { x = -0.0000000, y = -0.0000000, z = -0.4606361, w = 0.8875890 }, poly = { { -6.280, -3.750 }, { -6.280, 6.640 }, { 7.400, 6.640 }, { 7.400, -3.750 }, { 7.400, -8.910 }, { 6.910, -8.910 }, { 6.060, -10.050 }, { 4.390, -10.050 }, { 3.540, -8.910 }, { 1.560, -8.910 }, { 1.560, -7.320 }, { -4.540, -7.320 }, { -4.540, -3.750 } }, zMin = -0.096, zMax = 9.450, tint = 0, glass = 41, ext = 100, interior = 46, forceOn = 46.0, forceOff = 56.0, ipl = 'mp_h1_placement', mlo = 'mp_h1_mlo', rooms = 8, portals = 29 },
    { key = 'mp_h1_p02', model = 'mp_h1_plugfx', origin = vector3(1375.1558, -547.8932, 73.2905), q = { x = -0.0000000, y = -0.0000000, z = -0.1859210, w = 0.9825647 }, poly = { { -6.280, -3.750 }, { -6.280, 6.640 }, { 7.400, 6.640 }, { 7.400, -3.750 }, { 7.400, -8.910 }, { 6.910, -8.910 }, { 6.060, -10.050 }, { 4.390, -10.050 }, { 3.540, -8.910 }, { 1.560, -8.910 }, { 1.560, -7.320 }, { -4.540, -7.320 }, { -4.540, -3.750 } }, zMin = -0.096, zMax = 9.450, tint = 0, glass = 41, ext = 100, interior = 46, forceOn = 46.0, forceOff = 56.0, ipl = 'mp_h1_p02_placement', mlo = 'mp_h1_mlo', rooms = 8, portals = 29 },
    { key = 'mp_h1_p03', model = 'mp_h1_plugfx', origin = vector3(1330.2678, -528.0859, 71.0456), q = { x = -0.0000000, y = -0.0000000, z = -0.1715350, w = 0.9851780 }, poly = { { -6.280, -3.750 }, { -6.280, 6.640 }, { 7.400, 6.640 }, { 7.400, -3.750 }, { 7.400, -8.910 }, { 6.910, -8.910 }, { 6.060, -10.050 }, { 4.390, -10.050 }, { 3.540, -8.910 }, { 1.560, -8.910 }, { 1.560, -7.320 }, { -4.540, -7.320 }, { -4.540, -3.750 } }, zMin = -0.096, zMax = 9.450, tint = 0, glass = 41, ext = 100, interior = 46, forceOn = 46.0, forceOff = 56.0, ipl = 'mp_h1_p03_placement', mlo = 'mp_h1_mlo', rooms = 8, portals = 29 },
    { key = 'mp_h1_p04', model = 'mp_h1_plugfx', origin = vector3(1337.5210, -604.4516, 73.3055), q = { x = -0.0000000, y = -0.0000000, z = -0.9510705, w = -0.3089738 }, poly = { { -6.280, -3.750 }, { -6.280, 6.640 }, { 7.400, 6.640 }, { 7.400, -3.750 }, { 7.400, -8.910 }, { 6.910, -8.910 }, { 6.060, -10.050 }, { 4.390, -10.050 }, { 3.540, -8.910 }, { 1.560, -8.910 }, { 1.560, -7.320 }, { -4.540, -7.320 }, { -4.540, -3.750 } }, zMin = -0.096, zMax = 9.450, tint = 0, glass = 41, ext = 100, interior = 46, forceOn = 46.0, forceOff = 56.0, ipl = 'mp_h1_p04_placement', mlo = 'mp_h1_mlo', rooms = 8, portals = 29 },
    { key = 'mp_h1_p05', model = 'mp_h1_plugfx', origin = vector3(898.4309, -622.2310, 57.0582), q = { x = -0.0000000, y = -0.0000000, z = -0.9336154, w = -0.3582768 }, poly = { { -6.280, -3.750 }, { -6.280, 6.640 }, { 7.400, 6.640 }, { 7.400, -3.750 }, { 7.400, -8.910 }, { 6.910, -8.910 }, { 6.060, -10.050 }, { 4.390, -10.050 }, { 3.540, -8.910 }, { 1.560, -8.910 }, { 1.560, -7.320 }, { -4.540, -7.320 }, { -4.540, -3.750 } }, zMin = -0.096, zMax = 9.450, tint = 0, glass = 41, ext = 100, interior = 46, forceOn = 46.0, forceOff = 56.0, ipl = 'mp_h1_p05_placement', mlo = 'mp_h1_mlo', rooms = 8, portals = 29 },
    { key = 'mp_d10_p01', model = 'mp_d10_plugfx', origin = vector3(1106.9608, -442.6829, 66.3917), q = { x = -0.0000000, y = -0.0000000, z = -0.7508610, w = 0.6604601 }, poly = { { -9.870, -5.430 }, { -6.250, -5.430 }, { -6.250, -6.430 }, { -2.630, -6.430 }, { -2.630, -9.430 }, { 7.940, -9.430 }, { 7.940, -5.430 }, { 9.790, -5.430 }, { 9.790, 1.570 }, { -9.870, 1.570 } }, zMin = 0.000, zMax = 5.594, tint = 0, glass = 42, ext = 100, interior = 47, forceOn = 47.0, forceOff = 57.0, ipl = 'mp_d10_p01_placement', mlo = 'mp_d10v1_mlo', rooms = 7, portals = 17, garages = { { key = 'mp_d10_p01_gar', ipl = 'mp_d10_p01_gar_placement', mlo = 'mp_d10_p01_gar_mlo', origin = vector3(1109.1010, -430.3796, 66.3921) } } },
    { key = 'mp_d10_p02', model = 'mp_d10_plugfx', origin = vector3(1246.7667, -501.1992, 68.5079), q = { x = -0.0000000, y = -0.0000000, z = -0.9935714, w = -0.1132070 }, poly = { { -9.870, -5.430 }, { -6.250, -5.430 }, { -6.250, -6.430 }, { -2.630, -6.430 }, { -2.630, -9.430 }, { 7.940, -9.430 }, { 7.940, -5.430 }, { 9.790, -5.430 }, { 9.790, 1.570 }, { -9.870, 1.570 } }, zMin = 0.000, zMax = 5.594, tint = 0, glass = 42, ext = 100, interior = 47, forceOn = 47.0, forceOff = 57.0, ipl = 'mp_d10_p02_placement', mlo = 'mp_d10v2_mlo', rooms = 7, portals = 18, garages = { { key = 'mp_d10_p02_gar', ipl = 'mp_d10_p02_gar_placement', mlo = 'mp_d10_p02_gar_mlo', origin = vector3(1244.5160, -488.7105, 68.4515) } } },
    { key = 'mp_d10_p03', model = 'mp_d10_plugfx', origin = vector3(982.2393, -724.1914, 56.8221), q = { x = -0.0000000, y = -0.0000000, z = -0.9335803, w = 0.3583682 }, poly = { { -9.870, -5.430 }, { -6.250, -5.430 }, { -6.250, -6.430 }, { -2.630, -6.430 }, { -2.630, -9.430 }, { 7.940, -9.430 }, { 7.940, -5.430 }, { 9.790, -5.430 }, { 9.790, 1.570 }, { -9.870, 1.570 } }, zMin = 0.000, zMax = 5.594, tint = 0, glass = 42, ext = 100, interior = 47, forceOn = 47.0, forceOff = 57.0, ipl = 'mp_d10_p03_placement', mlo = 'mp_d10v2_mlo', rooms = 7, portals = 18, garages = { { key = 'mp_d10_p03_gar', ipl = 'mp_d10_p03_gar_placement', mlo = 'mp_d10_p03_gar_mlo', origin = vector3(970.8810, -718.7776, 56.8517) } } },
    { key = 'mp_d11_p01', model = 'mp_d11_plugfx', origin = vector3(843.2824, -531.9878, 56.3289), q = { x = -0.0000000, y = -0.0000000, z = 0.6846170, w = 0.7289030 }, poly = { { -7.380, -8.220 }, { -1.080, -8.220 }, { -1.080, -6.590 }, { 2.120, -6.590 }, { 2.120, -7.130 }, { 2.950, -7.130 }, { 3.390, -8.100 }, { 5.200, -8.100 }, { 5.650, -7.130 }, { 7.090, -7.130 }, { 7.090, 8.180 }, { -7.380, 8.180 } }, zMin = -0.138, zMax = 7.275, tint = 0, glass = 41, ext = 100, interior = 46, forceOn = 46.0, forceOff = 56.0, ipl = 'mp_d11_p01_placement', mlo = 'mp_d11_mlo', rooms = 5, portals = 16 },
    { key = 'mp_d11_p02', model = 'mp_d11_plugfx', origin = vector3(1097.2211, -486.1320, 64.0633), q = { x = -0.0000000, y = -0.0000000, z = -0.7811732, w = 0.6243142 }, poly = { { -7.380, -8.220 }, { -1.080, -8.220 }, { -1.080, -6.590 }, { 2.120, -6.590 }, { 2.120, -7.130 }, { 2.950, -7.130 }, { 3.390, -8.100 }, { 5.200, -8.100 }, { 5.650, -7.130 }, { 7.090, -7.130 }, { 7.090, 8.180 }, { -7.380, 8.180 } }, zMin = -0.138, zMax = 7.275, tint = 0, glass = 41, ext = 100, interior = 46, forceOn = 46.0, forceOff = 56.0, ipl = 'mp_d11_p02_placement', mlo = 'mp_d11v1_mlo', rooms = 7, portals = 15, garages = { { key = 'mp_d11_p02_gar', ipl = 'mp_d11_p02_gar_placement', mlo = 'mp_d11_p02_gar_mlo', origin = vector3(1095.6801, -496.3486, 64.0671) } } },
    { key = 'mp_d11_p03', model = 'mp_d11_plugfx', origin = vector3(1258.7162, -458.1288, 68.9198), q = { x = -0.0000000, y = -0.0000000, z = -0.7209368, w = -0.6930008 }, poly = { { -7.380, -8.220 }, { -1.080, -8.220 }, { -1.080, -6.590 }, { 2.120, -6.590 }, { 2.120, -7.130 }, { 2.950, -7.130 }, { 3.390, -8.100 }, { 5.200, -8.100 }, { 5.650, -7.130 }, { 7.090, -7.130 }, { 7.090, 8.180 }, { -7.380, 8.180 } }, zMin = -0.138, zMax = 7.275, tint = 0, glass = 41, ext = 100, interior = 46, forceOn = 46.0, forceOff = 56.0, ipl = 'mp_d11_p03_placement', mlo = 'mp_d11_mlo', rooms = 5, portals = 16 },
    { key = 'wh_bng_p02', model = 'wh_bng_plugfx', origin = vector3(1255.8485, -481.1010, 68.7786), q = { x = -0.0000000, y = -0.0000000, z = -0.9961947, w = -0.0871560 }, poly = { { -2.663, -1.914 }, { -2.663, -7.805 }, { 7.488, -7.805 }, { 7.488, 4.507 }, { -7.488, 4.507 }, { -7.488, 3.669 }, { -8.646, 2.806 }, { -8.646, 0.981 }, { -7.488, 0.119 }, { -7.488, -0.720 }, { -3.842, -0.725 } }, zMin = 0.000, zMax = 5.963, tint = 0, glass = 40, ext = 100, interior = 45, forceOn = 45.0, forceOff = 55.0, ipl = 'wh_bng_p02_placement', mlo = 'wh_bng_mlo', rooms = 4, portals = 15 },
    { key = 'wh_bng_p03', model = 'wh_bng_plugfx', origin = vector3(973.5687, -504.6236, 60.7308), q = { x = -0.0000000, y = -0.0000000, z = -0.4971422, w = 0.8676691 }, poly = { { -2.663, -1.914 }, { -2.663, -7.805 }, { 7.488, -7.805 }, { 7.488, 4.507 }, { -7.488, 4.507 }, { -7.488, 3.669 }, { -8.646, 2.806 }, { -8.646, 0.981 }, { -7.488, 0.119 }, { -7.488, -0.720 }, { -3.842, -0.725 } }, zMin = 0.000, zMax = 5.963, tint = 0, glass = 40, ext = 100, interior = 45, forceOn = 45.0, forceOff = 55.0, ipl = 'wh_bng_p03_placement', mlo = 'wh_bng_mlo', rooms = 4, portals = 15 },
    { key = 'wh_bng', model = 'wh_bng_plugfx', origin = vector3(967.3839, -598.4495, 58.4926), q = { x = -0.0000000, y = -0.0000000, z = -0.5102242, w = 0.8600414 }, poly = { { -2.663, -1.914 }, { -2.663, -7.805 }, { 7.488, -7.805 }, { 7.488, 4.507 }, { -7.488, 4.507 }, { -7.488, 3.669 }, { -8.646, 2.806 }, { -8.646, 0.981 }, { -7.488, 0.119 }, { -7.488, -0.720 }, { -3.842, -0.725 } }, zMin = 0.000, zMax = 5.963, tint = 0, glass = 40, ext = 100, interior = 45, forceOn = 45.0, forceOff = 55.0, ipl = 'wh_bng_placement', mlo = 'wh_bng_mlo', rooms = 4, portals = 15 },
    { key = 'wh_bng_p04', model = 'wh_bng_plugfx', origin = vector3(1204.5124, -573.9789, 67.7292), q = { x = -0.0000000, y = -0.0000000, z = 0.0045150, w = 0.9999898 }, poly = { { -2.663, -1.914 }, { -2.663, -7.805 }, { 7.488, -7.805 }, { 7.488, 4.507 }, { -7.488, 4.507 }, { -7.488, 3.669 }, { -8.646, 2.806 }, { -8.646, 0.981 }, { -7.488, 0.119 }, { -7.488, -0.720 }, { -3.842, -0.725 } }, zMin = 0.000, zMax = 5.963, tint = 0, glass = 40, ext = 100, interior = 45, forceOn = 45.0, forceOff = 55.0, ipl = 'wh_bng_p04_placement', mlo = 'wh_bngv1_mlo', rooms = 6, portals = 13, garages = { { key = 'wh_bng_p04_gar', ipl = 'wh_bng_p04_gar_placement', mlo = 'wh_bng_p04_gar_mlo', origin = vector3(1193.8744, -571.7421, 63.2908) } } },
    { key = 'wh_bng_p05', model = 'wh_bng_plugfx', origin = vector3(1237.9197, -567.8883, 68.2474), q = { x = -0.0000000, y = -0.0000000, z = -0.9999905, w = -0.0043600 }, poly = { { -2.663, -1.914 }, { -2.663, -7.805 }, { 7.488, -7.805 }, { 7.488, 4.507 }, { -7.488, 4.507 }, { -7.488, 3.669 }, { -8.646, 2.806 }, { -8.646, 0.981 }, { -7.488, 0.119 }, { -7.488, -0.720 }, { -3.842, -0.725 } }, zMin = 0.000, zMax = 5.963, tint = 0, glass = 40, ext = 100, interior = 45, forceOn = 45.0, forceOff = 55.0, ipl = 'wh_bng_p05_placement', mlo = 'wh_bng_mlo', rooms = 4, portals = 15 },
    { key = 'wh_bng_p06', model = 'wh_bng_plugfx', origin = vector3(860.4707, -587.2065, 56.7466), q = { x = -0.0000000, y = -0.0000000, z = -0.9174074, w = 0.3979492 }, poly = { { -2.663, -1.914 }, { -2.663, -7.805 }, { 7.488, -7.805 }, { 7.488, 4.507 }, { -7.488, 4.507 }, { -7.488, 3.669 }, { -8.646, 2.806 }, { -8.646, 0.981 }, { -7.488, 0.119 }, { -7.488, -0.720 }, { -3.842, -0.725 } }, zMin = 0.000, zMax = 5.963, tint = 0, glass = 40, ext = 100, interior = 45, forceOn = 45.0, forceOff = 55.0, ipl = 'wh_bng_p06_placement', mlo = 'wh_bng_mlo', rooms = 6, portals = 16, garages = { { key = 'wh_bng_p06_gar', ipl = 'wh_bng_p06_gar_placement', mlo = 'wh_bng_p06_gar_mlo', origin = vector3(864.0049, -598.8512, 57.3004) } } },
    { key = 'wh_bng_p07', model = 'wh_bng_plugfx', origin = vector3(968.9242, -704.7563, 57.0719), q = { x = -0.0000000, y = -0.0000000, z = -0.9510566, w = 0.3090169 }, poly = { { -2.663, -1.914 }, { -2.663, -7.805 }, { 7.488, -7.805 }, { 7.488, 4.507 }, { -7.488, 4.507 }, { -7.488, 3.669 }, { -8.646, 2.806 }, { -8.646, 0.981 }, { -7.488, 0.119 }, { -7.488, -0.720 }, { -3.842, -0.725 } }, zMin = 0.000, zMax = 5.963, tint = 0, glass = 40, ext = 100, interior = 45, forceOn = 45.0, forceOff = 55.0, ipl = 'wh_bng_p07_placement', mlo = 'wh_bng_mlo', rooms = 6, portals = 17, garages = { { key = 'wh_bng_p07_gar', ipl = 'wh_bng_p07_gar_placement', mlo = 'wh_bng_p07_gar_mlo', origin = vector3(966.3640, -691.1362, 56.9507) } } },
    { key = 'mp_h4_p02', model = 'mp_h4_plugfx', origin = vector3(875.9706, -494.5606, 56.4915), q = { x = -0.0000000, y = -0.0000000, z = 0.4056949, w = 0.9140086 }, poly = { { -7.790, -6.570 }, { -2.550, -6.570 }, { -2.550, -3.750 }, { 3.640, -3.750 }, { 3.640, 3.250 }, { -7.790, 3.250 } }, zMin = -0.049, zMax = 6.057, tint = 0, glass = 40, ext = 100, interior = 45, forceOn = 45.0, forceOff = 55.0, ipl = 'mp_h4_p02_placement', mlo = 'mp_h4_mlo', rooms = 3, portals = 10 },
    { key = 'mp_h4_p03', model = 'mp_h4_plugfx', origin = vector3(1117.6552, -393.9097, 67.3486), q = { x = -0.0000000, y = -0.0000000, z = -0.8501448, w = 0.5265489 }, poly = { { -7.790, -6.570 }, { -2.550, -6.570 }, { -2.550, -3.750 }, { 3.640, -3.750 }, { 3.640, 3.250 }, { -7.790, 3.250 } }, zMin = -0.049, zMax = 6.057, tint = 0, glass = 40, ext = 100, interior = 45, forceOn = 45.0, forceOff = 55.0, ipl = 'mp_h4_p03_placement', mlo = 'mp_h4_mlo', rooms = 3, portals = 10 },
    { key = 'mp_h4_p04', model = 'mp_h4_plugfx', origin = vector3(1258.2831, -430.6847, 68.4154), q = { x = -0.0000000, y = -0.0000000, z = -0.8365019, w = -0.5479639 }, poly = { { -7.790, -6.570 }, { -2.550, -6.570 }, { -2.550, -3.750 }, { 3.640, -3.750 }, { 3.640, 3.250 }, { -7.790, 3.250 } }, zMin = -0.049, zMax = 6.057, tint = 0, glass = 40, ext = 100, interior = 45, forceOn = 45.0, forceOff = 55.0, ipl = 'mp_h4_p04_placement', mlo = 'mp_h4_mlo', rooms = 3, portals = 10 },
    { key = 'mp_h4_p05', model = 'mp_h4_plugfx', origin = vector3(925.3653, -530.0723, 58.1898), q = { x = -0.0000000, y = -0.0000000, z = -0.9750417, w = 0.2220219 }, poly = { { -7.790, -6.570 }, { -2.550, -6.570 }, { -2.550, -3.750 }, { 3.640, -3.750 }, { 3.640, 3.250 }, { -7.790, 3.250 } }, zMin = -0.049, zMax = 6.057, tint = 0, glass = 40, ext = 100, interior = 45, forceOn = 45.0, forceOff = 55.0, ipl = 'mp_h4_p05_placement', mlo = 'mp_h4_mlo', rooms = 3, portals = 10 },
    { key = 'mp_h4_p06', model = 'mp_h4_plugfx', origin = vector3(1016.3952, -473.0824, 62.9038), q = { x = -0.0000000, y = -0.0000000, z = -0.9472112, w = 0.3206101 }, poly = { { -7.790, -6.570 }, { -2.550, -6.570 }, { -2.550, -3.750 }, { 3.640, -3.750 }, { 3.640, 3.250 }, { -7.790, 3.250 } }, zMin = -0.049, zMax = 6.057, tint = 0, glass = 40, ext = 100, interior = 45, forceOn = 45.0, forceOff = 55.0, ipl = 'mp_h4_p06_placement', mlo = 'mp_h4_mlo', rooms = 3, portals = 10 },
    { key = 'mp_h4', model = 'mp_h4_plugfx', origin = vector3(978.0158, -584.5845, 58.2509), q = { x = -0.0000000, y = -0.0000000, z = -0.9631979, w = 0.2687930 }, poly = { { -7.790, -6.570 }, { -2.550, -6.570 }, { -2.550, -3.750 }, { 3.640, -3.750 }, { 3.640, 3.250 }, { -7.790, 3.250 } }, zMin = -0.049, zMax = 6.057, tint = 0, glass = 40, ext = 100, interior = 45, forceOn = 45.0, forceOff = 55.0, ipl = 'mp_h4_placement', mlo = 'mp_h4_mlo', rooms = 3, portals = 10 },
    { key = 'mp_h4_p07', model = 'mp_h4_plugfx', origin = vector3(986.5381, -521.8193, 59.0915), q = { x = -0.0000000, y = -0.0000000, z = 0.2643410, w = 0.9644293 }, poly = { { -7.790, -6.570 }, { -2.550, -6.570 }, { -2.550, -3.750 }, { 3.640, -3.750 }, { 3.640, 3.250 }, { -7.790, 3.250 } }, zMin = -0.049, zMax = 6.057, tint = 0, glass = 40, ext = 100, interior = 45, forceOn = 45.0, forceOff = 55.0, ipl = 'mp_h4_p07_placement', mlo = 'mp_h4_mlo', rooms = 3, portals = 10 },
    { key = 'mp_h4_p08', model = 'mp_h4_plugfx', origin = vector3(1208.9031, -558.7860, 68.0161), q = { x = -0.0000000, y = -0.0000000, z = -0.7215247, w = 0.6923887 }, poly = { { -7.790, -6.570 }, { -2.550, -6.570 }, { -2.550, -3.750 }, { 3.640, -3.750 }, { 3.640, 3.250 }, { -7.790, 3.250 } }, zMin = -0.049, zMax = 6.057, tint = 0, glass = 40, ext = 100, interior = 45, forceOn = 45.0, forceOff = 55.0, ipl = 'mp_h4_p08_placement', mlo = 'mp_h4_mlo', rooms = 5, portals = 11, garages = { { key = 'mp_h4_p08_gar', ipl = 'mp_h4_p08_gar_placement', mlo = 'mp_h4_p08_gar_mlo', origin = vector3(1195.8943, -552.8195, 63.7058) } } },
    { key = 'mp_d15_p01', model = 'mp_d15_plugfx', origin = vector3(1103.7118, -464.7195, 65.9139), q = { x = -0.0000000, y = -0.0000000, z = -0.1050120, w = 0.9944710 }, poly = { { -6.160, -0.280 }, { -4.160, -0.280 }, { -4.160, -3.560 }, { 6.090, -3.560 }, { 6.090, 6.010 }, { -6.160, 6.010 } }, zMin = -0.250, zMax = 5.412, tint = 0, glass = 38, ext = 100, interior = 43, forceOn = 43.0, forceOff = 53.0, ipl = 'mp_d15_p01_placement', mlo = 'mp_d15_mlo', rooms = 4, portals = 11 },
    { key = 'mp_d15_p02', model = 'mp_d15_plugfx', origin = vector3(1051.0935, -448.8676, 64.8524), q = { x = -0.0000000, y = -0.0000000, z = -0.9956322, w = -0.0933620 }, poly = { { -6.160, -0.280 }, { -4.160, -0.280 }, { -4.160, -3.560 }, { 6.090, -3.560 }, { 6.090, 6.010 }, { -6.160, 6.010 } }, zMin = -0.250, zMax = 5.412, tint = 0, glass = 38, ext = 100, interior = 43, forceOn = 43.0, forceOff = 53.0, ipl = 'mp_d15_p02_placement', mlo = 'mp_d15_mlo', rooms = 4, portals = 11 },
    { key = 'mp_d15_p03', model = 'mp_d15_plugfx', origin = vector3(1208.6067, -597.3510, 66.6586), q = { x = -0.0000000, y = -0.0000000, z = 0.0216110, w = 0.9997664 }, poly = { { -6.160, -0.280 }, { -4.160, -0.280 }, { -4.160, -3.560 }, { 6.090, -3.560 }, { 6.090, 6.010 }, { -6.160, 6.010 } }, zMin = -0.250, zMax = 5.412, tint = 0, glass = 38, ext = 100, interior = 43, forceOn = 43.0, forceOff = 53.0, ipl = 'mp_d15_p03_placement', mlo = 'mp_d15_mlo', rooms = 6, portals = 13, garages = { { key = 'mp_d15_p03_gar', ipl = 'mp_d15_p03_gar_placement', mlo = 'mp_d15_p03_gar_mlo', origin = vector3(1196.3037, -594.5080, 62.9728) } } },
    { key = 'mp_d15_p04', model = 'mp_d15_plugfx', origin = vector3(1266.0671, -684.9637, 64.6265), q = { x = -0.0000000, y = -0.0000000, z = -0.9986299, w = 0.0523280 }, poly = { { -6.160, -0.280 }, { -4.160, -0.280 }, { -4.160, -3.560 }, { 6.090, -3.560 }, { 6.090, 6.010 }, { -6.160, 6.010 } }, zMin = -0.250, zMax = 5.412, tint = 0, glass = 38, ext = 100, interior = 43, forceOn = 43.0, forceOff = 53.0, ipl = 'mp_d15_p04_placement', mlo = 'mp_d15_mlo', rooms = 6, portals = 12, garages = { { key = 'mp_d15_p04_gar', ipl = 'mp_d15_p04_gar_placement', mlo = 'mp_d15_p04_gar_mlo', origin = vector3(1259.0242, -674.5530, 64.7495) } } },
    { key = 'mp_h2_p02', model = 'mp_h2_plugfx', origin = vector3(964.0475, -449.6449, 61.3946), q = { x = -0.0000000, y = -0.0000000, z = -0.8842451, w = -0.4670230 }, poly = { { -7.250, -0.360 }, { -3.010, -0.360 }, { -3.010, -5.630 }, { 3.090, -5.630 }, { 3.090, -0.410 }, { 7.160, -0.410 }, { 7.160, 5.430 }, { -7.250, 5.430 }, { -7.250, 3.930 }, { -7.580, 3.720 }, { -7.620, 3.690 }, { -7.620, 1.440 }, { -7.600, 1.430 }, { -7.270, 1.210 }, { -7.250, 1.210 } }, zMin = -0.053, zMax = 5.897, tint = 0, glass = 39, ext = 100, interior = 44, forceOn = 44.0, forceOff = 54.0, ipl = 'mp_h2_p02_placement', mlo = 'mp_h2_mlo', rooms = 4, portals = 13 },
    { key = 'mp_h2', model = 'mp_h2_plugfx', origin = vector3(995.9761, -594.7429, 58.2434), q = { x = -0.0000000, y = -0.0000000, z = -0.9956244, w = -0.0934450 }, poly = { { -7.250, -0.360 }, { -3.010, -0.360 }, { -3.010, -5.630 }, { 3.090, -5.630 }, { 3.090, -0.410 }, { 7.160, -0.410 }, { 7.160, 5.430 }, { -7.250, 5.430 }, { -7.250, 3.930 }, { -7.580, 3.720 }, { -7.620, 3.690 }, { -7.620, 1.440 }, { -7.600, 1.430 }, { -7.270, 1.210 }, { -7.250, 1.210 } }, zMin = -0.053, zMax = 5.897, tint = 0, glass = 39, ext = 100, interior = 44, forceOn = 44.0, forceOff = 54.0, ipl = 'mp_h2_placement', mlo = 'mp_h2v1_mlo', rooms = 6, portals = 13, garages = { { key = 'mp_h2_gar', ipl = 'mp_h2_gar_placement', mlo = 'mp_h2_gar_mlo', origin = vector3(999.1027, -587.2821, 58.1292) } } },
    { key = 'mp_h2_p03', model = 'mp_h2_plugfx', origin = vector3(1222.8957, -692.4403, 59.7081), q = { x = -0.0000000, y = -0.0000000, z = -0.6301679, w = 0.7764588 }, poly = { { -7.250, -0.360 }, { -3.010, -0.360 }, { -3.010, -5.630 }, { 3.090, -5.630 }, { 3.090, -0.410 }, { 7.160, -0.410 }, { 7.160, 5.430 }, { -7.250, 5.430 }, { -7.250, 3.930 }, { -7.580, 3.720 }, { -7.620, 3.690 }, { -7.620, 1.440 }, { -7.600, 1.430 }, { -7.270, 1.210 }, { -7.250, 1.210 } }, zMin = -0.053, zMax = 5.897, tint = 0, glass = 39, ext = 100, interior = 44, forceOn = 44.0, forceOff = 54.0, ipl = 'mp_h2_p03_placement', mlo = 'mp_h2_mlo', rooms = 6, portals = 14, garages = { { key = 'mp_h2_p03_gar', ipl = 'mp_h2_p03_gar_placement', mlo = 'mp_h2_p03_gar_mlo', origin = vector3(1236.0494, -702.6618, 59.6605) } } },
    { key = 'mp_d17_p01', model = 'mp_d17_plugfx', origin = vector3(1039.5708, -495.0529, 62.8740), q = { x = -0.0000000, y = -0.0000000, z = -0.9945349, w = -0.1044040 }, poly = { { -6.040, -3.920 }, { 0.250, -3.920 }, { 0.250, -5.350 }, { 5.030, -5.350 }, { 5.680, -6.190 }, { 6.800, -6.190 }, { 7.450, -5.350 }, { 8.340, -5.350 }, { 8.340, 2.420 }, { 9.150, 3.280 }, { 9.150, 4.420 }, { 8.340, 5.280 }, { 8.340, 7.670 }, { -8.540, 7.670 }, { -8.540, 7.100 }, { -9.420, 6.300 }, { -9.420, 4.750 }, { -8.540, 3.950 }, { -8.540, 1.920 }, { -6.040, 1.920 } }, zMin = -0.143, zMax = 7.153, tint = 0, glass = 41, ext = 100, interior = 46, forceOn = 46.0, forceOff = 56.0, ipl = 'mp_d17_p01_placement', mlo = 'mp_d17_mlo', rooms = 5, portals = 20 },
    { key = 'mp_d17_p02', model = 'mp_d17_plugfx', origin = vector3(1258.6330, -650.6764, 66.7163), q = { x = -0.0000000, y = -0.0000000, z = -0.9681477, w = 0.2503799 }, poly = { { -6.040, -3.920 }, { 0.250, -3.920 }, { 0.250, -5.350 }, { 5.030, -5.350 }, { 5.680, -6.190 }, { 6.800, -6.190 }, { 7.450, -5.350 }, { 8.340, -5.350 }, { 8.340, 2.420 }, { 9.150, 3.280 }, { 9.150, 4.420 }, { 8.340, 5.280 }, { 8.340, 7.670 }, { -8.540, 7.670 }, { -8.540, 7.100 }, { -9.420, 6.300 }, { -9.420, 4.750 }, { -8.540, 3.950 }, { -8.540, 1.920 }, { -6.040, 1.920 } }, zMin = -0.143, zMax = 7.153, tint = 0, glass = 41, ext = 100, interior = 46, forceOn = 46.0, forceOff = 56.0, ipl = 'mp_d17_p02_placement', mlo = 'mp_d17_mlo', rooms = 5, portals = 20 },
    { key = 'mp_d18_p01', model = 'mp_d18_plugfx', origin = vector3(1007.7660, -419.5984, 63.9547), q = { x = -0.0000000, y = -0.0000000, z = -0.8962586, w = -0.4435318 }, poly = { { -7.250, 0.540 }, { -2.790, 0.540 }, { -2.790, -1.660 }, { 4.010, -1.660 }, { 4.010, 0.540 }, { 7.250, 0.540 }, { 7.250, 2.240 }, { 7.060, 2.240 }, { 7.060, 4.290 }, { 7.250, 4.290 }, { 7.250, 6.000 }, { 6.730, 6.000 }, { 6.730, 6.420 }, { 4.010, 6.420 }, { 4.010, 6.000 }, { 0.510, 6.000 }, { 0.510, 5.810 }, { -1.440, 5.810 }, { -1.440, 6.000 }, { -2.790, 6.000 }, { -2.790, 6.420 }, { -3.780, 6.420 }, { -4.220, 7.060 }, { -5.400, 7.060 }, { -5.840, 6.420 }, { -6.740, 6.420 }, { -6.740, 6.000 }, { -7.250, 6.000 } }, zMin = -0.095, zMax = 4.702, tint = 0, glass = 39, ext = 100, interior = 44, forceOn = 44.0, forceOff = 54.0, ipl = 'mp_d18_p01_placement', mlo = 'mp_d18_mlo', rooms = 3, portals = 16 },
    { key = 'mp_d18_p02', model = 'mp_d18_plugfx', origin = vector3(1240.5969, -597.0016, 68.3878), q = { x = -0.0000000, y = -0.0000000, z = -0.7178366, w = -0.6962116 }, poly = { { -7.250, 0.540 }, { -2.790, 0.540 }, { -2.790, -1.660 }, { 4.010, -1.660 }, { 4.010, 0.540 }, { 7.250, 0.540 }, { 7.250, 2.240 }, { 7.060, 2.240 }, { 7.060, 4.290 }, { 7.250, 4.290 }, { 7.250, 6.000 }, { 6.730, 6.000 }, { 6.730, 6.420 }, { 4.010, 6.420 }, { 4.010, 6.000 }, { 0.510, 6.000 }, { 0.510, 5.810 }, { -1.440, 5.810 }, { -1.440, 6.000 }, { -2.790, 6.000 }, { -2.790, 6.420 }, { -3.780, 6.420 }, { -4.220, 7.060 }, { -5.400, 7.060 }, { -5.840, 6.420 }, { -6.740, 6.420 }, { -6.740, 6.000 }, { -7.250, 6.000 } }, zMin = -0.095, zMax = 4.702, tint = 0, glass = 39, ext = 100, interior = 44, forceOn = 44.0, forceOff = 54.0, ipl = 'mp_d18_p02_placement', mlo = 'mp_d18_mlo', rooms = 3, portals = 16 },
    { key = 'mp_d18_p03', model = 'mp_d18_plugfx', origin = vector3(883.5393, -604.8846, 57.0501), q = { x = -0.0000000, y = -0.0000000, z = -0.9304176, w = -0.3665008 }, poly = { { -7.250, 0.540 }, { -2.790, 0.540 }, { -2.790, -1.660 }, { 4.010, -1.660 }, { 4.010, 0.540 }, { 7.250, 0.540 }, { 7.250, 2.240 }, { 7.060, 2.240 }, { 7.060, 4.290 }, { 7.250, 4.290 }, { 7.250, 6.000 }, { 6.730, 6.000 }, { 6.730, 6.420 }, { 4.010, 6.420 }, { 4.010, 6.000 }, { 0.510, 6.000 }, { 0.510, 5.810 }, { -1.440, 5.810 }, { -1.440, 6.000 }, { -2.790, 6.000 }, { -2.790, 6.420 }, { -3.780, 6.420 }, { -4.220, 7.060 }, { -5.400, 7.060 }, { -5.840, 6.420 }, { -6.740, 6.420 }, { -6.740, 6.000 }, { -7.250, 6.000 } }, zMin = -0.095, zMax = 4.702, tint = 0, glass = 39, ext = 100, interior = 44, forceOn = 44.0, forceOff = 54.0, ipl = 'mp_d18_p03_placement', mlo = 'mp_d18_mlo', rooms = 5, portals = 18, garages = { { key = 'mp_d18_p03_gar', ipl = 'mp_d18_p03_gar_placement', mlo = 'mp_d18_p03_gar_mlo', origin = vector3(867.1754, -606.0330, 57.2204) } } },
    { key = 'mp_d19_p01', model = 'mp_d19_plugfx', origin = vector3(984.5390, -430.2055, 62.7501), q = { x = -0.0000000, y = -0.0000000, z = -0.4611529, w = 0.8873206 }, poly = { { 11.500, -2.340 }, { 11.500, -9.120 }, { 11.500, -12.980 }, { 1.230, -12.980 }, { 1.230, -9.120 }, { -0.410, -9.120 }, { -0.410, -9.580 }, { -5.470, -9.580 }, { -5.470, -4.530 }, { -5.000, -4.530 }, { -5.000, 3.060 }, { -5.470, 3.060 }, { -5.470, 8.120 }, { -0.410, 8.120 }, { -0.410, 7.640 }, { 4.160, 7.640 }, { 4.160, 1.770 }, { 3.580, 1.770 }, { 3.580, -0.120 }, { 5.320, -0.120 }, { 5.320, -2.340 } }, zMin = -0.245, zMax = 5.776, tint = 0, glass = 47, ext = 100, interior = 52, forceOn = 52.0, forceOff = 62.0, ipl = 'mp_d19_p01_placement', mlo = 'mp_d19_mlo', rooms = 6, portals = 19 },
    { key = 'mp_d19_p02', model = 'mp_d19_plugfx', origin = vector3(947.3104, -460.3160, 60.2552), q = { x = -0.0000000, y = -0.0000000, z = -0.9587291, w = 0.2843210 }, poly = { { 11.500, -2.340 }, { 11.500, -9.120 }, { 11.500, -12.980 }, { 1.230, -12.980 }, { 1.230, -9.120 }, { -0.410, -9.120 }, { -0.410, -9.580 }, { -5.470, -9.580 }, { -5.470, -4.530 }, { -5.000, -4.530 }, { -5.000, 3.060 }, { -5.470, 3.060 }, { -5.470, 8.120 }, { -0.410, 8.120 }, { -0.410, 7.640 }, { 4.160, 7.640 }, { 4.160, 1.770 }, { 3.580, 1.770 }, { 3.580, -0.120 }, { 5.320, -0.120 }, { 5.320, -2.340 } }, zMin = -0.245, zMax = 5.776, tint = 0, glass = 47, ext = 100, interior = 52, forceOn = 52.0, forceOff = 62.0, ipl = 'mp_d19_p02_placement', mlo = 'mp_d19_mlo', rooms = 6, portals = 19 },
    { key = 'mp_d19_p03', model = 'mp_d19_plugfx', origin = vector3(1009.6766, -508.4904, 59.6934), q = { x = -0.0000000, y = -0.0000000, z = -0.9735612, w = 0.2284260 }, poly = { { 11.500, -2.340 }, { 11.500, -9.120 }, { 11.500, -12.980 }, { 1.230, -12.980 }, { 1.230, -9.120 }, { -0.410, -9.120 }, { -0.410, -9.580 }, { -5.470, -9.580 }, { -5.470, -4.530 }, { -5.000, -4.530 }, { -5.000, 3.060 }, { -5.470, 3.060 }, { -5.470, 8.120 }, { -0.410, 8.120 }, { -0.410, 7.640 }, { 4.160, 7.640 }, { 4.160, 1.770 }, { 3.580, 1.770 }, { 3.580, -0.120 }, { 5.320, -0.120 }, { 5.320, -2.340 } }, zMin = -0.245, zMax = 5.776, tint = 0, glass = 47, ext = 100, interior = 52, forceOn = 52.0, forceOff = 62.0, ipl = 'mp_d19_p03_placement', mlo = 'mp_d19_mlo', rooms = 6, portals = 19 },
    { key = 'mp_d19_p04', model = 'mp_d19_plugfx', origin = vector3(1233.4670, -724.1732, 59.6573), q = { x = -0.0000000, y = -0.0000000, z = -0.9987511, w = 0.0499610 }, poly = { { 11.500, -2.340 }, { 11.500, -9.120 }, { 11.500, -12.980 }, { 1.230, -12.980 }, { 1.230, -9.120 }, { -0.410, -9.120 }, { -0.410, -9.580 }, { -5.470, -9.580 }, { -5.470, -4.530 }, { -5.000, -4.530 }, { -5.000, 3.060 }, { -5.470, 3.060 }, { -5.470, 8.120 }, { -0.410, 8.120 }, { -0.410, 7.640 }, { 4.160, 7.640 }, { 4.160, 1.770 }, { 3.580, 1.770 }, { 3.580, -0.120 }, { 5.320, -0.120 }, { 5.320, -2.340 } }, zMin = -0.245, zMax = 5.776, tint = 0, glass = 47, ext = 100, interior = 52, forceOn = 52.0, forceOff = 62.0, ipl = 'mp_d19_p04_placement', mlo = 'mp_d19_mlo', rooms = 6, portals = 19 },
    { key = 'mp_d19_p05', model = 'mp_d19_plugfx', origin = vector3(1248.3508, -617.7745, 68.2728), q = { x = -0.0000000, y = -0.0000000, z = -0.5222751, w = 0.8527771 }, poly = { { 11.500, -2.340 }, { 11.500, -9.120 }, { 11.500, -12.980 }, { 1.230, -12.980 }, { 1.230, -9.120 }, { -0.410, -9.120 }, { -0.410, -9.580 }, { -5.470, -9.580 }, { -5.470, -4.530 }, { -5.000, -4.530 }, { -5.000, 3.060 }, { -5.470, 3.060 }, { -5.470, 8.120 }, { -0.410, 8.120 }, { -0.410, 7.640 }, { 4.160, 7.640 }, { 4.160, 1.770 }, { 3.580, 1.770 }, { 3.580, -0.120 }, { 5.320, -0.120 }, { 5.320, -2.340 } }, zMin = -0.245, zMax = 5.776, tint = 0, glass = 47, ext = 100, interior = 52, forceOn = 52.0, forceOff = 62.0, ipl = 'mp_d19_p05_placement', mlo = 'mp_d19_mlo', rooms = 6, portals = 19 },
    { key = 'mp_d19_p06', model = 'mp_d19_plugfx', origin = vector3(842.5564, -558.8679, 56.6937), q = { x = -0.0000000, y = -0.0000000, z = -0.6432753, w = 0.7656349 }, poly = { { 11.500, -2.340 }, { 11.500, -9.120 }, { 11.500, -12.980 }, { 1.230, -12.980 }, { 1.230, -9.120 }, { -0.410, -9.120 }, { -0.410, -9.580 }, { -5.470, -9.580 }, { -5.470, -4.530 }, { -5.000, -4.530 }, { -5.000, 3.060 }, { -5.470, 3.060 }, { -5.470, 8.120 }, { -0.410, 8.120 }, { -0.410, 7.640 }, { 4.160, 7.640 }, { 4.160, 1.770 }, { 3.580, 1.770 }, { 3.580, -0.120 }, { 5.320, -0.120 }, { 5.320, -2.340 } }, zMin = -0.245, zMax = 5.776, tint = 0, glass = 47, ext = 100, interior = 52, forceOn = 52.0, forceOff = 62.0, ipl = 'mp_d19_p06_placement', mlo = 'mp_d19_mlo', rooms = 6, portals = 19 },
    { key = 'mp_d20_p01', model = 'mp_d20_plugfx', origin = vector3(1057.0028, -375.4543, 66.8537), q = { x = -0.0000000, y = -0.0000000, z = 0.3502042, w = 0.9366734 }, poly = { { -0.020, -3.980 }, { 2.377, -3.980 }, { 3.090, -4.000 }, { 3.663, -3.822 }, { 4.170, -3.509 }, { 4.580, -3.148 }, { 4.868, -2.767 }, { 5.097, -2.292 }, { 5.234, -1.785 }, { 5.290, -1.259 }, { 5.290, 6.620 }, { 4.097, 6.620 }, { 3.730, 7.276 }, { 2.299, 7.276 }, { 1.931, 6.620 }, { -0.090, 6.620 }, { -0.090, 8.620 }, { -4.370, 8.620 }, { -4.370, 6.620 }, { -4.950, 6.620 }, { -4.950, -8.560 }, { -4.400, -8.560 }, { -3.980, -9.300 }, { -2.190, -9.300 }, { -1.770, -8.560 }, { -0.020, -8.560 } }, zMin = -0.007, zMax = 5.917, tint = 0, glass = 40, ext = 100, interior = 45, forceOn = 45.0, forceOff = 55.0, ipl = 'mp_d20_p01_placement', mlo = 'mp_d20_mlo', rooms = 4, portals = 20 },
}
local DIAGNOSTIC = false
local glassMode, fadeFar, fadeNear = 'fade', 16.0, 12.0
pcall(function()
    if DIAGNOSTIC then glassMode = 'off (diagnostic build)'; return end
    glassMode = GetResourceKvpString('wh_glass_mode') or glassMode
    -- v3 (0.11.7): the reveal band; values saved by wh_glass for the old 24 -> 12 m fade (v2) are not read
    fadeFar = tonumber(GetResourceKvpString('wh_glass_far_v3') or '') or fadeFar
    fadeNear = tonumber(GetResourceKvpString('wh_glass_near_v3') or '') or fadeNear
end)
-- camera to origin. The copy stays (opaque) well past the native layers' own transitions (glass 40, exterior 50: the
-- engine blends them over several metres, 0.1.5 showed see-through gaps up to ~55 m once the copy left at 47 m)
-- Map distances are multiplied by each player's LOD / Extended Distance Scaling setting (0.1.9-diag: the 45 m interior
-- unloaded at ~95-100 m), so the copy stays out to 150 m to cover the engine's own swaps at up to ~3x scale.
-- 0.2.5: per home, not a flat 150 m: the copy is only needed where the map can already show clear glass, which is the
-- home's glass distance x the player's distance scaling (~2.1 measured). Spawn within glass x 2.2, despawn 10 m further
-- (busiest spot: 37 -> 23 copies alive).
local SPAWN_SCALE, DESPAWN_EXTRA = 2.2, 10.0
-- Forced interior unload: the engine keeps the interior as far as lodDist x the player's distance scaling. This client
-- disables the interior beyond FORCE_OFF m (camera or player to the house origin, whichever is nearer) and re-enables
-- it within FORCE_ON m, independent of graphics settings. Local only; other players are unaffected.
-- 0.2.1d: OFF by default. The interior budget loader removes a home's placement map ~10 m past its interior distance,
-- which really unloads it (independent of graphics distance scaling); DisableInterior on top of that only risked
-- leaving interiors disabled. wh_unload still toggles it for comparison.
local forceUnload = false

-- INTERIOR BUDGET (0.2.1). FiveM's scene graph holds at most 256 interior rooms (room 0 counts once per interior) and
-- 800 portals for EVERYTHING loaded at once - other resources and Rockstar's interiors included - and exceeding it
-- stalls streaming ("playdough" world) then crashes. With Extended Distance Scaling the engine loads map files
-- hundreds of metres beyond their extents, so the 71 placement maps (669 rooms, 1,777 portals) cannot be left to the
-- engine: this client removes every placement map and only requests the nearest homes, within MAX_HOMES and the room /
-- portal budgets. A home is wanted within its interior distance of the camera or player (origin distance) and kept
-- until LOAD_KEEP m further. Changing budgets: wh_budget <homes> <rooms> <portals> (saved per player).
-- 0.11.9 (user: 4 -> 8 homes): 8 homes, and room / portal budgets that fit ANY 8 homes (the 8 largest together: 64 rooms,
-- 221 portals, garages included), still far inside FiveM's 256 rooms / 800 portals for everything loaded.
local MAX_HOMES, ROOM_BUDGET, PORTAL_BUDGET, LOAD_KEEP = 8, 64, 224, 10.0
-- 0.3.1 budget hysteresis: a loaded home keeps its slot unless a candidate is SWAP_MARGIN m nearer; a home stays in its
-- state at least MIN_DWELL ms (no request/remove in flight together); within URGENT m of a home it loads regardless.
-- 0.11.7 (user: only load interiors when close, so driving around loads nothing): distances are to the home's WALLS
-- (camera or player, whichever is nearer; was its interior distance from the house centre, ~46 m). A home is wanted
-- within LOAD_ON m and kept until LOAD_ON + LOAD_KEEP; while the player drives faster than NO_LOAD_SPEED m/s no new
-- home starts loading (homes already loaded stay); URGENT is now to the walls as well.
local SWAP_MARGIN, MIN_DWELL, URGENT = 8.0, 4000, 6.0
-- 0.11.8: LOAD_ON 30 -> 60 m (user: double it; a walking player now has ~30 s before the reveal band, so the interior
-- is ready, refreshed and streamed long before). Drive-bys still load nothing (NO_LOAD_SPEED); MAX_HOMES still caps it.
local LOAD_ON, NO_LOAD_SPEED = 60.0, 8.3
-- 0.11.8 heading priority: the MAX_HOMES slots went to the NEAREST homes, so on a street the houses beside the player
-- held them and the house being walked to only got one at ~27 m from its walls. A home the player is closing in on
-- now ranks LOOKAHEAD_S seconds of that closing speed nearer (walking 1.5 m/s: 9 m; running: ~35 m).
local LOOKAHEAD_S = 6.0
-- 0.11.9 flashing fix (offline bench, camera orbit/look-around): the closing speed came from min(camera, player) wall
-- distance, so swinging the camera read as rushing at a house (up to 20 m/s -> a 120 m head start): homes beside the
-- player lost and regained their slots all the time (~100-170 loads + unloads in 2 min on a dense street, windows of
-- the house at 15 m going dark 3 times). Now the closing speed is the PLAYER's own (its wall distance only), at most
-- CLOSING_MAX m/s, the head start at most LOOKAHEAD_MAX m, and a loaded home within PROTECT m of its walls keeps its
-- slot (it is inside or about to reach the reveal band, REVEAL_FAR 16 m).
local CLOSING_MAX, LOOKAHEAD_MAX, PROTECT = 8.0, 15.0, 20.0
pcall(function()
    MAX_HOMES = tonumber(GetResourceKvpString('wh_budget_homes') or '') or MAX_HOMES
    ROOM_BUDGET = tonumber(GetResourceKvpString('wh_budget_rooms') or '') or ROOM_BUDGET
    PORTAL_BUDGET = tonumber(GetResourceKvpString('wh_budget_portals') or '') or PORTAL_BUDGET
end)
local budgetUsed = { homes = 0, rooms = 0, portals = 0 }

-- LOADER MODE (0.3.1 diagnostic). Replicated server convar, read once when the resource starts on the client:
-- `setr wh_loader static` in server.cfg (or the live console, then reconnect). Default ipl = 0.2.1 - 0.3.0 behaviour.
--   ipl    RemoveIpl every placement map at start, RequestIpl the nearest homes within the budget, RemoveIpl the rest.
--          Suspected (2026-10-04, whip_core /iprobe): the map registers its interior when the resource starts and every
--          RemoveIpl + RequestIpl cycle gives the same house a NEW interior while the old one may linger, so a house's
--          interior handle differs per client and per reload (stale copies, invisible players, lamps that light nothing).
--   static never touches the placement maps: each house keeps the single interior registered at resource start, the
--          same on every client. The same budget is enforced with DisableInterior instead (out of budget = disabled).
--          Open risk: whether a disabled interior still holds FiveM's scene graph nodes (150 interiors / 256 rooms /
--          800 portals); watch for a low-detail "playdough" world around Mirror Park and fall back to ipl if it appears.
local LOADER = GetConvar('wh_loader', 'ipl')
if LOADER ~= 'static' then LOADER = 'ipl' end
-- static mode must know each house's own interior (ownInterior below); without the typed-lookup natives fall back to ipl
if LOADER == 'static' and not (type(GetInteriorAtCoordsWithTypehash) == 'function' and type(GetInteriorLocationAndNamehash) == 'function') then
    print('[wh_sync] loader static needs GetInteriorAtCoordsWithTypehash + GetInteriorLocationAndNamehash: using ipl')
    LOADER = 'ipl'
end
local function truthy(v) return v == true or v == 1 end          -- some BOOL natives answer 1 / 0 (0 is truthy in Lua)
-- 0.11.7 F8 `wh_reveal`: one line per step of a home's load -> ready -> refresh -> furniture -> reveal / cover, with the
-- distance to its walls (for checking the order in game). Off by default.
local REVEAL_LOG = false
local function revealLog(h, msg)
    if REVEAL_LOG then print(('[wh_reveal] %d %s %s (walls %.1f m)'):format(GetGameTimer(), h.key, msg, h.loadDistance or -1)) end
end
RegisterCommand('wh_reveal', function()
    REVEAL_LOG = not REVEAL_LOG
    print('[wh_reveal] log ' .. (REVEAL_LOG and 'ON' or 'off'))
end, false)
-- interior handle = pool index * 256 + generation byte: "189954[742/2 vr-]" = index 742, gen 2, valid, ready, not disabled
local function istate(id)
    if not id or id == 0 then return '0' end
    return ('%d[%d/%d %s%s%s]'):format(id, math.floor(id / 256), id % 256, truthy(IsValidInterior(id)) and 'v' or '-',
        truthy(IsInteriorReady(id)) and 'r' or '-', truthy(IsInteriorDisabled(id)) and 'D' or '-')
end
-- The interior that really is this house. GetInteriorAtCoords is fuzzy: 0.3.1-diag run A showed it answering a
-- NEIGHBOUR's interior 20-50 m away (mp_d08_p03's origin -> mp_d07_p03's interior), so a handle from it can belong to
-- another house. Ask for this house's design (its MLO archetype) at its origin and check that the interior found sits
-- at this house's origin. 0 = not registered right now (or only a neighbour answered).
local function u32(v) return v % 4294967296 end                 -- hashes may come back signed or unsigned
local OWN_LOOKUP = type(GetInteriorAtCoordsWithTypehash) == 'function' and type(GetInteriorLocationAndNamehash) == 'function'
local function ownLookup(h)
    local o = h.origin
    h.mloHash = h.mloHash or GetHashKey(h.mlo)
    local id = GetInteriorAtCoordsWithTypehash(o.x, o.y, o.z + 1.0, h.mloHash)
    if not id or id == 0 then return 0 end
    local pos, nameHash = GetInteriorLocationAndNamehash(id)
    if not pos or u32(nameHash or 0) ~= u32(h.mloHash) or #(pos - o) > 1.0 then return 0 end
    return id
end
local function ownInterior(h)                                   -- never throws: a failed lookup must not stop the loader
    if not OWN_LOOKUP then return 0 end
    local ok, id = pcall(ownLookup, h)
    if ok then return id end
    OWN_LOOKUP = false
    print('[wh_sync] own-interior lookup failed, disabled for this session: ' .. tostring(id))
    return 0
end
-- [wh_sync] lines: one per home event, for comparing clients (F8 console / CitizenFX.log):
--   [wh_sync] <cloud POSIX s> <GetGameTimer ms> <mode> <house> <event> spot=<handle> ped=<handle> ipl=<bool> dist=<m> own=<handle>
-- spot = GetInteriorAtCoords at the house origin + 1 m (raw, may be a neighbour), ped = the local player's
-- GetInteriorFromEntity, own = this house's verified interior (ownInterior).
-- Cloud time (GetCloudTimeAsInt) lines up logs of different players (and whip_core /iprobe files) to ~1 s.
-- OFF (4 Oct 2026 perf pass): each line asked the game ~12 things and printed, on every home load and unload,
-- and the once-a-second handle/ped check asked every home within 150 m. Set true to bring the [wh_sync] lines back.
local SYNC_LOG = false
local function syncLog(h, event)
    if not SYNC_LOG then return end
    local o = h.origin
    print(('[wh_sync] %d %d %s %s %s spot=%s ped=%s ipl=%s dist=%.1f own=%s'):format(GetCloudTimeAsInt(), GetGameTimer(), LOADER, h.key, event,
        istate(GetInteriorAtCoords(o.x, o.y, o.z + 1.0)), istate(GetInteriorFromEntity(PlayerPedId())),
        tostring(truthy(IsIplActive(h.ipl))), h.loadDistance or -1, istate(ownInterior(h))))
end
if SYNC_LOG then print(('[wh_sync] %d %d loader mode %s (convar wh_loader)'):format(GetCloudTimeAsInt(), GetGameTimer(), LOADER)) end

-- 0.6.0 site garages: a home's garages (its 'garages' list: their own small interiors, <home>_gar[2]_placement) load,
-- unload and count against the budget (rooms / portals above include them) together with the home.
local function garageMaps(h, request)
    if not h.garages then return end
    for _, g in ipairs(h.garages) do
        if request then RequestIpl(g.ipl)
        else
            if g.interiorId and g.interiorId ~= 0 then DisableInterior(g.interiorId, false) end
            RemoveIpl(g.ipl); g.interiorId = nil
        end
    end
end
if LOADER == 'ipl' then
    for _, h in ipairs(GLASS_HOUSES) do RemoveIpl(h.ipl); garageMaps(h, false); h.active = false end     -- before the first frame
else
    for _, h in ipairs(GLASS_HOUSES) do h.active = true; h.enabled = nil end         -- static: maps stay registered
end
local themeOnUnload = function(_) end                -- 0.8.1: set by the interior themes section below
local function unloadHome(h)
    -- re-enable BEFORE removing the map: the engine keeps an interior's disabled state after its map is gone, so a home
    -- disabled on the way out came back as a void on every later visit (0.2.1c bug)
    syncLog(h, 'REMOVE_IPL'); revealLog(h, 'interior unloaded')
    themeOnUnload(h)                        -- 0.8.1: every theme set off before the map goes, the next load is fresh
    if h.interiorId and h.interiorId ~= 0 then DisableInterior(h.interiorId, false) end
    RemoveIpl(h.ipl); garageMaps(h, false); h.active = false; h.changedAt = GetGameTimer()
    h.interiorId, h.disabled, h.cleared = nil, false, false
end
-- static mode: the budget switches the interior, never the map. Returns false while the house has no interior yet.
local function staticSet(h, on)
    if not h.interiorId or h.interiorId == 0 then
        h.interiorId = ownInterior(h)                               -- never a neighbour's interior
        if h.interiorId == 0 then return false end
        syncLog(h, 'FOUND')
    end
    if h.enabled ~= on then
        DisableInterior(h.interiorId, not on)
        h.enabled = on; h.changedAt = GetGameTimer()
        syncLog(h, on and 'ENABLE' or 'DISABLE')
    end
    for _, g in ipairs(h.garages or {}) do                      -- 0.6.0: the home's garages follow it
        if not g.interiorId or g.interiorId == 0 then g.interiorId = ownInterior(g) end
        if g.interiorId ~= 0 and g.enabled ~= on then DisableInterior(g.interiorId, not on); g.enabled = on end
    end
    return true
end
-- within the budget right now: ipl = its map is requested, static = its interior is enabled
local function inBudget(h) if LOADER == 'ipl' then return h.active == true end return h.enabled == true end
local MAX_SPEED = 80.0          -- m/s: faster than any land vehicle, so no threshold is crossed while sleeping
local wallDistance              -- assigned with the per-home constants below (0.11.7: the loader measures to the walls)
-- 0.11.12: when the loader runs next (game timer). Nothing enters the budget before then, so the theme loop sleeps
-- until it while the budget is empty
local loaderNext = 0
-- the budget pass (0.11.12: one comparator and one take for every pass, not two new closures each time)
local function bySortKey(a, b) return a.sortKey < b.sortKey end
local takeNow, takeHomes, takeRooms, takePortals = 0, 0, 0, 0
local function take(h)
    if h.want == takeNow or takeHomes >= MAX_HOMES or takeRooms + h.rooms > ROOM_BUDGET or takePortals + h.portals > PORTAL_BUDGET then return end
    takeHomes, takeRooms, takePortals = takeHomes + 1, takeRooms + h.rooms, takePortals + h.portals
    h.want = takeNow
end
CreateThread(function()
    local order, lastEnforce, lastPed = {}, 0, nil
    while true do
        local now = GetGameTimer()
        local cam, ped = GetFinalRenderedCamCoord(), GetEntityCoords(PlayerPedId())
        local pp = PlayerPedId()
        local fast = IsPedInAnyVehicle(pp, false) and GetEntitySpeed(GetVehiclePedIsIn(pp, false)) > NO_LOAD_SPEED
        local n, busy, margin = 0, false, math.huge
        for _, h in ipairs(GLASS_HOUSES) do
            local dx, dy, dz = cam.x - h.origin.x, cam.y - h.origin.y, cam.z - h.origin.z
            local d = dx * dx + dy * dy + dz * dz
            dx, dy, dz = ped.x - h.origin.x, ped.y - h.origin.y, ped.z - h.origin.z
            local dp = dx * dx + dy * dy + dz * dz
            d = math.sqrt(math.min(d, dp))
            -- to the walls: exact near the load distance, else the cheap lower bound (no wall is further than reach)
            local w = d - h.reach
            local wp = math.sqrt(dp) - h.reach                         -- the player's own (0.11.9: closing speed)
            if w < LOAD_ON + LOAD_KEEP then
                wp = wallDistance(h, ped.x, ped.y, ped.z)
                w = math.min(wallDistance(h, cam.x, cam.y, cam.z), wp)
            end
            -- closing speed (m/s, smoothed; this loop runs every 250 ms or less often when nothing is near), from the
            -- player's movement only: the camera swinging round the player must not count as approaching a house
            if h.pedAt and now > h.pedAt then
                local v = (h.pedDistance - wp) * 1000.0 / (now - h.pedAt)
                if v > CLOSING_MAX then v = CLOSING_MAX elseif v < -CLOSING_MAX then v = -CLOSING_MAX end
                h.closing = 0.5 * (h.closing or 0.0) + 0.5 * v
            end
            h.pedDistance, h.pedAt = wp, now
            h.loadDistance, h.loadAt = w, now
            local loaded = inBudget(h)
            if loaded then busy = true end
            -- a loaded home is only displaced by a clearly nearer one; one being approached ranks nearer by its lookahead
            h.sortKey = w - (loaded and SWAP_MARGIN or 0.0) - math.min(LOOKAHEAD_MAX, LOOKAHEAD_S * math.max(0.0, h.closing or 0.0))
            if w < LOAD_ON + (loaded and LOAD_KEEP or 0.0) and (loaded or not fast or w < URGENT) then n = n + 1; order[n] = h end
            if w - LOAD_ON < margin then margin = w - LOAD_ON end
        end
        -- FAR (4 Oct 2026 perf pass): nothing loaded and no home in range, so nothing can load until the nearest
        -- one is. The loop sleeps as long as the fastest travel takes to get there (250 ms to 1 s), and the
        -- IsIplActive sweep below runs every 5 s, not every second. It ran 4 times a second from anywhere on the map.
        local far = n == 0 and not busy
        for i = n + 1, #order do order[i] = nil end
        table.sort(order, bySortKey)
        takeNow, takeHomes, takeRooms, takePortals = now, 0, 0, 0
        -- 0.3.1: no flip-flop at the budget edge (run A requested and removed a home within 256 ms). In order:
        -- the home(s) right at the player, then homes that changed state less than MIN_DWELL ago keep that state,
        -- then the rest nearest first; a home removed less than MIN_DWELL ago is not requested again yet.
        for _, h in ipairs(order) do if h.loadDistance < URGENT then take(h) end end
        -- 0.11.9: a loaded home in or near the reveal band is never displaced (its windows would go dark again)
        for _, h in ipairs(order) do if inBudget(h) and h.loadDistance < PROTECT then take(h) end end
        for _, h in ipairs(GLASS_HOUSES) do
            if inBudget(h) and now - (h.changedAt or -1e9) < MIN_DWELL then take(h) end
        end
        for _, h in ipairs(order) do
            if inBudget(h) or now - (h.changedAt or -1e9) >= MIN_DWELL then take(h) end
        end
        budgetUsed.homes, budgetUsed.rooms, budgetUsed.portals = takeHomes, takeRooms, takePortals
        -- unload first, then load, so the budget is never exceeded in between
        local enforce = now - lastEnforce > (far and 5000 or 1000)
        if LOADER == 'ipl' then
            for _, h in ipairs(GLASS_HOUSES) do
                if h.want ~= now and (h.active or (enforce and truthy(IsIplActive(h.ipl)))) then unloadHome(h) end
            end
            for _, h in ipairs(GLASS_HOUSES) do
                if h.want == now and not h.active then
                    RequestIpl(h.ipl); garageMaps(h, true); h.active = true; h.changedAt = now; syncLog(h, 'REQUEST_IPL')
                    revealLog(h, 'interior requested')
                end
            end
        else
            for _, h in ipairs(GLASS_HOUSES) do if h.want ~= now then staticSet(h, false) end end
            for _, h in ipairs(GLASS_HOUSES) do if h.want == now then staticSet(h, true) end end
        end
        -- sync log: a house whose interior handle changes (new interior after a reload, or a stale copy answering) and
        -- the local player's own interior changing. Houses within 150 m, once a second. Only with SYNC_LOG.
        if enforce and SYNC_LOG then
            for _, h in ipairs(GLASS_HOUSES) do
                if (h.loadDistance or 1e9) < 150.0 then
                    local spot = GetInteriorAtCoords(h.origin.x, h.origin.y, h.origin.z + 1.0)
                    if h.lastSpot ~= nil and spot ~= h.lastSpot then
                        syncLog(h, ('HANDLE %s -> %s'):format(istate(h.lastSpot), istate(spot)))
                    end
                    h.lastSpot = spot
                end
            end
            local pedInt = GetInteriorFromEntity(PlayerPedId())
            if pedInt ~= lastPed then
                local nearest = order[1]
                print(('[wh_sync] %d %d %s PED %s -> %s nearest=%s'):format(GetCloudTimeAsInt(), now, LOADER, istate(lastPed), istate(pedInt),
                    nearest and nearest.key or '-'))
                lastPed = pedInt
            end
        end
        -- Outside the log's block: the IsIplActive check above runs on its cadence whether or not anything logs.
        if enforce then lastEnforce = now end
        local ms = far and math.floor(math.min(1000, math.max(250, margin / MAX_SPEED * 1000.0))) or 250
        loaderNext = now + ms
        Wait(ms)
    end
end)

-- 0.8.0 interior themes (plans/themes.py, scripts/themes/make_themes.py). Every home interior carries one entity set
-- per theme (wh_theme_0 .. wh_theme_<N-1>, its shell in that theme's walls, trim, skirting and floor). whip_core picks a
-- home's theme through this resource's server exports (server.lua), which publish GlobalState.whMpThemes = { [home] = id }
-- (homes left out = 0). The game does not sync entity sets and forgets them when an interior reloads, so every client
-- applies them here, for every home the loader has in.
-- 0.8.1 (user, after 0.8.0 flickered between Original and the chosen theme on quick reloads: "when a theme is set, the
-- only thing that should ever load is the theme selected"):
--   - no set is on by default (place_homes.py): a fresh interior has no shell until this switches exactly one on;
--   - nothing is switched on before the server's table has arrived (it is published at server start, empty or not), so
--     a home only ever loads the theme whip_core confirmed; after 10 s without it the homes load Original;
--   - every other set is switched off outright, whatever IsInteriorEntitySetActive answers;
--   - a home's sets are all switched off before its map is removed (unloadHome), so a copy that lingers is empty;
--   - each copy of a home's interior is themed once and remembered (h.themeIds), so two copies answering the lookup
--     in turn are never re-themed back and forth;
--   - a fresh copy is switched on the first frame it exists (before it reports ready) and refreshed once on its first
--     ready frame, before whip_core makes its furniture (1 s after IsInteriorReady); a later change on a ready copy is
--     switched and refreshed at once, behind a short screen fade for a player inside.
-- Every refresh: TriggerEvent('whip_core:interiorRefreshed', interiorId) (whip_core's generic event: it rebuilds the
-- furniture on that interior) and TriggerEvent('whip_homes_mirrorpark:themeApplied', home, interiorId, theme,
-- wasInside, true); a switch without a refresh fires themeApplied with refreshed = false.
local THEME_COUNT = 8
local THEME_SETS = {}
for i = 0, THEME_COUNT - 1 do THEME_SETS[i] = ('wh_theme_%d'):format(i) end
local themeTable = GlobalState.whMpThemes          -- nil until the server's table has arrived
local themeWaitStart, themeWaitLogged = GetGameTimer(), false
local themePreview = {}                            -- wh_theme previews: this client only
AddStateBagChangeHandler('whMpThemes', 'global', function(_, _, value)
    themeTable = type(value) == 'table' and value or {}
end)
local function themesKnown()
    if themeTable ~= nil then return true end
    if GetGameTimer() - themeWaitStart < 10000 then return false end
    if not themeWaitLogged then
        themeWaitLogged = true
        print('[wh_theme] no theme table from the server after 10 s (is server.lua running?): homes load Original')
    end
    return true
end
local function wantedTheme(h)
    local t = tonumber(themePreview[h.key] or (themeTable or {})[h.key]) or 0
    if t < 0 or t >= THEME_COUNT or t % 1 ~= 0 then return 0 end
    return t
end
-- 0.11.6 curtain: a refresh reloads the whole interior for a moment, and the user saw that flash through the clear
-- glass close to a home (where a fresh copy first reports ready). Every refresh now waits until that home's dark panes
-- are fully up (at most CURTAIN_WAIT_MS; at once when the player is inside: refreshTheme fades the screen), and the
-- panes stay up until CURTAIN_SETTLE_MS after it (the interior redrawn; whip_core makes its furniture 1-2.5 s after
-- ready, within 20 m of the walls, and remakes it on interiorRefreshed). A fresh copy keeps them up until its refresh
-- (at most CURTAIN_FRESH_MS without reporting ready).
-- 0.11.8: CURTAIN_FRESH_MS 6000 -> 20000. At 6 s the "never reported ready" safety net opened the gate while slow
-- interiors were still loading; ready then came, the refresh closed it again (user: clears, back to black, then fine)
local CURTAIN_SETTLE_MS, CURTAIN_WAIT_MS, CURTAIN_FRESH_MS = 1500, 1500, 20000
local curtainWake = { at = 0, busyUntil = 0 }      -- read by the fade scheduler: a full pass now, no still-skip until busyUntil
local whipForget                                   -- 0.11.7: assigned with the reveal gate below
local function curtainEvent(untilMs)
    local now = GetGameTimer()
    curtainWake.at = now
    curtainWake.busyUntil = math.max(curtainWake.busyUntil, math.min(untilMs, now + 10000) + 600)
end
for _, h in ipairs(GLASS_HOUSES) do h.themeIds, h.themeRefresh, h.curtainUntil = {}, {}, math.huge end
local function themeApplied(h, id, theme, inside, refreshed)
    TriggerEvent('whip_homes_mirrorpark:themeApplied', h.key, id, theme, inside, refreshed)
end
local function refreshTheme(h, id, theme)
    local inside = GetInteriorFromEntity(PlayerPedId()) == id
    CreateThread(function()
        if inside then
            DoScreenFadeOut(250)
            local t0 = GetGameTimer()
            while not IsScreenFadedOut() and GetGameTimer() - t0 < 1000 do Wait(0) end
        end
        RefreshInterior(id)
        h.curtainUntil = GetGameTimer() + CURTAIN_SETTLE_MS; curtainEvent(h.curtainUntil)
        h.liveId = id; whipForget(id)                -- whip_core remakes its furniture on the event below: ask again
        revealLog(h, ('theme %d refreshed (interior %d)'):format(theme, id))
        TriggerEvent('whip_core:interiorRefreshed', id)
        themeApplied(h, id, theme, inside, true)
        if inside then Wait(600); DoScreenFadeIn(400) end
    end)
end
-- a refresh behind the curtain: the theme loop runs it once the panes are up (see CURTAIN_*)
local function queueRefresh(h, id, theme)
    local now = GetGameTimer()
    h.refreshQueue = h.refreshQueue or {}
    h.refreshQueue[id] = theme
    h.queueAt = h.queueAt or now
    h.curtainUntil = math.huge; curtainEvent(now + CURTAIN_WAIT_MS)
    revealLog(h, ('theme %d refresh waiting for dark windows (interior %d)'):format(theme, id))
end
local function clearThemeSets(id)
    for i = 0, THEME_COUNT - 1 do DeactivateInteriorEntitySet(id, THEME_SETS[i]) end
end
-- switch copy `id` of home h to `want`: every other set off outright, the wanted one on; refresh now if the copy is
-- ready, else on its first ready frame
local function themeCopy(h, id, want)
    for i = 0, THEME_COUNT - 1 do
        if i ~= want then DeactivateInteriorEntitySet(id, THEME_SETS[i]) end
    end
    if not truthy(IsInteriorEntitySetActive(id, THEME_SETS[want])) then ActivateInteriorEntitySet(id, THEME_SETS[want]) end
    h.themeIds[id] = want; h.liveId = id
    -- 0.11.8: the room shell for this theme (<interior>_shell, _shell_t<N>) is requested now and must be in memory
    -- before the windows clear (IsInteriorReady says nothing about its model and textures having streamed in)
    local ikey = h.mlo:gsub('_mlo$', '')
    local shell = joaat(want == 0 and (ikey .. '_shell') or (ikey .. '_shell_t' .. want))
    if shell ~= h.shellHash then
        if h.shellHash then SetModelAsNoLongerNeeded(h.shellHash) end
        h.shellHash, h.shellAsked = nil, nil
        if IsModelInCdimage(shell) then RequestModel(shell); h.shellHash, h.shellAsked = shell, GetGameTimer() end
    end
    if truthy(IsInteriorReady(id)) then h.themeRefresh[id] = nil; queueRefresh(h, id, want)
    else
        h.themeRefresh[id] = true; h.freshAt = h.freshAt or GetGameTimer(); h.curtainUntil = math.huge; curtainEvent(0)
        revealLog(h, ('interior %d found, theme %d on, waiting for it to report ready'):format(id, want))
        themeApplied(h, id, want, GetInteriorFromEntity(PlayerPedId()) == id, false)
    end
end
local function releaseShell(h)
    if h.shellHash then SetModelAsNoLongerNeeded(h.shellHash) end
    h.shellHash, h.shellAsked = nil, nil
end
local function forgetThemes(h)
    if next(h.themeIds) then h.themeIds, h.themeRefresh = {}, {} end
    h.refreshQueue, h.queueAt, h.freshAt, h.curtainUntil, h.liveId = nil, nil, nil, math.huge, nil     -- the next load is fresh
    if h.shellHash then releaseShell(h) end
end
-- 0.11.12 (CPU, the server session's resmon note: the loop ran every frame in Mirror Park). A waiting home (no
-- interior yet, a fresh copy not ready, a refresh behind the curtain) is polled every frame only while it is within
-- THEME_NEAR_EXTRA m of the reveal band (fadeFar from its walls), where the player could see it change; one further
-- out is polled every THEME_WAIT_MS (its windows are matte; a copy found at 60-70 m gets its theme up to that much
-- after it first exists). With nothing in the budget, the loop sleeps until the loader's next pass.
local THEME_NEAR_EXTRA = 4.0
local THEME_WAIT_MS = 100
CreateThread(function()
    local lastCheck = 0
    while true do
        local pending, pendingNear, inAny, now = false, false, false, GetGameTimer()
        local check = now - lastCheck > 1000       -- once a second: themed homes re-checked (new copy, sets lost)
        if check then lastCheck = now end
        local known = themesKnown()
        for _, h in ipairs(GLASS_HOUSES) do
            if not inBudget(h) then forgetThemes(h)                -- out of the budget (either loader): next load is fresh
            elseif known then
                inAny = true
                local waiting = false
                local want = wantedTheme(h)
                if next(h.themeIds) == nil or check then           -- unthemed homes every pass, themed ones once a second
                    local id = ownInterior(h)
                    if id ~= 0 then
                        if h.themeIds[id] == want and not truthy(IsInteriorEntitySetActive(id, THEME_SETS[want])) then h.themeIds[id] = nil end
                        if h.themeIds[id] ~= want then themeCopy(h, id, want) end
                    elseif next(h.themeIds) == nil then waiting = true end
                end
                for id, t in pairs(h.themeIds) do               -- a theme change: every known copy of this home
                    if t ~= want then
                        if truthy(IsValidInterior(id)) then themeCopy(h, id, want) else h.themeIds[id], h.themeRefresh[id] = nil, nil end
                    end
                end
                for id in pairs(h.themeRefresh) do              -- first ready frame of a freshly themed copy
                    waiting = true
                    if not truthy(IsValidInterior(id)) then h.themeRefresh[id] = nil
                    elseif truthy(IsInteriorReady(id)) then
                        h.themeRefresh[id] = nil; revealLog(h, ('interior %d ready'):format(id)); queueRefresh(h, id, h.themeIds[id])
                    end
                end
                if next(h.themeRefresh) == nil then h.freshAt = nil
                elseif h.freshAt and now - h.freshAt > CURTAIN_FRESH_MS and h.curtainUntil == math.huge and not h.refreshQueue then
                    h.curtainUntil = 0; curtainEvent(now)       -- never reported ready: open anyway (whip_core waits 5 s too)
                    revealLog(h, ('interior never reported ready in %d s: windows allowed to clear'):format(math.floor(CURTAIN_FRESH_MS / 1000)))
                end
                if h.refreshQueue then                          -- refreshes waiting behind the curtain
                    waiting = true
                    local pint = GetInteriorFromEntity(PlayerPedId())
                    -- past the copy's spawn distance its alpha is no longer updated, and the map's own plug covers it.
                    -- 0.11.12: that distance is measured now, and inside it a missing copy is not "up" (it isn't made
                    -- yet: just after a teleport this loop can run before the window loop's first pass, and h.originDistance
                    -- still holds the distance from before the jump; the map shows clear glass within ~40 m)
                    local camO = #(GetFinalRenderedCamCoord() - h.origin)
                    local up = glassMode ~= 'fade' or camO >= h.spawn or (h.obj ~= nil and (h.alpha == nil or h.alpha >= 255))
                    if up or h.refreshQueue[pint] ~= nil or now - h.queueAt > CURTAIN_WAIT_MS then
                        for id, theme in pairs(h.refreshQueue) do
                            if truthy(IsValidInterior(id)) then refreshTheme(h, id, theme) end
                        end
                        h.refreshQueue, h.queueAt = nil, nil
                    end
                end
                if waiting then
                    pending = true
                    if (h.loadDistance or math.huge) < fadeFar + THEME_NEAR_EXTRA then pendingNear = true end
                end
            end
        end
        local ms
        if pending and OWN_LOOKUP then ms = pendingNear and 0 or THEME_WAIT_MS   -- a waiting home: see above
        elseif not known then ms = 100
        elseif inAny then ms = 250
        else ms = math.min(1000, math.max(250, loaderNext - now)) end           -- nothing in the budget
        Wait(ms)
    end
end)
themeOnUnload = function(h)                        -- unloadHome, before RemoveIpl: leave every known copy empty
    for id in pairs(h.themeIds) do clearThemeSets(id) end
    h.themeIds, h.themeRefresh = {}, {}
    h.refreshQueue, h.queueAt, h.freshAt, h.curtainUntil, h.liveId = nil, nil, nil, math.huge, nil
    releaseShell(h)
end

-- 0.11.7 REVEAL GATE (user: "the interior only reveals when everything is ready"). A home's windows may clear only when
--   1. its interior is loaded, reported ready and theme-refreshed, plus CURTAIN_SETTLE_MS (the curtain above), and
--   2. whip_core has finished its furniture for that interior: exports.whip_core:GetInteriorFurnishState(id) answers
--      'pending' (still building, incl. its 1 s settle and a remake after interiorRefreshed), 'done', 'none' (nothing to
--      make, or not a whip property) or 'idle' (has furniture but won't build it now). Only 'pending' holds the windows.
--      The answer is cached per interior: refreshed by whip_core's 'whip_core:property:furnishStateChanged' event
--      ({ propertyId, interiorId, state }, whip_core de062a9d; interiorId nil before whip has found the copy) at once, and
--      polled at most every WHIP_POLL_MS (each export call crosses into whip_core). whip_core not started, or no such
--      export yet: nothing to wait for. A 'pending' that lasts WHIP_MAX_WAIT_MS stops holding them (logged).
-- Two fades come out of one rule (the fade step): the windows' darkness goes to the distance target (dark beyond
-- fadeFar, clear inside fadeNear) at most ALPHA_RATE a ms. Ready before the band: it follows the distance as the player
-- walks in. Not ready yet with the player already close (or a teleport / noclip): the windows stay dark, and when the
-- gate opens they clear by themselves over ~0.9 s, standing still or not.
local WHIP_POLL_MS, WHIP_MAX_WAIT_MS = 250, 12000
local whipState = {}            -- interiorId -> { state, at = last answer (ms), since = pending since (ms) }
whipForget = function(id) whipState[id] = nil end
local function whipSet(id, state, now)
    local s = whipState[id] or {}
    if state == 'pending' and s.state ~= 'pending' then s.since = now end
    s.state, s.at = state, now
    whipState[id] = s
    return s
end
AddEventHandler('whip_core:property:furnishStateChanged', function(data)
    if type(data) == 'table' and data.interiorId and type(data.state) == 'string' then whipSet(data.interiorId, data.state, GetGameTimer()) end
end)
local function furnishState(id, now)
    if not id or id == 0 then return 'none' end
    local s = whipState[id]
    if not s or now - s.at >= WHIP_POLL_MS then
        local state = 'none'
        if GetResourceState('whip_core') == 'started' then
            local ok, r = pcall(function() return exports.whip_core:GetInteriorFurnishState(id) end)
            if ok and type(r) == 'string' then state = r end
        end
        s = whipSet(id, state, now)
    end
    if s.state == 'pending' and now - (s.since or now) > WHIP_MAX_WAIT_MS then return 'timeout' end
    return s.state
end
-- true when the windows may clear; also logs each change of a home's gate
-- 0.11.8: two more holds. The room shell must be streamed in (SHELL_MAX_WAIT_MS cap). whip_core's 'idle' (has
-- furniture, not building it now) no longer counts as finished at once: its pass runs once a second, so just inside
-- its 20 m it still said 'idle' and the windows started clearing before it switched to 'pending' (user: clears, back
-- to black). Inside the reveal band an 'idle' holds up to WHIP_IDLE_MS, then counts as "won't build" (not one of
-- whip's 4 nearest homes).
local SHELL_MAX_WAIT_MS, WHIP_IDLE_MS = 10000, 3000
local function revealReady(h, now)
    local ok, why = true, 'ready'
    if now < (h.curtainUntil or 0) then ok, why = false, h.liveId and 'interior (ready / theme refresh / settle)' or 'interior (not loaded)'
    elseif h.shellHash and not HasModelLoaded(h.shellHash) and now - (h.shellAsked or now) < SHELL_MAX_WAIT_MS then
        ok, why = false, 'interior (room models streaming in)'
    else
        local st = furnishState(h.liveId, now)
        if st ~= 'idle' then h.idleSince = nil end
        if st == 'pending' then ok, why = false, 'furniture (whip_core building it)'
        elseif st == 'idle' then
            h.idleSince = h.idleSince or now
            if now - h.idleSince < WHIP_IDLE_MS then ok, why = false, 'furniture (whip_core about to build it)'
            else why = 'ready (whip_core is not building this home)' end
        elseif st == 'timeout' then why = 'ready (furniture still pending after 12 s)' end
    end
    if why ~= h.gateWhy then revealLog(h, (ok and 'GATE OPEN: ' or 'gate held: ') .. why); h.gateWhy = why end
    return ok
end

-- Per-home constants, computed once. The homes only rotate about Z (make_client asserts it), so world -> local is a
-- 2D rotation by -yaw; the outline edges are pre-split into scalars so the per-tick maths allocates nothing.
local atan2 = math.atan   -- Lua 5.3+ math.atan(y, x) is atan2
for _, h in ipairs(GLASS_HOUSES) do
    local yaw = 2.0 * atan2(h.q.z, h.q.w)
    h.cs, h.sn = math.cos(-yaw), math.sin(-yaw)
    h.ox, h.oy, h.oz = h.origin.x, h.origin.y, h.origin.z
    h.spawn = h.glass * SPAWN_SCALE; h.despawn = h.spawn + DESPAWN_EXTRA
    local n, reach = #h.poly, 0.0
    h.n, h.ax, h.ay, h.bx, h.by, h.ex, h.ey, h.il = n, {}, {}, {}, {}, {}, {}, {}
    for i = 1, n do
        local a, b = h.poly[(i - 2) % n + 1], h.poly[i]           -- previous vertex (a) and this vertex (b)
        h.ax[i], h.ay[i], h.bx[i], h.by[i] = a[1], a[2], b[1], b[2]
        h.ex[i], h.ey[i] = a[1] - b[1], a[2] - b[2]
        h.il[i] = 1.0 / (h.ex[i] * h.ex[i] + h.ey[i] * h.ey[i])
        reach = math.max(reach, math.sqrt(b[1] * b[1] + b[2] * b[2]))
    end
    -- 3D bound: every point of the walls/roof is within this of the origin (so wallDistance >= originDistance - reach)
    h.reach = math.sqrt(reach * reach + math.max(h.zMin * h.zMin, h.zMax * h.zMax))
end

-- distance from (px, py, pz) to the house's walls: 0 inside the outline (between floor and roof), else to the nearest wall
-- (declared above the budget loader, which uses it too)
wallDistance = function(h, px, py, pz)
    local dx, dy = px - h.ox, py - h.oy
    local lx, ly, lz = dx * h.cs - dy * h.sn, dx * h.sn + dy * h.cs, pz - h.oz
    local inside, best = false, math.huge
    local ax, ay, bx, by, ex, ey, il = h.ax, h.ay, h.bx, h.by, h.ex, h.ey, h.il
    for i = 1, h.n do
        local bxi, byi, ayi = bx[i], by[i], ay[i]
        if ((byi > ly) ~= (ayi > ly)) and (lx < (ax[i] - bxi) * (ly - byi) / (ayi - byi) + bxi) then inside = not inside end
        local t = ((lx - bxi) * ex[i] + (ly - byi) * ey[i]) * il[i]
        if t < 0.0 then t = 0.0 elseif t > 1.0 then t = 1.0 end
        local qx, qy = lx - (bxi + t * ex[i]), ly - (byi + t * ey[i])
        local d2 = qx * qx + qy * qy
        if d2 < best then best = d2 end
    end
    local dz = 0.0
    if lz < h.zMin then dz = h.zMin - lz elseif lz > h.zMax then dz = lz - h.zMax end
    return math.sqrt((inside and 0.0 or best) + dz * dz)
end

-- fade copy: requested asynchronously, created on a later tick once the model is in memory (never blocks the loop)
local function updatePlug(h, now)
    if h.obj then
        if now >= (h.checkAt or 0) then                 -- our own local object: an existence check every 2 s is plenty
            h.checkAt = now + 2000
            if not DoesEntityExist(h.obj) then h.obj, h.alpha = nil, nil end
        end
        return h.obj
    end
    local hash = h.hash or joaat(h.model); h.hash = hash
    if not h.requested then
        if not IsModelInCdimage(hash) then return nil end
        RequestModel(hash); h.requested = now
        return nil
    end
    if not HasModelLoaded(hash) then
        if now - h.requested > 5000 then h.requested = nil end      -- retry the request later
        return nil
    end
    local obj = CreateObjectNoOffset(hash, h.ox, h.oy, h.oz, false, false, false)
    SetEntityQuaternion(obj, h.q.x, h.q.y, h.q.z, h.q.w)
    SetEntityCoordsNoOffset(obj, h.ox, h.oy, h.oz, false, false, false)
    FreezeEntityPosition(obj, true)
    SetEntityCollision(obj, false, false)
    SetEntityInvincible(obj, true)
    SetObjectTextureVariation(obj, h.tint)
    SetEntityLodDist(obj, 100)
    SetModelAsNoLongerNeeded(hash)
    h.obj, h.alpha, h.requested, h.checkAt = obj, nil, nil, now + 2000
    return obj
end

local function removePlug(h)
    if h.obj and DoesEntityExist(h.obj) then DeleteEntity(h.obj) end
    h.obj, h.alpha, h.requested = nil, nil, nil
end

-- Scheduler: every tick works out how far the camera/player is from the next distance at which anything changes
-- (fade band edge, copy spawn/despawn, forced unload/reload) and sleeps as long as the fastest travel could take to get
-- there. Only while a home is actually inside its fade band does the loop run every frame.
-- (MAX_SPEED is declared above the budget loader, which sleeps by it too.)
local MAX_SLEEP = 500           -- ms: bounds the delay after teleports / camera cuts
-- ms between passes while a home is fading: 30 a second (4 Oct 2026 perf pass). Was every frame, 120+ a
-- second on a fast PC, for a fade nobody can see change that often.
local HOT_MS = 33
-- the fade copy's alpha moves at most this much a ms: a full swing in 0.9 s (0.11.6: 0.4 s). Walking through the
-- 4 m reveal band takes ~2.7 s, so the distance leads; a gate opening with the player already close fades on this clock
local ALPHA_RATE = 255 / 900
local lastCx, lastCy, lastCz, lastPx, lastPy, lastPz, lastFull, lastFade

-- one home, one tick: forced unload, fade copy, alpha. Returns this home's gap (m) to its next threshold.
local function step(h, now, cx, cy, cz, px, py, pz, fade)
    local gap = math.huge
    local dx, dy, dz = cx - h.ox, cy - h.oy, cz - h.oz
    local camO = math.sqrt(dx * dx + dy * dy + dz * dz)
    dx, dy, dz = px - h.ox, py - h.oy, pz - h.oz
    local pedO = math.sqrt(dx * dx + dy * dy + dz * dz)
    local near = math.min(camO, pedO)
    h.originDistance = camO
    -- forced unload (hysteresis forceOn / forceOff). Static loader mode: the budget loop owns DisableInterior.
    if not h.active or LOADER ~= 'ipl' then
        -- not loaded (budget): nothing to disable
    elseif not h.interiorId or (h.interiorId == 0 and now >= (h.idRetry or 0)) then
        h.interiorId = ownInterior(h); h.idRetry = now + 1000     -- a just-requested map needs a moment (never a neighbour's)
    end
    if LOADER == 'ipl' and h.active and h.interiorId and h.interiorId ~= 0 and not h.cleared then
        DisableInterior(h.interiorId, false)            -- clear any disabled state left from earlier (script restarts)
        h.cleared, h.disabled = true, false
    end
    if LOADER == 'ipl' and h.active and h.interiorId and h.interiorId ~= 0 then
        local want = h.disabled or false
        if not forceUnload or near < h.forceOn then want = false elseif near > h.forceOff then want = true end
        if want ~= (h.disabled or false) then
            DisableInterior(h.interiorId, want)
            h.disabled = want
            print(('[whip_homes_mirrorpark] %s interior %s at %.1fm'):format(h.key, want and 'force-disabled' or 're-enabled', near))
        end
        if forceUnload then gap = math.min(gap, h.disabled and (near - h.forceOn) or (h.forceOff - near)) end
    end
    -- fade copy
    if fade and camO < h.spawn then
        gap = math.min(gap, (h.obj and h.despawn or h.spawn) - camO)
        local obj = updatePlug(h, now)
        if not obj then gap = 0 end                     -- waiting for the model: check again next frame
        -- lower bound: the walls are at most `reach` from the origin, so no exact distance is needed beyond the band
        local d = near - h.reach
        if d < fadeFar then
            d = math.min(wallDistance(h, cx, cy, cz), wallDistance(h, px, py, pz))
            if d > fadeNear and d < fadeFar then gap = 0 else gap = math.min(gap, d <= fadeNear and (fadeNear - d) or (d - fadeFar)) end
        else
            gap = math.min(gap, d - fadeFar)
        end
        h.distance = d
        if obj then
            local t = (d - fadeNear) / math.max(0.01, fadeFar - fadeNear)
            if t < 0.0 then t = 0.0 elseif t > 1.0 then t = 1.0 end
            if not inBudget(h) then t = 1.0 end         -- outside the interior budget: stays matte (nothing behind it)
            -- 0.11.7 reveal gate (interior + theme refresh + whip_core furniture); asked only when the distance would clear
            -- them, and while it holds them the home stays hot so the gate opening is seen within a tick
            if t < 1.0 and not revealReady(h, now) then t = 1.0; gap = 0; curtainWake.ramping = true end
            local target = math.floor(255 * t + 0.5)
            local a = target
            -- 0.11.6: at most ALPHA_RATE a ms (dt capped at two hot ticks), so a curtain closing or opening, or a camera
            -- cut, ramps instead of popping; walking or driving through the band stays under the limit
            if h.alpha ~= nil and target ~= h.alpha then
                local lim = math.max(1, math.floor(math.min(now - (h.alphaAt or now), 2 * HOT_MS) * ALPHA_RATE))
                if target > h.alpha then a = math.min(target, h.alpha + lim) else a = math.max(target, h.alpha - lim) end
            end
            h.alphaAt = now
            if a ~= target then gap = 0; curtainWake.ramping = true end     -- still ramping: keep this home hot
            if REVEAL_LOG and h.alpha ~= nil and a ~= h.alpha then
                if h.alpha == 255 then revealLog(h, 'windows clearing') elseif h.alpha == 0 then revealLog(h, 'windows darkening') end
                if a == 0 then revealLog(h, 'windows clear') elseif a == 255 then revealLog(h, 'windows dark') end
            end
            if a ~= h.alpha then
                -- Visibility set only when it flips (4 Oct 2026 perf pass: it was set on every alpha step, two
                -- natives a fading home a frame). h.alpha nil = a new copy or wh_glass changed: set it all.
                local shown = h.alpha ~= nil and h.alpha > 0
                if a >= 255 then ResetEntityAlpha(obj); if not shown then SetEntityVisible(obj, true, false) end
                elseif a <= 0 then SetEntityVisible(obj, false, false)
                else
                    if not shown then SetEntityVisible(obj, true, false) end
                    SetEntityAlpha(obj, a, false)
                end
                h.alpha = a
            end
        end
    else
        if h.obj and (camO > h.despawn or not fade) then removePlug(h) end
        if fade then
            gap = math.min(gap, camO - h.spawn)
            -- 0.11.13: a copy still up is due at its despawn edge too (with each home on its own clock it lingered up
            -- to MAX_SLEEP past its despawn ring; the frequent full passes of 0.11.12 hid this)
            if h.obj then gap = math.min(gap, h.despawn - camO) end
        end
        h.distance = near - h.reach
    end
    return gap
end

-- 0.11.13 (Main's CPU round 2; the user's profile on 0.11.11: this loop was 85 of Mirror Park's 210 ms of script time):
-- each home on its own clock. A home is stepped when IT could next reach one of its own thresholds (its own gap at
-- MAX_SPEED, at most MAX_SLEEP: h.due); "hot" homes (inside a fade band or at a threshold, gap <= 0.5) every pass;
-- every home on a full pass (once a second, a curtain event, a mode change). 0.11.12 stepped every home whenever the
-- NEAREST one could reach a threshold, and in Mirror Park one always could: ~40 full passes a second over 71 homes.
local nextFull = 0
local lastCold = 0      -- the last full pass's distance to the nearest threshold (0 while a home is hot)
local lastWake = 0      -- 0.11.6: the last curtain event seen (the theme loop closed or opened a home's curtain)
CreateThread(function()
    while true do
        local now = GetGameTimer()
        if curtainWake.at ~= lastWake then lastWake = curtainWake.at; nextFull = 0 end
        local cam = GetFinalRenderedCamCoord()
        local ped = GetEntityCoords(PlayerPedId())
        local cx, cy, cz, px, py, pz = cam.x, cam.y, cam.z, ped.x, ped.y, ped.z
        local gap = math.huge
        local fade = glassMode == 'fade'
        -- standing still (camera and player within 2 cm of the last pass): nothing can change, look again in 50 ms
        -- (a full pass still runs every second, so mode changes and deleted copies are picked up)
        local still = lastCx and math.abs(cx - lastCx) + math.abs(cy - lastCy) + math.abs(cz - lastCz) < .02
            and math.abs(px - lastPx) + math.abs(py - lastPy) + math.abs(pz - lastPz) < .02 and now < lastFull + 1000
            and fade == lastFade and now >= curtainWake.busyUntil and not curtainWake.ramped   -- a curtain moving: keep running
        curtainWake.ramping = false                     -- set again by step() for any home whose alpha is still ramping
        -- Still: as far from a threshold as the last full pass found, and at least 4 m (look again within 50 ms
        -- near a home). It was always 4 m, so a player standing still anywhere on the map woke this 20 times a second.
        if still then gap = math.max(4.0, lastCold)
        else
            local full = now >= nextFull or fade ~= lastFade
            lastCx, lastCy, lastCz, lastPx, lastPy, lastPz = cx, cy, cz, px, py, pz
            if full then lastFull, lastFade, nextFull = now, fade, now + 1000 end
            local soonest, anyHot = math.huge, false
            for _, h in ipairs(GLASS_HOUSES) do
                if full or now >= (h.due or 0) then
                    local g = step(h, now, cx, cy, cz, px, py, pz, fade)
                    if g <= 0.5 then anyHot = true; h.due = 0
                    else h.due = now + math.floor(math.min(MAX_SLEEP, g / MAX_SPEED * 1000.0)) end
                end
                local d = h.due
                if d > 0 and d < soonest then soonest = d end
            end
            gap = anyHot and 0 or (soonest - now) * MAX_SPEED / 1000.0
            lastCold = gap
        end
        curtainWake.ramped = curtainWake.ramping
        -- STILL WAITS FOR THE 1 s REFRESH, NOT nextFull (4 Oct 2026). nextFull is when movement could next reach a
        -- threshold; a still player passes it half way through every second, and the wait it gave (0) then ran this
        -- every frame until the refresh - at the airport, staring at the sea.
        local due = still and (lastFull + 1000) or nextFull
        if gap <= 0.5 then Wait(HOT_MS)
        else Wait(math.max(0, math.floor(math.min(MAX_SLEEP, gap / MAX_SPEED * 1000.0, due - now)))) end
    end
end)

-- what the map itself should draw in the window openings at this camera distance (map entities have no script
-- handle, so this is derived from the ymap distances: glass child ~40, exterior + plug 100 (0.11.5; were 50/80 and 350),
-- Rockstar's per-house LOD to 350)
local function nativeState(h)
    local d = h.originDistance or 999
    if d < h.glass then return 'clear glass' end
    if d < h.ext then return 'dark plug on exterior' end
    if d < 350.0 then return 'Rockstar LOD house' end
    return 'block SLOD'
end

local function glassStatus()
    print(('[whip_homes_mirrorpark] glass mode=%s fadeFar=%.1f fadeNear=%.1f (distances from the house origin, x graphics scaling for map layers)'):format(glassMode, fadeFar, fadeNear))
    for _, h in ipairs(GLASS_HOUSES) do
        print(('[whip_homes_mirrorpark] %s wallDistance=%.1f originDistance=%.1f nativeGlass=%s fadeCopy=%s alpha=%s interior=%s'):format(
            h.key .. (' [glass %d, interior %d, forced off/on %.0f/%.0f m]'):format(h.glass, h.interior, h.forceOff, h.forceOn), h.distance or -1, h.originDistance or -1, nativeState(h),
            tostring(h.obj ~= nil and DoesEntityExist(h.obj)), tostring(h.alpha), GetInteriorAtCoords(h.origin.x, h.origin.y, h.origin.z + 1.0)))
    end
end

AddEventHandler('onResourceStop', function(resourceName)
    if resourceName == GetCurrentResourceName() then
        for _, h in ipairs(GLASS_HOUSES) do
            removePlug(h)
            if h.disabled and h.interiorId and h.interiorId ~= 0 then DisableInterior(h.interiorId, false) end
        end
        -- unload every house map before FiveM unmounts interiorproxies.meta: FiveM deletes an ordered interior proxy
        -- only while its map is not loaded, and any proxy it keeps comes back as a dead copy after a reconnect
        local loaded = 0
        for _, h in ipairs(GLASS_HOUSES) do
            if truthy(IsIplActive(h.ipl)) then loaded = loaded + 1 end
            RemoveIpl(h.ipl); garageMaps(h, false); h.active = false
        end
        print(('[wh_sync] %d %d resource stop: RemoveIpl on %d houses (%d were loaded)'):format(GetCloudTimeAsInt(), GetGameTimer(), #GLASS_HOUSES, loaded))
        for _, id in ipairs(drivewayBlockIds) do RemoveScenarioBlockingArea(id, false) end
    end
end)

-- wh_unload            toggle the forced unload (on by default), to compare with the engine's own (scaled) distance
RegisterCommand('wh_unload', function()
    if LOADER ~= 'ipl' then
        print('[whip_homes_mirrorpark] loader mode static: the interior budget already switches interiors (wh_unload not used)')
        return
    end
    forceUnload = not forceUnload
    for _, h in ipairs(GLASS_HOUSES) do
        if not forceUnload and h.disabled and h.interiorId ~= 0 then DisableInterior(h.interiorId, false); h.disabled = false end
    end
    print(('[whip_homes_mirrorpark] forced interior unload %s (per home, see wh_glass)'):format(forceUnload and 'ON' or 'off'))
end, false)

-- wh_glass                 status
-- wh_glass native|fade     switch mode (saved)
-- wh_glass fade 16 12      fade mode with fadeFar / fadeNear in metres from the walls (saved)
RegisterCommand('wh_glass', function(_, args)
    local mode = args[1]
    if DIAGNOSTIC then print('[whip_homes_mirrorpark] diagnostic build: glass transitions are removed (clear glass to 150 m)'); mode = nil end
    if mode == 'fade' or mode == 'native' then
        glassMode = mode
        pcall(SetResourceKvp, 'wh_glass_mode', mode)
        local far, near = tonumber(args[2]), tonumber(args[3])
        if far and near and far > near and near >= 0 then
            if far > 24.0 then print(('[whip_homes_mirrorpark] note: beyond %.0f m the native glass swap may still show matte glass on the far side'):format(24.0)) end
            fadeFar, fadeNear = far, near
            pcall(SetResourceKvp, 'wh_glass_far_v3', tostring(far)); pcall(SetResourceKvp, 'wh_glass_near_v3', tostring(near))
        end
        for _, h in ipairs(GLASS_HOUSES) do h.alpha = nil end
    end
    glassStatus()
end, false)

-- Streaming debug overlay (wh_debug): per home, whether the interior is instanced (its door objects exist), whether the
-- camera is inside it, how many of its door objects exist (they only exist while the interior is populated) and how
-- many of those the renderer drew last frame (IsEntityOnScreen: false when frustum- or portal-culled or occluded).
-- For plugged homes also: wall distance, native glass state and fade alpha.
local DEBUG_HOUSES = {
    { key = 'mp_d01_p01', probe = vector3(904.520, -481.152, 59.520) },
    { key = 'mp_d01_p02', probe = vector3(1109.193, -413.808, 67.639) },
    { key = 'mp_d01_p03', probe = vector3(917.671, -561.381, 58.450) },
    { key = 'mp_d01_p04', probe = vector3(1397.338, -567.867, 74.581) },
    { key = 'mp_d01_p05', probe = vector3(1365.473, -614.901, 74.795) },
    { key = 'mp_d01_p06', probe = vector3(1391.754, -599.929, 74.570) },
    { key = 'mp_d01_p07', probe = vector3(1307.647, -520.214, 71.545) },
    { key = 'mp_d01_p08', probe = vector3(1353.241, -539.842, 73.976) },
    { key = 'mp_d01_p09', probe = vector3(1296.930, -581.666, 71.816) },
    { key = 'mp_d01_p10', probe = vector3(1318.325, -589.984, 73.330) },
    { key = 'mp_d01_p11', probe = vector3(951.847, -672.377, 58.534) },
    { key = 'mp_h3_p02', probe = vector3(1245.969, -512.840, 69.454) },
    { key = 'mp_h3', probe = vector3(1004.611, -570.682, 60.699) },
    { key = 'mp_h3_p03', probe = vector3(1212.659, -621.253, 66.543) },
    { key = 'mp_h3_p04', probe = vector3(991.837, -732.010, 57.921) },
    { key = 'mp_d05_p01', probe = vector3(857.168, -510.001, 57.829) },
    { key = 'mp_d05_p02', probe = vector3(1024.324, -408.598, 66.449) },
    { key = 'mp_d05_p03', probe = vector3(960.747, -541.623, 59.834) },
    { key = 'mp_d05_p04', probe = vector3(1047.821, -473.568, 64.404) },
    { key = 'mp_d05_p05', probe = vector3(1260.679, -704.710, 65.016) },
    { key = 'mp_d07_p01', probe = vector3(920.802, -473.514, 61.206) },
    { key = 'mp_d07_p02', probe = vector3(897.463, -539.400, 58.629) },
    { key = 'mp_d07_p03', probe = vector3(925.362, -642.544, 58.365) },
    { key = 'mp_d08_p01', probe = vector3(946.696, -520.759, 60.734) },
    { key = 'mp_d08_p02', probe = vector3(1223.452, -668.900, 63.601) },
    { key = 'mp_d08_p03', probe = vector3(941.733, -654.534, 58.537) },
    { key = 'mp_h1', probe = vector3(986.149, -622.162, 59.341) },
    { key = 'mp_h1_p02', probe = vector3(1375.156, -547.893, 74.790) },
    { key = 'mp_h1_p03', probe = vector3(1330.268, -528.086, 72.546) },
    { key = 'mp_h1_p04', probe = vector3(1337.521, -604.452, 74.806) },
    { key = 'mp_h1_p05', probe = vector3(898.431, -622.231, 58.558) },
    { key = 'mp_d10_p01', probe = vector3(1106.961, -442.683, 67.892) },
    { key = 'mp_d10_p02', probe = vector3(1246.767, -501.199, 70.008) },
    { key = 'mp_d10_p03', probe = vector3(982.239, -724.191, 58.322) },
    { key = 'mp_d11_p01', probe = vector3(843.282, -531.988, 57.829) },
    { key = 'mp_d11_p02', probe = vector3(1097.221, -486.132, 65.563) },
    { key = 'mp_d11_p03', probe = vector3(1258.716, -458.129, 70.420) },
    { key = 'wh_bng_p02', probe = vector3(1255.849, -481.101, 70.279) },
    { key = 'wh_bng_p03', probe = vector3(973.569, -504.624, 62.231) },
    { key = 'wh_bng', probe = vector3(967.384, -598.449, 59.993) },
    { key = 'wh_bng_p04', probe = vector3(1204.512, -573.979, 69.229) },
    { key = 'wh_bng_p05', probe = vector3(1237.920, -567.888, 69.747) },
    { key = 'wh_bng_p06', probe = vector3(860.471, -587.207, 58.247) },
    { key = 'wh_bng_p07', probe = vector3(968.924, -704.756, 58.572) },
    { key = 'mp_h4_p02', probe = vector3(875.971, -494.561, 57.992) },
    { key = 'mp_h4_p03', probe = vector3(1117.655, -393.910, 68.849) },
    { key = 'mp_h4_p04', probe = vector3(1258.283, -430.685, 69.915) },
    { key = 'mp_h4_p05', probe = vector3(925.365, -530.072, 59.690) },
    { key = 'mp_h4_p06', probe = vector3(1016.395, -473.082, 64.404) },
    { key = 'mp_h4', probe = vector3(978.016, -584.585, 59.751) },
    { key = 'mp_h4_p07', probe = vector3(986.538, -521.819, 60.591) },
    { key = 'mp_h4_p08', probe = vector3(1208.903, -558.786, 69.516) },
    { key = 'mp_d15_p01', probe = vector3(1103.712, -464.719, 67.414) },
    { key = 'mp_d15_p02', probe = vector3(1051.094, -448.868, 66.352) },
    { key = 'mp_d15_p03', probe = vector3(1208.607, -597.351, 68.159) },
    { key = 'mp_d15_p04', probe = vector3(1266.067, -684.964, 66.126) },
    { key = 'mp_h2_p02', probe = vector3(964.048, -449.645, 62.895) },
    { key = 'mp_h2', probe = vector3(995.976, -594.743, 59.743) },
    { key = 'mp_h2_p03', probe = vector3(1222.896, -692.440, 61.208) },
    { key = 'mp_d17_p01', probe = vector3(1039.571, -495.053, 64.374) },
    { key = 'mp_d17_p02', probe = vector3(1258.633, -650.676, 68.216) },
    { key = 'mp_d18_p01', probe = vector3(1007.766, -419.598, 65.455) },
    { key = 'mp_d18_p02', probe = vector3(1240.597, -597.002, 69.888) },
    { key = 'mp_d18_p03', probe = vector3(883.539, -604.885, 58.550) },
    { key = 'mp_d19_p01', probe = vector3(984.539, -430.205, 64.250) },
    { key = 'mp_d19_p02', probe = vector3(947.310, -460.316, 61.755) },
    { key = 'mp_d19_p03', probe = vector3(1009.677, -508.490, 61.193) },
    { key = 'mp_d19_p04', probe = vector3(1233.467, -724.173, 61.157) },
    { key = 'mp_d19_p05', probe = vector3(1248.351, -617.775, 69.773) },
    { key = 'mp_d19_p06', probe = vector3(842.556, -558.868, 58.194) },
    { key = 'mp_d20_p01', probe = vector3(1057.003, -375.454, 68.354) },
}
local debugOn = false
local function dtext(x, y, s, r, g, b)
    SetTextFont(0); SetTextScale(0.28, 0.28); SetTextColour(r or 255, g or 255, b or 255, 235); SetTextOutline()
    BeginTextCommandDisplayText('STRING'); AddTextComponentSubstringPlayerName(s); EndTextCommandDisplayText(x, y)
end

local readyCount = 0
local function debugLoop()                  -- runs only while the overlay is on (started by wh_debug)
    local rows, nextSample = {}, 0
    while debugOn do
        do
            if GetGameTimer() >= nextSample then
                nextSample = GetGameTimer() + 250
                rows = {}
                local cam = GetFinalRenderedCamCoord()
                local camInterior = GetInteriorFromPrimaryView()
                -- scene budget watch: how many house interiors answer ready right now (any loader mode)
                readyCount = 0
                for _, h in ipairs(GLASS_HOUSES) do
                    local hid = GetInteriorAtCoords(h.origin.x, h.origin.y, h.origin.z + 1.0)
                    if hid ~= 0 and truthy(IsInteriorReady(hid)) then readyCount = readyCount + 1 end
                end
                -- the 8 nearest homes only (71 lines would not fit on screen)
                local near = {}
                for _, hh in ipairs(DEBUG_HOUSES) do near[#near + 1] = hh; hh.sortD = #(cam - hh.probe) end
                table.sort(near, function(a, b) return a.sortD < b.sortD end)
                for n = 9, #near do near[n] = nil end
                for _, hh in ipairs(near) do
                    local id = GetInteriorAtCoords(hh.probe.x, hh.probe.y, hh.probe.z)
                    local readyFlag = id ~= 0 and IsInteriorReady(id)
                    local total, exist, drawn, inside = 0, 0, 0, 0
                    for _, door in ipairs(doors) do
                        if door.house == hh.key then
                            total = total + 1
                            local obj = GetClosestObjectOfType(door.position.x, door.position.y, door.position.z, 1.5, door.modelHash, false, false, false)
                            if obj ~= 0 then
                                exist = exist + 1
                                if IsEntityOnScreen(obj) then drawn = drawn + 1 end
                                if GetInteriorFromEntity(obj) ~= 0 then inside = inside + 1 end
                            end
                        end
                    end
                    -- the interior's own objects (its doors) only exist while it is instanced: that is the ground truth.
                    -- IsInteriorReady flips much earlier (0.1.5: ~32 m while all doors still existed and drew), so it is
                    -- shown separately and not used for the verdict.
                    local ready = exist > 0
                    local dist = #(cam - hh.probe)
                    if hh.wasLoaded ~= nil and hh.wasLoaded ~= ready then
                        hh.lastEvent = ('%s at %.1fm'):format(ready and 'loaded' or 'unloaded', dist)
                        print(('[whip_homes_mirrorpark] %s interior %s'):format(hh.key, hh.lastEvent))
                    end
                    hh.wasLoaded = ready
                    -- three states: DRAWN (its doors were rendered last frame), LOADED (exists, nothing drawn), unloaded
                    local state = drawn > 0 and 'DRAWN' or (ready and 'LOADED' or 'unloaded')
                    if hh.wasState ~= nil and hh.wasState ~= state then
                        hh.lastState = ('%s at %.1fm'):format(state, dist)
                        print(('[whip_homes_mirrorpark] %s interior %s'):format(hh.key, hh.lastState))
                    end
                    hh.wasState = state
                    local s = ('%s %.1fm  interior %s %s %s doors %d/%d (in interior %d) drawn %d  readyFlag %s%s%s'):format(hh.key, dist,
                        state, istate(id), (id ~= 0 and camInterior == id) and '[CAM INSIDE]' or '', exist, total, inside, drawn,
                        tostring(readyFlag), hh.lastEvent and ('  load: ' .. hh.lastEvent) or '', hh.lastState and ('  state: ' .. hh.lastState) or '')
                    for _, h in ipairs(GLASS_HOUSES) do
                        if h.key == hh.key then
                            if LOADER == 'ipl' then
                                s = s .. ('  | ipl %s  forced %s %.0f/%.0f m (disabled=%s)'):format(h.active and 'requested' or 'removed', forceUnload and (h.disabled and 'UNLOADED' or 'allowed') or 'off', h.forceOff, h.forceOn, tostring(id ~= 0 and IsInteriorDisabled(id)))
                            else
                                s = s .. ('  | static %s (disabled=%s)'):format(h.enabled == nil and 'no interior yet' or (h.enabled and 'ENABLED' or 'disabled'), tostring(id ~= 0 and IsInteriorDisabled(id)))
                            end
                            s = s .. ('  own %s'):format(istate(ownInterior(h)))
                            s = s .. ('  | walls %.1fm  map layer (expected) %s  copy %s'):format(h.distance or -1,
                                nativeState(h),
                                glassMode ~= 'fade' and 'off' or (h.obj and tostring(h.alpha) or 'not spawned'))
                        end
                    end
                    local col = state == 'DRAWN' and { 120, 255, 120 } or (state == 'LOADED' and { 255, 210, 90 } or { 255, 170, 170 })
                    rows[#rows + 1] = { s, col[1], col[2], col[3] }
                end
            end
            dtext(0.01, 0.30, ('whip_homes_mirrorpark %s  loader %s  glass=%s fade %.0f->%.0f m from walls  forced unload %s (per home)  budget homes %d/%d rooms %d/%d portals %d/%d  ready interiors %d/%d'):format(VERSION, LOADER, glassMode, fadeFar, fadeNear, LOADER == 'ipl' and (forceUnload and 'ON' or 'off') or 'n/a', budgetUsed.homes, MAX_HOMES, budgetUsed.rooms, ROOM_BUDGET, budgetUsed.portals, PORTAL_BUDGET, readyCount, #GLASS_HOUSES), 255, 220, 120)
            for i, r in ipairs(rows) do dtext(0.01, 0.30 + i * 0.022, r[1], r[2], r[3], r[4]) end
            Wait(0)
        end
    end
end
-- wh_xray: local-only visual test. Hides the map's matte plug (model hide, this client only) and the fade copy, so the
-- window openings show whatever the engine really draws behind them at any distance (interior walls, other players).
local xray = false
RegisterCommand('wh_xray', function()
    xray = not xray
    for _, h in ipairs(GLASS_HOUSES) do
        local plug = joaat(h.key .. '_plug')
        if xray then CreateModelHide(h.origin.x, h.origin.y, h.origin.z, 25.0, plug, true)
        else RemoveModelHide(h.origin.x, h.origin.y, h.origin.z, 25.0, plug, false) end
    end
    glassMode = xray and 'xray' or (GetResourceKvpString('wh_glass_mode') or 'fade')
    print('[whip_homes_mirrorpark] xray ' .. (xray and 'ON: matte plug and fade copy hidden on this client' or 'off'))
end, false)

RegisterCommand('wh_debug', function()
    debugOn = not debugOn
    if debugOn then CreateThread(debugLoop) end
    print('[whip_homes_mirrorpark] debug overlay ' .. (debugOn and 'on' or 'off'))
end, false)

-- Read-only test helper: run wh_home_check (or wh_bungalow_check) in F8 while standing inside a home.
local function check()
    local ped = PlayerPedId()
    local p = GetEntityCoords(ped)
    print(('[whip_homes_mirrorpark] version=%s position=%.3f, %.3f, %.3f interior=%s room=%s'):format(
        VERSION, p.x, p.y, p.z, GetInteriorFromEntity(ped), GetRoomKeyFromEntity(ped)))
    local camera = GetGameplayCamCoord()
    print(('[whip_homes_mirrorpark] camera=%.3f, %.3f, %.3f viewMode=%s cameraInterior=%s cameraRoom=%s'):format(
        camera.x, camera.y, camera.z, GetFollowPedCamViewMode(), GetInteriorFromPrimaryView(), GetRoomKeyForGameViewport()))
    for _, other in ipairs({ 'whippy_test_bungalow', 'whippy_test_bungalow_enhanced' }) do
        print(('[whip_homes_mirrorpark] %s state=%s'):format(other, GetResourceState(other)))
    end
    local pool = GetGamePool('CObject')
    for _, door in ipairs(doors) do
        if #(door.position - p) < 25.0 then
            local handles = 0
            for _, object in ipairs(pool) do
                if GetEntityModel(object) == door.modelHash and #(GetEntityCoords(object) - door.position) < 5.0 then handles = handles + 1 end
            end
            print(('[whip_homes_mirrorpark] %s nearbyObjects=%d'):format(door.model, handles))
        end
    end
end
RegisterCommand('wh_budget', function(_, args)
    local a, b, c = tonumber(args[1]), tonumber(args[2]), tonumber(args[3])
    if a and b and c then
        MAX_HOMES, ROOM_BUDGET, PORTAL_BUDGET = a, b, c
        pcall(SetResourceKvp, 'wh_budget_homes', tostring(a)); pcall(SetResourceKvp, 'wh_budget_rooms', tostring(b)); pcall(SetResourceKvp, 'wh_budget_portals', tostring(c))
    end
    print(('[whip_homes_mirrorpark] interior budget (loader %s): homes %d/%d rooms %d/%d portals %d/%d'):format(LOADER, budgetUsed.homes, MAX_HOMES, budgetUsed.rooms, ROOM_BUDGET, budgetUsed.portals, PORTAL_BUDGET))
    for _, h in ipairs(GLASS_HOUSES) do
        if inBudget(h) then print(('  %s %s  %.0f m  rooms %d portals %d  interior %s'):format(LOADER == 'ipl' and 'loaded' or 'enabled', h.key, h.loadDistance or -1, h.rooms, h.portals, istate(h.interiorId))) end
    end
end, false)
-- wh_ground            0.6.3: stand where you fall through and run this: what collision is under you (map-only ray, any ray,
--                      ground z) and which interior the spot / your ped / that collision belongs to (F8 + client log)
--                      0.6.9: a ray that hits map collision returns a handle GetEntityModel crashes on (the user's script
--                      error), so the hit entity is only read when it is a real ped/vehicle/object (in a pcall); both rays
--                      report the collision material. 'wh_ground watch' toggles a logger that reports the spot you last
--                      stood on the moment you start to fall, and where you are then.
local function groundReport(tag, p)
    local ped = PlayerPedId()
    local found, gz = GetGroundZFor_3dCoord(p.x, p.y, p.z + 2.0, false)
    local function ray(flags)
        local h = StartExpensiveSynchronousShapeTestLosProbe(p.x, p.y, p.z + 2.0, p.x, p.y, p.z - 6.0, flags, ped, 7)
        local _, hit, at, _, material, ent = GetShapeTestResultIncludingMaterial(h)
        if hit ~= 1 then return 'none' end
        local ok, what = pcall(function()
            if not ent or ent == 0 or not DoesEntityExist(ent) then return 'map' end
            local kind = GetEntityType(ent)
            if kind < 1 or kind > 3 then return 'map' end
            return ({ 'ped', 'vehicle', 'object' })[kind] .. ' model ' .. tostring(GetEntityModel(ent))
        end)
        return ('%.3f %s material %s'):format(at.z, ok and what or 'map', tostring(material))
    end
    print(('[wh_ground] %s %.2f %.2f %.2f h %.1f | groundZ %s | map ray %s | any ray %s | interior at %s, ped %s, collision %s | marked outside %s | collision loaded %s'):format(
        tag, p.x, p.y, p.z, GetEntityHeading(ped), found and ('%.3f'):format(gz) or 'none', ray(1), ray(-1),
        tostring(GetInteriorAtCoords(p.x, p.y, p.z)), tostring(GetInteriorFromEntity(ped)), tostring(GetInteriorFromCollision(p.x, p.y, p.z)),
        tostring(IsCollisionMarkedOutside(p.x, p.y, p.z)), tostring(HasCollisionLoadedAroundEntity(ped))))
end
local groundWatch = false
RegisterCommand('wh_ground', function(_, args)
    if args[1] ~= 'watch' then groundReport('ped', GetEntityCoords(PlayerPedId())); return end
    groundWatch = not groundWatch
    print('[wh_ground] watch ' .. (groundWatch and 'ON: walk over the hole, the spot you fall from is logged (wh_ground watch again = off)' or 'off'))
    if not groundWatch then return end
    CreateThread(function()
        local last, falling = nil, false
        while groundWatch do
            local ped = PlayerPedId()
            if IsPedFalling(ped) or (IsEntityInAir(ped) and GetEntityVelocity(ped).z < -4.0) then
                if not falling and last then groundReport('fell from', last); groundReport('now at', GetEntityCoords(ped)) end
                falling = true
            elseif not IsEntityInAir(ped) then
                last, falling = GetEntityCoords(ped), false
            end
            Wait(50)
        end
    end)
end, false)
-- wh_stairs            0.9.2: toggles a readout of the ped's stair state while you walk a flight (ped config flags from
--                      FiveM's natives list, names unverified there: 147 StairsDetected, 148 SlopeDetected, 253 OnStairs,
--                      270 OnStairSlope): on screen every frame, and an F8 line with your position at every change
local stairsWatch = false
RegisterCommand('wh_stairs', function()
    stairsWatch = not stairsWatch
    print('[wh_stairs] ' .. (stairsWatch and 'ON: walk up and down the stairs (wh_stairs again = off)' or 'off'))
    if not stairsWatch then return end
    CreateThread(function()
        local last = nil
        while stairsWatch do
            local ped = PlayerPedId()
            local txt = ('stairs detected %s | slope detected %s | on stairs %s | on stair slope %s'):format(
                tostring(GetPedConfigFlag(ped, 147, true)), tostring(GetPedConfigFlag(ped, 148, true)),
                tostring(GetPedConfigFlag(ped, 253, true)), tostring(GetPedConfigFlag(ped, 270, true)))
            SetTextFont(4); SetTextScale(0.0, 0.42); SetTextColour(255, 255, 255, 230); SetTextOutline()
            BeginTextCommandDisplayText('STRING'); AddTextComponentSubstringPlayerName(txt); EndTextCommandDisplayText(0.28, 0.90)
            if txt ~= last then
                local p = GetEntityCoords(ped)
                print(('[wh_stairs] %.2f %.2f %.2f %s'):format(p.x, p.y, p.z, txt)); last = txt
            end
            Wait(0)
        end
    end)
end, false)
-- 0.8.0 themes. wh_theme                          the loaded homes: own interior, wanted theme, active sets
--               wh_theme <home|here> <0-N|off>    preview a theme on this client only; off = back to whip_core's choice
local function homeHere()
    local ped = PlayerPedId(); local pint, p = GetInteriorFromEntity(ped), GetEntityCoords(ped)
    local best, bd = nil, 50.0
    for _, h in ipairs(GLASS_HOUSES) do
        if pint ~= 0 and h.themeIds[pint] ~= nil then return h end
        local d = #(p - h.origin)
        if d < bd then best, bd = h, d end
    end
    return best
end
RegisterCommand('wh_theme', function(_, args)
    if #args == 0 then
        print(('[wh_theme] server table %s'):format(themeTable == nil and 'not arrived' or 'arrived'))
        for _, h in ipairs(GLASS_HOUSES) do
            if inBudget(h) then
                -- every copy of the home's interior this client themed, plus the one the lookup answers now
                local ids, own = {}, ownInterior(h)
                for id in pairs(h.themeIds) do ids[#ids + 1] = id end
                if own ~= 0 and h.themeIds[own] == nil then ids[#ids + 1] = own end
                for _, id in ipairs(ids) do
                    local on = {}
                    for i = 0, THEME_COUNT - 1 do if truthy(IsInteriorEntitySetActive(id, THEME_SETS[i])) then on[#on + 1] = tostring(i) end end
                    print(('[wh_theme] %s interior=%s%s wanted=%d (server %s, preview %s) themed=%s active sets: %s'):format(h.key, istate(id),
                        id == own and ' (lookup)' or '', wantedTheme(h), tostring((themeTable or {})[h.key] or 0), tostring(themePreview[h.key] or '-'),
                        tostring(h.themeIds[id] or '-'), table.concat(on, ',')))
                end
                if #ids == 0 then print(('[wh_theme] %s no interior yet'):format(h.key)) end
            end
        end
        return
    end
    local h
    if args[1] == 'here' then h = homeHere() else for _, x in ipairs(GLASS_HOUSES) do if x.key == args[1] then h = x end end end
    if not h then print('[wh_theme] no such home (or none within 50 m): ' .. tostring(args[1])); return end
    local t = nil
    if args[2] ~= 'off' then
        t = tonumber(args[2])
        if not t or t < 0 or t >= THEME_COUNT or t % 1 ~= 0 then print(('[wh_theme] usage: wh_theme <home|here> <0-%d|off>'):format(THEME_COUNT - 1)); return end
    end
    themePreview[h.key] = t
    print(('[wh_theme] %s: preview %s on this client only (whip_core / server theme %s)'):format(h.key, tostring(t or 'off'), tostring((themeTable or {})[h.key] or 0)))
end, false)
-- client exports for whip_core: the home (and its live interior) at a point, and a home's current theme
exports('GetHomeAt', function(coords)
    local c = coords or GetEntityCoords(PlayerPedId())
    for _, h in ipairs(GLASS_HOUSES) do
        if #(c - h.origin) < 50.0 then
            local id = ownInterior(h)
            if id ~= 0 and GetInteriorAtCoordsWithTypehash(c.x, c.y, c.z, h.mloHash) == id then return h.key, id end
        end
    end
    return nil
end)
exports('GetHomeTheme', function(key)
    for _, h in ipairs(GLASS_HOUSES) do if h.key == key then return wantedTheme(h) end end
    return nil
end)

RegisterCommand('wh_home_check', function() check(); glassStatus(); drivewayStatus() end, false)
RegisterCommand('wh_bungalow_check', check, false)
