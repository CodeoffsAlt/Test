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

@DevManView.exe /Enable "Programmable Interrupt Controller" > nul 2>&1
@DevManView.exe /Enable "PCI Encryption/Decryption Controller" > nul 2>&1
@DevManView.exe /Enable "AMD PSP" > nul 2>&1
@DevManView.exe /Enable "Intel SMBus" > nul 2>&1
@DevManView.exe /Enable "System Timer" > nul 2>&1
@DevManView.exe /Enable "Motherboard Resources" > nul 2>&1
@DevManView.exe /Enable "High Precision Event Timer" > nul 2>&1
@DevManView.exe /Enable "Intel Management Engine" > nul 2>&1
@DevManView.exe /Enable "PCI Standard RAM Controller" > nul 2>&1
@DevManView.exe /Enable "Numeric Data Processor" > nul 2>&1
@DevManView.exe /Enable "Interrupt Controller" > nul 2>&1
@DevManView.exe /Enable "Direct Memory Access Controller" > nul 2>&1
@DevManView.exe /Enable "Base System Device" > nul 2>&1
@DevManView.exe /Enable "PCI Data Acquisition and Signal Processing Controller" > nul 2>&1
@DevManView.exe /Enable "PCI Memory Controller" > nul 2>&1
@DevManView.exe /Enable "PCI Simple Communications Controller" > nul 2>&1
@DevManView.exe /Enable "SM Bus Controller" > nul 2>&1
@DevManView.exe /Enable "Composite Bus Enumerator" > nul 2>&1
@DevManView.exe /Enable "UMBus Root Bus Enumerator" > nul 2>&1
@DevManView.exe /Enable "PCI Standard ISA Bridge" > nul 2>&1

@DevManView.exe /Enable "NDIS Virtual Network Adapter Enumerator" > nul 2>&1
@DevManView.exe /Enable "Microsoft Kernel Debug Network Adapter" > nul 2>&1
@DevManView.exe /Enable "Microsoft RRAS Root Enumerator" > nul 2>&1

@DevManView.exe /Enable "Microsoft System Management BIOS Driver" > nul 2>&1
@DevManView.exe /Enable "PCI Device" > nul 2>&1
@DevManView.exe /Enable "Microsoft IPv4 IPv6 Transition Adapter Bus" > nul 2>&1
@DevManView.exe /Enable "PCI-To-PCI Bridge" > nul 2>&1
@DevManView.exe /Enable "Remote Desktop Device Redirector Bus" > nul 2>&1
@DevManView.exe /Enable "Generic PnP Monitor" > nul 2>&1
@DevManView.exe /Enable "Generic Bluetooth Adapter" > nul 2>&1
@DevManView.exe /Enable "Microsoft Hyper-V Virtualization Infrastructure Driver" > nul 2>&1

@DevManView.exe /Enable "Microsoft Device Association Root Enumerator" > nul 2>&1
@DevManView.exe /Enable "Microsoft Radio Device Enumeration Bus" > nul 2>&1
@DevManView.exe /Enable "Microsoft GS Wavetable Synth" > nul 2>&1
@DevManView.exe /Enable "SAS Controller" > nul 2>&1
@DevManView.exe /Enable "PCI Serial Port" > nul 2>&1
@DevManView.exe /Enable "Video Controller" > nul 2>&1
@DevManView.exe /Enable "Unknown Device" > nul 2>&1

@DevManView.exe /Enable "Trusted Platform Module 1.2" > nul 2>&1

@DevManView.exe /Enable "Fax" > nul 2>&1
@DevManView.exe /Enable "Microsoft Print To PDF" > nul 2>&1
@DevManView.exe /Enable "Microsoft XPS Document Writer" > nul 2>&1
@DevManView.exe /Enable "Root Print Queue" > nul 2>&1

@DevManView.exe /Enable "Intel(R) C600/X79 Series Chipset USB2 Enhanced Host Controller #1 - 1D26" > nul 2>&1
@DevManView.exe /Enable "Intel(R) C600/X79 Series Chipset USB2 Enhanced Host Controller #2 - 1D2D" > nul 2>&1
@DevManView.exe /Enable "NVIDIA USB 3.10 eXtensible Host Controller - 1.10 (Microsoft)" > nul 2>&1

@exit