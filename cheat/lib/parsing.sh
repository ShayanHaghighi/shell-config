#!/bin/bash
is_response_ok(){
    raw_file="$1"

    cleaned_input="$( cat $raw_file | sed 's/\x1b\[[0-9;]*m//g')"
    result=""
    #TODO replace with grep
    if [[ "$cleaned_input" == *"Invalid permissions string"* ]]; then
        result="invalid"
    elif [[ "$cleaned_input" == *"404 NOT FOUND"* ]]; then
        result="invalid"
    elif [[ "$cleaned_input" == *"Unknown topic."* ]]; then
        result="unknown"
    fi
    echo $result
    echo $cleaned_input >> output.txt
    echo "result: $result" >> output.txt
}

get_parts(){
    query="$1"
    base_topic="$query"
    sub_topic=":root"
    if [[ "$1" == */* ]]; then
        base_topic=$(dirname $query)
        sub_topic=$(basename $query)
    elif [[ "$query" == *~* ]]; then
        IFS='~' read -r base_topic sub_topic <<< "$query"
    fi
    echo "base_topic='$base_topic'; sub_topic='$sub_topic'"

}
