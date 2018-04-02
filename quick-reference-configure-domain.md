# Configure Domain

Open domain dispatcher at GoDaddy, and choose "Domains", then "My Domains", then choose domain and click "Manage".

| Type | Name | Value | TTL |
| ----- | ----- | ----- | ----- |
| A | @ | `12.34.56.78` | 600 sec |
| CNAME | ftp | `@` | 1 hour |
| CNAME | www | `@` | 1 hour |
| CNAME | api | `@` | 1 hour |
| CNAME | yamail-<> | `mail.yandex.ru` | 1 hour |
| MX | @ | `mx.yandex.net` (priority 10) | 1 hour |

> For subdomains, e.g. `api.example.com` there should be also configuration of `server` block on Nginx on host.
