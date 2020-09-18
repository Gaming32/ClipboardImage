import pygame


def main(outfile):
    pygame.display.init()
    pygame.display.set_mode((1, 1))
    pygame.scrap.init()

    data = pygame.scrap.get(pygame.SCRAP_BMP)
    if data is None:
        return 2

    with open(outfile, 'wb') as fp:
        fp.write(data)

    return 0


if __name__ == '__main__':
    import sys
    sys.exit(main(sys.argv[1]))
