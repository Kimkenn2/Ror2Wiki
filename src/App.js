import Tabs from './components/Tabs.js';
import './App.css';
import HomePage from './Pages/HomePage.js';
import Test from './Pages/Test.js';
import Items from './Pages/Items.js'
import {Routes, Route, BrowserRouter} from "react-router-dom"

function App() {
  return (
    <div>
      <BrowserRouter>
        <Routes>
          <Route path="/" element={<HomePage/>}/>
          <Route path="/test" element={<Test/>}/>
          <Route path="/items" element={<Items/>}/>
        </Routes>
      </BrowserRouter>
    </div>
  );
}

export default App;
