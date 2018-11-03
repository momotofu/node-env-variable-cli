# Set Node local environment variables
A command line tool for Node.js to export a list of environment key value pairs to
an export.sh file; which can then be used as a part of a development
script to set local environment variables.

## Usage
1. clone this repo `git clone https://github.com/momotofu/node-env-variable-cli.git` and copy `set_env.sh` to the same directory as your `package.json` file.
2. Add the list of environment variables to APIServices array in the
   `set_env.sh` file. See file comments for an example and further instructions.
3. To populate the script you'll use to set local env variables run
   `source set_env.sh`. This command will run the user through each
environment variable key and prompt for the associated value. When user
has entered all the required values, an `exports.sh` file will be generated.
4. To export local environment variables add `source exports.sh` to your
   dev script in your `package.json` file.
   
   ```javascript
     "scripts": {
         "dev": "source exports.sh; concurrently --kill-others \"webpack-dev-server --mode=development --progress --colors --port 2992\" \"NODE_ENV=development nodemon ./src/backend/app.js\"",
      }
```
