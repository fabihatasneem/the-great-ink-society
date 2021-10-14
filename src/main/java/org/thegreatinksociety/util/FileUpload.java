package org.thegreatinksociety.util;

import javax.servlet.http.Part;
import java.io.*;

public class FileUpload {

    public static void upload(Part part, String path) {
        if (part != null) {
                String Value = getFileName(part);

                if (Value != null && !Value.equalsIgnoreCase("")) {
                    if (!Value.equalsIgnoreCase("")) {
                        String FileName =  "_" + Value;

                        boolean ret = uploadFile(part, FileName, path);
                        if (ret) {
                            System.out.println("FILE UPLOADED");
                        }
                    }
                } else {
                    System.out.println("FieldName has a null Value, not updating" + " = " + Value);
                }

            }
    }


    private static String getFileName(final Part part) {
        final String partHeader = part.getHeader("content-disposition");
        System.out.println("Part Header = {0}" + partHeader);
        for (String content : part.getHeader("content-disposition").split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return null;
    }

    private static boolean uploadFile(Part filePart, String fileName, String path) {

        OutputStream out = null;
        InputStream filecontent = null;
        File dir = new File(path);

        if (!dir.exists()) {
            dir.mkdir();
            System.out.println("created directory " + path);
        }

        try {
            out = new FileOutputStream(new File(path + File.separator + fileName));
            filecontent = filePart.getInputStream();

            int read = 0;
            final byte[] bytes = new byte[(int) filePart.getSize()];

            // MediaMetadataRetriever
            while ((read = filecontent.read(bytes)) != -1) {
                out.write(bytes, 0, read);
            }
            // out.
            System.out.println("New file " + fileName + " created at " + path);

        } catch (IOException fne) {
            System.out.println("You either did not specify a file to upload or are "
                    + "trying to upload a file to a protected or nonexistent " + "location.");
            System.out.println("ERROR: " + fne.getMessage());
            return false;
        } finally {
            if (out != null) {
                try {
                    out.close();
                } catch (IOException e) {
                    e.printStackTrace();
                    return false;
                }
            }
            if (filecontent != null) {
                try {
                    filecontent.close();
                } catch (IOException e) {
                    e.printStackTrace();
                    return false;
                }
            }
        }
        return true;
    }
}
