# Overbård Demo site contents

The demo is available at https://overbaard.github.io/demo/

To refresh the contents of this repository to show off new features in Overbård perform the following steps.

You need to set the environment variable `OB_DIST` to the `webapp/target` folder of your https://github.com/overbaard/overbaard clone. e.g. if it is cloned at `../overbaard/` (relative to the location of this readme), the value will be `../overbaard/webapp/target`. 

Do this either on the command-line:
```
export OB_DIST=../overbaard/webapp/target
```
or you can add it to a file called `populate.env` so you don't have to remember how to do it every time:
```
echo "OB_DIST=../overbaard/webapp/target" >> populate.env
```

Now in your main Overbård checkout, update the `webapp/src/demo/overbaard/1.0/boards/1.json` file  to show off the feature. 
You should also update `webapp/src/demo/overbaard/1.0/issues/DEMO.json` to show the corresponding configuration. 
Then from the `webapp/` folder run `ng build --configuration=demo`

Next back here, run `./populate.sh` to clean any stale files and copy across what you built in the last step.
Commit, push the changes, and wait for them to take effect.
