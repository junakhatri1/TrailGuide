using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NationalPark.Models
{
    public class Park
    {
        public int Park_id { get; set; }
        public string Name{ get; set; }
        public string Location { get; set; }
        public string State { get; set; }
        public decimal Area { get; set; }
        public DateTime DateOfEstablishment { get; set; }
        public int Recreation_visitorsIn2016 { get; set; }
        public string Description { get; set; }
    }
}