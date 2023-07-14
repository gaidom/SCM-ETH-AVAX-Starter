# Starter Next/Hardhat Project

After cloning the github, you will want to do the following to get the code running on your computer.

1. Inside the project directory, in the terminal type: npm i
2. Open two additional terminals in your VS code
3. In the second terminal type: npx hardhat node
4. In the third terminal, type: npx hardhat run --network localhost scripts/deploy.js
5. Back in the first terminal, type npm run dev to launch the front-end.

After this, the project will be running on your localhost. 
Typically at http://localhost:3000/

#Functions you can explore  
This project has a simple user interface where users can connect their Metamask wallet. The user can burn, mint, transfer, or bet an eth. 

#Functions you can explore  
gamEth() - wherein the user can guess from number 0 or 1 and can win or lose an eth. An addition or deduction to the balance will happen. 
transEth() - wherein the user can transfer to another address. Value transferred will be deducted from the user's balance. 

