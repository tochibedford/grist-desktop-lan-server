# grist-desktop-lan-server
Run Grist Desktop as a local LAN server on macOS (script)

### Reasoning
I found Grist because while we were setting up for a medical outreach in eastern Nigeria, we needed a way to have all the doctors and nurses share and edit patient registration data accross devices (microsoft excel ruled out) for various use cases on a UI they're familiar with (spreadsheets). Also needed to account for the fact that there would probably be little to no internet connection on-site, so the setup needed to work while entirely offline (google sheets ruled out).

Grist Core, would have been too technical for the medical staff to use and after setting it up Grist desktop myself, I wrote this script to have the setup process repeatable, so one computer can act as a server for all the data.

### Description
Starts Grist Desktop bound to your local IP so other devices
on the same network can access it.

### Other Use cases
- Classrooms
- Local shared spreadsheet workflows

### Usage
chmod +x start-grist-lan.command
./start-grist-lan.command
