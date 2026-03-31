using Common.ViewModels;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace Logic.Security
{
    public class JwtService
    {
        public string encryptSHA256(string text, string secretKey)
        {
            using (SHA256 sha256Hash = SHA256.Create())
            {
                string combined = text + secretKey;
                byte[] bytes = sha256Hash.ComputeHash(Encoding.UTF8.GetBytes(combined));
                StringBuilder builder = new StringBuilder();

                for (int i = 0; i < bytes.Length; i++)
                {
                    builder.Append(bytes[i].ToString("x2"));
                }

                return builder.ToString();
            }
        }

        public string generateJWT(AUserVMR user, string secretKey, int minutesAdd)
        {
            var userClaims = new[]
            {
                new Claim(ClaimTypes.Email, user.Email)
            };

            var securityKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(secretKey));
            var credentials = new SigningCredentials(securityKey, SecurityAlgorithms.HmacSha256);

            var token = new JwtSecurityToken(
                claims: userClaims,
                expires: DateTime.UtcNow.AddMinutes(minutesAdd),
                signingCredentials: credentials
            );

            return new JwtSecurityTokenHandler().WriteToken(token);

        }

        public bool validateToken(string token, string secretKey)
        {
            var claimsPrincipal = new ClaimsPrincipal();
            var tokenHandler = new JwtSecurityTokenHandler();
            var validationParameters = new TokenValidationParameters
            {
                ValidateIssuerSigningKey = true,
                ValidateIssuer = false,
                ValidateAudience = false,
                ValidateLifetime = true,
                ClockSkew = TimeSpan.Zero,
                IssuerSigningKey = new SymmetricSecurityKey
                (Encoding.UTF8.GetBytes(secretKey))
            };

            try
            {
                claimsPrincipal = tokenHandler.ValidateToken(token, validationParameters, out SecurityToken validationToken);
                return true;
            }
            catch (SecurityTokenExpiredException ex)
            {
                //Manejar expirado
                Console.WriteLine("The Token has expired");
                return false;
            }
            catch (SecurityTokenInvalidSignatureException ex)
            {
                //Manejar firma invalida
                Console.WriteLine("The sign is ivalid");
                return false;
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error managing token");
                return false;
            }
        }
    }
}
