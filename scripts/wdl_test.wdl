version 1.0

task my_task {

  input {
  # Task specific inputs
  }
  
  output {
  # Task specific outputs
  }
  
  command {
  # Command to execute (It can be anything such as Bash/Python/R/Perl)
  }
  
  runtime {
    docker: "mydockerimage@sha256:1234567890abcdef"
  }
  
}
