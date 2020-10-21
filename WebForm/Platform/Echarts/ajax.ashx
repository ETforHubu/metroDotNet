<%@ WebHandler Language="C#" Class="ajax" %>

using System;
using  System.Collections.Generic;
using System.Web;
using System.Text;

public class ajax : IHttpHandler {
    public void ProcessRequest (HttpContext context) {
        string action = context.Request.QueryString["action"];
        switch (action)
        {
            case "Show":
                Show(); break;
            case "ShowChart":
                ShowChart();break;
            case "ShowLine":
                ShowLine();break;
            case "lineTwo":
                ShowLineTwo();break;
            case "LineThree":
                ShowLineThree();break;
            case "ShowBar":
                ShowBar();break;
            case "ShowPie":
                ShowPie();break;

        }
    }

    protected static void Show()
    {
        //   System.Threading.Thread.Sleep(3000);
        string ID = HttpContext.Current.Request["ID"];
        WriteJson("ID", ID);
    }

    private  void ShowChart()
    {
        //考虑到图表的series数据为一个对象数组 这里额外定义一个series的类
        List<LineChart.Series> seriesList = new List<LineChart.Series>();

        LineChart.Series series1 = new LineChart.Series();
        series1.name = "actual";
        series1.type = "bar";
        series1.data = new List<double>(){ 26061649.1, 26161649.41, 21782199.14, 27749708.51, 8819500.47, 27711342.26, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00 };

        LineChart.Series series2 = new LineChart.Series();
        series2.name = "Budget";
        series2.type = "bar";
        series2.data = new List<double>() { 28176503.36, 26161649.41, 21782199.14, 27749708.51, 8819500.47, 27711342.26, 2777777.00, 0.00, 0.00, 0.00, 0.00, 0.00, };

        seriesList.Add(series1);
        seriesList.Add(series2);
        var newObj = new
        {
            series = seriesList
        };

        string strJson = ToJson(newObj);

        WriteJson(strJson);
    }

    private void ShowLine()
    {

        RoadFlow.Platform.Directory bdirectory = new RoadFlow.Platform.Directory();
        List<RoadFlow.Data.Model.Directory> listdirectory = bdirectory.GetBySnumber();
        //考虑到图表的series数据为一个对象数组 这里额外定义一个series的类
        List<LineChart> seriesList = new List<LineChart>();


        LineChart LineChart1 = new LineChart();
        LineChart.Series lsSeries1 = new LineChart.Series();
        LineChart.xAxis lsxAxis1 = new LineChart.xAxis();
        lsSeries1.name = "指标";
        lsSeries1.type = "line";
        List<double> tempData = new List<double>();
        List<string> tempName = new List<string>();
        for (int i =0;i<listdirectory.Count;i++) {
            tempData.Add(Convert.ToDouble(listdirectory[i].Quota));
            tempName.Add(listdirectory[i].Title);
        }
        lsSeries1.data = tempData;
        lsxAxis1.data = tempName;
        lsxAxis1.type = "category";
        LineChart1.lcSeries = lsSeries1;
        LineChart1.lcxAxis = lsxAxis1;
        //series1.data = new List<double>() { 85165.40, 86288.46, 100539.85, 143651.50 };

        seriesList.Add(LineChart1);
        var newObj = new
        {
            series = seriesList
        };

        string strJson = ToJson(newObj);

        WriteJson(strJson);
    }

    //显示其他数据表
    private void ShowLineTwo()
    {

        RoadFlow.Platform.Directory bdirectory = new RoadFlow.Platform.Directory();
        List<RoadFlow.Data.Model.Directory> listdirectory = bdirectory.GetBySnumber();
        //考虑到图表的series数据为一个对象数组 这里额外定义一个series的类
        List<LineChart> seriesList = new List<LineChart>();


        LineChart LineChart1 = new LineChart();
        LineChart.Series lsSeries1 = new LineChart.Series();
        LineChart.xAxis lsxAxis1 = new LineChart.xAxis();
        lsSeries1.name = "actual";
        lsSeries1.type = "line";
        List<double> tempData = new List<double>();
        Double TempTotal;
        List<string> tempName = new List<string>();
        for (int i =0;i<listdirectory.Count;i++) {
            TempTotal= Convert.ToDouble(listdirectory[i].ConstructionCost + listdirectory[i].InstallCost + listdirectory[i].DeviceCost + listdirectory[i].OtherCost);
            tempData.Add( Math.Round(Convert.ToDouble( listdirectory[i].OtherCost)/TempTotal,2));
            tempName.Add(listdirectory[i].Title);
        }
        lsSeries1.data = tempData;
        lsxAxis1.data = tempName;
        lsxAxis1.type = "category";
        LineChart1.lcSeries = lsSeries1;
        LineChart1.lcxAxis = lsxAxis1;
        //series1.data = new List<double>() { 85165.40, 86288.46, 100539.85, 143651.50 };

        seriesList.Add(LineChart1);
        var newObj = new
        {
            series = seriesList
        };

        string strJson = ToJson(newObj);

        WriteJson(strJson);
    }

    //显示其他数据表
    private void ShowLineThree()
    {

        RoadFlow.Platform.Directory bdirectory = new RoadFlow.Platform.Directory();
        List<RoadFlow.Data.Model.Directory> listdirectory = bdirectory.GetBySnumber();
        //考虑到图表的series数据为一个对象数组 这里额外定义一个series的类
        List<LineChart> seriesList = new List<LineChart>();


        LineChart LineChart1 = new LineChart();
        LineChart.Series lsSeries1 = new LineChart.Series();
        LineChart.xAxis lsxAxis1 = new LineChart.xAxis();
        lsSeries1.name = "百分比（%）";
        lsSeries1.type = "line";
        List<double> tempData = new List<double>();
        Double TempTotal;
        Double TempThree;
        List<string> tempName = new List<string>();
        for (int i =0;i<listdirectory.Count;i++) {
            TempThree = Convert.ToDouble(listdirectory[i].ConstructionCost + listdirectory[i].InstallCost + listdirectory[i].DeviceCost);
            TempTotal= Convert.ToDouble(listdirectory[i].ConstructionCost + listdirectory[i].InstallCost + listdirectory[i].DeviceCost + listdirectory[i].OtherCost);
            tempData.Add( Math.Round(TempThree/TempTotal,2));
            tempName.Add(listdirectory[i].Title);
        }
        lsSeries1.data = tempData;
        lsxAxis1.data = tempName;
        lsxAxis1.type = "category";
        LineChart1.lcSeries = lsSeries1;
        LineChart1.lcxAxis = lsxAxis1;
        //series1.data = new List<double>() { 85165.40, 86288.46, 100539.85, 143651.50 };

        seriesList.Add(LineChart1);
        var newObj = new
        {
            series = seriesList
        };

        string strJson = ToJson(newObj);

        WriteJson(strJson);
    }




    private  void ShowPie()
    {
        RoadFlow.Platform.Directory bdirectory = new RoadFlow.Platform.Directory();
        List<RoadFlow.Data.Model.Directory> listdirectory = bdirectory.GetBySnumber();
        //考虑到图表的series数据为一个对象数组 这里额外定义一个series的类
        //List<SeriesPie> seriesList = new List<SeriesPie>();
        List<SeriesPie> seriesList = new List<SeriesPie>();

        title title1 = new title();
        SeriesPie LineChart1 = new SeriesPie();
        LineChart1.name = "单位（万元）";
        LineChart1.type = "pie";
        List<object> tempData = new List<object>();
        tempData.Add(new {name="建筑工程费",value=listdirectory[1].ConstructionCost});
        tempData.Add(new {name="安装工程费",value=listdirectory[1].InstallCost});
        tempData.Add(new {name="设备购置费",value=listdirectory[1].DeviceCost});
        tempData.Add(new {name="工程建设其他费用",value=listdirectory[1].OtherCost});
        LineChart1.data = tempData;
        title1.text = listdirectory[1].Title;
        title1.subtext = "暂未确定";
        title1.left = "center";
        //lists = new List<object>();

        //lists.Add(new {name="区间1",value=4000});
        //lists.Add(new {name="区间2",value=6000});
        //lists.Add(new {name="区间3",value=5000});
        //seriesPie1.data = lists;


        var newObj = new
        {
            series = LineChart1,
            title = title1,
        };

        string strJson = ToJson(newObj);

        WriteJson(strJson);
    }

    private  void ShowBar()
    {
        RoadFlow.Platform.Directory bdirectory = new RoadFlow.Platform.Directory();
        List<RoadFlow.Data.Model.Directory> listdirectory = bdirectory.GetBySnumber();
        //考虑到图表的series数据为一个对象数组 这里额外定义一个series的类
        List<LineChart.Series> seriesList = new List<LineChart.Series>();
        LineChart.xAxis lsxAxis1 = new LineChart.xAxis();
        LineChart.Series series1 = new LineChart.Series();

        List<double> tempData = new List<double>();
        List<double> tempData1 = new List<double>();
        List<double> tempData2 = new List<double>();
        List<double> tempData3 = new List<double>();
        List<string> tempName = new List<string>();
        for (int i =0;i<listdirectory.Count;i++) {
            tempData.Add(Convert.ToDouble(listdirectory[i].ConstructionCost));
            tempData1.Add(Convert.ToDouble(listdirectory[i].InstallCost));
            tempData2.Add(Convert.ToDouble(listdirectory[i].DeviceCost));
            tempData3.Add(Convert.ToDouble(listdirectory[i].OtherCost));
            tempName.Add(listdirectory[i].Title);
        }
        series1.name = "建筑工程费";
        series1.type = "bar";
        series1.data = tempData;

        LineChart.Series series2 = new LineChart.Series();
        series2.name = "安装工程费";
        series2.type = "bar";
        series2.data = tempData1;

        LineChart.Series series3 = new LineChart.Series();
        series3.name = "设备购置费";
        series3.type = "bar";
        series3.data = tempData2;

        LineChart.Series series4 = new LineChart.Series();
        series4.name = "工程建设其他费用";
        series4.type = "bar";
        series4.data = tempData3;

        seriesList.Add(series1);
        seriesList.Add(series2);
        seriesList.Add(series3);
        seriesList.Add(series4);

        lsxAxis1.data = tempName;
        lsxAxis1.type = "category";





        title title1 = new title();

        title1.text = "线路费用柱状图";
        title1.subtext = "暂未确定";
        title1.left = "center";


        var newObj = new
        {
            series = seriesList,
            title = title1,
            xAxis = lsxAxis1,
        };

        string strJson = ToJson(newObj);

        WriteJson(strJson);
    }

    public static string ToJson( object obj)
    {
        return NewtonsoftJson(obj);
    }

    public static string NewtonsoftJson(object obj)
    {
        return Newtonsoft.Json.JsonConvert.SerializeObject(obj, Newtonsoft.Json.Formatting.None);
    }

    private static void WriteJson(string str)
    {
        HttpContext.Current.Response.Write(str);
        //HttpContext.Current.Response.ContentType = "text/plain"; //设置MIME格式
        HttpContext.Current.Response.End();
    }


    /// <summary>
    /// 输出Json
    /// </summary>
    /// <param name="key"></param>
    /// <param name="val"></param>
    /// 



    private static void WriteJson(string key, string val)
    {
        HttpContext.Current.Response.Write(GetJSON(key, val));
        HttpContext.Current.Response.ContentType = "text/plain"; //设置MIME格式
        HttpContext.Current.Response.End();
    }



    /// <summary>
    /// 获取JSON字符串
    /// </summary>
    /// <param name="dic"></param>
    /// <returns></returns>
    private static string GetJSON(string key, string val)
    {
        return string.Format("{{\"{0}\":\"{1}\"}}", key, val);
    }


    /// <summary>
    /// 定义一个折线图类 
    /// </summary>

    public class LineChart
    {
        public Series lcSeries { get; set; }
        public xAxis  lcxAxis { get; set; }

        /// <summary>
        /// 定义一个Series类 设置其每一组sereis的一些基本属性
        /// </summary>
        public class Series
        {
            /// <summary>
            /// sereis序列组id
            /// </summary>
            //public int id
            //{
            //    get;
            //    set;
            //}

            /// <summary>
            /// series序列组名称
            /// </summary>
            public string name
            {
                get;
                set;
            }

            /// <summary>
            /// series序列组呈现图表类型(line、column、bar等)
            /// </summary>
            public string type
            {
                get;
                set;
            }

            /// <summary>
            /// series序列组的数据为数据类型数组
            /// </summary>
            public List<double> data
            {
                get;
                set;
            }
        }

        /// <summary>
        /// 定义一个Series类 设置其每一组sereis的一些基本属性
        /// </summary>
        public class xAxis
        {

            /// <summary>
            /// series序列组呈现图表类型(line、column、bar等)
            /// </summary>
            public string type
            {
                get;
                set;
            }

            /// <summary>
            /// series序列组的数据为数据类型数组
            /// </summary>
            public List<string> data
            {
                get;
                set;
            }
        }


    }



    /// <summary>
    /// 定义一个SeriesPie类 设置其每一组SeriesPie的一些基本属性
    /// </summary>
    class SeriesPie
    {
        /// <summary>
        /// sereis序列组id
        /// </summary>
        //public int id
        //{
        //    get;
        //    set;
        //}

        /// <summary>
        /// series序列组名称
        /// </summary>
        public string name
        {
            get;
            set;
        }

        /// <summary>
        /// series序列组呈现图表类型(line、column、bar等)
        /// </summary>
        public string type
        {
            get;
            set;
        }

        /// <summary>
        /// series序列组的数据为数据类型数组
        /// </summary>
        public List<object> data
        {
            get;
            set;
        }
    }

    //表头
    public class title
    {
        //标题
        public string text
        {
            get;
            set;
        }
        //副标题
        public string subtext
        {
            get;
            set;
        }
        //位置
        public string left
        {
            get;
            set;
        }
    }

    //显示比重标签
    public class tooltip
    {
        //名称
        public string trigger
        {
            get;
            set;
        }
        //形式
        public string formatter
        {
            get;
            set;
        }
    }

    public bool IsReusable {
        get {
            return false;
        }
    }

}