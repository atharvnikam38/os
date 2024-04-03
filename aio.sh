#!/bin/bash

calculate_pay() {

    echo "Enter the number of hours worked:"
    read hours_worked
    echo "Enter the hourly rate:"
    read hourly_rate

    total_pay=$(echo "$hours_worked * $hourly_rate" | bc)

    echo "Total pay: $total_pay"
}

calculate_pay
