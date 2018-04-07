### Whitelisted domains for Pi-Hole by Freekers

This repository is meant to be used in conjunction with the original repository by anudeepND.
You can request additional domains via the <a href="https://github.com/Freeekers/whitelist/issues">Issues</a> tab or by emailing me at pihole [at] freek [.] ws

#### whitelist.txt
[Pi-hole](https://pi-hole.net) users can quickly add these sites to your whitelist.txt by:

• `git clone https://github.com/Freekers/whitelist.git`   
• `cd whitelist/scripts`   
• `sudo chmod +x whitelist.sh`    
• `sudo ./whitelist.sh`     

### No Raspberry Pi? Try my Free Public Pi-holes!
For more information, check out https://freek.ws/public-pi-hole/


### How do I determine an ad domain?

#### a). DNSthingy Assistant

<a href="https://chrome.google.com/webstore/detail/dnsthingy-assistant/fdmpekabnlekabjlimjkfmdjajnddgpc">This browser extension</a> will list all of the domains that are queried when a web page is loaded. You can often look at the list of domains and cherry pick the ones that appear to be ad-serving domains.


![Alt text](https://discourse.pi-hole.net/uploads/default/optimized/1X/6ce0e13813df930288677c87bf0fd5861c150898_1_690x320.png)
 
 
 
#### b). Using inbuilt Developer tool
For Chrome ctrl+shift+I will land you in Developer tools menu.
![Alt text](http://i.imgur.com/44CHRLV.png)
