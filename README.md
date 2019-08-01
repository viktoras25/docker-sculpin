# Sculpin

[Sculpin](https://sculpin.io/) is static site generator built with PHP.

Generate
```docker run -ti --rm -v $(pwd):/app -p80:80 sculpin generate --env=live```

Serve
```docker run -it --rm -v $(pwd):/app -p80:80 sculpin serve --env=live --port=80```
