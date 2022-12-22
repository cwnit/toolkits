/*---------------------------------------------------------------------------------------------------
CODEPIPELINE VARIABLES
---------------------------------------------------------------------------------------------------*/
variable "code_pipeline" {
  type        = map(any)
  description = "The pipeline variables that builds out the stages"

}

variable "AppName" {
  type        = string
  description = "Name of the pipeline application you are running"

}
