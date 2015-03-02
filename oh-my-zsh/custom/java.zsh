alias jhome='/usr/libexec/java_home'

javas() {
    jhome -V
}

java6() {
    export JAVA_HOME=$(jhome -v 1.6)
}

java7() {
    export JAVA_HOME=$(jhome -v 1.7)
}

java8() {
    export JAVA_HOME=$(jhome -v 1.8)
}
