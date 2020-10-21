using System;
using System.ComponentModel;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace RoadFlow.Data.Model
{
    [Serializable]
    public class StudentExcel
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
        public float Quantity { get; set; }

        /// <summary>
        /// Account
        /// </summary>
        public string Account { get; set; }

        public float Note { get; set; }

        /// 安装工程费
        public float InstallCost { get; set; }

        /// <summary>
        /// 设备购置费
        /// </summary>
        public float DeviceCost { get; set; }

        /// <summary>
        /// 工程建设其他费用
        /// </summary>
        public float OtherCost { get; set; }

        /// <summary>
        /// 工程建设其他费用
        /// </summary>
        public float Total { get; set; }

        /// <summary>
        /// 工程建设其他费用
        /// </summary>
        public float Quota { get; set; }

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
