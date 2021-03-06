function f = p15_fun ( n, p )

%*****************************************************************************80
%
%% P15_FUN evaluates the integrand for problem 15.
%
%  Integrand:
%
%    f(x,y) = 1 / sqrt ( 1 - X - Y )
%
%  Vertices:
%
%    (0,0), (1,0), (0,1)
%
%  Integral:
%
%    4/3
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license.
%
%  Modified:
%
%    10 April 2007
%
%  Author:
%
%    John Burkardt
%
%  Reference:
%
%    Elise deDoncker, Ian Robinson,
%    Algorithm 612:
%    Integration over a Triangle Using Nonlinear Extrapolation,
%    ACM Transactions on Mathematical Software,
%    Volume 10, Number 1, March 1984, pages 17-22.
%
%  Parameters:
%
%    Input, integer N, the number of evaluation points.
%
%    Input, real P(2,N), the evaluation points.
%
%    Output, real F(N), the function values.
%
  f(1:n) = 0.75 ./ sqrt ( 1.0 - p(1,1:n) - p(2,1:n) );

  return
end
