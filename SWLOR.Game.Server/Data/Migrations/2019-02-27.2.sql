﻿-- Add Mon Cala's Dac City starport.
INSERT INTO dbo.SpaceStarport (ID, Planet, Name, CustomsDC, Cost, Waypoint) VALUES
('498EA709-7638-4A6E-9BE0-6F223EBA6C4A', 'Mon Cala', 'Dac City Starport', 50, 400, 'MON_CALA_LANDING');

-- Add space encounters for Mon Cala space.
INSERT INTO dbo.SpaceEncounter (Planet, Type, Chance, Difficulty, LootTable) VALUES
('Mon Cala', 1, 15, 40, 52),
('Mon Cala', 2, 1, 40, 0),
('Mon Cala', 3, 15, 45, 0);

-- Add Mon Cala's apartment complex.
INSERT INTO dbo.ApartmentBuilding (ID, Name) VALUES (3, 'Under the Sea');

-- Add loot for Mon Cala areas
INSERT INTO dbo.LootTable (ID, Name) VALUES
 (90, 'Mon Cala Coral Isles 1 - Northeast'),
 (91, 'Mon Cala Coral Isles 1 - Northwest'),
 (92, 'Mon Cala Coral Isles 1 - Southeast'),
 (93, 'Mon Cala Coral Isles 1 - Southwest'), 
 (94, 'Mon Cala Coral Isles 2 - Northeast'),
 (95, 'Mon Cala Coral Isles 2 - Northwest'),
 (96, 'Mon Cala Coral Isles 2 - Southeast'),
 (97, 'Mon Cala Coral Isles 2 - Southwest'),
 (98, 'Mon Cala Eco Terrorists'),
 (99, 'Mon Cala Fauna'),
 (100, 'Mon Cala AmphiHydrus'),
 (101, 'Mon Cala Eco Terrorist Leader')
 ;

INSERT INTO dbo.LootTableItem (LootTableID, Resref, MaxQuantity, Weight, IsActive,SpawnRule) VALUES
 (90, 'raw_veldite', 1, 5, 1, 'DrillSpawnRule'),
 (90, 'raw_scordspar', 1, 5, 1, 'DrillSpawnRule'),
 (90, 'raw_keromber', 1, 20, 1, 'DrillSpawnRule'),
 (90, 'raw_plagionite', 1, 20, 1, 'DrillSpawnRule'),
 (90, 'raw_jasioclase', 1, 40, 1, 'DrillSpawnRule'),
 (90, 'raw_hemorgite', 1, 40, 1, 'DrillSpawnRule'),
 (90, 'hollinium', 1, 3, 1, ''),
 (90, 'harvino', 1, 3, 1, ''),
 (90, 'stalluchi', 1, 3, 1, ''),
 (90, 'engina', 1, 3, 1, ''),
 (90, 'f_crystal_green', 1, 3, 1, ''),
 (90, 'corylus', 1, 3, 1, ''),
 (90, 'coonlank_green', 1, 3, 1, ''),
 (91, 'raw_veldite', 1, 5, 1, 'DrillSpawnRule'),
 (91, 'raw_scordspar', 1, 5, 1, 'DrillSpawnRule'),
 (91, 'raw_keromber', 1, 20, 1, 'DrillSpawnRule'),
 (91, 'raw_plagionite', 1, 20, 1, 'DrillSpawnRule'),
 (91, 'raw_jasioclase', 1, 40, 1, 'DrillSpawnRule'),
 (91, 'raw_hemorgite', 1, 40, 1, 'DrillSpawnRule'),
 (91, 'hollinium', 1, 3, 1, ''),
 (91, 'harvino', 1, 3, 1, ''),
 (91, 'gorruchi', 1, 3, 1, ''),
 (91, 'fabrino', 1, 3, 1, ''),
 (91, 'f_crystal_yellow', 1, 3, 1, ''),
 (91, 'corylus', 1, 3, 1, ''),
 (91, 'coonlank_yellow', 1, 3, 1, ''),
 (92, 'raw_veldite', 1, 5, 1, 'DrillSpawnRule'),
 (92, 'raw_scordspar', 1, 5, 1, 'DrillSpawnRule'),
 (92, 'raw_keromber', 1, 20, 1, 'DrillSpawnRule'),
 (92, 'raw_plagionite', 1, 20, 1, 'DrillSpawnRule'),
 (92, 'raw_jasioclase', 1, 40, 1, 'DrillSpawnRule'),
 (92, 'raw_hemorgite', 1, 40, 1, 'DrillSpawnRule'),
 (92, 'hollinium', 1, 3, 1, ''),
 (92, 'harvino', 1, 3, 1, ''),
 (92, 'gorruchi', 1, 3, 1, ''),
 (92, 'weevina', 1, 3, 1, ''),
 (92, 'f_crystal_red', 1, 3, 1, ''),
 (92, 'corylus', 1, 3, 1, ''),
 (92, 'coonlank_red', 1, 3, 1, ''),
 (93, 'raw_veldite', 1, 5, 1, 'DrillSpawnRule'),
 (93, 'raw_scordspar', 1, 5, 1, 'DrillSpawnRule'),
 (93, 'raw_keromber', 1, 20, 1, 'DrillSpawnRule'),
 (93, 'raw_plagionite', 1, 20, 1, 'DrillSpawnRule'),
 (93, 'raw_jasioclase', 1, 40, 1, 'DrillSpawnRule'),
 (93, 'raw_hemorgite', 1, 40, 1, 'DrillSpawnRule'),
 (93, 'hollinium', 1, 3, 1, ''),
 (93, 'harvino', 1, 3, 1, ''),
 (93, 'gorruchi', 1, 3, 1, ''),
 (93, 'arvvina', 1, 3, 1, ''),
 (93, 'f_crystal_blue', 1, 3, 1, ''),
 (93, 'porlang', 1, 3, 1, ''),
 (93, 'coonlank_blue', 1, 3, 1, ''),
 (94, 'raw_veldite', 1, 5, 1, 'DrillSpawnRule'),
 (94, 'raw_scordspar', 1, 5, 1, 'DrillSpawnRule'),
 (94, 'raw_keromber', 1, 20, 1, 'DrillSpawnRule'),
 (94, 'raw_plagionite', 1, 20, 1, 'DrillSpawnRule'),
 (94, 'raw_jasioclase', 1, 40, 1, 'DrillSpawnRule'),
 (94, 'raw_hemorgite', 1, 40, 1, 'DrillSpawnRule'),
 (94, 'hollinium', 1, 3, 1, ''),
 (94, 'harvino', 1, 3, 1, ''),
 (94, 'stalluchi', 1, 3, 1, ''),
 (94, 'medcina', 1, 3, 1, ''),
 (94, 'f_crystal_green', 1, 3, 1, ''),
 (94, 'sygium_gem', 1, 3, 1, ''),
 (94, 'coonlank_green', 1, 3, 1, ''),
 (95, 'raw_veldite', 1, 5, 1, 'DrillSpawnRule'),
 (95, 'raw_scordspar', 1, 5, 1, 'DrillSpawnRule'),
 (95, 'raw_keromber', 1, 20, 1, 'DrillSpawnRule'),
 (95, 'raw_plagionite', 1, 20, 1, 'DrillSpawnRule'),
 (95, 'raw_jasioclase', 1, 40, 1, 'DrillSpawnRule'),
 (95, 'raw_hemorgite', 1, 40, 1, 'DrillSpawnRule'),
 (95, 'hollinium', 1, 3, 1, ''),
 (95, 'harvino', 1, 3, 1, ''),
 (95, 'gorruchi', 1, 3, 1, ''),
 (95, 'engina', 1, 3, 1, ''),
 (95, 'f_crystal_yellow', 1, 3, 1, ''),
 (95, 'corylus', 1, 3, 1, ''),
 (95, 'coonlank_yellow', 1, 3, 1, ''),
 (96, 'raw_veldite', 1, 5, 1, 'DrillSpawnRule'),
 (96, 'raw_scordspar', 1, 5, 1, 'DrillSpawnRule'),
 (96, 'raw_keromber', 1, 20, 1, 'DrillSpawnRule'),
 (96, 'raw_plagionite', 1, 20, 1, 'DrillSpawnRule'),
 (96, 'raw_jasioclase', 1, 40, 1, 'DrillSpawnRule'),
 (96, 'raw_hemorgite', 1, 40, 1, 'DrillSpawnRule'),
 (96, 'hollinium', 1, 3, 1, ''),
 (96, 'harvino', 1, 3, 1, ''),
 (96, 'pefoate', 1, 3, 1, ''),
 (96, 'pawisis', 1, 3, 1, ''),
 (96, 'f_crystal_red', 1, 3, 1, ''),
 (96, 'corylus', 1, 3, 1, ''),
 (96, 'coonlank_red', 1, 3, 1, ''),
 (97, 'raw_veldite', 1, 5, 1, 'DrillSpawnRule'),
 (97, 'raw_scordspar', 1, 5, 1, 'DrillSpawnRule'),
 (97, 'raw_keromber', 1, 20, 1, 'DrillSpawnRule'),
 (97, 'raw_plagionite', 1, 20, 1, 'DrillSpawnRule'),
 (97, 'raw_jasioclase', 1, 40, 1, 'DrillSpawnRule'),
 (97, 'raw_hemorgite', 1, 40, 1, 'DrillSpawnRule'),
 (97, 'hollinium', 1, 3, 1, ''),
 (97, 'harvino', 1, 3, 1, ''),
 (97, 'pawisis', 1, 3, 1, ''),
 (97, 'pefoate', 1, 3, 1, ''),
 (97, 'f_crystal_blue', 1, 3, 1, ''),
 (97, 'porlang', 1, 3, 1, ''),
 (97, 'coonlank_blue', 1, 3, 1, ''),
 (98, 'nw_it_gold001', 30, 20, 1, ''), 
 (98, 'nw_it_gold001', 50, 5, 1, ''),
 (98, 'elec_imperfect', 1, 20, 1, ''),
 (98, 'elec_good', 1, 5, 1, ''),
 (99, 'cox_meat', 1, 50, 1, ''),
 (99, 'lth_good', 1, 20, 1, ''),
 (99, 'lth_imperfect', 1, 30, 1, ''),
 (100, 'amphi_brain', 1, 10, 1, ''),
 (100, 'amphi_brain2', 1, 10, 1, ''),
 (101, 'nw_it_gold001', 60, 20, 1, ''), 
 (101, 'nw_it_gold001', 100, 5, 1, ''),
 (101, 'elec_imperfect', 1, 5, 1, ''),
 (101, 'elec_good', 1, 10, 1, ''),
 (101, 'c_cluster_green', 1, 10, 1,''),
 (101, 'ecot_lthr_drop', 1, 1, 1, '') 
 ;

 -- Add spawns for Mon Cala areas.
 INSERT INTO dbo.Spawn(ID, Name, SpawnObjectTypeID) VALUES
 (40, 'Mon Cala Coral Isles', 1),
 (41, 'Mon Cala Eco-Terrorists', 1);

 INSERT INTO dbo.SpawnObject (ID, SpawnID, Resref, Weight, SpawnRule, NPCGroupID, BehaviourDeathVFXID) VALUES
 (100, 40, 'viper', 20, '', NULL, 'SightAggroBehaviour', 0),
 (101, 40, 'mc_aradile', 40, '', NULL, 'SightAggroBehaviour', 0),
 (102, 40, 'mc_amphihydrus', 10, '', NULL, 'DarkForceUser', 0),
 (103, 41, 'ecoterr_1', 50, '', NULL, 'SightAggroBehaviour', 0),
 (104, 41, 'ecoterr_2', 50, '', NULL, 'SightAggroBehaviour', 0);