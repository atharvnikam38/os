#!/bin/bash

calculate_circle_properties() {
    local radius=$1
    local pi=$(echo "scale=10; 4*a(1)" | bc -l) 

    local area=$(echo "scale=2; $pi * $radius * $radius" | bc -l) 
    local circumference=$(echo "scale=2; 2 * $pi * $radius" | bc -l)  

    echo "Area of the circle: $area"
    echo "Circumference of the circle: $circumference"
}

# Main code
echo "Enter the radius of the circle:"
read radius

calculate_circle_properties $radius
