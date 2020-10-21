using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace RoadFlow.Data.Model
{
    [Serializable]
    public class FileModel
    {
        public int id { get; set; }
        public string fileName { get; set; }
        public string time { get; set; }
        public string size { get; set; }
        public string type { get; set; }
        public string fid { get; set; }
        public string path { get; set; }
        public string mark { get; set; }
        public string uploader { get; set; }
    }
}
