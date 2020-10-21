using System;
using System.ComponentModel;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace RoadFlow.Data.Model
{
    [Serializable]
    public class ExcelFirst
    {
        /// <summary>
        /// SNumber
        /// </summary>
        public string SNumber { get; set; }
        /// <summary>
        /// Name
        /// </summary>
        public string Name { get; set; }

        /// <summary>
        /// quantity
        /// </summary>
        public string Quantity { get; set; }

        /// <summary>
        /// Account
        /// </summary>
        public string Account { get; set; }

        public string Note { get; set; }

        /// 安装工程费
        public string InstallCost { get; set; }

        /// <summary>
        /// 设备购置费
        /// </summary>
        public string DeviceCost { get; set; }

        /// <summary>
        /// 工程建设其他费用
        /// </summary>
        public string OtherCost { get; set; }

        /// <summary>
        /// 工程建设其他费用
        /// </summary>
        public string Total { get; set; }

        /// <summary>
        /// 工程建设其他费用
        /// </summary>
        public string Quota { get; set; }

        private bool _isExcelVaildateOK = true;

        /// <summary>
        /// Excel验证是否通过，默认为true
        /// <para>true：通过；false：不通过</para>
        /// </summary>
        public bool IsExcelVaildateOK
        {
            get { return _isExcelVaildateOK; }
            set { _isExcelVaildateOK = value; }
        }
    }
}
