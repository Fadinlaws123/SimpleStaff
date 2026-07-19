<div align="center">

# 🛡️ SimpleStaff

### A private ACE-restricted staff chat system with optional Discord logging for FiveM.

<p>
  <a href="https://simpledevelopments.org/store"><img src="https://img.shields.io/badge/Explore_Our_Store-5865F2?style=for-the-badge&logo=googlechrome&logoColor=white" /></a>
  <a href="https://discord.gg/RquDVTfDwu"><img src="https://img.shields.io/badge/Join_Our_Discord-5865F2?style=for-the-badge&logo=discord&logoColor=white" /></a>
  <a href="https://github.com/Fadinlaws123/SimpleStaff"><img src="https://img.shields.io/badge/View_on_GitHub-181717?style=for-the-badge&logo=github&logoColor=white" /></a>
</p>

<p>
  <img src="https://img.shields.io/badge/FiveM-Standalone-FF6B35?style=flat-square&logo=fivem&logoColor=white" />
  <img src="https://img.shields.io/badge/Permissions-ACE-238636?style=flat-square" />
  <img src="https://img.shields.io/badge/Status-Release_Ready-238636?style=flat-square" />
  <img src="https://img.shields.io/github/stars/Fadinlaws123/SimpleStaff?style=flat-square&logo=github&label=Stars" />
</p>

</div>

---

## 📖 About

**SimpleStaff** provides an in-game private communication channel for authorized staff members.

Messages are restricted through ACE permissions so regular players cannot view staff conversations, and optional Discord logging can be configured to keep a record of staff-chat activity.

---

## ✨ Features

- Private staff-only chat
- ACE permission access control
- Configurable permission string
- Discord webhook logging
- Configurable webhook name and image
- Configurable embed colors and footer appearance
- Standalone with no framework dependency

---

## 🔐 Permissions

The default ACE permission is:

```text
simple.staff
```

Grant it to the appropriate group in your `server.cfg`.

Example:

```cfg
add_ace group.staff simple.staff allow
```

---

## ⚙️ Configuration

The resource configuration includes:

- Staff permission string
- Discord logging webhook
- Webhook name
- Webhook profile image
- Embed colors
- Footer appearance

Keep live webhook URLs private and never commit them to a public repository.

---

## 📥 Installation

1. Place `SimpleStaff` in your server's resources directory.
2. Configure the resource.
3. Add the resource to your `server.cfg`.
4. Grant the required ACE permission to your staff group.
5. Restart the resource or server.

---

## 📋 Requirements

- FiveM server
- No framework required

---

## 🌐 SimpleDevelopments

SimpleStaff is developed and maintained by **SimpleDevelopments**.

<div align="center">

### Keep it Simple. Keep it SimpleDevelopments.

</div>
