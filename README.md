# Kubectl Auto-Completion Script

This script enables `kubectl` auto-completion, boosting productivity with dynamic suggestions for commands and options.

## Prerequisites

- **Supported Shell**: Bash or Zsh
- **Kubectl Installed**: Ensure `kubectl` is properly installed and configured.

## Installation

Follow these steps to set up auto-completion:

1. **Download the Script**  
   Save the script file to a directory of your choice, e.g., `~/scripts/kubectl-completion.sh`.

2. **Add the Script to Your Shell**  
   Modify your shell configuration file to include the script:

   - For Bash:
     ```bash
     echo "source /path/to/kubectl-completion.sh" >> ~/.bashrc
     ```
   - For Zsh:
     ```bash
     echo "source /path/to/kubectl-completion.sh" >> ~/.zshrc
     ```

   Replace `/path/to/kubectl-completion.sh` with the full path to the script.

3. **Make the Script Executable**  
   Ensure the script file is executable:
   ```bash
   chmod +x /path/to/kubectl-completion.sh
   ```

4. **Reload Your Shell Configuration**  
   Apply the changes to your terminal:

   - For Bash:
     ```bash
     source ~/.bashrc
     ```
   - For Zsh:
     ```bash
     source ~/.zshrc
     ```

5. **Verify Functionality**  
   Type `kubectl` or its alias `k` and press `Tab` to see suggestions.

## Cleanup (Removing Auto-Completion)

If you want to remove the auto-completion script, follow these steps:

1. **Remove the Script Source**  
   Edit your shell configuration file and delete the line that includes the script:
   - For Bash:
     ```bash
     nano ~/.bashrc
     ```
   - For Zsh:
     ```bash
     nano ~/.zshrc
     ```
   Remove the line:
   ```bash
   source /path/to/kubectl-completion.sh
   ```

2. **Delete the Script File**  
   Remove the script file:
   ```bash
   rm /path/to/kubectl-completion.sh
   ```

3. **Reload Your Shell Configuration**  
   Apply the changes to your terminal:
   - For Bash:
     ```bash
     source ~/.bashrc
     ```
   - For Zsh:
     ```bash
     source ~/.zshrc
     ```

## Troubleshooting

- **Not Working?**  
  - Verify the script path is correct.
  - Ensure the script file is executable using:
    ```bash
    chmod +x /path/to/kubectl-completion.sh
    ```

- **Missing Suggestions?**  
  - Ensure `kubectl` is properly installed and configured.
  - Make sure you have reloaded your shell configuration.

With this setup, you're ready to work with `kubectl` more efficiently! 🚀
