import pygame, sys, time
from settings import *
from level import Level

class ImageHandler:
    def __init__(self):
        self.create_boomerang()

    def create_boomerang(self):
        self.boomerang = []
        for i in range(5):
            image = pygame.image.load(your_image).convert_alpha()
            image = pygame.transform.scale(image, (width, height))
            self.boomerang.append(image)