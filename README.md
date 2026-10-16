# 🌟 Vanilla Enriched

[![GitHub Repository](https://img.shields.io/badge/GitHub-RobssJR%2FVanillaEnriched-blue?logo=github)](https://github.com/RobssJR/VanillaEnriched)
![Minecraft Version](https://img.shields.io/badge/Minecraft-1.21%2B%20%2F%2026.3-brightgreen)
![Datapack Type](https://img.shields.io/badge/Type-Vanilla%20Datapack-blue)
![Dependencies](https://img.shields.io/badge/Dependencies-None%20(Pure%20Vanilla)-orange)
![Pure Survival](https://img.shields.io/badge/Commands%20Required-0%20(Pure%20Survival)-success)

**Vanilla Enriched** is a modular, high-performance survival enhancement datapack. It brings modern Quality of Life (QoL) features, immersive navigation HUDs, customizable decorative player heads, dynamic invisible item frames, holographic wall clocks, territory discovery titles, utility companions, and equipment stat-trak tracking to your world — **100% vanilla, pure survival, with zero commands or mods required!**

---

## 📑 Table of Contents

- [🚀 Quick Start & Installation](#-quick-start--installation)
- [📖 Step-by-Step Feature Tutorials](#-step-by-step-feature-tutorials)
  - [1. 👤 Custom Decorative Player Heads](#1--custom-decorative-player-heads)
  - [2. 🖼️ Enchanted Invisible Item Frames](#2-️-enchanted-invisible-item-frames)
  - [3. 🕒 Pocket Clock & Holographic Wall Clocks](#3--pocket-clock--holographic-wall-clocks)
  - [4. 🧭 Compass HUD & Lodestone Waypoints](#4--compass-hud--lodestone-waypoints)
  - [5. 🎨 Anvil Colors & Chroma Text Formatting](#5--anvil-colors--chroma-text-formatting)
  - [6. 🚩 Banner Territories & Area Discovery](#6--banner-territories--area-discovery)
  - [7. 🐾 Petting Companions ("Pet Love")](#7--petting-companions-pet-love)
  - [8. 🪙 Coin Flip](#8--coin-flip)
  - [9. 🧊 Sulfur Cube Utility & Archetypes](#9--sulfur-cube-utility--archetypes)
  - [10. 🔥 Thermal Sponge Drying](#10--thermal-sponge-drying)
  - [11. ⚔️ Unique Renamed Tools & Weapons (Stat-Trak Lore)](#11-️-unique-renamed-tools--weapons-stat-trak-lore)
- [❓ Frequently Asked Questions (FAQ) & Troubleshooting](#-frequently-asked-questions-faq--troubleshooting)
- [🛠️ Architecture & File Structure](#️-architecture--file-structure)
- [📄 License](#-license)

---

## 🚀 Quick Start & Installation

### Singleplayer:
1. Download or clone this repository from [GitHub](https://github.com/RobssJR/VanillaEnriched).
2. Locate your Minecraft world directory:
   ```text
   %appdata%/.minecraft/saves/<YOUR_WORLD>/datapacks/
   ```
3. Place the `VanillaEnriched` folder directly into `datapacks/`.
4. Enter your world and run `/reload` in the chat.
5. You will see the green confirmation banner:
   ```text
   [Vanilla Enriched] Systems Successfully Loaded!
   ```

### Multiplayer / Dedicated Server:
1. Place the folder into the server root's `world/datapacks/` directory.
2. Run `/reload` in the server console or in-game (as OP).

---

## 📖 Step-by-Step Feature Tutorials

---

### 1. 👤 Custom Decorative Player Heads

Craft blank decorative skulls in survival and transform them into **any player's skin** or decorative mini-blocks using an anvil or lectern!

#### 🛠️ Crafting Recipe (Shaped):
Place **8x Leather** surrounding **1x Carved Pumpkin** in a Crafting Table:

```text
[ Leather ]  [ Leather        ]  [ Leather ]
[ Leather ]  [ Carved Pumpkin ]  [ Leather ]  ──>  1x Decorative Player Head
[ Leather ]  [ Leather        ]  [ Leather ]
```

> **Result:** A `Decorative Player Head` item with the lore:  
> *"Rename this to any player to get their head!"*

#### 🔨 How to Transform Heads:

##### Option A: Player Nicknames & MHF Heads (via Anvil)
1. Place the crafted `Decorative Player Head` into the left slot of an **Anvil**.
2. In the rename text box, type any valid player username (e.g. `Notch`, `Dinnerbone`, `RobssJR`) or MHF account name.
3. Take the head out of the anvil output slot (costs 1 XP level).
4. **Boom!** The skull instantly transforms into that player's genuine skin!

##### Option B: Sculpting Custom Heads from Manual (Lectern)
For custom heads that do **not** have a player username (such as decorative pots, logs, furniture, food, mini-blocks, etc.):

1. **The Mold:** Craft blank decorative heads (8 Leather surrounding 1 Carved Pumpkin).
2. **The Manual:** Open a **Book and Quill** (or signed book):
   - **Page 1:** Paste the Base64 **Value** copied from [minecraft-heads.com](https://minecraft-heads.com/) (starts with `eyJ0...`).
   - **Page 2 (Optional):** Type the display name for the head (e.g. `Burn Pot`, `Poplar Log`).
3. **The Workstation:** Place the book onto a **Lectern**.
4. **The Sculpting:** Hold the blank head in your hand and **right-click the Lectern** (as if consulting the guide!).
5. **The Magic:** Stonecutting sounds and librarian work particles play, and the blank head in your hand instantly transforms into the custom head with its authentic texture and golden name! The book remains safely on the lectern so you can sculpt as many copies as needed.  
*(Tip: You can also hold the head + book in your hands or drop them together on the ground if sculpting on the go!)*

#### 🎁 Built-in Decorative Block Heads & Presets:
Mojang provides official decorative mini-block heads through Marc's Head Format (MHF) accounts:

| Category | In-Game Anvil Names / IDs |
| :--- | :--- |
| **Blocks & Food** | `MHF_Chest`, `MHF_Cake`, `MHF_TNT`, `MHF_Cactus`, `MHF_Melon`, `MHF_Pumpkin`, `MHF_OakLog` |
| **Monsters & Animals** | `MHF_Blaze`, `MHF_Enderman`, `MHF_Spider`, `MHF_Cow`, `MHF_Pig`, `MHF_Sheep`, `MHF_Chicken` |
| **Direction Arrows** | `MHF_ArrowUp`, `MHF_ArrowDown`, `MHF_ArrowLeft`, `MHF_ArrowRight` |

---

### 2. 🖼️ Enchanted Invisible Item Frames

Display floating items, signs, and tools cleanly on walls, ceilings, and floors without visible wooden borders!

#### 🛠️ Crafting Recipes (Shapeless):
Combine an item frame with a glass pane in any crafting grid:

- **Invisible Item Frame:** `1x Item Frame` + `1x Glass Pane`
- **Invisible Glow Item Frame:** `1x Glow Item Frame` + `1x Glass Pane`

> **Result:** An enchanted item frame with an aqua name (*Invisible Item Frame*) and glowing glint.

#### 💡 How it Works in Survival:
1. **Place the Frame:** When placed empty, the frame remains **visible** with a subtle preview so you can easily see where you placed it.
2. **Insert an Item:** Right-click the frame with any item (sword, tool, clock, map, etc.).  
   The wooden frame **instantly vanishes**, leaving only your item floating seamlessly against the block surface!
3. **Remove the Item:** Left-click/punch the item out. The frame becomes **visible again** so you never lose track of it.
4. **Break the Frame:** Breaking the frame drops the original enchanted `Invisible Item Frame` back into your inventory.

---

### 3. 🕒 Pocket Clock & Holographic Wall Clocks

Functional timekeeping for daily survival and atmospheric base decoration.

#### ⏱️ Pocket Clock HUD:
- Hold a standard **Clock** in your **mainhand** or **offhand**.
- **Sneak (Hold Shift):** An actionbar readout displays the current in-game time, calendar day, season, and world year:
  ```text
  [Clock] 14:35 • Day 12 of Spring, Year 1
  ```
- Automatically handles 4 in-game seasons (Spring, Summer, Autumn, Winter) calibrated to the Minecraft daylight cycle.

#### 🕰️ Holographic Wall Clock:
1. Place any **Item Frame** or **Glow Item Frame** onto a wall.
2. Right-click the frame with a **Clock**.
3. A clean holographic display automatically spawns right above the frame showing the real-time 24-hour clock (e.g. `12:00`, `18:45`).
4. Removing the clock or breaking the frame immediately removes the holographic text entity cleanly.

---

### 4. 🧭 Compass HUD & Lodestone Waypoints

Immersive navigation without needing to open the bulky F3 debug screen.

#### 🧭 Pocket Compass HUD:
- Hold a **Compass** (or **Lodestone Compass**) in your **mainhand** or **offhand**.
- **Sneak (Hold Shift):** The actionbar reveals your current position, facing direction, and distance to your target:
  - **Standard Compass (Red):** Points to the World/Bed Spawn point.
    ```text
    [Compass] X: 142 | Z: -350 • Northwest (NW) • Spawn: 378m
    ```
  - **Lodestone Compass (Purple):** Points to your bound Lodestone.
    ```text
    [Compass] X: 142 | Z: -350 • South (S) • Target: 1,240m
    ```
- **8 Cardinal Directions:** Automatically tracks `North (N)`, `Northeast (NE)`, `East (E)`, `Southeast (SE)`, `South (S)`, `Southwest (SW)`, `West (W)`, and `Northwest (NW)`.

#### 📌 Automatic Lodestone Lore:
- Right-click any Lodestone with a compass to bind it.
- Vanilla Enriched automatically embeds custom item lore on the compass displaying the target's exact `X`, `Y`, `Z` coordinates and destination dimension!

---

### 5. 🎨 Anvil Colors & Chroma Text Formatting

Add vibrant colors, styles, and animated rainbow formatting to item names right inside the vanilla Anvil using the `&` symbol!

#### 🎨 Formatting Code Reference:

| Code | Color / Style | Code | Color / Style |
| :---: | :--- | :---: | :--- |
| `&0` | Black | `&8` | Dark Gray |
| `&1` | Dark Blue | `&9` | Blue |
| `&2` | Dark Green | `&a` | Light Green |
| `&3` | Dark Aqua | `&b` | Aqua / Cyan |
| `&4` | Dark Red | `&c` | Red |
| `&5` | Dark Purple | `&d` | Light Purple / Pink |
| `&6` | Gold / Orange | `&e` | Yellow |
| `&7` | Gray | `&f` | White |
| `&l` | **Bold** | `&n` | <u>Underline</u> |
| `&o` | *Italic* | `&m` | ~~Strikethrough~~ |
| `&k` | Obfuscated (Magic) | `&r` | Reset format |
| `&z` | 🌈 **Animated Rainbow / Chroma** | `&&` | Literal `&` character |

#### 📝 Examples:
- `&6&lLegendary Sword` ──> **Legendary Sword** (Bold Gold)
- `&bFrost &3Walker` ──> Frost Walker (Aqua & Dark Aqua)
- `&zCosmic Bow` ──> Animated cycling rainbow colors!

---

### 6. 🚩 Banner Territories & Area Discovery

Create clean territory boundaries for your bases, villages, farms, and shops without complex land-claim mods.

#### 🗺️ How to Mark a Region:
1. Rename any **Banner** in an anvil with your area name (e.g. `Dragon's Peak`, `Ironwood Village`).
2. Place the banner onto the ground or wall at your location.
3. An invisible area marker is registered automatically.
4. When any player enters within a **40-block radius** of the banner, a discovery fanfare appears on screen:
   - **Title (Gold):** `Dragon's Peak`
   - **Subtitle (Yellow):** `Area Discovered`
   - Accompanied by level-up audio feedback.

---

### 7. 🐾 Petting Companions ("Pet Love")

Show affection to your canine and feline companions in survival without opening menus or needing commands!

#### 💖 How it Works:
1. Approach any **Wolf** or **Cat** with an **empty main hand** (`weapon.mainhand`).
2. **Right-click** on the animal to pet them.
3. **Immersive Feedback:**
   - **Wolves:** Play the satisfied panting sound (`entity.wolf.pant`).
   - **Cats:** Play a cozy purring sound (`entity.cat.purr`).
   - Both display animated **Heart particles** (`minecraft:heart`) above their head!
4. **Zero Impact on Survival:** Holding food, bones, or weapons will perform normal taming, breeding, or sitting interactions instead.

---

### 8. 🪙 Coin Flip

Settle disputes, wager bets, or make decisions with a fun coin toss using a gold nugget!

#### 💰 How it Works:
1. Hold a **Gold Nugget** (`minecraft:gold_nugget`).
2. **Crouch (Shift)** and drop the nugget (`Q` while sneaking).
3. **The Toss:**
   - A spinning coin sound plays in the air (`block.chain.place` pitch 1.8).
   - The gold nugget is safely returned directly to your inventory (never lost or duplicated).
   - An announcement in gold and yellow text is broadcast to all players within 15 blocks:
     `[Coin] Player flipped a coin and got HEADS!` or `TAILS!`

---

### 9. 🧊 Sulfur Cube Utility & Archetypes

The **Sulfur Cube** (*Minecraft 26.3*) is an interactive companion mob that can ingest blocks and items dropped near it, gaining unique survival utilities and atmospheric effects based on what it eats.

#### 🧲 How to Use:
1. **Feeding:** Drop an item or block on the ground in front of a Sulfur Cube. The cube will ingest it and visibly display it inside its body.
2. **Transporting:** Transport cubes using a water bucket (`sulfur_cube_bucket`) or lead them with a standard Lead.
3. **Retrieving Items:** Right-click the cube with **Shears** at any time to safely retrieve the ingested item.

#### 📋 Cube Archetypes & Behaviors:
- **🧽 Sponge / Wet Sponge (Living Ocean Vacuum):**
  - Actively drains water in a 5x5x5 to 7x3x7 area around it while swimming.
  - Can absorb up to ~250 water blocks before saturating into a Wet Sponge and dripping water.
- **🔥 Magma Block (Thermal Vaporizer):**
  - Emits dense steam clouds and boiling heat.
  - Automatically dries adjacent Wet Sponge Cubes within a 6-block radius back into dry sponges instantly.
- **❄️ Packed Ice / Blue Ice (Mist Machine & Frost Walker):**
  - Freezes water directly beneath it into Frosted Ice as it glides.
  - Extinguishes nearby fire and cools surface lava.
  - Periodically emits subtle cold mist particles and snowflakes for atmospheric builds.
- **🔮 Amethyst Block (Amethyst Resonance):**
  - Emits delicate purple sparkles and plays a gentle, ambient chime every 3 seconds.
- **🌿 Moss Block (Botanical Filter):**
  - Releases delicate green spores, cherry blossom petals, and soft leaf-rustling sounds.
- **🌵 Cactus (Trash Incinerator & Defense Spikes):**
  - Instantly destroys and incinerates any dropped items that touch it (acts as a mobile trash bin).
  - Deals authentic cactus prick damage to mobs and players upon contact.

---

### 10. 🔥 Thermal Sponge Drying

Dry wet sponges instantly in the Overworld without needing furnaces or traveling to the Nether! When exposed to the thermal heat of a **Magma Block** (`minecraft:magma_block`), moisture is vaporized on contact.

#### ♨️ How it Works:
1. **Placing a Wet Sponge:** Placing a **Wet Sponge** (`minecraft:wet_sponge`) adjacent to any face or edge of a **Magma Block** instantly vaporizes the water, reverting it into a dry **Sponge** (`minecraft:sponge`).
2. **Placing a Magma Block:** Placing a **Magma Block** adjacent to already-placed wet sponges instantly dries all connected wet sponges within contact radius simultaneously.
3. **Visual & Audio Feedback:** Produces dense steam puffs (`cloud`), black smoke, steam hiss sounds (`block.fire.extinguish`), and crackling effects.
4. **Fast Drying Stations:** Build magma block countertops or floor grids to dry dozens of sponges in seconds simply by placing and breaking them!

---

### 11. ⚔️ Unique Renamed Tools & Weapons (Stat-Trak Lore)

Transform ordinary equipment into legendary artifacts that record your survival journey. When a tool or weapon is **renamed on an Anvil**, it awakens and begins tracking your deeds directly in its lore!

#### 🛠️ How it Works:
1. **The Baptism (Anvil):** Take any tool or weapon to an Anvil and give it a custom name (e.g. *"Earthshaker"*, *"Nightfall"*, or with anvil colors like `"&6Excalibur"`).
2. **Awakening:** The first time you hold the renamed item in your main hand, a crisp smithing chime plays (`block.smithing_table.use`) with copper particles (`wax_off`), initializing its statistics lore with `0`.
3. **Stat-Trak Lore Formatting (All Supported Tools):**
   - **Mining Tools (Pickaxes, Shovels, Hoes):** Tracks total blocks broken.
     > `✦ Blocks Broken: 1420` *(Gold & Yellow)*
   - **Weapons (Swords, Mace, Trident, Bow, Crossbow):** Tracks total mobs & players slain.
     > `✦ Enemies Slain: 254` *(Red & Gold)*
   - **Axes (Dual Tool & Weapon):** Tracks **both** blocks harvested and enemies defeated simultaneously!
     > `✦ Blocks Broken: 850`  
     > `✦ Enemies Slain: 42`
   - **Shears:** Tracks times sheared (sheep, mooshrooms, bee nests, pumpkins, vines).
     > `✦ Times Sheared: 89` *(Light Purple & Yellow)*
   - **Flint and Steel:** Tracks fires ignited on blocks or creatures.
     > `✦ Fires Lit: 115` *(Gold & Red)*
   - **Brush:** Tracks archaeology blocks brushed (suspicious sand / gravel).
     > `✦ Blocks Brushed: 34` *(Yellow & Gold)*
   - **Fishing Rod:** Tracks items and fish reeled in from bodies of water.
     > `✦ Fish Caught: 67` *(Aqua & Yellow)*
   - **Compass (Lifetime Odometer):** Displays the player's lifetime distance traveled across the entire world (`m` or `km`), dynamically updating as you move.
     > `✦ Distance Traveled: 840 m` or `12.4 km` *(Aqua & Yellow)*
   - **Clock (Lifetime Stopwatch):** Displays the player's total lifetime playtime in the world (`m`, `h m` or `d h m`), smoothly updating every minute while held.
     > `✦ Time Played: 45m`, `3h 20m` or `8d 12h 12m` *(Gold & Yellow)*
4. **Permanent & Portable:** Statistics are stored inside the item's individual `minecraft:custom_data` component. If you store the tool in a chest, trade it, or lend it to a friend, its lifetime record remains etched forever into the item.
5. **Smooth Action Protection:** Includes a smart debounce algorithm while continuously mining or moving so your hand never bobs or resets during rapid mining, and clocks update on quiet intervals without animation interruptions.

---

## ❓ Frequently Asked Questions (FAQ) & Troubleshooting

<details>
<summary><b>Q: Do players need to type any commands or opt-in?</b></summary>
<p>
<b>No!</b> Vanilla Enriched is completely command-free for players. All statistics, transformations, crafting recipes, and HUDs work 100% through normal survival gameplay.
</p>
</details>

<details>
<summary><b>Q: Do other players need to install any mod or resource pack to see these features?</b></summary>
<p>
<b>No!</b> Everything is executed using vanilla Minecraft Data Components, display entities, scoreboards, and actionbar JSON text. Zero client-side mods or texture packs are required.
</p>
</details>

<details>
<summary><b>Q: Why didn't my player head skin load immediately?</b></summary>
<p>
Minecraft resolves custom player skull skins by contacting Mojang's session servers. Ensure your server/client has an active internet connection. If testing in offline/cracked mode, custom player skins will default to Steve/Alex unless using custom texture base64 presets.
</p>
</details>

<details>
<summary><b>Q: How do I remove a ghost display entity left by another deleted datapack?</b></summary>
<p>
Stand near the phantom block and run:
<pre><code>/kill @e[type=block_display,distance=..5]
/kill @e[type=item_display,distance=..5]</code></pre>
</p>
</details>

---

## 🛠️ Architecture & File Structure

```text
VanillaEnriched/
├── pack.mcmeta                         # Pack metadata (pack_format: 48 / 26.3)
├── README.md                           # Documentation & Tutorial
└── data/
    ├── minecraft/                      # Vanilla tags (load and tick hooks)
    │   └── tags/function/              # Load and Tick hooks
    └── main/
        ├── advancement/                # Event triggers
        │   ├── items/                  # Item-based advancements
        │   └── mobs/                   # Mob-based advancements
        ├── recipe/                     # Crafting recipes (heads, invisible frames)
        └── function/
            ├── backend/math/           # Sqrt and distance algorithms
            ├── backend/sort/           # Ranking algorithms
            ├── items/                  # Item mechanics & utilities
            │   ├── banner/             # Territory discovery banner system
            │   ├── clock/              # Clock HUD & holographic wall clocks
            │   ├── coin/               # Gold nugget coin flip
            │   ├── colored_names/      # Anvil color & chroma interpreter
            │   ├── compass/            # Compass HUD & 8-way cardinal facing
            │   ├── custom_head/        # Decorative player head sculpting
            │   ├── invisible_frame/    # Dynamic invisible frame logic
            │   ├── sponge_dry/         # Sponge thermal drying system
            │   └── stats/              # Renamed tool & weapon stat-trak tracking system
            ├── mobs/                   # Mob mechanics & companions
            │   ├── pet/                # Companion petting interaction
            │   └── sulfur_cube/        # Sulfur Cube utilities & archetypes
            ├── player/                 # Player interaction routines (sneak)
            └── setup/                  # Global init (load) and main tick loop (tick)
```

---

## 📄 License

This datapack is open-source and free to use, modify, and distribute for personal survival worlds and multiplayer servers. Enjoy building and exploring!
