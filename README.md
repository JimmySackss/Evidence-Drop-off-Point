# A FiveM Evidence-Drop-off-Point
A simple script to add a location for players to drop off items (weapons) they have collected from peds/players during the game. This adds RP instead of just using vmenu to remove weapons. 

I could ask for credit here, but this is just a contribution as I work to improve my coding skills.

The locations are set for my FivePD server. The blip ID's are generic, adjust as you need. 

Install-
Standard FiveM resource-
Drag and drop in your resources folder. 
start/ensure resource (you can rename if you like)

--------------------------------------------------------------------------------------------------------------------------------------
v1.1 Update

Big update to the code. I am still learning things here. 

Combined the marker and hologram checks into single loops to improve efficiency.
Fixed the multiple definitions of the Holograms function.
Used loop variables for all distance checks and marker drawing.
Ensured distance checks are performed once per frame per blip.
Optimize Citizen.Wait(0)
Combine Threads instead of one per each operation.
Fixed Config issue where you had to create another function for each new location (n00b)...





