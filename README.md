# RobotFramework-BDD-eBayAutomation
# Installation
Use requirements.txt to install the required packages and run this project
# About the Project
It is automation of eBay commercial site using Robot Framework. POM design pattern & BDD-Cucumber style is applied to develop this project
# Page Objects
The pages folder holds the locators and the functions which is called by test cases (in the tests folder)
pages/abstract_pages.robot contains common functionalities used by other page objects
resources.robot is used to open ebaysite and maximize the browser window
# Tests
The project consists of four tests
- login test: which is used to sign in to ebay site using valid credential
- search test: which is used to do a generic search of smartwatch using Jewelry & Watches category
- electronics test: which is used to search a Playstation under Video Games & Consoles category of Electronics menu
- fashion test: which is used to search Fine Jewelry under Jewelry category of Fashion menu

# Report
The result folder consists of report.html which shows the result of the last test execution
