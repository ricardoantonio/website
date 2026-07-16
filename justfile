serve:
    zola serve --drafts

build:
    zola build

deploy: build
    rsync -avz --delete public/ ${DEPLOY_HOST}:${DEPLOY_PATH}
