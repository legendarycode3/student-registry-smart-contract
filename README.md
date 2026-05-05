# 🧑‍🎓 Student Registry Smart Contract

## Project Overview

## 📌 Features
* ****Student Registration:**** Authorized Users can can add students.
* ****Track Student Records:**** Student details can be tracked and retrieved using just their address.
* ****Access Control:****  Restricts access to only owner of the contract or admistrator
* ****Registered Students:**** All registered students on the system can be tracked.
* ****Update Existing Student:**** Student details/data , can be updated , accessible only be the owner.
  

## 🧠 Key Concepts Applied
* ****Struct:**** Sets the user or student details in one collection.
* ****Constructor:**** Sets the address that deploys the contract as the owner.
* ****Mapping:**** For tracking a student details using their address.
* ****Modifier:****  Access-Control for `onlyOwner` of the registry to access the details.
* ****Data types:**** Defines the exact nature of data to be stored, ensuring the blockchain knows how to handle, compute, and store it efficiently.
* ****Custom Error:****  Defined and used custom errors, for gas optimation.
* ****msg.sender:**** Records who owns the registry(e.g the `owner`).

## 📂 Project Structure (Files)
* ****`StudentRegistry.sol`****: : The main contract implementing addStudent, editStudent and getStudentDetails functions.
* ****`StudentRegistry.t.sol`****: Unit Test (suite) containing tests to validate contract functionalities.

## 🌐Technology Stack (Technologies Used)
* ****[Solidity](https://www.soliditylang.org/)**** - The programming language for writing the Smart contracts.
* ****[Remix IDE](https://remix.ethereum.org/)**** - used it to write, and deploy the smart contract directly in the browser first. A fastest way to get started, acting as a "no-setup" workshop for smart contract development.
* ****[Foundry(forge, cast, anvil)](https://www.getfoundry.sh/)****  - Development framework and testing suite.
* ****[Visual Studio Code](https://code.visualstudio.com/)**** - Install this IDE only if you are using foundry development kit rather than "Remix IDE" which is for quick prototying.

## Getting Started

### Prerequisites
* Solidity Compiler, Version ^0.8.19 or higher.
* `Remix IDE` or `Foundry Development Kit`

### Recommendation (For Beginners)
****NOTE (Use Remix IDE, for quick prototyping):**** You can literally just copy the main contract source code and paste it on Remix IDE and learn along side how the code works while trying to build yours as you keep building.

## Usage

## 📋Contract Details
### Functions:
* ****`addStudent()`****: Function adds a new student if not existing and also inherit `onlyOwner` modifier.
* ****`editStudent()`****: Function for editing an existing student. Only can be the done by the owner of the contract or admistrator.

## Usage Guide (How it works)

## Why This Matters (Student Smart Contract)

## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of (Some include):

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).

## Documentation

https://book.getfoundry.sh/

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

## Author
Built with ❤️ by [@legendarycode3](https://github.com/legendarycode3/)  </br>
Part of my  `60 Days of Solidity Challenge`

##  If you find this project helpful, please give it a star and link back to this repository. 
`I Appreciate`
