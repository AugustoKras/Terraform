#provider "google" {
#  access_token = "ya29.a0AeTM1ieo8_r1jlHig8fk1Q7mMqtnVz0c_Ddc66Ua_dUuS5uHX86-ObDUM7rRVDyGYVmo8tUKRLSvZk2QHrmfd2jhuqjPsY8v32pJNJIudhyHAgFvz_1VXxG1qavqMEXA5vlYfkhS-WIScOKhdwBewzcVQWTXdSgaCgYKAV8SARESFQHWtWOmg92ESDkx1z03W-p2KgIpaA0166"

#}

#data "google_project" "project" {
#    project_id = "aook-artifact-registry-test"
#}

#output "project_number" {
#  value = data.google_project.project.number
#}

resource "google_project" "my_project" {
  name       = "teste01"
  project_id = "teste000023"
  folder_id  = "295052022500"
}

resource "google_project" "my_project1" {
  name       = "teste02"
  project_id = "teste000024"
  folder_id  = "295052022500"
}

resource "google_project" "my_project2" {
 name       = "teste03"
 project_id = "teste000025"
 folder_id  = "295052022500"

}

