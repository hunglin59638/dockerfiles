## Introduction
Build hexo blog quickly and maintain easily.  

## Usage  

### First build hexo blog  

```sh
git pull hunglin59638/hexo-blog:latest
mkdir ./blog
docker-compose up -d
```
The service is at port 4000 (default)

### Edit posts 

After write the new posts to `/source/_posts`, and just type
```
docker-compose restart
```
### environment file: .env  

| Options      | Defaults | Description                |
| ------------ | -------- | -------------------------- |
| TAG          | latest   | image tag                  |
| USER_ID      | 1000     | UID in container           |
| GROUP_ID     | 100      | GID in container           |
| HEXO_PORT    | 4000     | which port to expose       |
| STORAGE_PATH | ./blog   | the path to save hexo root |


If your are a Chinese user, you can look my blog post to learn more about this docker image.
> [Building hexo blog using docker | Hunglin's Blog](https://blog.hlin.tw/ccd855cde113/)