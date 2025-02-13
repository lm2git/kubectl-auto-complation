
# Kubectl Auto-Completion Script

This script enhances `kubectl` usability by enabling dynamic auto-completion for commands, options, and resource types. It includes support for an alias (`k`) for faster workflows.

## Prerequisites

- **Shell Support**: Bash or Zsh
- **Kubectl Installed**: Ensure `kubectl` is installed and configured. Test with:
  ```bash
  kubectl version --client
  ```

## Installation

Follow these steps to set up the auto-completion script:

### Option 1: Clone from Git Repository

1. **Clone the Repository**  
   Use Git to download the script:
   ```bash
   git clone https://github.com/lm2git/kubectl-auto-completion.git
   ```

2. **Navigate to the Directory**  
   ```bash
   cd kubectl-auto-completion
   ```

3. **Source the Script**  
   Add the script to your shell configuration file:

   - For Bash:
     ```bash
     echo "source $(pwd)/kubectl-auto-completion.sh" >> ~/.bashrc
     ```
   - For Zsh:
     ```bash
     echo "source $(pwd)/kubectl-auto-completion.sh" >> ~/.zshrc
     ```

4. **Reload Your Shell Configuration**  
   Apply the changes:
   - For Bash:
     ```bash
     source ~/.bashrc
     ```
   - For Zsh:
     ```bash
     source ~/.zshrc
     ```


### Verify Functionality

1. Test the auto-completion:  
   Type `kubectl` or `k` and press `Tab`. You should see dynamic suggestions for commands, options, and resource types.

2. Example:  
   ```bash
   kubectl get pods <TAB>
   ```

## Cleanup (Removing Auto-Completion)

1. Remove the `source` line from your shell configuration:
   - Bash:
     ```bash
     nano ~/.bashrc
     ```
   - Zsh:
     ```bash
     nano ~/.zshrc
     ```

2. Optionally, delete the cloned repository or script file:
   ```bash
   rm -rf /path/to/kubectl-auto-completion
   ```

3. Reload your shell configuration:
   ```bash
   source ~/.bashrc  # For Bash
   source ~/.zshrc   # For Zsh
   ```

## Troubleshooting

- **Auto-completion doesn't work**:  
  - Verify that `kubectl` is installed and configured.
  - Ensure the script path is correct and the file is executable:
    ```bash
    chmod +x /path/to/kubectl-auto-completion.sh
    ```

- **Suggestions are incomplete**:  
  - Reload your shell configuration:
    ```bash
    source ~/.bashrc  # or ~/.zshrc
    ```

## Contributions

Feel free to contribute to this script by submitting pull requests or opening issues in the repository!
