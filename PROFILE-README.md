# PowerShell Integrated Console Profile
## To add support for Colors model syntax highlighting in the VSCode, follow the instruction:

1. In the 'Powershell Integrated Console', open VSCode profile file:
    ```powershell
    notepad.exe $profile
    ```
    Create it if doesn't exists:
    ```powershell
    New-Item $profile -type File
    ```
2. Copy the code to the file and save it:
    ```powershell
    if (Test-Path './ColorsModel.ps1') {
        . ./ColorsModel.ps1
    }
    ```
3. Restart 'Powershell Integrated Console'
