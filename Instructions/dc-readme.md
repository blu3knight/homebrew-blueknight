# Double Commander Instructions

## FAQ

- FAQ: https://doublecmd.github.io/doc/en/faq.html

## 3. Issues related to macOS

The Double Commander build distributed here is *not* notarized by Apple, so macOS Gatekeeper may block it when you first launch it. This is normal for apps that have not paid for Apple's notarization process, and it does not mean the software is harmful.

To launch Double Commander despite the Gatekeeper warning, you have a couple of options:

### Option 1 — Allow once from the app

1. Open the app (double-click Double Commander.app).
2. In the popup, click **Open**.
3. In the secondary dialog, click **Allow** to confirm.

### Option 2 — Bypass Gatekeeper via Terminal

Gatekeeper marks downloaded files with a quarantine attribute. You can remove it with the `xattr` command:

```
xattr -rd com.apple.quarantine /Applications/Double Commander.app
```

For more details from Apple, see:
- [Manage unsigned applications on your Mac](https://support.apple.com/guide/macos/manage-unsigned-applications-mac-mb14624/mac)
- [Bypassing protection when software (macOS apps) can't be verified](https://support.apple.com/guide/macos/bypassing-protection-software-cant-be-verified-mac-macbook/macos/guide-1.0.mbc44605-1729-4dc2-b01b-485a6168205d.html)

## ⚠️ Virus / Malware Warning

These files are provided "as is" and are **not guaranteed to be free of viruses or malware**. The files are downloaded by you from the internet from the project's official website and hosting, and they are created by the project's original authors and maintainers, **not by me**. I do not redistribute or host them. You are responsible for scanning any file you download before installing or running it. The homebrew cask verifies the hash values of the files, but it does not scan them in any way. Please confirm the hashes match what you expect from the project. You accept all risk by using or running this software.
