# Roxy Engine Project Template

The fast way to start building Playdate games using [Roxy](https://github.com/invisiblesloth/roxy-engine). This project template includes the engine as a submodule, a recommended folder structure, and a working build setup to get your going.

> **Note:** Roxy is currently in pre-release. Features and APIs may evolve before version 1.0.

---

## Setup ⚙️

### Create Your Project (Recommended)

1. Click the "Use this template" button above.
2. Choose "Create a new repository".
3. Name your project and select visibility (public/private).
4. Clone your new repository locally:
   ```bash
   git clone --recurse-submodules https://github.com/your-username/your-new-repo.git
   ```

> 💡 The `--recurse-submodules` flag makes sure that Roxy Engine is cloned into `source/libraries/roxy`.

### Manual Download

If you're not using Git:

1. Download this repository as ZIP file and extract it.
2. Download [Roxy Engine](https://github.com/invisiblesloth/roxy-engine) separately.
3. Place the Roxy Engine contents in:

   ```
   source/libraries/roxy/
   ```

> ⚠️ Make sure that files such as `roxy.lua` are inside of `roxy/`, not nested one level deeper.

## Support 💬

Questions or feedback? Contact us at [support@invisiblesloth.com](mailto:support@invisiblesloth.com). We would love to hear about your experience using Roxy!

## License ⚖️

This project is licensed under the MIT License.

[👉 Details](./LICENSE)

---

*Thanks for your interest and support!*
