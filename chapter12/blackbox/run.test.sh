rm -rf out*/
javac --module-source-path src -d out -m easytext.syllablecounter
javac --module-path out --module-source-path src-test -d out-test -m easytext.syllablecounter.test
java -ea --module-path out:out-test \
     -m easytext.syllablecounter.test/javamodularity.easytext.test.TestSyllableCounter
