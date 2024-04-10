provider "aws" {
  region = "your_aws_region"
}

resource "aws_instance" "minecraft_server" {
  ami           = "ami-019f9b3318b7155c5"
  instance_type = "t3.micro"
  
  # Add more configuration as needed (e.g., key_name, subnet_id, security_group_id).
  
  tags = {
    Name = "minecraft-server"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt update",
      "sudo apt install -y default-jdk",
      "mkdir minecraft-server",
      "cd minecraft-server",
      "wget https://launcher.mojang.com/v1/objects/...minecraft_server.jar",
      "java -Xmx1024M -Xms1024M -jar minecraft_server.jar nogui",
      # Add more commands to customize server setup as needed.
    ]
  }
}