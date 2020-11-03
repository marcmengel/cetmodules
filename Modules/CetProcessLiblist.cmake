
# Avoid unnecessary repeat inclusion.
include_guard(DIRECTORY)

cmake_policy(PUSH)
cmake_minimum_required(VERSION 3.18.2 FATAL_ERROR)

function(cet_process_liblist RESULT_VAR)
  set(RESULT)
  foreach (arg IN LISTS ARGN)
    if (TARGET ${arg} OR
        arg MATCHES "(/|::|^((-|\\$<)|(INTERFACE|PRIVATE|PUBLIC|debug|general|optimized)$))")
      # Pass through as-is.
      list(APPEND RESULT ${arg})
    else()
      # Can we convert it to an uppercase variable we can substitute?
      string(TOUPPER "${arg}" ${arg}_UC)
      if (DEFINED ${${arg}_UC})
        message(DEBUG "cet_process_liblist(): substituting value of \${${${arg}_UC}} of ${arg}")
	      list(APPEND RESULT "${${${arg}_UC}}")
      else()
	      list(APPEND RESULT "${arg}")
      endif()
    endif()
  endforeach()
  set(${RESULT_VAR} PUBLIC "${RESULT}" PARENT_SCOPE)
endfunction()

cmake_policy(POP)