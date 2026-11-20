# GHC Labs — hands-on cybersecurity practice

**Public overview:** https://gohackerscloud.com/hands-on-cybersecurity-labs

GHC Labs are designed to connect security theory to practice through guided, browser-accessible learning environments.

## Sample practice areas

- Linux and network fundamentals
- Web application and API security
- Cloud security and identity
- Container security
- Security tools, analysis, and reporting

## Example: document a web service response

In an **authorized training lab only**, inspect a synthetic local HTTP endpoint:

```bash
curl -I http://target
```

Record the response status, server headers, observations, and questions to investigate. The hostname `target` is illustrative and works only in lab environments configured with that hostname.

## Lab safety

Only test systems you own or have explicit authorization to assess. Use the scope and network boundaries provided by your lab instructor. Never scan arbitrary external hosts.

The real GHC lab platform, provisioning logic, worker configuration, access controls, and private exercise assets are **not** published in this promotional repository.

[Return to Learning Hub](../README.md)
