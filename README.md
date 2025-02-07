1. [Disclaimer](#disclaimer)  
2. [About](#About)  
    2.1. [Related Discussions](#related-discussions)  
3. [Mechanics](#mechanics)  
    3.1. [Double Attack](#double-attack)  
    3.2. [Thrash](#thrash)
4. [Research](#research)
5. [Missing Zone Data](#missing-zone-data)
6. [Triple Attack creature list](#creatures-with-triple-attack-25175)  
7. [Double Attack creature list](#creatures-with-double-attack-19818-19817-19194-18943-18941)  
8. [Thrash creature list](#creatures-with-thrash-3391-3417-8876-12787)
   


## Disclaimer
---
Following are lists of filtered data for creatures possessing hidden extra attack spells based on parsed packet sniffs from Classic 2019 that do not exist elsewhere. There may be additional creatures with these abilities that are not included in this list, as they have not been found by a sniff yet.

This research only covers Classic Era creatures, examples like Morogrim (TBC) and Ignis (Wrath) will not be covered here.

## About
---
some bosses have a thrash or double attack chance, it will have just been unnoticeable with batching, now we can actually see it clearly.

Blizzard Official Statement
https://us.forums.blizzard.com/en/wow/t/wow-classic-era-%E2%80%9Cnot-a-bug%E2%80%9D-list-updated-april-22-2021/175887
```
Some monsters have a “Thrash” mechanic and can proc multiple attacks against players in a very short duration.
Note: Most of these monsters can also “store” these procs and unleash them all several seconds later.
 An example of this is the Princess Theradras encounter in Maraudon.
The Princess will store her attacks if kited and can land several attacks instantly when she catches up to her target. This behavior is consistent with the reference client
```


Researching "[Thrash](https://wowpedia.fandom.com/wiki/Thrash_(proc))" for my addon ([Classic Thrash Tracker](https://www.curseforge.com/wow/addons/classic-thrash-tracker)) during Unofficial Hardcore revealed other extra attack abilities. I wasn't able to dig deeper into it at the time and publish due to other priorities. But now that Classic is back, I've revisited my unfinished research for others to contribute or use as a precaution and uploaded it to GitHub.
    
### Related Discussions
This comment ([By Patriot-Bigglesworth on WoW US Forums](https://us.forums.blizzard.com/en/wow/t/do-raid-bosses-have-windfury-now/945984/2)) highlights the change perfectly, with the 400ms spell batching removed extra attack mechanics have become more noticable as spikes in tank damage increased.

```
You may be on to something… but it’s also an ability bosses have had since MC.
This is the spell used by Sapphiron: wowhead /spell=19818/double-attack

What looks like is happening, when comparing to Sapphiron’s DPS parse logs from before the batching change
is that double attack previously had a ~400ms delay between the two hits, and now it’s much much closer than that.

00:00:34.399 Sapphiron Melee Optimist 2427
00:00:34.808 Sapphiron Melee Optimist Dodge

00:00:20.214 Sapphiron Melee Optimist 2541
00:00:20.637 Sapphiron Melee Optimist Miss

00:00:28.372 Sapphiron Melee Ewarlia 2167
00:00:28.822 Sapphiron Melee Ewarlia Parry

00:01:17.361 Sapphiron Melee Ewarlia 3376 Crushing
00:01:17.789 Sapphiron Melee Ewarlia Dodge

00:01:41.258 Sapphiron Melee Ewarlia 2312 (B: 132)
00:01:41.665 Sapphiron Melee Ewarlia Miss

00:02:02.364 Sapphiron Melee Ewarlia 2455 (B: 132)
00:02:02.763 Sapphiron Melee Ewarlia Dodge

00:03:12.122 Sapphiron Melee Ewarlia 3546 Crushing
00:03:12.511 Sapphiron Melee Ewarlia Dodge

Analyzing Sapphirons attacks pre-patch, rarely are two attacks ever landing in a very close window.
Double Attack is a lot more consistent with the small batching window, based on logs. Logs above are /reports/2GqVLfamQkbZCgJH
/reports/HjrK9TxfC37QWtB
/reports/JxZdPrDCLvKjYzhy

It turns out Sapphiron got buffed as a result of the small batching window, and probably other bosses with Double Attack or proc spells, thrash, and things of that nature.
While not outright seal-twisting and using the abilities from two different phases at once, it does appear tanks should expect to take burst damage in narrower windows of time from bosses.
Sapphiron wont be the only boss parsing 100’s on tanks with the batching change.
```

This comment ([By Bigboy-Executus on WoW US Forums](https://us.forums.blizzard.com/en/wow/t/do-raid-bosses-have-windfury-now/945984/3)) highlights nowhere else had data about Double Attack.
```
I don’t see this ability listed under Sapphirons ability list on wowhead.
I also don’t see Cleave listed so who knows what other abilities are not listed.

I also don’t see anything linking any of the “Double Attack” abilties I can find on wowhead to any specific mob or any mob at all in fact.
Do you have any good source for thinking that Sapphiron has a chance of a “Double Attack”?
```

<details>
<summary>Other Discussions</summary>

- [Bosses attacking multiple times in a single game tick](https://us.forums.blizzard.com/en/wow/t/bosses-attacking-multiple-times-in-a-single-game-tick/950010)
- [Do raid bosses have Windfury now?](https://us.forums.blizzard.com/en/wow/t/do-raid-bosses-have-windfury-now/945984)
- [Maexxna and Sapphiron double attack hidden ability](https://us.forums.blizzard.com/en/wow/t/maexxna-and-sapphiron-double-attack-hidden-ability/946089)
- [Mobs damaging 3 times in one hit](https://us.forums.blizzard.com/en/wow/t/mobs-damaging-3-times-in-one-hit/317090)
- [Need help, anyone else dealing with double melee?](https://www.reddit.com/r/classicwowtbc/comments/pxo4hb/need_help_anyone_else_dealing_with_double_melee/)
- [Do raid bosses have Wind Fury now?](https://www.reddit.com/r/classicwow/comments/mwlvtd/do_raid_bosses_have_wind_fury_now/)
- [Possible bug, Sapphiron did an unprecedented](https://www.reddit.com/r/classicwow/comments/z3xenj/possible_bug_sapphiron_did_an_unprecedented/)
- [Classic Era Twin Emp Veknilash Thrash ability](https://us.forums.blizzard.com/en/wow/t/classic-era-twin-emp-veknilash-thrash-ability/1719134)
- [How to not get oneshotted on Twins?](https://www.reddit.com/r/classicwow/comments/joiawa/how_to_not_get_oneshotted_on_twins/?rdt=32881)

</details>





## Mechanics
---
```In the context of vanilla/classic WoW an extra attack is not really an additional attack, but instead when you gain an extra attack the game finishes your swing timer immediately so you swing right away and the swing timer resets. This behavior extends to on-next-swing attacks since they follow your swing timer; when you have e.g. Heroic Strike queued and you use an instant attack like Bloodthirst which procs Windfury the Heroic Strike happens immediately instead of an 'extra' white hit assuming you had enough rage for it when the proc occurred.```

_**For in-depth information about extra attack mechanics see [this wiki entry](https://github.com/magey/classic-warrior/wiki/Windfury-Totem) by Magey.**_

### [Double Attack](https://www.wowhead.com/classic/spell=18941/double-attack)
suspect both Double Attack and Triple Attack share the same mechanics. 
DOUBLE ATTACK
19194 = 100% proc 3 cd
18943 = 50% proc 3 cd
19818 = 25% proc 3 cd
19817 = 10% proc 3 cd
- Doesn't proc if the hit is fully absorb.

18941 TRIGGER SPELL
### [Thrash](https://www.wowhead.com/classic/spell=3391/thrash)
**Thrash Mechanics:**
- Stacks up to 2.
- Stores procs until instance or server reset.

From personal observations while testing I suspect ID 12787 doesn't proc unless the creature melees and cannot be 
8876 -15% proc 4 cd
3417 - 10% proc 4 cd

3391 TRIGGER SPELL

12787 =  melee version
 if creature has 3391 sniff found only procced spell 

 based on that id 12xxx doesn't proc if the creature doesn't melee/being kited I can assume it would also behave like a standard Double Attack and won't proc if the hit is absorbed. 

## Research
---


## Missing Zone Data
Following are zones missing from the packet sniff.

---
| Map Name | 
| --- | 
| <unused> Monastery | 
| <unused>StormwindPrison | 
| Azshara Crater | 
| CashTest | 
| Caverns of Time | 
| Collin's Test | 
| Development Land | 
| Emerald Dream | 
| Gnomeregan | 
| Horde PVP Barracks | 
| Scott Test | 
| Testing | 


## Creatures with Triple Attack (25175)
---
| name | id | auras | level | zone | proc_chance | ppm | 
| --- | ---: | --- | ---: | --- | --- | --- | 
| Anubisath Swarmguard | 15538 | 25175 | 62 | Ruins of Ahn'Qiraj | ? | ? | 
| Anubisath Swarmguard | 15538 | 25175 | 62 | Ahn'Qiraj Temple | ? | ? | 
| Qiraji Swarmguard | 15343 | 25175 | 61 | Ruins of Ahn'Qiraj | ? | ? | 
| Swarmguard Needler | 15344 | 25175 | 61 | Ruins of Ahn'Qiraj | ? | ? | 


## Creatures with Double Attack (19818, 19817, 19194, 18943, 18941)
---
| name | id | auras | level | zone | proc_chance | ppm | 
| --- | ---: | --- | ---: | --- | --- | --- | 
| Lava Annihilator | 11665 | 19194 19195 | 62 | Molten Core | 100 | 20.00 | 
| Lava Annihilator | 11665 | 19194 19195 | 61 | Molten Core | 100 | 20.00 | 
| Anub'Rekhan | 15956 | 18943 | 63 | Naxxramas | 50 | 10.00 | 
| Emissary Roman'khan | 14862 | 18943 | 63 | Kalimdor | 50 | 10.00 | 
| Emperor Vek'nilash | 15275 | 18943 | 63 | Ahn'Qiraj Temple | 50 | 10.00 | 
| General Rajaxx | 15341 | 18943 | 63 | Ruins of Ahn'Qiraj | 50 | 10.00 | 
| General Rajaxx | 15341 | 18943 | 63 | Kalimdor | 50 | 10.00 | 
| Golemagg the Incinerator | 11988 | 18943 20556 13879 | 63 | Molten Core | 50 | 10.00 | 
| Highlord Leoric Von Zeldig | 15868 | 18943 | 63 | Kalimdor | 50 | 10.00 | 
| Molten Destroyer | 11659 | 18943 | 63 | Molten Core | 50 | 10.00 | 
| Molten Giant | 11658 | 18943 | 62 | Molten Core | 50 | 10.00 | 
| Necro Stalker | 16453 | 18943 | 61 | Naxxramas | 50 | 10.00 | 
| Razorgore the Untamed | 12435 | 18943 | 63 | Blackwing Lair | 50 | 10.00 | 
| Shade of Taerar | 15302 | 18943 | 63 | Kalimdor | 50 | 10.00 | 
| Venom Stalker | 15976 | 18943 | 61 | Naxxramas | 50 | 10.00 | 
| Death Talon Wyrmguard | 12460 | 19818 | 63 | Blackwing Lair | 25 | 5.00 | 
| Emeriss | 14889 | 19818 25041 | 63 | Eastern Kingdoms | 25 | 5.00 | 
| Emeriss | 14889 | 19818 25041 | 63 | Kalimdor | 25 | 5.00 | 
| Felguard Elite | 8717 | 19818 | 61 | Eastern Kingdoms | 25 | 5.00 | 
| Gluth | 15932 | 19818 | 63 | Naxxramas | 25 | 5.00 | 
| Gordok Brute | 11441 | 19818 | 58 | Dire Maul | 25 | 5.00 | 
| Gordok Brute | 11441 | 19818 | 57 | Dire Maul | 25 | 5.00 | 
| High Marshal Whirlaxis | 15204 | 19818 | 63 | Kalimdor | 25 | 5.00 | 
| Lethon | 14888 | 19818 25041 | 63 | Eastern Kingdoms | 25 | 5.00 | 
| Maexxna | 15952 | 19818 | 63 | Naxxramas | 25 | 5.00 | 
| Obsidian Destroyer | 15338 | 19818 | 61 | Ruins of Ahn'Qiraj | 25 | 5.00 | 
| Obsidian Eradicator | 15262 | 19818 | 60 | Ahn'Qiraj Temple | 25 | 5.00 | 
| Obsidian Nullifier | 15312 | 19818 | 61 | Ahn'Qiraj Temple | 25 | 5.00 | 
| Red Dragonspawn | 1045 | 19818 | 58 | Eastern Kingdoms | 25 | 5.00 | 
| Red Dragonspawn | 1045 | 19818 | 57 | Eastern Kingdoms | 25 | 5.00 | 
| Sapphiron | 15989 | 19818 | 63 | Naxxramas | 25 | 5.00 | 
| Taerar | 14890 | 19818 25041 | 63 | Kalimdor | 25 | 5.00 | 
| Ysondre | 14887 | 19818 25041 | 63 | Eastern Kingdoms | 25 | 5.00 | 
| Cursed Centaur | 11688 | 19817 | 43 | Kalimdor | 10 | 2.00 | 
| Moam | 15340 | 18941 | 63 | Ruins of Ahn'Qiraj | ? | ? | 
| Nefarian | 11583 | 18941 | 63 | Blackwing Lair | ? | ? | 
| Ouro | 15517 | 18941 | 63 | Ahn'Qiraj Temple | ? | ? | 

## Creatures with Thrash (3391, 3417, 8876, 12787)
---
| name | id | auras | level | zone | proc_chance | ppm | 
| --- | ---: | --- | ---: | --- | --- | --- | 
| Jekyll Flandring | 13219 | 12787 | 58 | Eastern Kingdoms | 35 | 5.25 | 
| Lava Reaver | 12100 | 12787 | 63 | Molten Core | 35 | 5.25 | 
| Lava Reaver | 12100 | 12787 | 62 | Molten Core | 35 | 5.25 | 
| Manahound | 8718 | 12787 | 60 | Eastern Kingdoms | 35 | 5.25 | 
| Thanthaldis Snowgleam | 13217 | 12787 | 58 | Eastern Kingdoms | 35 | 5.25 | 
| Timmy the Cruel | 10808 | 12787 | 58 | Stratholme | 35 | 5.25 | 
| Twilight Corrupter | 15625 | 12787 | 63 | Eastern Kingdoms | 35 | 5.25 | 
| Comar Villard | 5683 | 8876 | 22 | Eastern Kingdoms | 15 | 2.25 | 
| Constrictor Vine | 12220 | 8876 | 46 | Maraudon | 15 | 2.25 | 
| Constrictor Vine | 12220 | 8876 | 45 | Maraudon | 15 | 2.25 | 
| Crazed Owlbeast | 7452 | 8876 | 57 | Kalimdor | 15 | 2.25 | 
| Crazed Owlbeast | 7452 | 8876 | 56 | Kalimdor | 15 | 2.25 | 
| Deadwind Brute | 7369 | 8876 | 56 | Eastern Kingdoms | 15 | 2.25 | 
| Deadwind Brute | 7369 | 8876 | 55 | Eastern Kingdoms | 15 | 2.25 | 
| Deep Borer | 11789 | 8876 | 48 | Maraudon | 15 | 2.25 | 
| Deep Borer | 11789 | 8876 | 47 | Maraudon | 15 | 2.25 | 
| Deep Borer | 11789 | 8876 | 46 | Maraudon | 15 | 2.25 | 
| Diseased Flayer | 8532 | 8876 12539 | 59 | Eastern Kingdoms | 15 | 2.25 | 
| Diseased Flayer | 8532 | 8876 12539 | 58 | Eastern Kingdoms | 15 | 2.25 | 
| Elder Diemetradon | 9164 | 8876 | 55 | Kalimdor | 15 | 2.25 | 
| Elder Diemetradon | 9164 | 8876 | 54 | Kalimdor | 15 | 2.25 | 
| Firesworn | 12099 | 8876 15733 | 60 | Molten Core | 15 | 2.25 | 
| Firesworn | 12099 | 8876 | 60 | Molten Core | 15 | 2.25 | 
| Fleshflayer Ghoul | 10407 | 8876 18950 | 60 | Stratholme | 15 | 2.25 | 
| Fleshflayer Ghoul | 10407 | 8876 18950 | 59 | Stratholme | 15 | 2.25 | 
| Frenzied Pterrordax | 9167 | 8876 | 54 | Kalimdor | 15 | 2.25 | 
| Frenzied Pterrordax | 9167 | 8876 | 53 | Kalimdor | 15 | 2.25 | 
| Frenzied Pterrordax | 9167 | 8876 | 52 | Kalimdor | 15 | 2.25 | 
| Hederine Manastalker | 7462 | 8876 | 60 | Kalimdor | 15 | 2.25 | 
| Hederine Manastalker | 7462 | 8876 | 59 | Kalimdor | 15 | 2.25 | 
| Kirith the Damned | 7728 | 8876 | 55 | Eastern Kingdoms | 15 | 2.25 | 
| Maws | 15571 | 8876 | 63 | Kalimdor | 15 | 2.25 | 
| Ograbisi | 9677 | 8876 | 55 | Blackrock Depths | 15 | 2.25 | 
| Patchwork Horror | 10414 | 8876 | 58 | Stratholme | 15 | 2.25 | 
| Patchwork Horror | 10414 | 8876 | 57 | Stratholme | 15 | 2.25 | 
| Rabid Shardtooth | 7446 | 8876 | 60 | Kalimdor | 15 | 2.25 | 
| Rabid Shardtooth | 7446 | 8876 | 59 | Kalimdor | 15 | 2.25 | 
| Ravasaur Matriarch | 6581 | 8876 | 50 | Kalimdor | 15 | 2.25 | 
| Soulflayer | 11359 | 8876 | 61 | Zul'Gurub | 15 | 2.25 | 
| Twilight's Hammer Executioner | 9398 | 8876 | 56 | Blackrock Depths | 15 | 2.25 | 
| Twilight's Hammer Executioner | 9398 | 8876 | 55 | Blackrock Depths | 15 | 2.25 | 
| Verek | 9042 | 8876 | 55 | Blackrock Depths | 15 | 2.25 | 
| Warpwood Stomper | 11465 | 8876 | 58 | Dire Maul | 15 | 2.25 | 
| Warpwood Stomper | 11465 | 8876 | 57 | Dire Maul | 15 | 2.25 | 
| Ambershard Destroyer | 11782 | 3417 | 43 | Kalimdor | 10 | 1.50 | 
| Ambershard Destroyer | 11782 | 3417 | 42 | Kalimdor | 10 | 1.50 | 
| Anvilrage Warden | 8890 | 3417 | 50 | Eastern Kingdoms | 10 | 1.50 | 
| Anvilrage Warden | 8890 | 3417 | 50 | Blackrock Depths | 10 | 1.50 | 
| Anvilrage Warden | 8890 | 3417 | 49 | Eastern Kingdoms | 10 | 1.50 | 
| Anvilrage Warden | 8890 | 3417 | 49 | Blackrock Depths | 10 | 1.50 | 
| Besseleth | 11921 | 3417 | 21 | Kalimdor | 10 | 1.50 | 
| Bile Spewer | 10416 | 3417 | 60 | Stratholme | 10 | 1.50 | 
| Bile Spewer | 10416 | 3417 | 59 | Stratholme | 10 | 1.50 | 
| Boulderfist Mauler | 2569 | 3417 | 38 | Eastern Kingdoms | 10 | 1.50 | 
| Boulderfist Mauler | 2569 | 3417 | 37 | Eastern Kingdoms | 10 | 1.50 | 
| Dark Adept | 8546 | 3417 | 59 | Eastern Kingdoms | 10 | 1.50 | 
| Dark Adept | 8546 | 3417 | 58 | Eastern Kingdoms | 10 | 1.50 | 
| Defias Knuckleduster | 449 | 3417 | 17 | Eastern Kingdoms | 10 | 1.50 | 
| Defias Knuckleduster | 449 | 3417 | 16 | Eastern Kingdoms | 10 | 1.50 | 
| Deviate Ravager | 3636 | 3417 | 19 | Wailing Caverns | 10 | 1.50 | 
| Deviate Ravager | 3636 | 3417 | 18 | Wailing Caverns | 10 | 1.50 | 
| Fireguard Destroyer | 8911 | 3417 | 56 | Blackrock Depths | 10 | 1.50 | 
| Fireguard Destroyer | 8911 | 3417 | 55 | Blackrock Depths | 10 | 1.50 | 
| Fireguard Destroyer | 8911 | 3417 | 54 | Blackrock Depths | 10 | 1.50 | 
| Gesharahan | 3398 | 3417 | 20 | Kalimdor | 10 | 1.50 | 
| Gor'tesh | 9176 | 3417 | 54 | Eastern Kingdoms | 10 | 1.50 | 
| Grawmug | 1205 | 3417 | 17 | Eastern Kingdoms | 10 | 1.50 | 
| Grol the Destroyer | 7665 | 3417 | 58 | Eastern Kingdoms | 10 | 1.50 | 
| Gruff Swiftbite | 100 | 3417 | 12 | Eastern Kingdoms | 10 | 1.50 | 
| Hammered Patron | 9554 | 3417 14869 | 52 | Blackrock Depths | 10 | 1.50 | 
| Hammered Patron | 9554 | 3417 14869 | 51 | Blackrock Depths | 10 | 1.50 | 
| Hammered Patron | 9554 | 3417 14869 | 50 | Blackrock Depths | 10 | 1.50 | 
| Hammered Patron | 9554 | 3417 14869 | 49 | Blackrock Depths | 10 | 1.50 | 
| Hammered Patron | 9554 | 3417 14869 | 48 | Blackrock Depths | 10 | 1.50 | 
| Hammerspine | 1119 | 3417 | 12 | Eastern Kingdoms | 10 | 1.50 | 
| Jaguero Stalker | 2522 | 3417 | 60 | Eastern Kingdoms | 10 | 1.50 | 
| Jaguero Stalker | 2522 | 3417 | 60 | Kalimdor | 10 | 1.50 | 
| Jaguero Stalker | 2522 | 3417 | 60 | Alterac Valley | 10 | 1.50 | 
| Jaguero Stalker | 2522 | 3417 | 57 | Eastern Kingdoms | 10 | 1.50 | 
| Jaguero Stalker | 2522 | 3417 | 56 | Kalimdor | 10 | 1.50 | 
| Jaguero Stalker | 2522 | 3417 | 55 | Eastern Kingdoms | 10 | 1.50 | 
| Jaguero Stalker | 2522 | 3417 | 51 | Alterac Valley | 10 | 1.50 | 
| Jaguero Stalker | 2522 | 3417 | 50 | Eastern Kingdoms | 10 | 1.50 | 
| Loch Crocolisk | 1693 | 3417 | 15 | Eastern Kingdoms | 10 | 1.50 | 
| Loch Crocolisk | 1693 | 3417 | 14 | Eastern Kingdoms | 10 | 1.50 | 
| Mystlash Flayer | 3722 | 3417 | 21 | Kalimdor | 10 | 1.50 | 
| Mystlash Flayer | 3722 | 3417 | 20 | Kalimdor | 10 | 1.50 | 
| Nessy | 10942 | 3417 | 62 | Deeprun Tram | 10 | 1.50 | 
| Obsidion | 8400 | 3417 | 52 | Eastern Kingdoms | 10 | 1.50 | 
| Plague Ravager | 8520 | 3417 16563 | 56 | Eastern Kingdoms | 10 | 1.50 | 
| Plague Ravager | 8520 | 3417 16563 | 55 | Eastern Kingdoms | 10 | 1.50 | 
| Ravasaur Runner | 6506 | 3417 | 50 | Kalimdor | 10 | 1.50 | 
| Ravasaur Runner | 6506 | 3417 | 49 | Kalimdor | 10 | 1.50 | 
| Redridge Thrasher | 712 | 3417 | 15 | Eastern Kingdoms | 10 | 1.50 | 
| Redridge Thrasher | 712 | 3417 | 14 | Eastern Kingdoms | 10 | 1.50 | 
| Sandfury Speaker | 11387 | 3417 | 61 | Zul'Gurub | 10 | 1.50 | 
| Slark | 519 | 3417 | 15 | Eastern Kingdoms | 10 | 1.50 | 
| Trigore the Lasher | 3652 | 3417 | 19 | Kalimdor | 10 | 1.50 | 
| Young Threshadon | 1224 | 3417 | 20 | Eastern Kingdoms | 10 | 1.50 | 
| Young Threshadon | 1224 | 3417 | 19 | Eastern Kingdoms | 10 | 1.50 | 
| Atal'ai Mistress | 14882 | 3391 | 60 | Zul'Gurub | ? | ? | 
| Ayamiss the Hunter | 15369 | 3391 | 63 | Ruins of Ahn'Qiraj | ? | ? | 
| Bael'dun Officer | 3378 | 3391 | 26 | Kalimdor | ? | ? | 
| Bloodfury Roguefeather | 4023 | 3391 | 26 | Kalimdor | ? | ? | 
| Bloodfury Roguefeather | 4023 | 3391 | 25 | Kalimdor | ? | ? | 
| Centipaar Sandreaver | 5460 | 3391 | 50 | Kalimdor | ? | ? | 
| Centipaar Sandreaver | 5460 | 3391 | 49 | Kalimdor | ? | ? | 
| Centipaar Stinger | 5456 | 3391 | 49 | Kalimdor | ? | ? | 
| Centipaar Stinger | 5456 | 3391 | 48 | Kalimdor | ? | ? | 
| Centipaar Swarmer | 5457 | 3391 | 50 | Kalimdor | ? | ? | 
| Centipaar Swarmer | 5457 | 3391 | 49 | Kalimdor | ? | ? | 
| Centipaar Tunneler | 5459 | 3391 | 48 | Kalimdor | ? | ? | 
| Centipaar Tunneler | 5459 | 3391 | 47 | Kalimdor | ? | ? | 
| Centipaar Wasp | 5455 | 3391 | 48 | Kalimdor | ? | ? | 
| Centipaar Wasp | 5455 | 3391 | 47 | Kalimdor | ? | ? | 
| Centipaar Worker | 5458 | 3391 | 49 | Kalimdor | ? | ? | 
| Centipaar Worker | 5458 | 3391 | 48 | Kalimdor | ? | ? | 
| Crimson Monk | 11043 | 3391 | 60 | Stratholme | ? | ? | 
| Crimson Monk | 11043 | 3391 | 59 | Stratholme | ? | ? | 
| Crimson Monk | 11043 | 3391 | 58 | Stratholme | ? | ? | 
| Dreadmaul Mauler | 5977 | 3391 | 54 | Eastern Kingdoms | ? | ? | 
| Dreadmaul Mauler | 5977 | 3391 | 53 | Eastern Kingdoms | ? | ? | 
| Dustbelcher Mauler | 2717 | 3391 | 42 | Eastern Kingdoms | ? | ? | 
| Dustbelcher Mauler | 2717 | 3391 | 41 | Eastern Kingdoms | ? | ? | 
| Ebonroc | 14601 | 3391 | 63 | Blackwing Lair | ? | ? | 
| Edwin VanCleef | 639 | 3391 | 21 | Deadmines | ? | ? | 
| Farmer Dalson | 10836 | 3391 | 56 | Eastern Kingdoms | ? | ? | 
| Felpaw Ravager | 8961 | 3391 | 57 | Eastern Kingdoms | ? | ? | 
| Felpaw Ravager | 8961 | 3391 | 52 | Kalimdor | ? | ? | 
| Felpaw Ravager | 8961 | 3391 | 51 | Kalimdor | ? | ? | 
| Feral Crag Coyote | 2728 | 3391 | 60 | Naxxramas | ? | ? | 
| Feral Crag Coyote | 2728 | 3391 | 38 | Eastern Kingdoms | ? | ? | 
| Feral Crag Coyote | 2728 | 3391 | 37 | Eastern Kingdoms | ? | ? | 
| Ferocitas the Dream Eater | 7234 | 3391 | 8 | Kalimdor | ? | ? | 
| Fireguard Destroyer | 8911 | 3391 | 56 | Blackrock Depths | ? | ? | 
| Fireguard Destroyer | 8911 | 3391 | 55 | Blackrock Depths | ? | ? | 
| Fireguard Destroyer | 8911 | 3391 | 54 | Blackrock Depths | ? | ? | 
| Firemaw | 11983 | 3391 | 63 | Blackwing Lair | ? | ? | 
| Firesworn | 12099 | 3391 | 60 | Molten Core | ? | ? | 
| Flamegor | 11981 | 3391 | 63 | Blackwing Lair | ? | ? | 
| Flamekin Sprite | 9777 | 3391 | 53 | Eastern Kingdoms | ? | ? | 
| Flamekin Sprite | 9777 | 3391 | 52 | Eastern Kingdoms | ? | ? | 
| Flamekin Sprite | 9777 | 3391 | 51 | Eastern Kingdoms | ? | ? | 
| Flesh Hunter | 15335 | 3391 | 62 | Ruins of Ahn'Qiraj | ? | ? | 
| Foulweald Den Watcher | 3746 | 3391 | 25 | Kalimdor | ? | ? | 
| Foulweald Den Watcher | 3746 | 3391 | 24 | Kalimdor | ? | ? | 
| Frostwolf Bloodhound | 14282 | 3391 | 54 | Alterac Valley | ? | ? | 
| Frostwolf Bloodhound | 14282 | 3391 | 53 | Alterac Valley | ? | ? | 
| Gahz'ranka | 15114 | 3391 | 63 | Zul'Gurub | ? | ? | 
| Giant Claw Tentacle | 15728 | 3391 | 60 | Ahn'Qiraj Temple | ? | ? | 
| Gordok Mauler | 11442 | 3391 | 54 | Kalimdor | ? | ? | 
| Gordok Mauler | 11442 | 3391 | 53 | Kalimdor | ? | ? | 
| Gordunni Mauler | 5234 | 3391 | 44 | Kalimdor | ? | ? | 
| Gordunni Mauler | 5234 | 3391 | 43 | Kalimdor | ? | ? | 
| Great Wavethrasher | 6349 | 3391 | 54 | Kalimdor | ? | ? | 
| Great Wavethrasher | 6349 | 3391 | 53 | Kalimdor | ? | ? | 
| Gurubashi Bat Rider | 14750 | 3391 | 61 | Zul'Gurub | ? | ? | 
| Halycon | 10220 | 3391 | 59 | Blackrock Spire | ? | ? | 
| Harb Foulmountain | 14426 | 3391 | 27 | Kalimdor | ? | ? | 
| High Priest Venoxis | 14507 | 3391 | 63 | Zul'Gurub | ? | ? | 
| High Priestess Arlokk | 14515 | 3391 | 63 | Zul'Gurub | ? | ? | 
| High Priestess Mar'li | 14510 | 3391 | 63 | Zul'Gurub | ? | ? | 
| Highland Thrasher | 2560 | 3391 | 34 | Eastern Kingdoms | ? | ? | 
| Highland Thrasher | 2560 | 3391 | 33 | Eastern Kingdoms | ? | ? | 
| Kolkar Mauler | 4634 | 3391 | 32 | Kalimdor | ? | ? | 
| Kolkar Mauler | 4634 | 3391 | 31 | Kalimdor | ? | ? | 
| Kurinnaxx | 15348 | 3391 | 63 | Ruins of Ahn'Qiraj | ? | ? | 
| Lava Reaver | 12100 | 3391 | 63 | Molten Core | ? | ? | 
| Lava Reaver | 12100 | 3391 | 62 | Molten Core | ? | ? | 
| Lord Kri | 15511 | 3391 | 63 | Ahn'Qiraj Temple | ? | ? | 
| Lord Skwol | 15305 | 3391 | 63 | Kalimdor | ? | ? | 
| Magram Mauler | 4645 | 3391 | 36 | Kalimdor | ? | ? | 
| Magram Mauler | 4645 | 3391 | 35 | Kalimdor | ? | ? | 
| Maraudine Mauler | 4656 | 3391 | 39 | Kalimdor | ? | ? | 
| Maraudine Mauler | 4656 | 3391 | 38 | Kalimdor | ? | ? | 
| Moonkin | 10158 | 3391 | 13 | Kalimdor | ? | ? | 
| Moonkin | 10158 | 3391 | 12 | Kalimdor | ? | ? | 
| Mr. Smite | 646 | 3391 | 20 | Deadmines | ? | ? | 
| Northspring Roguefeather | 5363 | 3391 | 49 | Kalimdor | ? | ? | 
| Northspring Roguefeather | 5363 | 3391 | 48 | Kalimdor | ? | ? | 
| Ohgan | 14988 | 3391 | 60 | Zul'Gurub | ? | ? | 
| Prince Tortheldrin | 11486 | 3391 | 61 | Dire Maul | ? | ? | 
| Princess Theradras | 12201 | 3391 | 51 | Maraudon | ? | ? | 
| Putridus Trickster | 11791 | 3391 | 45 | Maraudon | ? | ? | 
| Putridus Trickster | 11791 | 3391 | 44 | Maraudon | ? | ? | 
| Rage Talon Dragonspawn | 9096 | 3391 | 59 | Blackrock Spire | ? | ? | 
| Rage Talon Dragonspawn | 9096 | 3391 | 58 | Blackrock Spire | ? | ? | 
| Raging Reef Crawler | 2236 | 3391 | 21 | Kalimdor | ? | ? | 
| Raging Reef Crawler | 2236 | 3391 | 20 | Kalimdor | ? | ? | 
| Razormane Pathfinder | 3456 | 3391 | 21 | Kalimdor | ? | ? | 
| Razormane Pathfinder | 3456 | 3391 | 20 | Kalimdor | ? | ? | 
| Razzashi Adder | 11372 | 3391 | 60 | Zul'Gurub | ? | ? | 
| Razzashi Raptor | 14821 | 3391 | 60 | Zul'Gurub | ? | ? | 
| Razzashi Raptor | 14821 | 3391 | 60 | Kalimdor | ? | ? | 
| Renataki | 15084 | 3391 | 63 | Zul'Gurub | ? | ? | 
| Risen Construct | 10488 | 3391 | 61 | Scholomance | ? | ? | 
| Risen Construct | 10488 | 3391 | 60 | Scholomance | ? | ? | 
| Risen Construct | 10488 | 3391 | 59 | Scholomance | ? | ? | 
| Risen Construct | 10488 | 3391 | 58 | Scholomance | ? | ? | 
| Riverpaw Outrunner | 478 | 3391 | 10 | Eastern Kingdoms | ? | ? | 
| Riverpaw Outrunner | 478 | 3391 | 9 | Eastern Kingdoms | ? | ? | 
| Rotting Worm | 10925 | 3391 | 50 | Eastern Kingdoms | ? | ? | 
| Sandfury Guardian | 7268 | 3391 | 46 | Zul'Farrak | ? | ? | 
| Sandfury Guardian | 7268 | 3391 | 45 | Zul'Farrak | ? | ? | 
| Scarlet Avenger | 4493 | 3391 | 57 | Eastern Kingdoms | ? | ? | 
| Scarlet Avenger | 4493 | 3391 | 56 | Eastern Kingdoms | ? | ? | 
| Scarlet Monk | 4540 | 3391 | 36 | Scarlet Monastery | ? | ? | 
| Scarlet Monk | 4540 | 3391 | 35 | Scarlet Monastery | ? | ? | 
| Shade of Eranikus | 5709 | 3391 | 55 | Sunken Temple | ? | ? | 
| Shadowsworn Thug | 6005 | 3391 | 53 | Eastern Kingdoms | ? | ? | 
| Shadowsworn Thug | 6005 | 3391 | 52 | Eastern Kingdoms | ? | ? | 
| Skeletal Flayer | 1783 | 3391 | 51 | Eastern Kingdoms | ? | ? | 
| Skeletal Flayer | 1783 | 3391 | 50 | Eastern Kingdoms | ? | ? | 
| Skullsplitter Hunter | 669 | 3391 | 42 | Eastern Kingdoms | ? | ? | 
| Skullsplitter Hunter | 669 | 3391 | 41 | Eastern Kingdoms | ? | ? | 
| Slavering Ghoul | 1791 | 3391 | 52 | Eastern Kingdoms | ? | ? | 
| Slavering Ghoul | 1791 | 3391 | 51 | Eastern Kingdoms | ? | ? | 
| Slavering Ghoul | 1791 | 3391 | 50 | Eastern Kingdoms | ? | ? | 
| Smolderthorn Axe Thrower | 9267 | 3391 | 56 | Blackrock Spire | ? | ? | 
| Smolderthorn Axe Thrower | 9267 | 3391 | 55 | Blackrock Spire | ? | ? | 
| Son of Hakkar | 11357 | 3391 | 60 | Zul'Gurub | ? | ? | 
| Son of Hakkar | 11357 | 3391 | 60 | Eastern Kingdoms | ? | ? | 
| Son of Hakkar | 11357 | 3391 | 60 | Kalimdor | ? | ? | 
| Son of Hakkar | 11357 | 3391 | 60 | Blackwing Lair | ? | ? | 
| Son of Hakkar | 11357 | 3391 | 60 | Alterac Valley | ? | ? | 
| Son of Hakkar | 11357 | 3391 | 60 | Scholomance | ? | ? | 
| Son of Hakkar | 11357 | 3391 | 60 | Ahn'Qiraj Temple | ? | ? | 
| Son of Hakkar | 11357 | 3391 | 60 | Molten Core | ? | ? | 
| Son of Hakkar | 11357 | 3391 | 60 | Naxxramas | ? | ? | 
| Stonelash Flayer | 11737 | 3391 | 60 | Kalimdor | ? | ? | 
| Stonelash Flayer | 11737 | 3391 | 58 | Kalimdor | ? | ? | 
| Stonelash Flayer | 11737 | 3391 | 57 | Kalimdor | ? | ? | 
| Stonevault Brawler | 4855 | 3391 | 44 | Uldaman | ? | ? | 
| Stonevault Brawler | 4855 | 3391 | 43 | Uldaman | ? | ? | 
| Stonevault Mauler | 7320 | 3391 | 45 | Uldaman | ? | ? | 
| Stonevault Mauler | 7320 | 3391 | 44 | Uldaman | ? | ? | 
| Stormpike Owl | 14283 | 3391 | 54 | Alterac Valley | ? | ? | 
| Stormpike Owl | 14283 | 3391 | 53 | Alterac Valley | ? | ? | 
| Strashaz Hydra | 4374 | 3391 | 61 | Kalimdor | ? | ? | 
| Strashaz Hydra | 4374 | 3391 | 60 | Kalimdor | ? | ? | 
| Strashaz Hydra | 4374 | 3391 | 59 | Kalimdor | ? | ? | 
| Sul'lithuz Broodling | 8138 | 3391 | 39 | Zul'Farrak | ? | ? | 
| Sunscale Scytheclaw | 3256 | 3391 | 42 | Kalimdor | ? | ? | 
| Sunscale Scytheclaw | 3256 | 3391 | 28 | Kalimdor | ? | ? | 
| Sunscale Scytheclaw | 3256 | 3391 | 24 | Kalimdor | ? | ? | 
| Sunscale Scytheclaw | 3256 | 3391 | 22 | Kalimdor | ? | ? | 
| Sunscale Scytheclaw | 3256 | 3391 | 22 | Eastern Kingdoms | ? | ? | 
| Sunscale Scytheclaw | 3256 | 3391 | 19 | Kalimdor | ? | ? | 
| Sunscale Scytheclaw | 3256 | 3391 | 18 | Kalimdor | ? | ? | 
| Sunscale Scytheclaw | 3256 | 3391 | 17 | Kalimdor | ? | ? | 
| Sunscale Scytheclaw | 3256 | 3391 | 16 | Kalimdor | ? | ? | 
| Targorr the Dread | 1696 | 3391 | 24 | Stormwind Stockade | ? | ? | 
| Taskmaster Snivvle | 11677 | 3391 | 58 | Alterac Valley | ? | ? | 
| Thessala Hydra | 12207 | 3391 | 47 | Maraudon | ? | ? | 
| Thessala Hydra | 12207 | 3391 | 46 | Maraudon | ? | ? | 
| Tunnel Rat Kobold | 1202 | 3391 | 12 | Eastern Kingdoms | ? | ? | 
| Tunnel Rat Kobold | 1202 | 3391 | 11 | Eastern Kingdoms | ? | ? | 
| Unholy Swords | 16216 | 3391 | 61 | Naxxramas | ? | ? | 
| Unliving Atal'ai | 5267 | 3391 | 49 | Sunken Temple | ? | ? | 
| Unliving Atal'ai | 5267 | 3391 | 48 | Sunken Temple | ? | ? | 
| Vilebranch Raiding Wolf | 2681 | 3391 | 60 | Molten Core | ? | ? | 
| Vilebranch Raiding Wolf | 2681 | 3391 | 60 | Eastern Kingdoms | ? | ? | 
| Vilebranch Raiding Wolf | 2681 | 3391 | 60 | Kalimdor | ? | ? | 
| Vilebranch Raiding Wolf | 2681 | 3391 | 60 | Alterac Valley | ? | ? | 
| Vilebranch Raiding Wolf | 2681 | 3391 | 58 | Kalimdor | ? | ? | 
| Vilebranch Raiding Wolf | 2681 | 3391 | 58 | Eastern Kingdoms | ? | ? | 
| Vilebranch Raiding Wolf | 2681 | 3391 | 57 | Kalimdor | ? | ? | 
| Vilebranch Raiding Wolf | 2681 | 3391 | 55 | Eastern Kingdoms | ? | ? | 
| Vilebranch Raiding Wolf | 2681 | 3391 | 54 | Kalimdor | ? | ? | 
| Vilebranch Raiding Wolf | 2681 | 3391 | 53 | Eastern Kingdoms | ? | ? | 
| Vilebranch Raiding Wolf | 2681 | 3391 | 51 | Eastern Kingdoms | ? | ? | 
| Vilebranch Raiding Wolf | 2681 | 3391 | 50 | Eastern Kingdoms | ? | ? | 
| Vorsha the Lasher | 12940 | 3391 | 22 | Kalimdor | ? | ? | 
| War Master Voone | 9237 | 3391 | 59 | Blackrock Spire | ? | ? | 
| War Reaver | 7039 | 3391 | 55 | Eastern Kingdoms | ? | ? | 
| War Reaver | 7039 | 3391 | 54 | Eastern Kingdoms | ? | ? | 
| War Reaver | 7039 | 3391 | 53 | Eastern Kingdoms | ? | ? | 
| Warpwood Shredder | 7101 | 3391 | 54 | Kalimdor | ? | ? | 
| Warpwood Shredder | 7101 | 3391 | 53 | Kalimdor | ? | ? | 
| Wavethrasher | 6348 | 3391 | 53 | Kalimdor | ? | ? | 
| Wavethrasher | 6348 | 3391 | 52 | Kalimdor | ? | ? | 
| Wildpaw Gnoll | 10991 | 3391 | 53 | Alterac Valley | ? | ? | 
| Wildpaw Gnoll | 10991 | 3391 | 52 | Alterac Valley | ? | ? | 
| Zulian Prowler | 15101 | 3391 | 60 | Zul'Gurub | ? | ? | 
