package Nillouise.model;

/**
 * Created by win7x64 on 2017/8/25.
 */
public class Document
{
    String path;
    String filename;
    String originname;
    int id;

    public String getPath()
    {
        return path;
    }

    public void setPath(String path)
    {
        this.path = path;
    }

    public String getFilename()
    {
        return filename;
    }

    public void setFilename(String filename)
    {
        this.filename = filename;
    }

    public String getOriginname()
    {
        return originname;
    }

    public void setOriginname(String originname)
    {
        this.originname = originname;
    }

    public int getId()
    {
        return id;
    }

    public void setId(int id)
    {
        this.id = id;
    }
}
