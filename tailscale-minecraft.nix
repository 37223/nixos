{ pkgs ? import <nixpkgs> {} }:

{
  services.tailscale.enable = true;
  services.tailscale.authKey = "your-auth-key";  # Replace with your Tailscale auth key
  
  services.minecraft-server.enable = true;
  services.minecraft-server.port = 25565;
  services.minecraft-server.eula = true;
  services.minecraft-server.defaultWorld = "world"; # Replace with your desired world name

  networking.firewall.allowedTCPPorts = [ 25565 ]; # Allowing Minecraft server access
}