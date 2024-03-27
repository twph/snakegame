from turtle import Turtle


class Scoreboard(Turtle):
    def __init__(self):
        super().__init__()
        self.hideturtle()
        self.pencolor("white")
        self.penup()
        self.goto(-145, 275)
        self.pendown()
        self.score = 0
        with open("data.txt") as data:
            self.highest_score = int(data.read())
        self.count

    def count(self):
        self.clear()
        self.write(arg=f"Score:{self.score} Highest score: {self.highest_score}", move=False,
                   align='left', font=('Courier', 15, 'normal'))

    def reset(self):
        if self.score > self.highest_score:
            self.highest_score = self.score
            with open("data.txt", mode="w") as data:
                data.write(f"{self.highest_score}")
        self.score = 0
        self.count()

    def add(self):
        self.score += 1
