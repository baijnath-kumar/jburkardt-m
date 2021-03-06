function c = r8poly_mul ( na, a, nb, b )

%*****************************************************************************80
%
%% R8POLY_MUL computes the product of two real polynomials A and B.
%
%  Discussion:
%
%    The polynomials are in power sum form.
%
%    The power sum form is:
%
%      p(x) = a(0) + a(1) * x + ... + a(n-1) * x**(n-1) + a(n) * x**(n)
%
%  Licensing:
%
%    This code is distributed under the GNU LGPL license. 
%
%  Modified:
%
%    15 August 2004
%
%  Author:
%
%    John Burkardt
%
%  Parameters:
%
%    Input, integer NA, the dimension of A.
%
%    Input, real A(1:NA+1), the coefficients of the first polynomial factor.
%
%    Input, integer NB, the dimension of B.
%
%    Input, real B(1:NB+1), the coefficients of the second polynomial factor.
%
%    Output, real C(1:NA+NB+1), the coefficients of A * B.
%
  c(1:na+nb+1) = 0.0;

  for i = 0 : na
    c(i+1:i+nb+1) = c(i+1:i+nb+1) + a(i+1) * b(1:nb+1);
  end

  return
end
