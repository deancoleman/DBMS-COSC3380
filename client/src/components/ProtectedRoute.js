import { Navigate } from 'react-router-dom';

const ProtectedRoute = ({ children, allowedRole }) => {
  const token = localStorage.getItem('token');
  const userRole = localStorage.getItem('userRole');

  if (!token) {
    return <Navigate to="/login" />;
  }

  if (allowedRole && allowedRole !== userRole) {
    return <Navigate to="/login" />;
  }

  return children;
};

export default ProtectedRoute;