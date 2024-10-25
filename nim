from time import sleep
seconds = 1
import random
def display_piles(piles):
    print(f"current piles {piles}")

def move_check(pile, pile_count, piles):
    if pile < 1 or pile > 3:
        return False
    if piles[pile - 1] < pile_count or pile_count < 1:
        return False
    return True

def game_over(piles):
    sum(piles) == 0
    
    

def player_move(player_name, piles, pile_count, pile):
    print(f"player {player_name}turns ")
    while True:
        pile = int(input("chose the pile from 1-3:"))
        pile_count = int(input("how many to remove from pile {pile}"))
        if move_check(pile, piles, pile_count):
            piles[pile - 1] -= pile_count
            break
        else:
            print("incorrect move, please try again!")
#nim game
while True:
    print("welcom to nim game!")
    sleep(seconds)
    print("here is the steps for nim game.")
    print("player#1 picks a pile, then removes one or more counters from that pile")
    print("it's ok to pick the whole pile.")
    print("Player#2 pick a pile, then removes one or more counters from that pile")
    print("repeat them untill which ever player is forced to take the last counter is the Loser!")
    piles = [random.randint(1,9), random.randint(1,9), random.randint(1,9)]
    display_piles(piles)

    player1_name = input("player #1 name :")
    player2_name = input("player #2 name :")
    
    player1_turn = True 
    while True:
        if player1_turn:
            player_move(player1_name, piles)
        else:
            player_move(player2_name, piles)
        display_piles(piles)

        if game_over(piles):
            if player1_turn:
                print(f"{player1_name} loses! You had to take the last counter.")
            else:
                print(f"{player2_name} loses! You had to take the last counter.")
            break
            
        if player1_turn:
            player1_turn == False 
        else:
            player1_turn = True
           
