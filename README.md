# ⚡ Solo Leveling System — Real-Life Hunter OS

[![Windows](https://img.shields.io/badge/Platform-Windows-0078D6?logo=windows&logoColor=white)](https://microsoft.com)
[![Status](https://img.shields.io/badge/System-Active-00f0ff)](https://github.com)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

> *"The System was never a game. It was a digital womb, engineered to reshape a mortal into the vessel of Death."*

A gamified life-tracking and RPG progression desktop application inspired by the **Solo Leveling** webtoon / anime. Turn your real-world workouts, study sessions, and daily habits into genuine attribute points (`STR`, `AGI`, `VIT`, `INT`, `SEN`), unlock shadow soldiers, and level up your human vessel.

---

## ✨ Features

- **🔥 Real-Life Missions & Quests**:
  - Add custom real-world quests (e.g., Reading, Gym, Coding, Hydration, Meditation).
  - Rewards correspond directly to real-life training:
    - 🔴 **STR (Strength)**: Gym, calisthenics, weights.
    - 🟣 **INT (Intelligence)**: Programming, studying, books.
    - 🟢 **VIT (Vitality)**: 3L water, sleep, healthy diet.
    - 🟡 **AGI (Agility)**: Running, sprinting, cardio.
    - 🔵 **SEN (Sense)**: Meditation, focus, mindfulness.
  - Track quantitative targets (pages, minutes, liters) with interactive step buttons (`+1`, `+5`, `MAX`).
  - Consecutive day streak tracking (`🔥 7-Day Streak`).
  - Difficulty ranks from **Rank E** up to **Rank S**.

- **👑 Holographic Manhwa Interface**:
  - Glowing cyan and Monarch purple aesthetic with subtle scanlines.
  - Built-in Web Audio API sound synthesizer: Level-up fanfare, system chimes, warning alarms, and the deep sub-bass *"일어나라 (ARISE)"* rumble.

- **⚔️ Shadow Extraction Chamber ("ARISE")**:
  - Extract fallen boss souls (Commander Igris, Tank, Iron, Tusk, Beru, Bellion).
  - Authentic 3-attempt extraction roll calculated from your character's `INT` rating vs the target's rank.
  - Command and inspect your extracted shadow army.

- **🏆 Canon Daily Quest & Penalty Zone**:
  - 100 Push-ups, 100 Sit-ups, 100 Squats, and 10km Run.
  - Failing triggers the 4-hour desert survival Penalty Zone against giant centipedes.

- **🏰 Instant Dungeon Gates**:
  - Battle simulations in E-Rank Subway Goblins, B-Rank Frozen Yeti Red Gates, and Floor 100 Demon Castle.
  - Earn dimensional gold and EXP.

- **🖥️ Standalone Windows Desktop App**:
  - Runs in a clean, dedicated desktop window (no browser address bar, no tabs).
  - Windows Action Center toast notifications for quest arrivals and level-ups.
  - 100% offline and persistent via local storage.

---

## 🚀 Quick Start (Windows)

1. Clone or download this repository:
   ```bash
   git clone https://github.com/<YOUR-USERNAME>/solo-leveling-system.git
   cd solo-leveling-system
   ```

2. **Launch Options**:
   - **Desktop Shortcut**: Run `create_desktop_shortcut.ps1` to place a one-click shortcut directly on your Windows Desktop.
   - **Silent Launcher**: Double-click `Solo_Leveling_System.vbs` (runs with no black cmd prompt).
   - **Batch Launcher**: Double-click `Launch_System.bat`.
   - **Python Runner**: Run `python run_app.py`.
   - **Browser Direct**: Double-click `index.html` to open in any web browser.

---

## 🛠️ Tech Stack

- **Frontend**: HTML5, Tailwind CSS, JavaScript (Vanilla ES6+), Web Audio API
- **Desktop Runtime**: Microsoft Edge / Chromium App Mode, VBScript, Python
- **Platform**: Windows 10 / 11

---

## 📜 License

This project is licensed under the MIT License - see the LICENSE file for details.
All Solo Leveling trademarks, lore, and names are the property of Chugong, DUBU (REDICE Studio), and D&C Media.
