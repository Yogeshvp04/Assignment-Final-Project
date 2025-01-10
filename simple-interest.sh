#!/bin/bash

# Simple Interest Calculation Script

# Function to calculate simple interest
calculate_simple_interest() {
  principal=$1
  rate=$2
  time=$3
  
  # Simple Interest formula: SI = (P * R * T) / 100
  interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
  
  echo "The simple interest is: $interest"
}

# Input: Principal amount, Rate of interest, and Time period
echo "Enter the principal amount:"
read principal

echo "Enter the rate of interest (in %):"
read rate

echo "Enter the time period (in years):"
read time

# Calculate simple interest
calculate_simple_interest $principal $rate $time

