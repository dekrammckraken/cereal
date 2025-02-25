return {
  {
    "barrett-ruth/live-server.nvim",
    build = "npx live-server",
    cmd = { "LiveServerStart", "LiveServerStop" },
    opts = {
      port = 3000, -- Cambia la porta di default
      browser = "firefox", -- Apri automaticamente in Firefox
    },
  },
}
