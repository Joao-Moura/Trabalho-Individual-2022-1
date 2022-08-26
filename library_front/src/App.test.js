import { render, screen } from '@testing-library/react';
import Perfil from './Pages/Perfil';

test('renders learn react link', () => {
  render(<Perfil />);
  const linkElement = screen.getByText(/Meus livros alugados/i);
  expect(linkElement).toBeInTheDocument();
});
