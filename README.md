Dokerized RTBkit
===

```shell
sudo docker build --no-cache -t onokonem/rtbkit https://github.com/onokonem/rtbkit-update-docker.git

sudo docker run --net=host -t -i \
  -v /storage/docker/rtbkit/log:/var/log \
  -v /storage/docker/rtbkit/log:/opt/rtbkit/logs \
  -e PATH=/opt/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin \
  -e LD_LIBRARY_PATH=/opt/local/lib: \
  -e PKG_CONFIG_PATH=/opt/local/lib/pkgconfig/:/opt/local/lib/pkg-config/: \
  -v $(pwd)/router-config-openrtb.json:/opt/rtbkit/router-config-openrtb.json \
  onokonem/rtbkit /bin/bash
```
