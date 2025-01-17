/**
 * Copyright 2018 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "parent_id" {
  description = "Id of the resource under which the folder will be placed."
  default = "65552901371"
}

variable "parent_type" {
  description = "Type of the parent reosurce, defaults to organization."
  default     = "folder"
}

variable "names" {
  description = "Folder names."
  default     = [
    "dev",
    "staging",
    "production",
  ]
}

variable "per_folder_admins" {
  description = "List of IAM-style members per folder who will get extended permissions."
  default     = [
    "group:gcp-ddt-developers@apszaz.com",
    "group:gcp-ddt-qa@apszaz.com",
    "group:gcp-ddt-ops@apszaz.com",
  ]
}

variable "all_folder_admins" {
  description = "List of IAM-style members that will get the extended permissions across all the folders."
  default     = [
    "group:gcp-global-cicd@apszaz.com",
  ]
}
