add_library(doctest_main doctest_main.cpp)

add_executable(tests
  basic_tests.cpp
)

target_link_libraries(tests doctest_main)
add_test(tests tests)

target_include_directories(doctest_main 
  PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/../extern/doctest
)