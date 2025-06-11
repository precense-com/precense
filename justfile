build:
    cd static && npm run build && cp -r dist/* ../docs
deploy: build
    git add .
    git commit -m "Deploy to GitHub Pages"
    git push origin main