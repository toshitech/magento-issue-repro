# Running the example:

### Important!
Place your database export in the root directory, named `magento.sql`. This needs to be present before you proceed with the steps below.

```bash
git clone https://github.com/toshitech/magento-issue-repro magento-repro && \
cd $_ && \
git clone --depth 1 <GitHub-URL> magento && \
cp config/env.php magento/app/etc/env.php && \
docker-compose build && \
docker-compose up -d
```

Wait for the containers to start, then run:

```bash
docker-compose exec apache bash -c "(cd /var/www && composer install)"
docker-compose exec apache php bin/magento setup:upgrade
docker-compose exec db bash -c "mysql -u root -psecret magento -e \"UPDATE core_config_data SET value='http://localhost:8080' WHERE  path='web/unsecure/base_url'\""
```

If you need to access the database it's published on port 3307.
