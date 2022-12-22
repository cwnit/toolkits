

esource "aws_codepipeline" "codepipeline" {
  for_each = var.code_pipeline
  name     = "${local.name_prefix}-${var.AppName}"
  role_arn = each.value["code_pipeline_role_arn"]

  tags = {
    Pipeline_Key = each.key
  }

  artifact_store {
    type     = lookup(each.value, "artifact_store", null) == null ? "" : lookup(each.value.artifact_store, "type", "S3")
    location = lookup(each.value, "artifact_store", null) == null ? null : lookup(each.value.artifact_store, "artifact_bucket", null)
  }

  dynamic "stage" {
    for_each = lookup(each.value, "stages", {})
    iterator = stage
    content {
      name = lookup(stage.value, "name")
      dynamic "action" {
        for_each = lookup(stage.value, "actions", {}) //[stage.key]
        iterator = action
        content {
          name             = action.value["name"]
          category         = action.value["category"]
          owner            = action.value["owner"]
          provider         = action.value["provider"]
          version          = action.value["version"]
          run_order        = action.value["run_order"]
          input_artifacts  = lookup(action.value, "input_artifacts", null)
          output_artifacts = lookup(action.value, "output_artifacts", null)
          configuration    = action.value["configuration"]
          namespace        = lookup(action.value, "namespace", null)
        }
      }
    }
  }
}


