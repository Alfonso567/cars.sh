#!/bin/bash
# cars.sh
# Alfonso Lopez
# CPSC298

# Inventory file
inventory_file="my_old_cars"

touch "$inventory_file"


while true; do
  echo "Car Inventory Menu:"
  echo "Type 1 to Add a car"
  echo "Type 2 to List the cars"
  echo "Type 3 to Quit"
  read -r -p "Enter your choice [1-3]: " choice

  case "$choice" in
    1)
      read -r -p "Enter the Year: " year
      read -r -p "Enter the Make: " make
      read -r -p "Enter the Model: " model
      echo "${year}:${make}:${model}" >> "$inventory_file"
      echo "Car added to inventory."
      ;;
    2)
      echo "Cars in inventory (sorted by year):"
      sort "$inventory_file"
      ;;
    3)
      echo "Goodbye!"
      break
      ;;
    *)
      echo "Invalid choice. Please enter 1, 2, or 3."
      ;;
  esac
done
