# multi-repo-vuepress
Vuepress site with multiple repositories

### Get all REPOS of your organization

ToDo: averiguar de Gitlab etc. si tienen api como Github

https://api.github.com/users/<organization_name>/repos
https://api.github.com/users/zondax/repos?per_page=500

ToDo: script que busque todos los `"html_url"` y lo transforme en este formato y lo guarde en el archivo `.gitmodules`

```bash
[submodule "parity-scale-codec"]
	path = parity-scale-codec
	url = https://github.com/Zondax/parity-scale-codec
[submodule "PySyft"]
	path = PySyft
	url = https://github.com/Zondax/PySyft
```

https://developer.github.com/v3/#pagination


git submodule add <"html_url">

git submodule add https://github.com/Zondax/parity-scale-codec
git submodule add https://github.com/Zondax/PySyft

Create a bash script (using find, grep, rm or similar bash charm) to retain the desired *.md files and remove the undesirable source files. Here is a sample on how-to:
// remove everything else that is not markdown file
find . -type f ! -name '*.md' -delete

git submodule update && ./remove-undesirable-files.sh


Initialize vuepress at TheRepo's root and let vuepress generate cosolidated documentation.
If you do a good job at step 3. you can have a seperate section/classification for each individual dependency Repo in the resulting documentation.

To refresh the contents, simple use git submodule update to update documentation and then chain it with script created in step3 as to automate the refresh process.

git submodule update && ./remove-undesirable-files.sh