---
title: Parsing MySQL Slow Query Log With Logstash
layout: blog
tags:
    - software
    - logstash
    - mysql
---
I spent a good chunk of today trying to figure this out so am adding it here for reference. Every example i could find was either incorrect or out of date. This works[^1] with logstash. 1.2.2 and MySQL 5.*

    # mysql slow query logs, adapted from
    #     https://github.com/logstash/logstash/blob/master/spec/examples/mysql-slow-query.rb
    #     https://gist.github.com/jordansissel/1672751 #
    # this almost works - it stores the multiline event correctly and captures all
    # the fields *execpt* for those on the User@Host line
    grep {
        # ignore '# Time:' as we use the SET timestamp to get the time. grep is actually
        # on the deprecation cycle so need to figure out an alternative to this
        match => {
            message => [
                "# Time: "
            ]
        }
        negate => true
    }
    grok {
        match => {
            message => [
                "# User@Host: %{USER:user}\[[^\]+]\] @ %{HOST:host} \[%{IP:ip}?\]",
                "# Query_time: %{NUMBER:duration:float} \s*Lock_time: %{NUMBER:lock_wait:float} \s*Rows_sent: %{NUMBER:results:int} \s*Rows_examined: %{NUMBER:scanned:int}",
                "SET timestamp=%{NUMBER:timestamp};",
                "%{GREEDYDATA}"
            ]
        }
    }
    multiline {
        # you would think if we set the pattern to "# Time" with that as a pattern in
        # grok rather than skipping in the (deprecated) grep we would solve the problem
        # of not capturing fields on the User@Host line but unfortunately that doesn't
        # work because the Time line is not always present. so we have to hook onto
        # the User@Host line, the consequence of which is its fields not being captured
        pattern => "# User"
        negate => false
        what => "next"
    }
    multiline {
        # anything not starting with # is the actual query being run so roll it up with
        # the previous entries
        pattern => "^#"
        negate => true
        what => "previous"
    }
    date {
        # use the value from SET timestamp as the timestamp of the event
        match => [ "timestamp","UNIX" ]
    }
    mutate {
        # and then remove the timestamp field as it becomes redundant
        remove_field => [ "timestamp" ]
    }

<hr />

[^1]: Almost completely. See inline comments. It's also possible that MySQL's slow query log is hiding some nice surprise in store somewhere.
