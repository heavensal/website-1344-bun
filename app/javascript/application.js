// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import React from 'react';
import ReactDOM from 'react-dom/client';
import { BackgroundBeams } from "./react_app/BackgroundBeams";


document.addEventListener('DOMContentLoaded', () => {
  const root = ReactDOM.createRoot(document.querySelector('#react-root'));
  root.render(
      <BackgroundBeams />
  );
});
