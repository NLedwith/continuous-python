#!/bin/bash

# While is_running=1, the python program will continuously execute.
# Can set is_running to 0 upon a condition to stop execution.
is_running=1

# This is the amount of time in seconds to wait for each execution. Set to 
# 3600 if you want it to run every hour but may be better to test with a 
# smaller interval.
run_interval=5

while [ is_running ]; do

	# Get the time that the program is going to start running at
	start_time=$(date +%s)

	echo "Starting Script"
	python3 app.py &

	# Get the time that the program finished running at
	end_time=$(date +%s)

	# This will sleep for the amount of time that run_interval is set
	# to minus the amount of time that it took for the program to execute.
	# You will want to lose sleep instead of a flag to save CPU cycles if
	# running in the cloud.
	elapsed=$((end_time-start_time))
	sleep_time=$(( run_interval - elapsed))

	# Make sure you actually need to sleep. If the python program takes longer
	# to run than the sleep time, it will just execute again. 
	if [ sleep_time > 0 ]; then
		sleep "$sleep_time"
	fi
done
