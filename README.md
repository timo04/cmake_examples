# cmake_examples
This repo provides a basic set of examples usefull while using CMake.

Through the examples one can find:
- cmake basic language features
- cmake package based builds examples

Structure description:

- **cmake_language_examples**:
    This directory contains simple CMake scripts that can be executed using "cmake -P <script_name>"

- **packages**: 
    Contains two CMake projects **package1** and **package2**.
    
    These CMake projects will be consumed by **packages_consumers** as CMake packages using find_package functionality (and add_subdirectory)

    Currently **package1** should be built before building a consumer.
    To do that follow the steps below:
    * Navigate to packages/package1 dir
    * cmake -H. -Bbuild
    * cmake --build build
    * cd build && make install


- **packages_consumers**:
    Consumes packages provided in **packages** directory.
    It consumes **package1** using find_package functionality
    It consumes **package2** using add_subdirectory functionality

    How to build consumer1 ?
    * cd packages_consumers/consumer_1
    * cmake -H. -Bbuild
    * cmake --build build
