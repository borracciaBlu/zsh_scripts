function updatePackage {
	package_to_update=$(npm outdated | awk 'FNR > 1  {print $1}' | awk '{ ORS=" "; print; }' | sed 's/.$//');
	proj_code=$(git log --pretty="%s" | grep -e '#' | awk '{print $1}'| head -n 1 | cut -d - -f 1 | sed 's/^.//');
	last_commit_num=$(git log --pretty="%s" | grep -e '#' | awk '{print $1}'| head -n 1 | cut -d - -f 2,4);
	next=$(($last_commit_num + 1))
    main_branch=$(git branch |  grep -E 'main|master' | awk '{print $2}')
	git co $main_branch 
	git pull
	git co -b update/$proj_code-$next-update
	npm update
	git add .
	git commit -m "#$proj_code-$next : update(package) : Update $package_to_update"
	git push --force origin update/$proj_code-$next-update
}

alias npm-branch-update='updatePackage'
