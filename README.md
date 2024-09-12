# Roxy Engine Project Template

This repository provides an **official template** for creating games using [Roxy Engine](https://github.com/invisiblesloth/roxy-engine). It includes the necessary folder structure, example code, and integrates the **Roxy Engine** as a [submodule](https://github.blog/2016-02-01-working-with-submodules/), allowing you to manage and update your game independently from the engine’s code.

This template was created by the team behind **Roxy Engine**, ensuring it's optimized for seamless integration. Like **Roxy Engine**, this template is in an early **0.x.x pre-release** phase, with ongoing development and planned improvements..

Our goal is to ensure compatibility between the engine and the template, and we will be updating both as they evolve. While we aim to maintain backward compatibility, future updates to **Roxy Engine** may occasionally require template adjustments. When **Roxy Engine** reaches **beta**, this template will follow suit, transitioning into its own beta phase, with a full v1.x.x release planned alongside **Roxy's** official launch.

By using this template, you’ll be able to get started quickly with a Roxy-powered project.

***

## Features

- **Example Folder Structure**: A pre-configured folder structure to help you organize your game’s assets, source code, and libraries to work with Roxy Engine.
- **Example `CMake` and `Makefile` Files**: Pre-configured build files that serve as a template for compiling your project. You'll need to customize these based on your game's name and project-specific requirements.
- **Example `main.lua`**: A fully functional `main.lua` file that demonstrates how to initialize the **Roxy Engine**, register scenes, and launch your game with a customized configuration.
- **Scene Registration and Transitions**: Demonstrates how to set up and use scenes, including transitions between them.
- **Input Handling Demo**: Includes example scenes that demonstrate handling Playdate inputs.
- **`RoxyMenu` Example**: Demonstrates the use of **RoxyMenu** to create a simple, single-column menu for your game.

***

## Setting Up Your Project's Repository

### Setting Up on GitHub

This repository is a [GitHub Template](https://github.blog/2019-06-06-generate-new-repositories-with-repository-templates/), allowing you to quickly create a new repository in your GitHub account, without forking. This saves time and sets up your project with all the necessary files and structure for using **Roxy Engine**.

- Click the "Use this template" button in the upper-right corner of this page and select "Create a new repository."
- Fill out the details of your project on the "Create a new repository" page. You can choose the "Private" option if you prefer your project to be private.

### Cloning or Using Other Hosting Platforms

If you prefer to host your project on another service like BitBucket, GitLab, your own server, or manage a local repository without a remote, you can clone or download this repository directly.

***

## Getting the Template on Your Local Machine

### Cloning the Repository

*Note: If you created a new repository on GitHub in the previous step, replace any references to `https://github.com/invisiblesloth/roxy-engine-project-template` with the URL of your new repository.*

This template uses Roxy Engine as a [git submodule](https://github.blog/2016-02-01-working-with-submodules/), so make sure to include the submodule when cloning. **Otherwise, the `source/libraries/roxy` folder will be empty.**

To ensure the submodule is included, you need to "recurse submodules" when cloning. Some Git clients do this automatically, while others require you to specify it.

Below are instructions for common Git clients, as well as the command line method.

#### Via Fork

[Fork](https://git-fork.com/) is a popular Git client with strong submodule support. **Fork will automatically recurse submodules** when you clone a repository.

- Go to `File > Clone...`
- Enter the repository URL and other details, then press "Clone."

#### Via Visual Studio Code

[Visual Studio Code](https://code.visualstudio.com/) has built-in Git integration, but you'll need to use the Command Palette to clone with submodules:

- Open the Command Palette:
   - `Ctrl+Shift+P` on Windows/Linux or `Command+Shift+P` on macOS.
- Search for and select `Git: Clone (Recursive)`.
- Enter the repository URL.

*Note: You must use the "(recursive)" option, as the standard clone command in VS Code will not include submodules.*

#### Via Nova

[Nova](https://nova.app/) is a lightweight and modern IDE for macOS created by Panic, the team behind the Playdate. Nova integrates well with the Playdate simulator, but does not automatically recurse submodules when cloning. Here's how to clone with submodules manually using Nova:

1. In Nova, open the **Terminal** from within the IDE (`New > Local Terminal`).
2. Run the following command to clone the repository and recurse the submodules:
   
   ```zsh
   git clone --recurse-submodules https://github.com/invisiblesloth/roxy-engine-project-template path/to/yourprojectfolder
   ```

This will ensure that both the project files and the Roxy Engine submodule are cloned.

#### Via Git Command Line

To clone the repository and its submodules via the command line, use the following command:

```bash
git clone --recurse-submodules https://github.com/invisiblesloth/roxy-engine-project-template path/to/yourprojectfolder
```

*Note: Most recent versions of Git (1.9 and later) support submodule recursion with this command.*

If you're using an older version of Git that doesn't support submodule recursion, use the following commands:

```bash
git clone https://github.com/invisiblesloth/roxy-engine-project-template path/to/yourprojectfolder
cd path/to/yourprojectfolder
git submodule update --init --recursive
```

This method works for both older and newer Git versions.

### Manual Download and Setup

If you prefer not to use Git, you can download the project and Roxy Engine separately:

- On this page, click the "< > Code" button and select "Download ZIP."
- Unzip the archive into your local project folder.
- Next, go to the [Roxy Engine repository](https://github.com/invisiblesloth/roxy-engine) and download the engine code.
- Unzip the engine into `path/to/yourprojectfolder/source/libraries/roxy`.

***

## Next Steps

Now that you've set up your new project, you can learn how to use **Roxy Engine** by exploring the resources provided:

- Review the setup notes and examples in the [Roxy Engine repository](https://github.com/invisiblesloth/roxy-engine).
- Check the inline comments within the engine and example code for additional explanations.
- Experiment with the template and example files included in this repository to see how **Roxy Engine** works in practice.

Since **Roxy Engine** is in early development, more comprehensive documentation will be added over time.

***

## Documentation

The Roxy Engine Project Template includes inline code documentation.

***

## Contact & Support

For any issues or questions, reach out to us at support@invisiblesloth.com. We're a small team, so please be patient, and we'll get back to you as soon as possible.

***

## Change Log

For a detailed history of changes and updates, please see the [CHANGELOG.md](./CHANGELOG.md).

***

## Roadmap

- **Maintain Compatibility:** Ensure compatibility with the current version of Roxy Engine.
- **Playdate Crank Input:** Expand scene input handling examples to demonstrate using the Playdate crank.
- **RoxySprite and RoxyAnimation Examples:** Add examples to showcase the use of `RoxySprite` and `RoxyAnimation`.
- **Feature Updates:** Update the template to demonstrate new features when Roxy Engine is enhanced.

*Note: This roadmap represents a prioritized list of planned features. It is not a strict timeline, and features may be added, removed, or adjusted as development progresses.*

***

## License

Both the **Roxy Engine Project Template** and **Roxy Engine** are licensed under the MIT License. For details, refer to the full license text in the [LICENSE](./LICENSE) file for the template, and the [LICENSE](https://github.com/invisiblesloth/roxy-engine/blob/main/LICENSE) file in the [Roxy Engine repository](https://github.com/invisiblesloth/roxy-engine).

**Key Points:**

- You are free to use, copy, modify, and distribute the Roxy Engine Project Template, provided that the original copyright notice and license are included in all copies or substantial portions of the software.
- The software is provided "as is," without any warranty of any kind.
- For any questions or clarifications, please refer to the full [LICENSE](./LICENSE) file.

**Acknowledgements and Adaptations:**

- **Noble Engine: project template:** Portions of this project template were inspired by and adapted from Mark LaCroix and Noble Robot’s Noble Engine: project template.

For more detailed information, please refer to the full [LICENSE](./LICENSE) file and the corresponding sections within the license file itself.
