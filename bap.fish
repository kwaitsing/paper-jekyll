#!/usr/bin/fish
set var_date_blog (date +"%Y-%m-%d" -u)
switch $argv[1]
case bap
  bundle exec jekyll b
  cd _site
  rm bap.fish
  rm readme.md
  rm -rf screenshots
  echo Your domain > CNAME
  git add .
  git commit -m (date +"%Y-%m-%d_%T" -u)
  git push origin main -f
  cd ..
case newpost
  cd _posts
  touch $var_date_blog-$argv[2].md
  echo --- >> $var_date_blog-$argv[2].md
  echo "layout: post" >> $var_date_blog-$argv[2].md
  echo "title:  $argv[2]" >> $var_date_blog-$argv[2].md
  echo "date:   $var_date_blog" >> $var_date_blog-$argv[2].md
  echo "cover: '$argv[4]'" >> $var_date_blog-$argv[2].md
  echo "author: "$argv[3]"" >> $var_date_blog-$argv[2].md
  echo "tag: "$argv[5]"" >> $var_date_blog-$argv[2].md
  echo "---" >> $var_date_blog-$argv[2].md
  cd ..
case '*'
  echo "bap -> build and git push automatically"
  echo "newpost [title here] [author] [cover_img_location] [tag] -> new a post"
end
