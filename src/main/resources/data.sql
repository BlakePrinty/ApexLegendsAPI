INSERT INTO legends (name, real_name, age, home_world, legend_class, tactical_name, tactical_description, passive_name, passive_description, ultimate_name, ultimate_description, image_path)
SELECT 'Wraith', 'Renee Hope Blasey', 34, 'Typhon', 'Skirmisher',
       'Into the Void', 'Reposition quickly through the safety of void space, avoiding all damage.',
       'Voices from the Void', 'A voice warns you when danger approaches. As far as you can tell, it''s on your side.',
       'Dimensional Rift', 'Link two locations with portals for 45 seconds, allowing your entire team to use them.',
       '/images/wraith.png'
    WHERE NOT EXISTS (SELECT 1 FROM legends WHERE name = 'Wraith');