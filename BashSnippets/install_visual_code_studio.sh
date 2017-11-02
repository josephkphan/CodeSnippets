
# The easiest way to install for Debian/Ubuntu based distributions is to download and install 
# the .deb package (64-bit) either through the graphical software center if it's available or 
# through the command line with:

sudo dpkg -i code_1.17.2-1508162334_amd64.deb # Check for latest though
sudo apt-get install -f # Install dependencies

# Installing the .deb package will automatically install the apt repository and signing key to 
# enable auto-updating using the regular system mechanism.  Note that 32-bit and .tar.gz binaries 
# are also available on the download page.

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

# Then update the package cache and install the package using:

sudo apt-get update
sudo apt-get install code # or code-insiders
