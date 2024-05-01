Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope LocalMachine





Set-ExecutionPolicy AllSigned
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

#stop all hyper-v VMs
stop-vm * -TurnOff 


#disable prompts
choco feature enable -n=allowGlobalConfirmation
#system
choco install vcredist140  -y
choco install directx -y
choco install dotnet - -y
choco install jre8  -y
choco install javaruntime  -y
choco install dellcommandupdate  -y
choco install intel-dsa  -y
choco install nvidia-display-driver -y

#office
choco install office365business  -y
choco install microsoft-teams-new-bootstrapper -y

#utils
choco install vlc  -y
choco install 7zip  -y
choco install git  -y
choco install github-desktop -y
choco install putty -y
choco install gimp  -y
choco install veyon -y #client only

#web
choco install filezilla -y
choco install notepadplusplus -y


choco install vscode  -y
choco install xampp-81 -y
choco install filezilla  -y

#cyber & iot
choco install wireshark  -y
choco install advanced-ip-scanner  -y



choco install vnc-viewer  -y
choco install obs-studio  -y
choco install python3  -y
choco install arduino -y
choco install r.studio -y
choco install anaconda3  -y


#games dev
choco install epicgameslauncher -y
choco install steam -y --ignore-checksums

#visual studio
choco install visualstudio2022community -y
choco install visualstudio2022-workload-python -y
choco install visualstudio2022-workload-node -y
choco install visualstudio2022-workload-manageddesktop -y
choco install visualstudio2022-workload-data -y
choco install visualstudio2022-workload-webbuildtools -y

##update everything
choco update all -y
