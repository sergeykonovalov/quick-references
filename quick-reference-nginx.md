# Nginx Server

## Install From Repository

```sh
cat /etc/lsb-release
sudo apt-get install nginx
ls -l /etc/nginx
service nginx status
service nginx start
```

> NOTE: `service nginx start` is equivalent of `nginx -s start`.
> NOTE: Refer to [Nginx cofiguration documentation](# http://nginx.org/en/docs/configure.html) for more options and build arguments.

## Configuration Terms

- *Directive* is a specific configuration option set in configuration files.
  - Consists of option name and value: e.g. `worker_connections 1024`.
  - Array directive is same directive, repeated several times with various arguments, e.g. `access_log` several times.
- *Section* is block of configuration file, and directive is applied to block context.
  - Similar to scope in programming languages.
  - File itself is the main context.
  - Scope is nested.
  - Context `events` is obligatory.
  - Context `http` is for anything HTTP related.
    - Context `server` (equivalent of Apache vhost section).
      - Context `location` to match URL location.

### Creating Virtual Host

```sh
sudo mkdir /sites/
cd /sites/
sudo mkdir projectname
cd projectname
ls -l /etc/nginx
```

Then edit `nginx.conf`.

#### Matching Order For Locations

1. `=` (exact match)
2. `^~` (preferential prefix)
3. `~` and `~*` (regexp match)
4. `<empty>` (prefix match)

## Let' Encrypt

```sh
https://certbot.eff.org/#ubuntuxenial-nginx
certbot --nginx
certbot renew --dry-run
```

You can run renewals with cron job daily.

## Related Resources

Proxy to [HTTP Status](http://httpstat.us/xxx), where `xxx` is HTTP status code. Service will return header and body with desired status. Perfect for testing.
