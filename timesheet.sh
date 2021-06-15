# Your email or your username
ME="me@example.com"

# Yesterday timesheet
function getMeYesterdayGit {
	git log --pretty="%s" --author=$1 --until="1.days" --since="2.days" | grep -e '#'
}

function getOthersYesterdayGit {
	git log --pretty="%s" --invert-grep --author=$1 --until="1.days" --since="2.days" | grep -e '#'
}

function getYesterdayTimesheet {
    ME_CODE=$(getMeYesterdayGit $ME);
    OTH_CODE=$(getOthersYesterdayGit $ME);

    echo "Code";
    echo $ME_CODE;
    echo '';
    echo "Code Review";
    echo $OTH_CODE;
}

# Today timesheet
function getOthersTodayGit {
	git log --pretty="%s" --invert-grep --author=$1 --since="1.days" | grep -e '#'
}

function getMeTodayGit {
	git log --pretty="%s" --author=$1 --since="1.days" | grep -e '#'
}

function getTimesheet {
    ME_CODE=$(getMeTodayGit $ME);
    OTH_CODE=$(getOthersTodayGit $ME);

    echo "Code";
    echo $ME_CODE;
    echo '';
    echo "Code Review";
    echo $OTH_CODE;
}

alias timesheet='getTimesheet'
alias timesheet-yest='getYesterdayTimesheet'
