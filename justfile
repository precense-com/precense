dev:
    cd static && npm run dev
build:
    cd static && npm run build && cp -r dist/* ../docs
deploy: build
    git add .
    git commit -m "Deploy to GitHub Pages"
    git push origin main
clean:
    # Move CNAME file from docs so it doesn't get deleted
    mv docs/CNAME CNAME.bak || true
    rm -rf docs/*
    mv CNAME.bak docs/CNAME || true
    rm -rf static/dist