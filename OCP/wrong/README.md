## This exampe doesn't implement the Open-Closed Principle

This application is not open to extension, the user's authorization is coupled to user.

![OCP diagram](https://github.com/AldoFusterTurpin/Solid_Principles_Python/blob/main/src/OCP/wrong/wrong.png)

- App execution

The *Main* app is located in the **App** class (app.rb file) so to run the application:

  - `ruby app.rb`

- Tests execution
  - `rspec rspec/user_spec.rb --profile`
  - `rspec rspec/string_encrypted_spec.rb --profile`
  - `rspec rspec/object_printer_spec.rb --profile`

