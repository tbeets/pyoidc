# pyoidc

A compliant OpenID Connect 1.0 (and OAuth 2.0) provider and client implementation in Python.

[OpenIDC/pyoidc](https://github.com/OpenIDC/pyoidc)

Unfortunately, the examples and docker images [are known to be broken](https://github.com/OpenIDC/pyoidc/issues?q=is%3Aopen+is%3Aissue+label%3Adocumentation).  This is strange because the repo is actively maintained.

I hacked `runOpRp.sh` to generate correct `HOST_IP` on a Mac with Docker (removed boot2docker assumptions and massaged linux snippet).
