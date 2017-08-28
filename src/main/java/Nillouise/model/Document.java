package Nillouise.model;


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
