using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Reflection;
using Error;

namespace houserent.App_Code.TableBusiness
{
    public class TableHelper
    {
        public ErrorType AddData<T, String>(T t, string tableName)
        {
            PropertyInfo[] props = null;
            ErrorType errorType=ErrorType.Success;
            try
            {
                Type type = typeof(T);
                object obj = Activator.CreateInstance(type);
                props = type.GetProperties(BindingFlags.Public | BindingFlags.Instance);
                if (props != null && props.Count() > 0)
                {
                    Dictionary<string, string> fieldsAndValue = new Dictionary<string, string>();
                    foreach (var item in props)
                    {
                        fieldsAndValue.Add(item.Name, item.GetValue(t).ToString());
                    }
                    if (fieldsAndValue != null && fieldsAndValue.Count > 0)
                    {
                        errorType=DBHelper.AddData(fieldsAndValue, tableName);
                    }
                }
            }
            catch (Exception ex)
            {
                return ErrorType.Failed;
            }
            return errorType;
        }

        public ErrorType UpdateData<T>(T t, List<string> updateList, List<string> whereList, string tableName)
        {
            PropertyInfo[] props = null;
            ErrorType errorType = ErrorType.Success;
            Dictionary<string, string> updateDic=new Dictionary<string,string>();
            Dictionary<string, string> whereDic = new Dictionary<string, string>();
            try
            {
                Type type = typeof(T);
                object obj = Activator.CreateInstance(type);
                props = type.GetProperties(BindingFlags.Public | BindingFlags.Instance);
                if (props != null && props.Count() > 0)
                {
                    foreach (var item in props)
                    {
                        if (updateList.Contains(item.Name))
                        {
                            updateDic.Add(item.Name, item.GetValue(t).ToString());
                        }
                        if (whereList.Contains(item.Name))
                        {
                            whereDic.Add(item.Name, item.GetValue(t).ToString());
                        }  
                    }
                    errorType = DBHelper.UpdateData(updateDic, whereDic, tableName);
                }
            }
            catch (Exception ex)
            {
                return ErrorType.Failed;
            }
            return errorType;
        }
    }
}