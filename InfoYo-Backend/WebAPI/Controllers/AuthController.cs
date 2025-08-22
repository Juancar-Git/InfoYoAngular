using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;
using System.Web.Http;
using Microsoft.IdentityModel.Tokens;


//En .NET Core es prácticamente igual
namespace WebAPI.Controllers
{
    public class AuthController : ApiController
    {
        [HttpPost]
        public IHttpActionResult Login(LoginModel login)
        {
            //Obtener de la base de datos de forma encryptada
            if (login.UserName != "admin" || login.Password != "1234")
                return Unauthorized();

            //Obtener del archivo config
            var key = "clave-secreta-para-token";
            var keyBytes = Encoding.UTF8.GetBytes(key);

            var tokenDescriptor = new SecurityTokenDescriptor
            {
                Subject = new ClaimsIdentity(new List<Claim>
                {
                    new Claim(ClaimTypes.Name, login.UserName)
                }),
                // La sesión expira en 15 minutos, en el caso de InfoJobs, si marcas la casilla expira en 45 días
                Expires = DateTime.UtcNow.AddMinutes(15),
                SigningCredentials = new SigningCredentials(
                    new SymmetricSecurityKey(keyBytes),
                    SecurityAlgorithms.HmacSha256Signature
                    )
            };

            var tokenHandler = new JwtSecurityTokenHandler();
            var token = tokenHandler.CreateToken(tokenDescriptor);
            var jwt = tokenHandler.WriteToken(token);


            return Ok(new { token = jwt });
        }
    }

    // OBTENER AUser desde el BLL, Y UTILIZAR EL PASSWORD ENCRIPTADO
    public class LoginModel
    {
        public string UserName { get; set; }
        public string Password { get; set; }
    }
}
