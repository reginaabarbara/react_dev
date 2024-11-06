import { useState } from 'react'
import './App.css'

import React from 'react';

const App = () => {
  
 // const mode = import.meta.env.VITE_MODE;

//  const env = process.env.NODE_ENV;

  return (
    <div>
      <h1>Bem-vindo ao meu aplicativo operação!</h1>
      {/* <p>Ambiente: {env}</p> */}
      <p>mode:{mode}</p>
    </div>
  );
};

export default App;