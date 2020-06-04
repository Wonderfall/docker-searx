## wonderfall/searx

![](https://i.goopics.net/ls.png)

**This image is a lightweight version of the official one. Please use the latter if you want something more production-oriented.**

#### What is searx?
Searx is a metasearch engine, inspired by the seeks project.

#### Features
- Based on Alpine Linux.
- Latest release from [asciimoo/searx](https://github.com/asciimoo/searx)
- A unique secret key is generated when booting the first time.
- No root processes.

#### Build-time variables
- **VERSION** : Searx version

#### Environment variables
- **IMAGE_PROXY** : enables images proxying *(default : False)*
- **BASE_URL** : http://domain.tld *(default : False)*
- **UID**/**GID** : uid/gid.

#### Ports
- **8888**
