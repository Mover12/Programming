import pygame as pg
pg.init()

def draw():
	display.fill((0, 0, 0))
	pg.draw.circle(display, (225, 225, 225), (circleX, circleY), 20)
	pg.draw.rect(display, (164, 36, 9), (0, rectY, 10, 100))
	pg.draw.rect(display, (70, 166, 187), (790, playerY, 10, 100))
	pg.draw.rect(display, (225, 225, 225), (displayWidth / 2, 0, 2, displayHeight))
	pg.display.update()
def answer_algoritm(y1, y2):
	if y1 < y2:
		return y1 + speed_rect
	elif y1 > y2:
		return y1 - speed_rect 
	else:
		return y1

speedX, speedY = 0.25, 0.25
circleX, circleY = 400, 250
rectY, playerY, speed_rect = 200, 250, 0.135
displayWidth = 800
displayHeight = 500
display = pg.display.set_mode((displayWidth, displayHeight))
clock = pg.time.Clock()
clock.tick(60)
died = False
crossY = [390, 30, 270, 230, 70, 400, 70, 230, 270, 30, 390, 110, 190, 310, 0, 350, 150, 150, 350, 0, 310, 190, 110]
score = 0
pozitionY = crossY[score]
while not died:

	rectY = answer_algoritm(rectY, pozitionY)
	pressed_keys = pg.key.get_pressed()

	if pressed_keys[pg.K_UP] and playerY > 0:
		playerY -= speed_rect
	elif pressed_keys[pg.K_DOWN] and playerY + 100 < displayHeight:
		playerY += speed_rect

	if circleX == 30:
		if circleY < rectY + 100 and circleY > rectY:
			speedX = -speedX
			if score <= 21:
				score += 1 
			else:
				score = 0
			pozitionY = crossY[score]
	elif circleX == displayWidth - 30:
		if circleY < playerY + 100 and circleY > playerY:
			speedX = -speedX
	elif circleX == 20 or circleX == displayWidth - 20:
		died = True
	if circleY == displayHeight - 20 or circleY == 20:
		speedY = -speedY

	circleX += speedX
	circleY += speedY

	draw()

	for event in pg.event.get():
		if event.type == pg.QUIT:
			died = True
	
pg.quit()
quit()
