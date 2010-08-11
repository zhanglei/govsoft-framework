<%@ WebHandler Language="c#" Class="File_WebHandler" Debug="true" %>

using System;
using System.Web;
using System.IO;
using System.Drawing;
using System.Drawing.Imaging;

public class File_WebHandler : IHttpHandler
{
    public void ProcessRequest(HttpContext context)
    {
        if (context.Request.Files.Count > 0)
        {
            HttpPostedFile file = context.Request.Files[0];

            if (file.ContentLength > 0 && file.ContentType.IndexOf("image/") >= 0)
            {
                int width = Convert.ToInt32(context.Request.Form["width"]);
                int height = Convert.ToInt32(context.Request.Form["height"]);

                string path = "data:image/jpeg;base64," + Convert.ToBase64String(ResizeImg(file.InputStream, width, height).GetBuffer());

                context.Response.Write(path);
            }
        }
    }

    public MemoryStream ResizeImg(Stream ImgFile, int maxWidth, int maxHeight)
    {
        Image imgPhoto = Image.FromStream(ImgFile);
        
        decimal desiredRatio = Math.Min((decimal)maxWidth / imgPhoto.Width, (decimal)maxHeight / imgPhoto.Height);
        int iWidth = (int)(imgPhoto.Width * desiredRatio);
        int iHeight = (int)(imgPhoto.Height * desiredRatio);
        
        Bitmap bmPhoto = new Bitmap(iWidth, iHeight);

        Graphics gbmPhoto = Graphics.FromImage(bmPhoto);
        gbmPhoto.DrawImage(imgPhoto, new Rectangle(0, 0, iWidth, iHeight), new Rectangle(0, 0, imgPhoto.Width, imgPhoto.Height), GraphicsUnit.Pixel);

        MemoryStream ms = new MemoryStream();
        bmPhoto.Save(ms, ImageFormat.Jpeg);

        imgPhoto.Dispose();
        gbmPhoto.Dispose();
        bmPhoto.Dispose();

        return ms;
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }
}