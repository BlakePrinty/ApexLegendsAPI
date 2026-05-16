INSERT INTO legends (name, real_name, age, home_world, legend_class, tactical_name, tactical_description, passive_name, passive_description, ultimate_name, ultimate_description, image_path)
SELECT 'Wraith', 'Renee Hope Blasey', 34, 'Typhon', 'Skirmisher',
       'Into the Void', 'Reposition quickly through the safety of void space, avoiding all damage.',
       'Voices from the Void', 'A voice warns you when danger approaches. As far as you can tell, it''s on your side.',
       'Dimensional Rift', 'Link two locations with portals for 45 seconds, allowing your entire team to use them.',
       '/images/wraith.png'
    WHERE NOT EXISTS (SELECT 1 FROM legends WHERE name = 'Wraith');

INSERT INTO legends (name, real_name, age, home_world, legend_class, tactical_name, tactical_description, passive_name, passive_description, ultimate_name, ultimate_description, image_path)
SELECT 'Pathfinder', 'MRVN', 0, 'Unknown', 'Skirmisher',
       'Grappling Hook', 'Grapple to get to out-of-reach places quickly.',
       'Insider Knowledge', 'Scan a survey beacon to reveal the next ring location.',
       'Zipline Gun', 'Create a zipline for everyone to use.',
       '/images/pathfinder.png'
    WHERE NOT EXISTS (SELECT 1 FROM legends WHERE name = 'Pathfinder');

INSERT INTO legends (name, real_name, age, home_world, legend_class, tactical_name, tactical_description, passive_name, passive_description, ultimate_name, ultimate_description, image_path)
SELECT 'Horizon', 'Dr. Mary Somers', 37, 'Olympus', 'Skirmisher',
       'Gravity Lift', 'Reverse the flow of gravity, lifting players upward and boosting them outward when they exit.',
       'Spacewalk', 'Increased air control and reduced fall impact through use of her custom spacesuit.',
       'Black Hole', 'Deploy NEWT to create a micro black hole that sucks in nearby enemies, then explodes.',
       '/images/horizon.png'
    WHERE NOT EXISTS (SELECT 1 FROM legends WHERE name = 'Horizon');

INSERT INTO legends (name, real_name, age, home_world, legend_class, tactical_name, tactical_description, passive_name, passive_description, ultimate_name, ultimate_description, image_path)
SELECT 'Valkyrie', 'Kairi Imahara', 30, 'Angelia', 'Skirmisher',
       'Missile Swarm', 'Fire a swarm of mini-rockets that damage and disorient enemies.',
       'VTOL Jets', 'Hold jump while in the air to use jetpack. Drains fuel, which regenerates on the ground.',
       'Skyward Dive', 'Launch into the sky and skydive. Teammates can interact with Valkyrie to join the dive.',
       '/images/valkyrie.png'
    WHERE NOT EXISTS (SELECT 1 FROM legends WHERE name = 'Valkyrie');

INSERT INTO legends (name, real_name, age, home_world, legend_class, tactical_name, tactical_description, passive_name, passive_description, ultimate_name, ultimate_description, image_path)
SELECT 'Mad Maggie', 'Margaret Kohere', 34, 'Salvo', 'Skirmisher',
       'Riot Drill', 'Fire a drill that burns through cover and deals damage to enemies hiding behind it.',
       'Warlord''s Ire', 'Temporarily highlight enemies you''ve damaged. Move faster with shotguns.',
       'Wrecking Ball', 'Release a ball that drops speed-boosting pads and explodes near enemies.',
       '/images/mad_maggie.png'
    WHERE NOT EXISTS (SELECT 1 FROM legends WHERE name = 'Mad Maggie');

INSERT INTO legends (name, real_name, age, home_world, legend_class, tactical_name, tactical_description, passive_name, passive_description, ultimate_name, ultimate_description, image_path)
SELECT 'Bangalore', 'Anita Williams', 38, 'Gridiron', 'Assault',
       'Smoke Launcher', 'Fire a high-velocity smoke canister that explodes into a smoke wall on impact.',
       'Double Time', 'Taking fire while sprinting makes you move faster for a brief time.',
       'Rolling Thunder', 'Call in an artillery strike that slowly creeps across the landscape.',
       '/images/bangalore.png'
    WHERE NOT EXISTS (SELECT 1 FROM legends WHERE name = 'Bangalore');

INSERT INTO legends (name, real_name, age, home_world, legend_class, tactical_name, tactical_description, passive_name, passive_description, ultimate_name, ultimate_description, image_path)
SELECT 'Octane', 'Octavio Silva', 24, 'Psamathe', 'Assault',
       'Stim', 'Move 30% faster for 6 seconds. Costs health to use.',
       'Swift Mend', 'Automatically restore health over time.',
       'Launch Pad', 'Deploy a jump pad that catapults teammates through the air.',
       '/images/octane.png'
    WHERE NOT EXISTS (SELECT 1 FROM legends WHERE name = 'Octane');

INSERT INTO legends (name, real_name, age, home_world, legend_class, tactical_name, tactical_description, passive_name, passive_description, ultimate_name, ultimate_description, image_path)
SELECT 'Revenant', 'Kaleb Cross', 44, 'Solace', 'Assault',
       'Silence', 'Throw a device that deals damage and disables enemy abilities for 10 seconds.',
       'Stalker', 'Crouch walk faster than other legends and climb walls higher.',
       'Forged Shadows', 'Grow a powerful shroud of Ferro-Fluid that blocks direct damage and regenerates between fights.',
       '/images/revenant.png'
    WHERE NOT EXISTS (SELECT 1 FROM legends WHERE name = 'Revenant');

INSERT INTO legends (name, real_name, age, home_world, legend_class, tactical_name, tactical_description, passive_name, passive_description, ultimate_name, ultimate_description, image_path)
SELECT 'Ash', 'Dr. Ashleigh Reid', 121, 'Psamathe', 'Assault',
       'Arc Snare', 'Throw a spinning snare that damages and tethers the first enemy who gets too close.',
       'Marked for Death', 'Ash''s map shows the location of recent deathboxes and marks surviving attackers.',
       'Phase Breach', 'Tear open a one-way portal to a targeted location.',
       '/images/ash.png'
    WHERE NOT EXISTS (SELECT 1 FROM legends WHERE name = 'Ash');

INSERT INTO legends (name, real_name, age, home_world, legend_class, tactical_name, tactical_description, passive_name, passive_description, ultimate_name, ultimate_description, image_path)
SELECT 'Alter', 'Alter', 34, 'Unknown', 'Assault',
       'Void Passage', 'Create a portal through a wall or surface that both teams can use for a limited time.',
       'Gift from the Rift', 'Once per match, reach into the void to pull out any one item from a deathbox through walls.',
       'Void Nexus', 'Place a Void Anchor that your whole squad can activate from anywhere on the map to return to.',
       '/images/alter.png'
    WHERE NOT EXISTS (SELECT 1 FROM legends WHERE name = 'Alter');

INSERT INTO legends (name, real_name, age, home_world, legend_class, tactical_name, tactical_description, passive_name, passive_description, ultimate_name, ultimate_description, image_path)
SELECT 'Caustic', 'Alexander Nox', 48, 'Gaea', 'Defensive',
       'Nox Gas Trap', 'Place up to 6 canisters that release deadly Nox gas when shot or triggered by enemies.',
       'Nox Vision', 'Ability to see enemies through your own gas.',
       'Nox Gas Grenade', 'Blanket a large area in Nox gas.',
       '/images/caustic.png'
    WHERE NOT EXISTS (SELECT 1 FROM legends WHERE name = 'Caustic');

INSERT INTO legends (name, real_name, age, home_world, legend_class, tactical_name, tactical_description, passive_name, passive_description, ultimate_name, ultimate_description, image_path)
SELECT 'Wattson', 'Natalie Paquette', 22, 'Kings Canyon', 'Defensive',
       'Perimeter Security', 'Create electrified fences by connecting nodes. Damages and slows enemies.',
       'Spark of Genius', 'Ultimate Accelerants fully charge your Ultimate Ability. Standing near Interception Pylons boosts your tactical recharge rate.',
       'Interception Pylon', 'Place an electrified pylon that destroys incoming ordnance and repairs damaged shields for as long as it is active.',
       '/images/wattson.png'
    WHERE NOT EXISTS (SELECT 1 FROM legends WHERE name = 'Wattson');

INSERT INTO legends (name, real_name, age, home_world, legend_class, tactical_name, tactical_description, passive_name, passive_description, ultimate_name, ultimate_description, image_path)
SELECT 'Rampart', 'Ramya Parekh', 21, 'Gaea', 'Defensive',
       'Amped Cover', 'Build a crouch-cover wall that amplifies outgoing shots and blocks incoming shots when fully deployed.',
       'Modded Loader', 'Increased magazine capacity and faster reload when using LMGs and the Minigun.',
       'Emplaced Minigun', 'Place a mounted Minigun that you and your teammates can use.',
       '/images/rampart.png'
    WHERE NOT EXISTS (SELECT 1 FROM legends WHERE name = 'Rampart');

INSERT INTO legends (name, real_name, age, home_world, legend_class, tactical_name, tactical_description, passive_name, passive_description, ultimate_name, ultimate_description, image_path)
SELECT 'Newcastle', 'Jackson Williams', 48, 'Gridiron', 'Defensive',
       'Mobile Shield', 'Throw and control a drone that generates a moving energy shield.',
       'Retrieve the Wounded', 'Drag downed allies as you revive them. The revive shield has extra health.',
       'Castle Wall', 'Leap to an ally or targeted location. On landing, create a fortified stronghold.',
       '/images/newcastle.png'
    WHERE NOT EXISTS (SELECT 1 FROM legends WHERE name = 'Newcastle');

INSERT INTO legends (name, real_name, age, home_world, legend_class, tactical_name, tactical_description, passive_name, passive_description, ultimate_name, ultimate_description, image_path)
SELECT 'Lifeline', 'Ajay Che', 24, 'Psamathe', 'Support',
       'D.O.C. Heal Drone', 'The Drone of Compassion automatically heals nearby teammates over time.',
       'Combat Medic', 'Revive teammates faster while protected by a shield wall. Healing items are used faster.',
       'Care Package', 'Call in a drop pod full of high-quality defensive gear.',
       '/images/lifeline.png'
    WHERE NOT EXISTS (SELECT 1 FROM legends WHERE name = 'Lifeline');

INSERT INTO legends (name, real_name, age, home_world, legend_class, tactical_name, tactical_description, passive_name, passive_description, ultimate_name, ultimate_description, image_path)
SELECT 'Loba', 'Loba Andrade', 34, 'Unknown', 'Support',
       'Burglar''s Best Friend', 'Teleport to hard-to-reach places or escape danger quickly by throwing your Jump Drive bracelet.',
       'Eye for Quality', 'Nearby Epic and Legendary loot can be seen through walls. The same goes for your teammates.',
       'Black Market Boutique', 'Place a portable device that allows you and your teammates to teleport nearby ammo and items to your inventory.',
       '/images/loba.png'
    WHERE NOT EXISTS (SELECT 1 FROM legends WHERE name = 'Loba');

INSERT INTO legends (name, real_name, age, home_world, legend_class, tactical_name, tactical_description, passive_name, passive_description, ultimate_name, ultimate_description, image_path)
SELECT 'Conduit', 'Rowenna Maxwell', 26, 'Cleo', 'Support',
       'Radiant Transfer', 'Temporarily sacrifice your own shield recharge to rapidly restore a teammate''s shields.',
       'Savior''s Speed', 'Gain a temporary speed boost when moving toward badly wounded teammates.',
       'Energy Barricade', 'Deploy a set of shield jammers that damage and slow enemies who pass through them.',
       '/images/conduit.png'
    WHERE NOT EXISTS (SELECT 1 FROM legends WHERE name = 'Conduit');

INSERT INTO legends (name, real_name, age, home_world, legend_class, tactical_name, tactical_description, passive_name, passive_description, ultimate_name, ultimate_description, image_path)
SELECT 'Bloodhound', 'Unknown', 0, 'Unknown', 'Recon',
       'Eye of the Allfather', 'Briefly reveal enemies, traps, and clues throughout all structures in front of you.',
       'Tracker', 'Foes leave behind clues that only Bloodhound can see.',
       'Beast of the Hunt', 'Transform into the ultimate hunter. Enhances your senses, allowing you to see cold tracks and move faster.',
       '/images/bloodhound.png'
    WHERE NOT EXISTS (SELECT 1 FROM legends WHERE name = 'Bloodhound');

INSERT INTO legends (name, real_name, age, home_world, legend_class, tactical_name, tactical_description, passive_name, passive_description, ultimate_name, ultimate_description, image_path)
SELECT 'Crypto', 'Tae Joon Park', 31, 'Suotamo', 'Recon',
       'Surveillance Drone', 'Deploy an aerial drone. Enemy structures and traps within 30m of the drone are revealed.',
       'Neurolink', 'Crypto and his teammates see what his Surveillance Drone detects up to 30m away.',
       'Drone EMP', 'Charge up an EMP blast from your drone. Deals damage to shields, slows enemies, and disables traps.',
       '/images/crypto.png'
    WHERE NOT EXISTS (SELECT 1 FROM legends WHERE name = 'Crypto');

INSERT INTO legends (name, real_name, age, home_world, legend_class, tactical_name, tactical_description, passive_name, passive_description, ultimate_name, ultimate_description, image_path)
SELECT 'Seer', 'Obi Edolasim', 26, 'Boreas', 'Recon',
       'Focus of Attention', 'Summon micro-drones to emit a focused blast that goes through walls and reveals enemies.',
       'Heart Seeker', 'Hear and visualize the heartbeats of nearby enemies when aiming down sights.',
       'Exhibit', 'Create a sphere of micro-drones that reveals enemies moving quickly or firing their weapons within.',
       '/images/seer.png'
    WHERE NOT EXISTS (SELECT 1 FROM legends WHERE name = 'Seer');

INSERT INTO legends (name, real_name, age, home_world, legend_class, tactical_name, tactical_description, passive_name, passive_description, ultimate_name, ultimate_description, image_path)
SELECT 'Vantage', 'Mara Helan', 18, 'Pagos', 'Recon',
       'Spotter''s Lens', 'Send out your bat companion Echo to a targeted location, then launch off Echo.',
       'Bullet Drop Indicator', 'See bullet drop information in your reticle when aiming down sights.',
       'Sniper''s Mark', 'Use a custom sniper rifle to mark enemies for your team. Marked enemies take bonus damage.',
       '/images/vantage.png'
    WHERE NOT EXISTS (SELECT 1 FROM legends WHERE name = 'Vantage');