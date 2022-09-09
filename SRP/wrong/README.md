## This example doesn't implement the SR Principle

This application has the all the bussiness logic in one single unit abstraction (User class | **user.rb**).

![Wrong SRP diagram](https://github.com/AldoFusterTurpin/Solid_Principles_Python/blob/main/src/SRP/wrong/wrong.png)

- Execution:
  - `rspec rspec/user_spec.rb --profile`

This run the unit tests for User's methods: 'print_info' and 'encrypt_password'.

