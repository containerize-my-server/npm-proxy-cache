FROM node:6
RUN npm install -g nknapp/npm-proxy-cache
EXPOSE 3128
VOLUME ["/cache-data"]
CMD ["npm-proxy-cache","--host","0.0.0.0","--port","3128","--storage","/cache-data","--ttl","86400"]