## This example implements the SR Principle

In this case applying the SR principle using Ruby we got:

- **ObjectPrinter** (UserPrinter in the diagram) module
- **StringEncrypter** module
- **User** class
- **App** class (Main in the diagram) which integrates the *User* class and the modules.

![SRP diagram](https://github.com/AldoFusterTurpin/Solid_Principles_Python/blob/main/src/SRP/right/right.png)

- App execution

This example has the `app.rb` file which roles as main application and integrate all the other ones.

  - `ruby app.py`

when you run the app, it generates txt files: `john_file.txt` and `neo_file.txt`

- Tests execution (This will generate the `test.txt` file):
  - `rspec rspec/object_printer_spec.rb --profile`
  - `rspec rspec/string_encrypter_spec.rb --profile`
  - `rspec rspec/user_spec.rb --profile`
