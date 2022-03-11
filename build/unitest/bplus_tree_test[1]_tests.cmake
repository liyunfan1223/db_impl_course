add_test( test_bplus_tree.test_bplus_tree_insert /home/jack/miniob/build/bin/bplus_tree_test [==[--gtest_filter=test_bplus_tree.test_bplus_tree_insert]==] --gtest_also_run_disabled_tests)
set_tests_properties( test_bplus_tree.test_bplus_tree_insert PROPERTIES WORKING_DIRECTORY /home/jack/miniob/build/unitest)
set( bplus_tree_test_TESTS test_bplus_tree.test_bplus_tree_insert)
