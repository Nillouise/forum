package Nillouise.model;

/**
 * Created by win7x64 on 2017/9/24.
 */
public class PageModel
{
    //条目总数
    private int itemCount;
    //一页的条目数
    private int pageSize;
    //当前页面
    private int curPage;


    public PageModel(int itemCount, int pageSize, int curPage)
    {
        this.itemCount = itemCount;
        this.pageSize = pageSize;
        this.curPage = curPage;
    }

    //获得当前页要从哪个item开始(以0为坐标）
    public int getCurPageItemStart()
    {
        return (getCurPage()-1)*pageSize;
    }


    //获得最大页数
    public int getMaxPageNumber()
    {
        //个数转坐标
        int index = (itemCount-1)/pageSize +1;

        return index<1?1:index;
    }


    public int getItemCount()
    {
        return itemCount<=0?0:itemCount;
    }

    public void setItemCount(int itemCount)
    {
        this.itemCount = itemCount;
    }

    public int getPageSize()
    {
        return pageSize;
    }

    public void setPageSize(int pageSize)
    {
        this.pageSize = pageSize;
    }

    public int getCurPage()
    {
        if(curPage>getMaxPageNumber())
        {
            return getMaxPageNumber();
        }
        return curPage<1?1:curPage;
    }

    public void setCurPage(int curPage)
    {
        this.curPage = curPage;
    }



}
