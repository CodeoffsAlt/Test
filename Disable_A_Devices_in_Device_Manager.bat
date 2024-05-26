@echo off
@color 0f
@cls

REM Blank/Color Character
@for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (@set "DEL=%%a" & @set "COL=%%b")

REM Install DevManView (IF NOT FOUND)
@if Not Exist "%Temp%\DevManView\DevManView.exe" (
    @curl -g -L -# -o %Temp%\devmanview-x64.zip https://www.nirsoft.net/utils/devmanview-x64.zip > nul 2>&1
    @powershell -NoProfile Expand-Archive '%Temp%\devmanview-x64.zip' -DestinationPath '%Temp%\DevManView' > nul 2>&1
)

REM Set Local
@cd "%temp%\devmanview" > nul 2>&1

@DevManView.exe /Disable "Programmable Interrupt Controller" > nul 2>&1
@DevManView.exe /Disable "PCI Encryption/Decryption Controller" > nul 2>&1
@DevManView.exe /Disable "AMD PSP" > nul 2>&1
@DevManView.exe /Disable "Intel SMBus" > nul 2>&1
@DevManView.exe /Disable "System Timer" > nul 2>&1
@DevManView.exe /Disable "Motherboard Resources" > nul 2>&1
@DevManView.exe /Disable "High Precision Event Timer" > nul 2>&1
@DevManView.exe /Disable "Intel Management Engine" > nul 2>&1
@DevManView.exe /Disable "PCI Standard RAM Controller" > nul 2>&1
@DevManView.exe /Disable "Numeric Data Processor" > nul 2>&1
@DevManView.exe /Disable "Interrupt Controller" > nul 2>&1
@DevManView.exe /Disable "Direct Memory Access Controller" > nul 2>&1
@DevManView.exe /Disable "Base System Device" > nul 2>&1
@DevManView.exe /Disable "PCI Data Acquisition and Signal Processing Controller" > nul 2>&1
@DevManView.exe /Disable "PCI Memory Controller" > nul 2>&1
@DevManView.exe /Disable "PCI Simple Communications Controller" > nul 2>&1
@DevManView.exe /Disable "SM Bus Controller" > nul 2>&1
@DevManView.exe /Disable "Composite Bus Enumerator" > nul 2>&1
@DevManView.exe /Disable "UMBus Root Bus Enumerator" > nul 2>&1
@DevManView.exe /Disable "PCI Standard ISA Bridge" > nul 2>&1

@DevManView.exe /Disable "NDIS Virtual Network Adapter Enumerator" > nul 2>&1
@DevManView.exe /Disable "Microsoft Kernel Debug Network Adapter" > nul 2>&1
@DevManView.exe /Disable "Microsoft RRAS Root Enumerator" > nul 2>&1

@DevManView.exe /Disable "Microsoft System Management BIOS Driver" > nul 2>&1
@DevManView.exe /Disable "PCI Device" > nul 2>&1
@DevManView.exe /Disable "Microsoft IPv4 IPv6 Transition Adapter Bus" > nul 2>&1
@DevManView.exe /Disable "PCI-To-PCI Bridge" > nul 2>&1
@DevManView.exe /Disable "Remote Desktop Device Redirector Bus" > nul 2>&1
@DevManView.exe /Disable "Generic PnP Monitor" > nul 2>&1
@DevManView.exe /Disable "Generic Bluetooth Adapter" > nul 2>&1
@DevManView.exe /Disable "Microsoft Hyper-V Virtualization Infrastructure Driver" > nul 2>&1

@DevManView.exe /Disable "Microsoft Device Association Root Enumerator" > nul 2>&1
@DevManView.exe /Disable "Microsoft Radio Device Enumeration Bus" > nul 2>&1
@DevManView.exe /Disable "Microsoft GS Wavetable Synth" > nul 2>&1
@DevManView.exe /Disable "SAS Controller" > nul 2>&1
@DevManView.exe /Disable "PCI Serial Port" > nul 2>&1
@DevManView.exe /Disable "Video Controller" > nul 2>&1
@DevManView.exe /Disable "Unknown Device" > nul 2>&1

@DevManView.exe /Disable "Trusted Platform Module 1.2" > nul 2>&1

@DevManView.exe /Disable "Fax" > nul 2>&1
@DevManView.exe /Disable "Microsoft Print To PDF" > nul 2>&1
@DevManView.exe /Disable "Microsoft XPS Document Writer" > nul 2>&1
@DevManView.exe /Disable "Root Print Queue" > nul 2>&1

@DevManView.exe /Disable "Intel(R) C600/X79 Series Chipset USB2 Enhanced Host Controller #1 - 1D26" > nul 2>&1
@DevManView.exe /Disable "Intel(R) C600/X79 Series Chipset USB2 Enhanced Host Controller #2 - 1D2D" > nul 2>&1
@DevManView.exe /Disable "NVIDIA USB 3.10 eXtensible Host Controller - 1.10 (Microsoft)" > nul 2>&1

@exit
