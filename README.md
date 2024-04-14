## Install Python

Following
the [wiki](https://github.com/NDViet/test-automation-fwk-python/wiki/Setup-the-project#download-and-install-python)

Refer to: https://docs.robotframework.org/docs/getting_started/testing#install-python

## Install Robot Framework

```Bash
pip install robotframework
```

Refer to: https://docs.robotframework.org/docs/getting_started/testing#install-robot-framework

Robot Framework is installed globally, command `robot` is available in the terminal. Check the version of Robot
Framework:

```Bash
robot --version
```

## Run tests

_Note: ensure the terminal is in the root directory of the project_

### Demo1: Execute simple test using Standard Library

```Bash
robot --include demo1 --outputdir reports ./tests
```

_`--outputdir` defines where to create output files (log.html, output.xml, report.html)_

### Demo2: Execute simple test using open-source External Library is installed by `pip`

```Bash
pip install robotframework-seleniumlibrary
```

```Bash
robot --include demo2 --outputdir reports ./tests
```

### Demo3: Execute simple test using custom External Library is implemented by Python with static API

```Bash
robot --include demo3 --outputdir reports --pythonpath src/test_library/utilities ./tests
```

_`--pythonpath` additional locations to add to the module search path_

### Demo4: Execute simple test using custom External Library is implemented by Python with dynamic API

```Bash
pip install jsonpath_ng
```

```Bash
robot --include demo4 --outputdir reports --pythonpath src/test_library/utilities ./tests
```

### Demo5: Execute simple test using custom External Library is implemented by Python with hybrid API

```Bash
pip install pyyaml
```

```Bash
robot --include demo5 --outputdir reports --pythonpath src/test_library/utilities ./tests
```

### Demo6: Execute all tests in previous demos in a single execution

```Bash
robot --include session1 --outputdir reports --pythonpath src/test_library/utilities ./tests
```