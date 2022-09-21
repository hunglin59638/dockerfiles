#!/bin/sh

cd $HEXO_DIR
if [ -d $HEXO_DIR ] && [ -z $(ls -A1 $HEXO_DIR | head -1) ]; then
    echo "$HEXO_DIR is empty"
    hexo init . &&\
    git clone https://github.com/theme-next/hexo-theme-next themes/next &&\
    npm install hexo-generator-feed --save  &&\
    npm install hexo-generator-searchdb --save  &&\
    npm install hexo-asset-image --save &&\
    npm install hexo-generator-sitemap --save &&\
    npm install hexo-admin --save &&\
    hexo new page categories &&\
    hexo new page tags &&\
    sed -i '3 a comments:\ false' source/categories/index.md &&\
    sed -i '3 a type:\ "categories"' source/categories/index.md &&\
    sed -i '3 a comments:\ false' source/tags/index.md &&\
    sed -i '3 a type:\ "tags"' source/tags/index.md &&\
    sed -i 's/John\ Doe/Hung-Lin,\ Chen/g' _config.yml &&\
    sed -i 's/theme: landscape/theme: next/g' _config.yml &&\
    sed -i 's/post_asset_folder: false/post_asset_folder: true/g' _config.yml &&\
    sed -i 's/theme: landscape/theme: next/g' _config.yml &&\
    sed -i 's/permalink:\ :year\/:month\/:day\/:title/permalink:\ :hash/g' _config.yml &&\
    echo -e "\nfeed:
  type: atom
  path: atom.xml/
  limit: 20
  hub:
  content:
  content_limit:
  content_limit_delim: " "

sitemap:
    path: sitemap.xml/

utterances:
  enable: true" >> _config.yml &&\
    echo -e "\nadmin:
  username: admin
  password_hash: \$2a\$10\$iin1xweV9OA14zNzESaMGuAsh4xYAlJXAeYNyb0jAXg8gBEJ5lXmm
  secret: my super secret phrase" >> _config.yml &&\
    sed -i 's/darkmode:\ false/darkmode:\ true/g' themes/next/_config.yml &&\
    sed -i 's/#tags/tags/g' themes/next/_config.yml &&\
    sed -i 's/#categories/categories/g' themes/next/_config.yml &&\
    sed -i "$(grep -n archives: themes/next/_config.yml | cut -d : -f 1) a \ \ RSS:\ \/atom.xml\ ||\ fa\ fa-rss" themes/next/_config.yml &&\
    sed -i "$(expr $(grep -n local_search themes/next/_config.yml | cut -d : -f 1) + 1)s/false/true/" themes/next/_config.yml

fi

hexo clean && hexo g && hexo s