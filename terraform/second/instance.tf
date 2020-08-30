resource "aws_instance" "tfmachine" {
  instance_type          = "t2.micro"
  ami                    = "${lookup(var.AMIS, var.AWS_REGION)}"
  subnet_id              = "subnet-8a86ede2"
  vpc_security_group_ids = ["sg-57b1ff39"]

# The Public SSH Key
  key_name = "${aws_key_pair.mykeypair.key_name}"

  tags = {
    Name = "TFManagedMachine"
    ENV  = "DEV"
  }

  provisioner "local-exec" {
    command = "echo ${aws_instance.tfmachine.private_ip} >> inventory.txt"
  }
}

output "ip" {
  value = "${aws_instance.tfmachine.private_ip}"
}
