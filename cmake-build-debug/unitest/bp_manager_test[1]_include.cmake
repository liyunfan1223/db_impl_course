if(EXISTS "/home/jack/miniob/cmake-build-debug/unitest/bp_manager_test[1]_tests.cmake")
  include("/home/jack/miniob/cmake-build-debug/unitest/bp_manager_test[1]_tests.cmake")
else()
  add_test(bp_manager_test_NOT_BUILT bp_manager_test_NOT_BUILT)
endif()
