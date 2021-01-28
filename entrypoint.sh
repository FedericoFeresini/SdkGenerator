#!/bin/bash
set -e
echo "Input values: $*"
if [ -n "${GITHUB_EVENT_PATH}" ]
then
	EVENT_PATH="${GITHUB_EVENT_PATH}"
elif [ -f ./sample_push_event.json ]
then
	EVENT_PATH='./sample_push_event.json'
	LOCAL_TEST=true
else
	echo “No JSON data to process.”
	exit 1
fi

jq '.commits[].message, .head_commit.message' < $EVENT_PATH

#if keyword is found
if jq '.commits[].message, .head_commit.message' < $EVENT_PATH | grep -i -q "$*";
then
	VERSION=$(date +%F .%s)
	DATA="$(printf '{"tag_name":"v%s",' $VERSION)"
	DATA="${DATA} $(printf '"target_commitish":"master",')"
	DATA="${DATA} $(printf '"name":"v%s",' $VERSION)"
	DATA="${DATA} $(printf '"body":"Automated release with keyword: %s",' "$*")"
	DATA="${DATA} $(printf '"draft":false, "prerelease":false}')"

	URL="https://api.github.com/repos/${GITHUB_REPOSITORY}/releases?access_token=${GITHUB_TOKEN}"

	if [[ "${LOCAL_TEST}" == *"true"* ]];
	then 
		echo "## [TESTING] Keyword was found but no release was created"
	else
		echo $DATA | http POST $URL | jq .
	fi
#otherwise
else
	echo "Nothing to process."
