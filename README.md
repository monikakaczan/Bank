# Bank

### Client requirements <br>
You should be able to interact with your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)<br>
Deposits, withdrawal.<br>
Account statement (date, amount, balance) printing.<br>
Data can be kept in memory (it doesn't need to be stored to a database or anything).<br>

### Acceptance criteria
Given a client makes a deposit of 1000 on 10-01-2012 <br>
And a deposit of 2000 on 13-01-2012<br>
And a withdrawal of 500 on 14-01-2012<br>
When she prints her bank statement<br>
Then she would see<br>

date || credit || debit || balance<br>
14/01/2012 || || 500.00 || 2500.00<br>
13/01/2012 || 2000.00 || || 3000.00<br>
10/01/2012 || 1000.00 || || 1000.00<br>
