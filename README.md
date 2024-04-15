<!-- TOC -->
  * [Sessions](#sessions)
  * [Install Python](#install-python)
  * [Install common test library](#install-common-test-library)
  * [Run tests](#run-tests)
    * [Demo1: Execute simple test using Standard Library](#demo1-execute-simple-test-using-standard-library)
    * [Demo2: Execute simple test using open-source External Library is installed by `pip`](#demo2-execute-simple-test-using-open-source-external-library-is-installed-by-pip)
    * [Demo3: Execute simple test using custom External Library is implemented by Python with static API](#demo3-execute-simple-test-using-custom-external-library-is-implemented-by-python-with-static-api)
    * [Demo4: Execute simple test using custom External Library is implemented by Python with dynamic API](#demo4-execute-simple-test-using-custom-external-library-is-implemented-by-python-with-dynamic-api)
    * [Demo5: Execute simple test using custom External Library is implemented by Python with hybrid API](#demo5-execute-simple-test-using-custom-external-library-is-implemented-by-python-with-hybrid-api)
    * [Demo6: Execute all tests in previous demos in a single execution](#demo6-execute-all-tests-in-previous-demos-in-a-single-execution)
  * [Autoformatting Robot Framework code](#autoformatting-robot-framework-code)
<!-- TOC -->

## Sessions

Switch branch to see contents of each session

- [Session 1](../../tree/session1)
- [Session 2](../../tree/session2)

## Install Python

Following
the [wiki](https://github.com/NDViet/test-automation-fwk-python/wiki/Setup-the-project#download-and-install-python)

Refer to: https://docs.robotframework.org/docs/getting_started/testing#install-python

## Install common test library

Check out the repository [test-automation-fwk-python](../../../test-automation-fwk-python) for common test library
source. Clone the library repository to local in same level with this test repository.

Follow [steps](../../../test-automation-fwk-python#build-and-install-common-test-library) to build and install the
common test library

As the instruction, you are able to install the common test library in the global environment or in the in-project
virtualenv.

With using in-project virtualenv in [test-automation-fwk-python](../../../test-automation-fwk-python). Needs to activate
the virtualenv before running tests in this repo.

```Bash
../test-automation-fwk-python/.venv/Scripts/activate
```

Based the environment you selected and install the common test library, you can proceed to the next steps to execute
test. Ensure can check Robot Framework version by running the command:

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
robot --include demo2 --outputdir reports ./tests
```

### Demo3: Execute simple test using custom External Library is implemented by Python with static API

```Bash
robot --include demo3 --outputdir reports ./tests
```

_`--pythonpath` additional locations to add to the module search path_

### Demo4: Execute simple test using custom External Library is implemented by Python with dynamic API

```Bash
robot --include demo4 --outputdir reports ./tests
```

### Demo5: Execute simple test using custom External Library is implemented by Python with hybrid API

```Bash
robot --include demo5 --outputdir reports ./tests
```

### Demo6: Execute all tests in previous demos in a single execution

```Bash
robot --include session2 --outputdir reports ./tests
```

## Autoformatting Robot Framework code

You are able to use any IDE to work with Robot Framework code, while compose the code you may not always can keep the
format or indent consistent. `robotidy` is a tool to help you format the code once you have done.

`robotidy` is tool for cleaning up and changing format of Robot Framework test data files

Mandatory argument is the path to file or a directory to format. If a directory is given, all files inside it are
processed recursively.

```Bash
robotidy ./tests
```