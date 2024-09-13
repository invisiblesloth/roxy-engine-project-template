### Version 0.1.1 - 13-Sep 2024

- **.gitignore Enhancements:**
  - Updated `.gitignore` to include common IDE and editor files (e.g., `.vscode/`, `.nova/`, `.idea/`, etc.) to prevent unintentional inclusion of these files in the repository.
  - Added `support/` directory to `.gitignore` to exclude local project-specific notes, ensuring they remain untracked.

- **License File Correction:**
  - Removed markdown formatting (`/**bold/**`) from the `LICENSE` file to maintain proper plaintext formatting.

- **README.md Improvements:**
  - **Sponsorship & Support Section:**
  - Added a new "Sponsorship & Support" section to inform users about ways to support the project through GitHub Sponsors and itch.io. Emphasized that contributions are entirely voluntary and that the project remains free under the MIT License.
  - **Nova IDE Instructions Update:**
  - Updated the "Getting the Template on Your Local Machine > Cloning the Repository > Via Nova" section to include instructions on how to set up the Playdate Simulator task. This ensures the C code is built before the Lua code, preventing `nil` reference errors in Lua scripts.

These updates focus on improving the repository's documentation and configuration files to enhance the developer experience and prevent common issues during project setup.

### Version 0.1.0 - 12-Sep-2024

- **Initial Release of the Roxy Engine Project Template**
  - This template serves as the starting point for creating projects with **Roxy Engine**, providing an example folder structure, basic scenes, and build configurations.
  
- **Example Files Included**:
  - `main.lua`: Demonstrates how to initialize **Roxy Engine**, register scenes, and customize the configuration for a game.
  - Two example scenes: Showcase scene transitions, input handling, and the use of **RoxyMenu** to create a simple menu.
  - `CMake` and `Makefile` files: Serve as templates for building projects with **Roxy Engine**. These files need to be customized based on your game’s name and specific project requirements.

- **Git Submodule Setup**:
  - **Roxy Engine** is included as a Git submodule to allow independent updates and management of the game engine within the project structure.

- **Versioning**:
  - This release marks the initial version of the template, and future updates will focus on maintaining compatibility with **Roxy Engine**.