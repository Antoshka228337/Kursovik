using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Testovaya.Model
{
    public static class AppData//Связь с БД на которую потом ссылаемся почти в каждом окне приложения
    {
        public static PenisEntities db = new PenisEntities();
    }
}
