pipelineJob('Machines') {
  displayName 'Something'
  definition {
    cps {
      sandbox(false)
      script(readFileFromWorkspace('machines/linux.groovy'))
    }
  }
}
