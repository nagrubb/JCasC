pipelineJob('Machines') {
  definition {
    cps {
      script(readFileFromWorkspace('machines/linux.groovy'))
    }
  }
}
