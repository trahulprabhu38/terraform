resource "random_pet" "pet1" {
  prefix    = "mrs"
  separator = "."
  length    = "1"
}

resource "local_file" "pet" {
  filename = "/Users/trahulprabhu38/Desktop/terraform/done1.txt"
  content  = "we love ${random_pet.pet1.id}and ${var.all}"

#   lifecycle {
#     create_before_destroy = true
#     prevent_destroy       = true
#     # ignore_changes      = [content]
#     ignore_changes      = all
#   }

}

  
 
resource "local_file" "res" {
  filename = "/Users/trahulprabhu38/Desktop/terraform/done2.txt"
  content  = local_file.pet.content
}

output "result" {
  value       = random_pet.pet1.id
  description = "value of local file"
}