
#!/usr/bin/env bash

# Function to count files in the current directory (excluding 'total' line from ls -l)

list_directory() {
    ls -l | grep -v '^total' | wc -l
}

# Capture the file count using command substitution

file_count=$(list_directory)

line="Guess the number of files in the current directory"

while true; do
    echo "$line"
    read -p "Enter your guess: " guess

    # Validate that guess is a number
    if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
        echo "Please enter a valid number."
        continue
    fi

    if [[ $guess -gt $file_count ]]; then
        echo "Your guess is too high."
    elif [[ $guess -lt $file_count ]]; then
        echo "Your guess is too low."
    else
        echo "Congratulations! You guessed right."
        break
    fi
done

