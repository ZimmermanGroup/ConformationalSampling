
  SET(ENV{PYTHONPATH} /export/zimmerman/paulzim/bcat/openbabel-2.4.1/scripts/python:/export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/lib)
  SET(ENV{LD_LIBRARY_PATH} /export/zimmerman/paulzim/bcat/openbabel-2.4.1/scripts/python:/export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/lib:$ENV{LD_LIBRARY_PATH})
  SET(ENV{BABEL_LIBDIR} /export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/lib/)
  SET(ENV{BABEL_DATADIR} /export/zimmerman/paulzim/bcat/openbabel-2.4.1/data)
  MESSAGE("/export/zimmerman/paulzim/bcat/openbabel-2.4.1/scripts/python:/export/zimmerman/paulzim/bcat/openbabel-2.4.1/build/lib")
  EXECUTE_PROCESS(
  	COMMAND /usr/bin/python /export/zimmerman/paulzim/bcat/openbabel-2.4.1/test/testsym.py 
  	#WORKING_DIRECTORY @LIBRARY_OUTPUT_PATH@
  	RESULT_VARIABLE import_res
  	OUTPUT_VARIABLE import_output
  	ERROR_VARIABLE  import_output
  )
  
  # Pass the output back to ctest
  IF(import_output)
    MESSAGE(${import_output})
  ENDIF(import_output)
  IF(import_res)
    MESSAGE(SEND_ERROR ${import_res})
  ENDIF(import_res)
