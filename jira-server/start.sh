#!/bin/bash
if [ ! -f /usr/local/jira/_jira_home/dbconfig.xml ]; then
    echo "Copy dbconfig.xml"
    cp /usr/local/jira/dbconfig.xml /usr/local/jira/_jira_home/dbconfig.xml
fi

exec /usr/local/jira/server/bin/start-jira.sh -fg