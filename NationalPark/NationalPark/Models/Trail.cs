using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NationalPark.Models
{
    public class Trail
    {
        public int Trail_id { get; set; }
        public string Name { get; set; }
        public int Park_id { get; set; }
        public string Difficulty_Level { get; set; }
        public decimal Distance { get; set; }
    }
}