output "control_plane_ip" {
  description = "Public IP of the kubernetes control plane"
  value       = aws_instance.control_plane.public_ip
}

output "worker_ip" {
  description = "Public IP of the kubernetes worker node"
  value       = aws_instance.worker_node.public_ip
}
