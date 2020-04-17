<div align="center">
  <div>
    <a href="https://github.com/xmake-io/ModernCppStarter/actions?query=workflow%3Abuild">
      <img src="https://img.shields.io/github/workflow/status/xmake-io/ModernCppStarter/build/master.svg?style=flat-square" alt="github-ci" />
    </a>
    <a href="https://github.com/xmake-io/ModernCppStarter/blob/master/LICENSE">
      <img src="https://img.shields.io/github/license/xmake-io/ModernCppStarter.svg?colorB=f48041&style=flat-square" alt="license" />
    </a>
  </div>
</div>

# ModernCppStarter

Setting up a new C++ project usually requires a significant amount of preparation and boilerplate code, even more so for modern C++ projects with tests, executables and contiguous integration.
This template is the result of learnings from many previous projects and should help reduce the work required to setup up a modern C++ project.

## Features

- [Modern XMake practices](https://xmake.io)
- Suited for single header libraries and projects of any scale
- Separation into library and executable code
- Integrated test suite
- Continuous integration via [GitHub Actions](https://help.github.com/en/actions/)
- Code formatting enforced by [clang-format](https://clang.llvm.org/docs/ClangFormat.html)
- Reproducible dependency management via [xmake-repo](https://github.com/xmake-io/xmake-repo)
- Support for [sanitizer tools and more](#additional-tools)

## Usage

### Adjust the template to your needs

- Use this repo [as a template](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/creating-a-repository-from-a-template) and replace all occurrences of "Greeter" in the relevant CMakeLists.txt with the name of your project
- Replace the source files with your own
- For single-header libraries: see the comments in [xmake.lua](xmake.lua)
- Add your project's codecov token to your project's github secrets under `CODECOV_TOKEN`
- Happy coding!

Eventually, you can remove any unused files, such as the standalone directory or irrelevant github workflows for your project.
Feel free to replace the License with one suited for your project.

### Build and run the standalone target

Use the following command to build and run the executable target.

```bash
xmake 
xmake run
xmake run standalone --help
```

### Build and run test suite

Use the following commands from the project's root directory to run the test suite.

```bash
xmake build test
xmake run test
```

To collect code coverage information, run:

```bash
xmake f -m coverage
xmake build test
xmake run test
```

