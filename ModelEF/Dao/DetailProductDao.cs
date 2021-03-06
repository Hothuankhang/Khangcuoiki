using ModelEF.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ModelEF.Dao
{
    public class DetailProductDao
    {
        private HoThuanKhangContext db;
        public DetailProductDao()
        {
            db = new HoThuanKhangContext();
        }
        public List<Product> ListWhereAll(System.Int32 id)
        {
            return db.Product.Where(x => x.ID == id).ToList();
        }
    }
}
