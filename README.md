# 🛠️ My Dotfiles

These are my personal **dotfiles**, managed with [chezmoi](https://www.chezmoi.io/).

---

## 📦 Installation

1. **Install chezmoi:**  
   👉 [chezmoi installation guide](https://www.chezmoi.io/install/)

2. **Initialize with this repo**:
   ```sh
   chezmoi init https://github.com/mgiks/dotfiles
3. **Check what changes chezmoi will apply**:
   ```sh
   chezmoi diff
   ```
4. **Adjust changes (optional)**:
   - Edit the file manually:
     ```sh
     chezmoi edit $FILE
     ```
   - Or use a merge tool:
     ```sh
     chezmoi merge $FILE
     ```
5. **Apply the changes**:
   ```sh
   chezmoi apply -v
   ```
