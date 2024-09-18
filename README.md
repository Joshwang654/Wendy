def auto_dodge():
    # Example dodge logic
    print("Dodging...")
    pyautogui.press('a')  # Simulates pressing 'a' key for dodge

def auto_counter():
    # Example counter logic
    print("Countering...")
    pyautogui.press('s')  # Simulates pressing 's' key for counter

def main():
    # Define time intervals
    dodge_interval = 2  # seconds
    counter_interval = 5  # seconds

    # Run the script
    while True:
        # Randomly decide whether to dodge or counter
        action = random.choice(['dodge', 'counter'])

        if action == 'dodge':
            auto_dodge()
            time.sleep(dodge_interval)
        elif action == 'counter':
            auto_counter()
            time.sleep(counter_interval)

if __name__ == "__main__":
    main()
