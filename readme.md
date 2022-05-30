# Vending Machine Smart Contract


# Things used in the project :-

1. Solidity programming language.
2. Ethereum.
3. Remix IDE.




# Architecture of the project :-

**Global Variables** :- 
1. Owner -> The real owner who deployed the contract ( type address ).
2. Balances -> All the players address will be stored in this dynamic array ( type address[] ).


**Functions**  :- 
1. purchase
2. reStock
3. get balance.



# How It works :-

1. Initially using constructor the owner address and total cans available is saved in state variable.

2. The costumer buy cans using purchaseCan() function in vending machine. If there is enough cans quantity available then the cans are given and the address and total can purchased is stored in state variable mapping.

3. When the vending machine is empty only owner can add more cans to it using reStock() function by giving total quantity adding.

4. A costumer can see their history of how many cans are purchased by me by cansPurchased() function.