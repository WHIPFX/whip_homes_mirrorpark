-- Whippy Mirror Park homes: server side of the interior themes (0.8.0, plans/themes.py). This resource declares
-- whip_interior_themes 'v1' (fxmanifest), so whip_core finds it and calls the exports below. whip_core owns each home's
-- choice (its property row) and who may change it; the exports publish the choice to every client as
-- GlobalState.whMpThemes = { [home key] = theme id } (theme 0 homes left out) and client.lua switches the homes'
-- entity sets. Exports (server side):
--   GetThemes()                  -> { { id, key, name, walls, trim, skirting, floor, floorName }, ... }
--       walls / trim / skirting / floor = '#rrggbb' swatch colours (floor = the oak's mid tone)
--   GetHomes()                   -> { { key, archetype, designArchetype, position, heading }, ... }
--       archetype = the MLO archetype name the home places now (a home variant's for mp_d10_p01..p03 and mp_d11_p02,
--       0.7.0); designArchetype = its design's MLO (the same for every other home); position = the MLO instance origin
--       (GetOffsetFromInteriorInWorldCoords(id, 0, 0, 0)); heading = the instance's yaw in degrees
--   SetHomeTheme(key, id)        -> true | false, err
--   SetAllThemes({ [key] = id }) -> true, count | false, err    replaces the whole table (homes left out = 0)
--   GetHomeTheme(key)            -> id | nil (unknown home)
-- Console / ace-restricted commands for tests without whip_core: wh_theme_set <home> <id>, wh_theme_list
-- (whip_core's next SetAllThemes replaces whatever they set).
local VERSION = '0.11.13'
local THEMES = {
    { id = 0, key = 'original', name = 'Original', walls = '#b2a899', trim = '#c4c1b4', skirting = '#b9b5a8', floor = '#997852', floorName = 'honey oak' },
    { id = 1, key = 'charcoal', name = 'Charcoal', walls = '#424244', trim = '#e6e3db', skirting = '#e6e3db', floor = '#927454', floorName = 'natural oak' },
    { id = 2, key = 'navy', name = 'Navy', walls = '#2a364a', trim = '#e6e3db', skirting = '#e6e3db', floor = '#a0815e', floorName = 'light oak' },
    { id = 3, key = 'forest', name = 'Forest', walls = '#2e4036', trim = '#e2dac8', skirting = '#e2dac8', floor = '#997852', floorName = 'honey oak' },
    { id = 4, key = 'oxblood', name = 'Oxblood', walls = '#5c2a2a', trim = '#e2dac8', skirting = '#e2dac8', floor = '#927454', floorName = 'natural oak' },
    { id = 5, key = 'slate', name = 'Slate', walls = '#48525a', trim = '#e6e3db', skirting = '#e6e3db', floor = '#b0936e', floorName = 'pale oak' },
    { id = 6, key = 'espresso', name = 'Espresso', walls = '#48362c', trim = '#e2dac8', skirting = '#e2dac8', floor = '#b0936e', floorName = 'pale oak' },
    { id = 7, key = 'midnight', name = 'Midnight', walls = '#222224', trim = '#e6e3db', skirting = '#e6e3db', floor = '#a0815e', floorName = 'light oak' },
}
local HOMES = {
    { key = 'mp_d01_p01', archetype = 'mp_d01_mlo', designArchetype = 'mp_d01_mlo', position = vector3(904.5200, -481.1517, 58.0203), heading = 24.505 },
    { key = 'mp_d01_p02', archetype = 'mp_d01_mlo', designArchetype = 'mp_d01_mlo', position = vector3(1109.1927, -413.8084, 66.1392), heading = 265.589 },
    { key = 'mp_d01_p03', archetype = 'mp_d01_mlo', designArchetype = 'mp_d01_mlo', position = vector3(917.6712, -561.3809, 56.9505), heading = 26.417 },
    { key = 'mp_d01_p04', archetype = 'mp_d01_mlo', designArchetype = 'mp_d01_mlo', position = vector3(1397.3379, -567.8675, 73.0806), heading = 293.359 },
    { key = 'mp_d01_p05', archetype = 'mp_d01_mlo', designArchetype = 'mp_d01_mlo', position = vector3(1365.4727, -614.9008, 73.2951), heading = 180.083 },
    { key = 'mp_d01_p06', archetype = 'mp_d01_mlo', designArchetype = 'mp_d01_mlo', position = vector3(1391.7537, -599.9294, 73.0696), heading = 232.826 },
    { key = 'mp_d01_p07', archetype = 'mp_d01_mlo', designArchetype = 'mp_d01_mlo', position = vector3(1307.6470, -520.2138, 70.0447), heading = 340.421 },
    { key = 'mp_d01_p08', archetype = 'mp_d01_mlo', designArchetype = 'mp_d01_mlo', position = vector3(1353.2407, -539.8417, 72.4758), heading = 337.177 },
    { key = 'mp_d01_p09', archetype = 'mp_d01_mlo', designArchetype = 'mp_d01_mlo', position = vector3(1296.9302, -581.6664, 70.3162), heading = 163.243 },
    { key = 'mp_d01_p10', archetype = 'mp_d01_mlo', designArchetype = 'mp_d01_mlo', position = vector3(1318.3254, -589.9842, 71.8304), heading = 155.664 },
    { key = 'mp_d01_p11', archetype = 'mp_d01_mlo', designArchetype = 'mp_d01_mlo', position = vector3(951.8467, -672.3773, 57.0338), heading = 119.350 },
    { key = 'mp_h3_p02', archetype = 'mp_h3_mlo', designArchetype = 'mp_h3_mlo', position = vector3(1245.9686, -512.8400, 67.9538), heading = 256.646 },
    { key = 'mp_h3', archetype = 'mp_h3_mlo', designArchetype = 'mp_h3_mlo', position = vector3(1004.6108, -570.6824, 59.1994), heading = 83.354 },
    { key = 'mp_h3_p03', archetype = 'mp_h3v1_mlo', designArchetype = 'mp_h3_mlo', position = vector3(1212.6594, -621.2533, 65.0434), heading = 272.703 },
    { key = 'mp_h3_p04', archetype = 'mp_h3_mlo', designArchetype = 'mp_h3_mlo', position = vector3(991.8372, -732.0104, 56.4207), heading = 311.000 },
    { key = 'mp_d05_p01', archetype = 'mp_d05_mlo', designArchetype = 'mp_d05_mlo', position = vector3(857.1680, -510.0014, 56.3289), heading = 137.992 },
    { key = 'mp_d05_p02', archetype = 'mp_d05_mlo', designArchetype = 'mp_d05_mlo', position = vector3(1024.3240, -408.5978, 64.9493), heading = 128.382 },
    { key = 'mp_d05_p03', archetype = 'mp_d05_mlo', designArchetype = 'mp_d05_mlo', position = vector3(960.7468, -541.6228, 58.3340), heading = 120.967 },
    { key = 'mp_d05_p04', archetype = 'mp_d05_mlo', designArchetype = 'mp_d05_mlo', position = vector3(1047.8208, -473.5682, 62.9038), heading = 168.879 },
    { key = 'mp_d05_p05', archetype = 'mp_d05_mlo', designArchetype = 'mp_d05_mlo', position = vector3(1260.6794, -704.7103, 63.5155), heading = 150.027 },
    { key = 'mp_d07_p01', archetype = 'mp_d07_mlo', designArchetype = 'mp_d07_mlo', position = vector3(920.8018, -473.5139, 59.7059), heading = 24.634 },
    { key = 'mp_d07_p02', archetype = 'mp_d07_mlo', designArchetype = 'mp_d07_mlo', position = vector3(897.4630, -539.4004, 57.1290), heading = 296.417 },
    { key = 'mp_d07_p03', archetype = 'mp_d07_mlo', designArchetype = 'mp_d07_mlo', position = vector3(925.3619, -642.5438, 56.8647), heading = 139.071 },
    { key = 'mp_d08_p01', archetype = 'mp_d08_mlo', designArchetype = 'mp_d08_mlo', position = vector3(946.6959, -520.7587, 59.2335), heading = 210.054 },
    { key = 'mp_d08_p02', archetype = 'mp_d08_mlo', designArchetype = 'mp_d08_mlo', position = vector3(1223.4524, -668.9000, 62.1012), heading = 282.679 },
    { key = 'mp_d08_p03', archetype = 'mp_d08_mlo', designArchetype = 'mp_d08_mlo', position = vector3(941.7329, -654.5335, 57.0367), heading = 130.186 },
    { key = 'mp_h1', archetype = 'mp_h1_mlo', designArchetype = 'mp_h1_mlo', position = vector3(986.1494, -622.1621, 57.8406), heading = 305.144 },
    { key = 'mp_h1_p02', archetype = 'mp_h1_mlo', designArchetype = 'mp_h1_mlo', position = vector3(1375.1558, -547.8932, 73.2905), heading = 338.570 },
    { key = 'mp_h1_p03', archetype = 'mp_h1_mlo', designArchetype = 'mp_h1_mlo', position = vector3(1330.2678, -528.0859, 71.0456), heading = 340.246 },
    { key = 'mp_h1_p04', archetype = 'mp_h1_mlo', designArchetype = 'mp_h1_mlo', position = vector3(1337.5210, -604.4516, 73.3055), heading = 144.005 },
    { key = 'mp_h1_p05', archetype = 'mp_h1_mlo', designArchetype = 'mp_h1_mlo', position = vector3(898.4309, -622.2310, 57.0582), heading = 138.011 },
    { key = 'mp_d10_p01', archetype = 'mp_d10v1_mlo', designArchetype = 'mp_d10_mlo', position = vector3(1106.9608, -442.6829, 66.3917), heading = 262.670 },
    { key = 'mp_d10_p02', archetype = 'mp_d10v2_mlo', designArchetype = 'mp_d10_mlo', position = vector3(1246.7667, -501.1992, 68.5079), heading = 167.000 },
    { key = 'mp_d10_p03', archetype = 'mp_d10v2_mlo', designArchetype = 'mp_d10_mlo', position = vector3(982.2393, -724.1914, 56.8221), heading = 222.000 },
    { key = 'mp_d11_p01', archetype = 'mp_d11_mlo', designArchetype = 'mp_d11_mlo', position = vector3(843.2824, -531.9878, 56.3289), heading = 86.411 },
    { key = 'mp_d11_p02', archetype = 'mp_d11v1_mlo', designArchetype = 'mp_d11_mlo', position = vector3(1097.2211, -486.1320, 64.0633), heading = 257.264 },
    { key = 'mp_d11_p03', archetype = 'mp_d11_mlo', designArchetype = 'mp_d11_mlo', position = vector3(1258.7162, -458.1288, 68.9198), heading = 92.264 },
    { key = 'wh_bng_p02', archetype = 'wh_bng_mlo', designArchetype = 'wh_bng_mlo', position = vector3(1255.8485, -481.1010, 68.7786), heading = 170.000 },
    { key = 'wh_bng_p03', archetype = 'wh_bng_mlo', designArchetype = 'wh_bng_mlo', position = vector3(973.5687, -504.6236, 60.7308), heading = 300.378 },
    { key = 'wh_bng', archetype = 'wh_bng_mlo', designArchetype = 'wh_bng_mlo', position = vector3(967.3839, -598.4495, 58.4926), heading = 298.642 },
    { key = 'wh_bng_p04', archetype = 'wh_bngv1_mlo', designArchetype = 'wh_bng_mlo', position = vector3(1204.5124, -573.9789, 67.7292), heading = 0.517 },
    { key = 'wh_bng_p05', archetype = 'wh_bng_mlo', designArchetype = 'wh_bng_mlo', position = vector3(1237.9197, -567.8883, 68.2474), heading = 179.500 },
    { key = 'wh_bng_p06', archetype = 'wh_bng_mlo', designArchetype = 'wh_bng_mlo', position = vector3(860.4707, -587.2065, 56.7466), heading = 226.900 },
    { key = 'wh_bng_p07', archetype = 'wh_bng_mlo', designArchetype = 'wh_bng_mlo', position = vector3(968.9242, -704.7563, 57.0719), heading = 216.000 },
    { key = 'mp_h4_p02', archetype = 'mp_h4_mlo', designArchetype = 'mp_h4_mlo', position = vector3(875.9706, -494.5606, 56.4915), heading = 47.869 },
    { key = 'mp_h4_p03', archetype = 'mp_h4_mlo', designArchetype = 'mp_h4_mlo', position = vector3(1117.6552, -393.9097, 67.3486), heading = 243.545 },
    { key = 'mp_h4_p04', archetype = 'mp_h4_mlo', designArchetype = 'mp_h4_mlo', position = vector3(1258.2831, -430.6847, 68.4154), heading = 113.545 },
    { key = 'mp_h4_p05', archetype = 'mp_h4_mlo', designArchetype = 'mp_h4_mlo', position = vector3(925.3653, -530.0723, 58.1898), heading = 205.656 },
    { key = 'mp_h4_p06', archetype = 'mp_h4_mlo', designArchetype = 'mp_h4_mlo', position = vector3(1016.3952, -473.0824, 62.9038), heading = 217.400 },
    { key = 'mp_h4', archetype = 'mp_h4_mlo', designArchetype = 'mp_h4_mlo', position = vector3(978.0158, -584.5845, 58.2509), heading = 211.185 },
    { key = 'mp_h4_p07', archetype = 'mp_h4_mlo', designArchetype = 'mp_h4_mlo', position = vector3(986.5381, -521.8193, 59.0915), heading = 30.656 },
    { key = 'mp_h4_p08', archetype = 'mp_h4_mlo', designArchetype = 'mp_h4_mlo', position = vector3(1208.9031, -558.7860, 68.0161), heading = 267.639 },
    { key = 'mp_d15_p01', archetype = 'mp_d15_mlo', designArchetype = 'mp_d15_mlo', position = vector3(1103.7118, -464.7195, 65.9139), heading = 347.944 },
    { key = 'mp_d15_p02', archetype = 'mp_d15_mlo', designArchetype = 'mp_d15_mlo', position = vector3(1051.0935, -448.8676, 64.8524), heading = 169.286 },
    { key = 'mp_d15_p03', archetype = 'mp_d15_mlo', designArchetype = 'mp_d15_mlo', position = vector3(1208.6067, -597.3510, 66.6586), heading = 2.477 },
    { key = 'mp_d15_p04', archetype = 'mp_d15_mlo', designArchetype = 'mp_d15_mlo', position = vector3(1266.0671, -684.9637, 64.6265), heading = 185.999 },
    { key = 'mp_h2_p02', archetype = 'mp_h2_mlo', designArchetype = 'mp_h2_mlo', position = vector3(964.0475, -449.6449, 61.3946), heading = 124.318 },
    { key = 'mp_h2', archetype = 'mp_h2v1_mlo', designArchetype = 'mp_h2_mlo', position = vector3(995.9761, -594.7429, 58.2434), heading = 169.276 },
    { key = 'mp_h2_p03', archetype = 'mp_h2_mlo', designArchetype = 'mp_h2_mlo', position = vector3(1222.8957, -692.4403, 59.7081), heading = 281.875 },
    { key = 'mp_d17_p01', archetype = 'mp_d17_mlo', designArchetype = 'mp_d17_mlo', position = vector3(1039.5708, -495.0529, 62.8740), heading = 168.014 },
    { key = 'mp_d17_p02', archetype = 'mp_d17_mlo', designArchetype = 'mp_d17_mlo', position = vector3(1258.6330, -650.6764, 66.7163), heading = 209.000 },
    { key = 'mp_d18_p01', archetype = 'mp_d18_mlo', designArchetype = 'mp_d18_mlo', position = vector3(1007.7660, -419.5984, 63.9547), heading = 127.341 },
    { key = 'mp_d18_p02', archetype = 'mp_d18_mlo', designArchetype = 'mp_d18_mlo', position = vector3(1240.5969, -597.0016, 68.3878), heading = 91.752 },
    { key = 'mp_d18_p03', archetype = 'mp_d18_mlo', designArchetype = 'mp_d18_mlo', position = vector3(883.5393, -604.8846, 57.0501), heading = 137.000 },
    { key = 'mp_d19_p01', archetype = 'mp_d19_mlo', designArchetype = 'mp_d19_mlo', position = vector3(984.5390, -430.2055, 62.7501), heading = 305.077 },
    { key = 'mp_d19_p02', archetype = 'mp_d19_mlo', designArchetype = 'mp_d19_mlo', position = vector3(947.3104, -460.3160, 60.2552), heading = 213.037 },
    { key = 'mp_d19_p03', archetype = 'mp_d19_mlo', designArchetype = 'mp_d19_mlo', position = vector3(1009.6766, -508.4904, 59.6934), heading = 206.409 },
    { key = 'mp_d19_p04', archetype = 'mp_d19_mlo', designArchetype = 'mp_d19_mlo', position = vector3(1233.4670, -724.1732, 59.6573), heading = 185.727 },
    { key = 'mp_d19_p05', archetype = 'mp_d19_mlo', designArchetype = 'mp_d19_mlo', position = vector3(1248.3508, -617.7745, 68.2728), heading = 297.030 },
    { key = 'mp_d19_p06', archetype = 'mp_d19_mlo', designArchetype = 'mp_d19_mlo', position = vector3(842.5564, -558.8679, 56.6937), heading = 279.927 },
    { key = 'mp_d20_p01', archetype = 'mp_d20_mlo', designArchetype = 'mp_d20_mlo', position = vector3(1057.0028, -375.4543, 66.8537), heading = 41.000 },
}
local homeByKey = {}
for _, h in ipairs(HOMES) do homeByKey[h.key] = h end
local function validTheme(id) return type(id) == 'number' and id % 1 == 0 and id >= 0 and id < #THEMES end
-- the table outlives a restart of this resource on a running server: keep its valid entries until whip_core pushes
local current = {}
for k, v in pairs(GlobalState.whMpThemes or {}) do if homeByKey[k] and validTheme(v) and v ~= 0 then current[k] = v end end
local function publish()
    local t = {}
    for k, v in pairs(current) do t[k] = v end
    GlobalState.whMpThemes = t
end
publish()
local function copyList(list)
    local out = {}
    for i, e in ipairs(list) do local c = {}; for k, v in pairs(e) do c[k] = v end; out[i] = c end
    return out
end
exports('GetThemes', function() return copyList(THEMES) end)
exports('GetHomes', function() return copyList(HOMES) end)
exports('GetHomeTheme', function(key)
    if not homeByKey[key] then return nil end
    return current[key] or 0
end)
local function setHomeTheme(key, id)
    if not homeByKey[key] then return false, 'unknown home ' .. tostring(key) end
    if not validTheme(id) then return false, 'unknown theme ' .. tostring(id) end
    if (current[key] or 0) == id then return true end
    current[key] = id ~= 0 and id or nil
    publish()
    return true
end
exports('SetHomeTheme', setHomeTheme)
exports('SetAllThemes', function(all)
    if type(all) ~= 'table' then return false, 'expected { [home key] = theme id }' end
    local nextT, n = {}, 0
    for k, v in pairs(all) do
        if not homeByKey[k] then return false, 'unknown home ' .. tostring(k) end
        if not validTheme(v) then return false, ('unknown theme %s for %s'):format(tostring(v), k) end
        if v ~= 0 then nextT[k] = v; n = n + 1 end
    end
    current = nextT
    publish()
    return true, n
end)
RegisterCommand('wh_theme_set', function(_, args)
    local ok, err = setHomeTheme(args[1], tonumber(args[2]))
    print(('[wh_theme] set %s %s: %s'):format(tostring(args[1]), tostring(args[2]), ok and 'ok' or err))
end, true)
RegisterCommand('wh_theme_list', function()
    for _, t in ipairs(THEMES) do print(('[wh_theme] theme %d %s'):format(t.id, t.name)) end
    local n = 0
    for _, h in ipairs(HOMES) do if current[h.key] then n = n + 1; print(('[wh_theme] %s -> %d'):format(h.key, current[h.key])) end end
    print(('[wh_theme] %d of %d homes not on theme 0 (version %s)'):format(n, #HOMES, VERSION))
end, true)
