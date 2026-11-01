PACCHETTO 67 - OPENCOMPUTERS / ENIGMATICA 2 EXPERT

Contenuto:
- 67.lua: disegna il meme sullo schermo OpenComputers usando la GPU.
- 67.dfpwm: audio convertito in DFPWM1a, mono, 48 kHz, pronto per il Tape Drive Computronics.

DISPLAY
1. Copia 67.lua sul filesystem del computer OpenComputers.
2. Avvialo con: 67
   (oppure: lua 67.lua)
3. Il programma imposta la risoluzione al massimo possibile fino a 80x22/23 caratteri.
   È pensato per una GPU collegata a uno schermo con profondità colore sufficiente.

AUDIO
1. Copia 67.dfpwm sul filesystem del computer.
2. Per riprodurlo serve un Tape Drive Computronics e una cassetta.
3. La traccia è già codificata DFPWM1a. Il Tape Drive usa DFPWM e può riprodurre
   direttamente dalla cassetta; la procedura di scrittura dipende dal programma
   `tape` presente nella versione di Computronics installata.
4. Se colleghi un Audio Cable al Tape Drive, puoi instradare il suono a uno Speaker;
   altrimenti il Tape Drive emette il suono direttamente.

NOTA
Il programma 67.lua mostra l'immagine; non avvia automaticamente l'audio.
Per automatizzare anche la riproduzione devo sapere come hai collegato il Tape Drive
e se nel tuo computer è installato il programma `tape` (floppy Computronics).
