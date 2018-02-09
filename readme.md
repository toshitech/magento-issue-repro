# Running the example:

```bash
git clone --depth 1 https://bitbucket.org/graphicalliance/chanel-sunglasses-m2.1.git magento
cp config/env.php magento/app/etc/env.php
docker-compose build
docker-compose up
```

Place SQL database export in this directory, then run:

```bash
docker-compose exec mysql 
```
