using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace RoadFlow.Data.Interface
{
    public interface IDirectory
    {
        int Add(RoadFlow.Data.Model.Directory model);

        /// <summary>
        /// 更新
        /// </summary>
        int Update(RoadFlow.Data.Model.Directory model);

        /// <summary>
        /// 查询所有记录
        /// </summary>
        List<RoadFlow.Data.Model.Directory> GetAll();

        List<RoadFlow.Data.Model.Directory> GetBySnumber();

        List<RoadFlow.Data.Model.Directory> GetByTitle();//深圳地铁1号线

        /// <summary>
        /// 得到所有直接下级
        /// </summary>
        List<RoadFlow.Data.Model.Directory> GetFirstChilds(Guid id);

        /// <summary>
        /// 查询单条记录
        /// </summary>
        Model.Directory Get(Guid id);

        /// <summary>
        /// 返回子节点车站的指标
        /// </summary>
        Model.Directory GetParentIDAndTitle(Guid id,string title);

        /// <summary>
        /// 删除
        /// </summary>
        int Delete(Guid id);

        /// <summary>
        /// 查询记录条数
        /// </summary>
        long GetCount();


        /// <summary>
        /// 查询根记录
        /// </summary>
        RoadFlow.Data.Model.Directory GetRoot();

        /// <summary>
        /// 查询下级记录
        /// </summary>
        List<RoadFlow.Data.Model.Directory> GetChilds(Guid id);

        /// <summary>
        /// 查询下级记录
        /// </summary>
        List<RoadFlow.Data.Model.Directory> GetChilds(string code);

        /// <summary>
        /// 查询上级记录
        /// </summary>
        RoadFlow.Data.Model.Directory GetParent(Guid id);

        /// <summary>
        /// 是否包含下级记录
        /// </summary>
        bool HasChilds(Guid id);

        /// <summary>
        /// 得到最大排序
        /// </summary>
        int GetMaxSort(Guid id);

        /// <summary>
        /// 更新排序
        /// </summary>
        int UpdateSort(Guid id, int sort);

        /// <summary>
        /// 根据代码查询一条记录
        /// </summary>
        RoadFlow.Data.Model.Directory GetByCode(string code);
    }
}
