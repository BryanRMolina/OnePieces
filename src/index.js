import app from './app.js'

import { getConnetion } from './database/connection.js';


getConnetion();

app.listen(3000)
console.log('Servidor Iniciado... 2');