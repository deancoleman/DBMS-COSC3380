import { Link, NavLink, useNavigate } from 'react-router-dom';
import '../components/Navbar.css';

const Navbar = () => {
  const userRole = localStorage.getItem('userRole');
  const navigate = useNavigate();

  const handleLogout = () => {
    localStorage.removeItem('userRole');
    localStorage.removeItem('token');
    navigate('/login');
  };

  // Guest Navigation
  if (!userRole) {
    return (
      <header className="header">
        <nav className="navbar">
          <NavLink to="/" className="nav-logo">
          <img src="/logo.png" alt="Ice Cream" />
          </NavLink>
          <div className="nav-items">
            <Link to="/">Home</Link>
            <Link to="/shop">Shop</Link>
            <Link to="/about">About Us</Link>
            <Link to="/login">Login</Link>
          </div>
        </nav>
      </header>
    );
  }

  // Customer Navigation
  if (userRole === 'customer') {
    return (
      <header className="header">
        <nav className="navbar">
          <NavLink to="/" className="nav-logo">Ice Cream Shop</NavLink>
          <div className="nav-items">
            <Link to="/">Home</Link>
            <Link to="/shop">Shop</Link>
            <Link to="/about">About Us</Link>
            <Link to="/customer/dashboard">My Account</Link>
            <button onClick={handleLogout} className="logout-btn">Logout</button>
          </div>
        </nav>
      </header>
    );
  }

  // Admin Navigation
  if (userRole === 'admin') {
    return (
      <header className="header">
        <nav className="navbar">
          <NavLink to="/" className="nav-logo">Ice Cream Shop</NavLink>
          <div className="nav-items">
            <Link to="/">Home</Link>
            <Link to="/admin/dashboard">Manage Products</Link>
            <Link to="/vendors">Vendors</Link>
            <Link to="/reports">Reports</Link>
            <button onClick={handleLogout} className="logout-btn">Logout</button>
          </div>
        </nav>
      </header>
    );
  }
};

export default Navbar;
