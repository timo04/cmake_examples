# cmake_examples
This is a repo used by me to test different cmake features

Structure description:

- **component1**:
    This illustrates an example describing how to install a package with CMake and prepare it for further usage 

- **component2**: 
    Simple component used in the master CMakeLists.txt file

- **component3**:
    This is just a CMake language script. It could have been replaced by a cmake script. (cmake -P <script_location>) but in that situation CMake context is lost.

- **component4**:
    This is an example for CMake cross compilation. The important part here is to use "cmake -G"MinGW Makefiles" -DCMAKE_TOOLCHAIN_FILE="D:\personal_projects\cmake_examples\component4\Toolchain-diab.cmake" . -Bbuild --debug-output" to build. Env variables for license file and the compiler at the specified location are a prerequisite.

- **Master CMakeLists.txt file**:
    This uses component1 artifacts with find_package functionality of CMake.

- **test.cmake**:
    This is a cmake test script and can be executed with "cmake -P test.cmake"