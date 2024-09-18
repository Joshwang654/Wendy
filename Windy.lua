# Initialize Pygame
pygame.init()

# Window Dimensions
win_width, win_height = 800, 600
win = pygame.display.set_mode((win_width, win_height))
pygame.display.set_caption("Boxing Game - Wendy")

# Colors
white = (255, 255, 255)
black = (0, 0, 0)
red = (255, 0, 0)

# Font Setup
font = pygame.font.Font(None, 36)

# Button Setup
button_rect = pygame.Rect(10, 10, 100, 50)
button_color = white
button_text = font.render('ON', True, black)

# Boxer Setup
boxer_rect = pygame.Rect(350, 500, 50, 50)
boxer_color = red

dodging = False

def draw_text(text, font, color, surface, x, y):
    textobj = font.render(text, True, color)
    textrect = textobj.get_rect()
    textrect.center = (x, y)
    surface.blit(textobj, textrect)

# Main Loop
running = True
while running:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            pygame.quit()
            sys.exit()
        if event.type == pygame.MOUSEBUTTONDOWN:
            if button_rect.collidepoint(event.pos):
                dodging = not dodging
                button_text = font.render('OFF' if dodging else 'ON', True, black)
    
    # Clear the Screen
    win.fill(black)

    # Draw the Button
    pygame.draw.rect(win, button_color, button_rect)
    win.blit(button_text, (button_rect.x + 20, button_rect.y + 10))

    # Draw the Boxer
    pygame.draw.rect(win, boxer_color, boxer_rect)

    # Check for Dodging
    if dodging:
        if random.randint(1, 20) == 1:  # Simple random dodging
            boxer_rect.x += random.randint(-10, 10)
    
    # Draw the Name
    draw_text("Wendy", font, white, win, win_width // 2, 30)

    # Update the Display
    pygame.display.update()
    pygame.time.delay(50)
