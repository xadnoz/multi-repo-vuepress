// remove everything else that is not markdown file
find . -type f ! -name '*.md' ! -name '*.sh' ! -name '*.gitmodules' ! -name '.git' ! -name 'LICENSE'  -delete