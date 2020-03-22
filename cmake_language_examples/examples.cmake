# Looping through a list

SET(TEST t1.c t2.c t3.c)

foreach(TEST_FILE IN LISTS TEST)
    if(EXISTS TEST_FILE)
        message(STATUS "Current file ${TEST_FILE}")
    else()
        message(STATUS "File ${TEST_FILE} doesn't exist !")
    endif()
endforeach()

# Looping through a range

foreach(i RANGE 0 20 2)
    if(i EQUAL 2)
        message(STATUS "Loop element ${i}")
    elseif(i GREATER 2 AND i LESS 14)
        message(STATUS "Greater than 2: ${i}")
        continue()
    elseif(i EQUAL 18)
        message(STATUS "Breaking now because var is ${i}")
        break()
    endif()
endforeach()

# Cmake function example

function(mytest file)
    message(STATUS "The file in the function is ${ARGV0}")
endfunction()

mytest(File.c)
