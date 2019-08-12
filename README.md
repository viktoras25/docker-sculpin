# Sculpin

[Sculpin](https://sculpin.io/) is static site generator built with PHP.

Generate
```docker run --rm -v $(pwd):/app viktoras25/sculpin generate --env=live```

Serve
```docker run --rm -it --init -p8000:8000 -v `pwd`:/app viktoras25/sculpin generate --watch  --server --env=live```
