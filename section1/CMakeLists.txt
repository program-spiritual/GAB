add_executable(function-call function-call.c)

add_library(section1 function-call.c)

install (TARGETS section1 DESTINATION bin)
install (FILES function-call.c DESTINATION include)
