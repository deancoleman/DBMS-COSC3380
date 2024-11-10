import { Link, useNavigate } from 'react-router-dom';
import './Navbar.css';

const Navbar = () => {
  const userRole = localStorage.getItem('userRole');
  const navigate = useNavigate();

  const handleLogout = () => {
    localStorage.removeItem('userRole');
    localStorage.removeItem('token');
    navigate('/login');
  };

  // Guest Navigation (Not Logged In)
  if (!userRole) {
    return (
      <nav>
        <div>
          <Link to="/" className="nav-link">Ice Cream Shop</Link>
          <div>
          <Link to="/" className="nav-link">Home</Link>
          <Link to="/shop" className="nav-link">Shop</Link>
          <Link to="/about" className="nav-link">About Us</Link>
          <Link to="/login" className="nav-link">Login</Link>
          </div>
        </div>
      </nav>
    );
  }

  // Customer Navigation
  if (userRole === 'customer') {
    return (
      <nav>
        <div>
          <Link to="/" className="nav-link">Ice Cream Shop</Link>

          <div>
            <Link to="/">Home</Link>
            <Link to="/shop" className="nav-link">Shop</Link>
            <Link to="/about" className="nav-link">About Us</Link>
            <Link to="/customer/dashboard" className="nav-link">My Account</Link>
            {/* Add cart link if you have shopping cart feature */}
            {/* <Link to="/cart">Cart</Link> */}
            <button onClick={handleLogout}>Logout</button>
          </div>
        </div>
      </nav>
    );
  }

  // Admin Navigation
  if (userRole === 'admin') {
    return (
      <nav>
        <div>
          <Link to="/" className="nav-link">Ice Cream Shop</Link>

          <div>
            <Link to="/" className="nav-link">Home</Link>
            <Link to="/admin/dashboard" className="nav-link">Manage Products</Link>
            <Link to="/vendors" className="nav-link">Vendors</Link>
            <Link to="/reports" className="nav-link">Reports</Link>
            <button onClick={handleLogout}>Logout</button>
          </div>
        </div>
      </nav>
    );
  }
};

export default Navbar;