using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace NationalPark.Models
{
    public class Itinerary
    {
        public int itinerary_id { get; set; }
        public int User_id { get; set; }
        public int Park_id { get; set; }
        public string Name { get; set; }
        public string Notes { get; set; }
        public DateTime Start_date { get; set; }
        public DateTime End_date { get; set; }
        public DateTime Create_date { get; set; }



    }
}