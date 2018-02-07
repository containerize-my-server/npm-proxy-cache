Creates a caching proxy

* Uses [npm-proxy-cache](https://github.com/nknapp/npm-proxy-cache)
* Listens on port 3128
* Listens on address 0.0.0.0
* Caches data for 1 month

## Usage

```bash
# on the server (ip-address)
git clone https://github.com/containerize-my-server/npm-proxy-cache.git
docker-compose up -d

# On the client (e.g. in .gitlab-ci.yml)
export http_proxy=http://ip-address:3128
export https_proxy=http://ip-address:3128

npm config set strict-ssl false

npm install ...
```
