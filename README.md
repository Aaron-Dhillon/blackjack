# 🃏 Blackjack Game (MATLAB)

This project is a simple Blackjack game built using MATLAB for a final class assignment. It uses the **SimpleGameEngine** to create a basic graphical interface and simulates turn-based play between a human player and a CPU with simple AI logic.

## 📦 Features

- Card dealing, hand value calculation, and win checking
- Basic CPU logic for hitting or standing
- Visual assets for cards and buttons (e.g., `retro_cards.png`, `playAgain.png`, `rules.png`)

## 📁 File Overview

- `blackjack.m` — Main game script
- `dealcard.m` — Handles card distribution
- `checkWin.m` — Determines game outcome
- `findCardVal.m` & `findHandValue.m` — Calculate individual and total hand values
- `checkIfContains.m` — Helper function for gameplay logic
- `playAgain.png`, `retro_cards.png`, `rules.png` — Visual assets for UI

## ▶️ How to Run

1. Open MATLAB.
2. Make sure all files are in the same folder.
3. Set the folder as your current directory in MATLAB.
4. Run the `blackjack.m` file.

> ⚠️ Ensure you have the **SimpleGameEngine** installed and added to your MATLAB path before running the game.

## 📝 Notes

- Created as the final assignment for a MATLAB-based course.
- This project was designed to practice functional decomposition, game logic, and basic AI interaction.

