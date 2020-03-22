# cmake_examples
This repo provides the following CMake examples:
- cmake basic language features
- cmake package based builds examples

Structure description:

- **cmake_language_examples**:
    This directory contains simple CMake scripts that can be executed using "cmake -P <script_name>"

- **packages**: 
    Contains two CMake projects **package1** and **package2**.
    
    These CMake projects will be consumed by **packages_consumers** as CMake packages using find_package functionality (and add_subdirectory)

- **packages_consumers**:
    Consumes packages provided in **packages** directory.
    It consumes **package1** using find_package functionality
    It consumes **package2** using add_subdirectory functionality
