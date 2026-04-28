# Repository Quick Reference

## 📦 Repository Information

**Repository URL**: https://github.com/zhuzeyu22/nvs-node-version-switcher.git

**Slug**: `nvs-node-version-switcher`

**Display Name**: NVS Node.js Version Manager

**Description**: Manage Node.js versions using NVS. Install, switch, and manage multiple Node.js versions across Windows, macOS, Linux. Use when switching Node.js versions, installing new versions, managing aliases, configuring auto-switching, or when user mentions NVS, node version management, or needs to change active Node.js version.

**Tags**: `nodejs`, `version-management`, `nvs`, `development-tools`, `environment-setup`, `cross-platform`, `node-version-switcher`, `developer-utilities`

## 📁 File Structure

```
nvs-node-version-switcher/
├── SKILL.md                    # Main skill definition (192 lines)
├── README.md                   # GitHub repository README
├── REFERENCE.md                # Complete command reference
├── EXAMPLES.md                 # Practical usage examples
├── RELEASE_NOTES.md            # v1.0.0 release notes
├── CREATION_SUMMARY.md         # Skill creation documentation
├── TEST_REPORT.md              # Test results and validation
├── LICENSE                     # MIT License
├── .gitignore                  # Git ignore rules
└── scripts/                    # Utility scripts
    ├── check_nvs_status.sh     # Check NVS installation status
    ├── install_nvs.sh          # Auto-install NVS (macOS/Linux)
    └── validate_skill.sh       # Validate skill structure
```

## 📊 Statistics

- **Total Files**: 11
- **Total Lines**: ~1,300+
- **SKILL.md Size**: 192 lines (under 500 limit ✅)
- **Description Length**: 310 characters (under 350 limit ✅)
- **Supported Platforms**: Windows, macOS, Linux
- **Test Status**: All tests passed ✅

## 🚀 Quick Commands

### Clone Repository
```bash
git clone https://github.com/zhuzeyu22/nvs-node-version-switcher.git
cd nvs-node-version-switcher
```

### Run Utility Scripts
```bash
# Check NVS status
bash scripts/check_nvs_status.sh

# Validate skill
bash scripts/validate_skill.sh

# Install NVS (macOS/Linux)
bash scripts/install_nvs.sh
```

### Basic NVS Usage
```bash
# Install LTS version
nvs add lts

# Switch version
nvs use 18.20.0

# List versions
nvs ls
```

## 📖 Documentation Links

- **Main Skill**: [SKILL.md](SKILL.md)
- **Command Reference**: [REFERENCE.md](REFERENCE.md)
- **Examples**: [EXAMPLES.md](EXAMPLES.md)
- **Release Notes**: [RELEASE_NOTES.md](RELEASE_NOTES.md)
- **Test Report**: [TEST_REPORT.md](TEST_REPORT.md)

## 🔗 External Resources

- **NVS Official Repo**: https://github.com/jasongin/nvs
- **Node.js Official**: https://nodejs.org/
- **Lingma Agent**: https://lingma.aliyun.com/

## 📝 Version History

### v1.0.0 (2026-04-28)
- Initial release
- Complete NVS skill implementation
- Cross-platform support
- Comprehensive documentation
- All features tested and validated

## 👤 Author

**zhuzeyu22**
- GitHub: https://github.com/zhuzeyu22
- Repository: https://github.com/zhuzeyu22/nvs-node-version-switcher

## 📄 License

MIT License - See [LICENSE](LICENSE) file for details.

---

*Last Updated: 2026-04-28*
