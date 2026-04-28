# NVS Node Version Switcher Skill

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Skill Type: Development Tools](https://img.shields.io/badge/Skill%20Type-Development%20Tools-blue)]()

A comprehensive Lingma Agent Skill for managing Node.js versions using NVS (Node Version Switcher). This skill provides intelligent guidance for installing, switching, and managing multiple Node.js versions across Windows, macOS, and Linux.

## 🎯 What is This?

This is a **Lingma Agent Skill** - a specialized knowledge package that teaches AI agents how to help you manage Node.js versions using NVS. When you interact with Lingma and mention Node.js version management, this skill automatically activates to provide expert guidance.

## ✨ Features

- 🚀 **Cross-platform Support**: Works on Windows, macOS, and Linux
- 📦 **Version Management**: Install, switch, and remove Node.js versions effortlessly
- 🔄 **Auto-switching**: Automatic version switching based on project requirements
- 🏷️ **Alias Management**: Create meaningful aliases for different Node.js versions
- 🌐 **Remote Configuration**: Support for custom download sources (nightly builds, etc.)
- 📚 **Comprehensive Documentation**: Complete command reference and practical examples
- 🛠️ **Utility Scripts**: Ready-to-use scripts for common tasks

## 📁 Project Structure

```
nvs-node-version-switcher/
├── SKILL.md                    # Main skill definition (for Lingma Agent)
├── README.md                   # This file
├── REFERENCE.md                # Detailed command reference
├── EXAMPLES.md                 # Practical usage examples
├── CREATION_SUMMARY.md         # Skill creation documentation
├── TEST_REPORT.md              # Test results and validation
└── scripts/                    # Utility scripts
    ├── check_nvs_status.sh     # Check NVS installation status
    ├── install_nvs.sh          # Auto-install NVS
    └── validate_skill.sh       # Validate skill structure
```

## 🚀 Quick Start

### Prerequisites

- Git Bash, PowerShell, or any POSIX-compatible shell
- Internet connection for downloading Node.js versions

### Using with Lingma Agent

1. **Install the Skill** (if not already installed):
   ```bash
   # The skill will be automatically available in Lingma
   # No manual installation required for Lingma users
   ```

2. **Trigger the Skill** by asking questions like:
   - "How do I switch Node.js versions?"
   - "Install Node.js 18 LTS"
   - "Set up NVS for my project"
   - "Manage multiple Node.js versions"

### Manual NVS Installation

If you want to use NVS directly (without Lingma):

#### Windows
```powershell
# Using winget (Windows 11+)
winget install jasongin.nvs

# Or using chocolatey
choco install nvs
```

#### macOS/Linux
```bash
export NVS_HOME="$HOME/.nvs"
git clone https://github.com/jasongin/nvs "$NVS_HOME"
. "$NVS_HOME/nvs.sh" install
```

## 💡 Usage Examples

### Basic Version Management

```bash
# Install latest LTS version
nvs add lts

# Switch to a specific version
nvs use 18.20.0

# Set default version
nvs link 18.20.0

# List installed versions
nvs ls
```

### Advanced Features

```bash
# Enable automatic version switching
nvs auto on

# Create an alias
nvs alias myproject 18.20.0

# Run command with specific version
nvs run 18.20.0 --version

# Migrate global packages
nvs migrate 16.20.0 18.20.0
```

### Using Utility Scripts

```bash
# Check NVS installation status
bash scripts/check_nvs_status.sh

# Validate skill structure
bash scripts/validate_skill.sh

# Auto-install NVS (macOS/Linux)
bash scripts/install_nvs.sh
```

## 📖 Documentation

- **[SKILL.md](SKILL.md)** - Main skill definition with quick start guide
- **[REFERENCE.md](REFERENCE.md)** - Complete command reference with all options
- **[EXAMPLES.md](EXAMPLES.md)** - Real-world usage scenarios and workflows
- **[README_zh.md](README_zh.md)** - Chinese version of this document (中文版本)
- **[RELEASE_NOTES.md](RELEASE_NOTES.md)** - v1.0.0 release notes
- **[QUICK_REFERENCE.md](QUICK_REFERENCE.md)** - Quick reference card
- **[TEST_REPORT.md](TEST_REPORT.md)** - Test results and validation report

## 🎯 When to Use This Skill

The skill automatically activates when you:

- Need to install or switch Node.js versions
- Want to set up development environments
- Work on projects with different Node.js requirements
- Need to manage version aliases
- Encounter Node.js version compatibility issues
- Ask about NVS, nvm, or Node.js version management

## 🔧 Platform-Specific Notes

### Windows + Git Bash
- Most NVS commands work correctly in Git Bash
- Use `nvs run` instead of `nvs exec` for better compatibility
- For full feature support, consider using PowerShell

### PowerShell vs Command Prompt
- PowerShell provides better integration and features
- Some advanced features may not work in Command Prompt
- Use PowerShell for automatic version switching (`nvs auto`)

## 🧪 Testing

All features have been tested in a sandbox environment:

✅ Core functionality (version switching, installation, etc.)  
✅ Utility scripts execution  
✅ Cross-platform compatibility  
✅ Skill structure validation  

See [TEST_REPORT.md](TEST_REPORT.md) for detailed test results.

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request. For major changes, please open an issue first to discuss what you would like to change.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🔗 Related Resources

- [NVS Official Repository](https://github.com/jasongin/nvs)
- [Node.js Official Website](https://nodejs.org/)
- [Lingma Agent Skills Documentation](https://lingma.aliyun.com/)

## 🙏 Acknowledgments

- NVS tool by [Jason Ginchereau](https://github.com/jasongin)
- Inspired by nvm (Node Version Manager)
- Built following Lingma Agent Skill best practices

---

**Made with ❤️ for the developer community**
