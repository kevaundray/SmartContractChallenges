# Challenge 2: N-Gamble


**Required Methods / Templates** : No Oracle

**Required IDE / Framework** : Remix

**Difficulty** : 2.5 / 5

**Gas requirements** : None

**Description**: 

                - This is a gambling game with N players.
                
                - The owner of the contract upon initialising, will specify how many people are playing.
                
                - The owner will also specify, how much each player will stake.
                
                - Each player should stake the exact amount specified by the owner.
                
                - If a player stakes more than specified, the contract will take the extra amount.
                
                - Once a player has staked their amount, they are allowed to refund that amount up until all players have staked.
                
                - Once all players have staked, anyone can then call a function that will select at random one of the players.
                
                - All players should then be notified of the winner.
                
                - 99% of the total staked amount, is paid to the winner. 1% is paid to the contract.
                
                - The owner of the contract is able to withdraw from the contract when he sees fit.
                
                - Each participant, must have an equal chance of winning.
                
                - Assume that the owner is not allowed to participate.
               
              
 **Submission**:
              - In order to submit, create a folder with your name or an alias and upload a .Sol/.txt file

*Hint:* The smart contract has no "random number generator" how will you emulate this function, with what you already have?
