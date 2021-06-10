alias git-dev-pull="git co develop && git pull"
alias git-mast-pull="git co master && git pull"


function getMeYesterdayGit {
	git log --pretty="%s" --author=$1 --until="1.days" --since="2.days" | grep -e '#'
}



function getOthersYesterdayGit {
	git log --pretty="%s" --invert-grep --author=$1 --until="1.days" --since="2.days" | grep -e '#'
}



function getOtherTodayGit {
	git log --pretty="%s" --invert-grep --author=$1 --since="1.days" | grep -e '#'
}



function getMeTodayGit {
	git log --pretty="%s" --author=$1 --since="1.days" | grep -e '#'
}



alias timesheet='me="my_name";me_code=$(getMeTodayGit $me); oth_code=$(getOtherTodayGit $me); echo "Code"; echo $me_code; echo ''; echo "Code Review"; echo $oth_code;'
alias timesheet-yest='me="my_name";me_code=$(getMeYesterdayGit $me); oth_code=$(getOthersYesterdayGit $me); echo "Code"; echo $me_code; echo ''; echo "Code Review"; echo $oth_code;'