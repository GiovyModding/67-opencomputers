-- Script per riprodurre file .dfpwm con lo Speaker in CC:Tweaked
local dfpwm = require("cc.audio.dfpwm")
local speaker = peripheral.find("speaker")

if not speaker then
  print("Errore: Nessun altoparlante trovato collegato!")
  return
end

local filename = "67.dfpwm"
if not fs.exists(filename) then
  print("Errore: Il file " .. filename .. " non esiste nella directory.")
  return
end

print("Riproduzione di " .. filename .. " in corso...")
local decoder = dfpwm.make_decoder()

for chunk in io.lines(filename, 16 * 1024) do
  local buffer = decoder(chunk)
  while not speaker.playAudio(buffer) do
    os.pullEvent("speaker_audio_empty")
  end
end

print("Riproduzione completata!")
