#!/bin/bash
curl https://raw.githubusercontent.com/Homegear/Homegear-Docker/master/stable/Dockerfile --output Dockerfile
# remove VOLUME and ENTRYPOINT declarations. Need to use tee as usual redirection did not work
grep -v VOLUME Dockerfile | grep -v ENTRYPOINT  | tee Dockerfile > /dev/null
#add custom entrypoint
echo ADD entry.sh /entry.sh >> Dockerfile
echo RUN chmod 755 /entry.sh >> Dockerfile
echo 'ENTRYPOINT [ "/bin/bash", "-c", "/entry.sh" ]' >> Dockerfile

