## index.js                                                        
     - AWS LAMBDA wrapper used to execute brewers.sh script           
## brewers.sh                                                        
     - Script that reads schedule.csv and sends Pushover notification if there is a home game                           
## credentials.sh                                                    
     - Source Pushover credentials from credentials.sh
     
     Example:
          PUSHOVER_APP_TOKEN=''
          PUSHOVER_USER_KEY=''
## schedule.csv                                                      
     - Contains schedule of all Brewers games - downloaded from MLB.com 
