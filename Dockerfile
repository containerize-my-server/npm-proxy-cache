FROM node:8
RUN npm install -g "npm-proxy-cache@1.0.2"
EXPOSE 3128
VOLUME ["/cache-data"]
CMD ["npm-proxy-cache","--host","0.0.0.0","--port","3128","--storage","/cache-data","--ttl","86400"]