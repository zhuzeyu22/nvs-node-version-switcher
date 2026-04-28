# Release Notes - v1.0.0

## 🎉 Initial Release

This is the first official release of the NVS Node Version Switcher Skill for Lingma Agent.

## ✨ Features

### Core Functionality
- ✅ Cross-platform NVS support (Windows, macOS, Linux)
- ✅ Node.js version installation and management
- ✅ Version switching with PATH updates
- ✅ Automatic version switching per project
- ✅ Alias management for versions
- ✅ Remote configuration support
- ✅ Global package migration between versions

### Documentation
- ✅ Comprehensive SKILL.md for Lingma Agent
- ✅ Detailed command reference (REFERENCE.md)
- ✅ Practical usage examples (EXAMPLES.md)
- ✅ Platform-specific notes and troubleshooting
- ✅ Test reports and validation results

### Utility Scripts
- ✅ `check_nvs_status.sh` - Check NVS installation status
- ✅ `install_nvs.sh` - Auto-install NVS (macOS/Linux)
- ✅ `validate_skill.sh` - Validate skill structure

## 🧪 Testing

All features have been tested and validated:
- Core NVS commands (add, use, link, ls, etc.)
- Version switching functionality
- Alias management
- Script execution
- Cross-platform compatibility

See [TEST_REPORT.md](TEST_REPORT.md) for detailed test results.

## 📋 Requirements

- Git Bash, PowerShell, or POSIX-compatible shell
- Internet connection for downloading Node.js versions
- NVS tool (can be installed using provided scripts)

## 🚀 Installation

### For Lingma Users
The skill is automatically available when using Lingma Agent. No manual installation required.

### Manual NVS Installation
See [README.md](README.md) for installation instructions.

## 📖 Usage

Trigger the skill by asking questions like:
- "How do I switch Node.js versions?"
- "Install Node.js 18 LTS"
- "Set up NVS for my project"
- "Manage multiple Node.js versions"

## 🔗 Links

- **Repository**: https://github.com/zhuzeyu22/nvs-node-version-switcher
- **NVS Official**: https://github.com/jasongin/nvs
- **Issues**: https://github.com/zhuzeyu22/nvs-node-version-switcher/issues

## 🙏 Acknowledgments

- NVS tool by Jason Ginchereau
- Inspired by nvm (Node Version Manager)
- Built following Lingma Agent Skill best practices

## 📄 License

MIT License - see [LICENSE](LICENSE) file for details.

---

**Full Changelog**: https://github.com/zhuzeyu22/nvs-node-version-switcher/compare/v1.0.0...main
