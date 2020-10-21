using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace RoadFlow.Data.Model
{
    public class CExamProfession
    {
        int id;
        string pn;
        public System.Int32 ProfessionId
        {
            get
            {
                return id;
            }
            set
            {
                id = value;
            }
        }


        public System.String ProfessionName
        {
            get
            {
                return pn;
            }
            set
            {
                pn = value;
            }
        }
    }
}
