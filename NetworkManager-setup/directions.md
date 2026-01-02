# Directions for setting up NetworkManager

## Ensure you have python3-dbus before continuing
Enter the following into the terminal:
```bash
python3-dbus --version
```
If the version number is then output, then you have it!!
Otherwise, you should install it with:
```bash
sudo xbps-install -S python3-dbus
```

## Run script
You should begin by opening and reading the script. This is always good practice, as one can never be sure of the safety of unknown internet/GitHub scripts.
To do this, enter
```bash
cd ~/.git/clones/z-void-stuff/NetworkManager-setup
```
```bash
cat nmsetup.sh | less
```
From here, you have two choices. You can either run each command in the script one by one by copy-and-pasting them into your terminal and hitting enter for more error messages by opening a new terminal and using ctrl+shift+c and ctrl+shift+v,
or you could make the entire script executable with
```bash
chmod +x nmsetup.sh
```
and run it with
```bash
./nmsetup.sh
```

## Configuring NM
Enter the following command. It will tell you which groups your user is in.
```bash
groups
```
Analyze the output. Ensure one of the groups listed is "network".
If you do not belong to this group, do the following:
```bash
sudo usermod -aG network $USER
```
