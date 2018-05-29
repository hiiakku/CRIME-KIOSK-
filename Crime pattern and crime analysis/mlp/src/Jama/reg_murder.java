package Jama;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;

public class reg_murder {

	public static void main(String[] args) 
	{
		int r=144,c=5;
			double vals[][] = new double[r][c];
			double res[][] = new double[r][1];
			for(int i=0;i<r;i++)
				vals[i][0]=1;
			try {
			

	             InputStream input = new BufferedInputStream(
	                        new FileInputStream("C:\\Users\\admin\\Desktop\\SM\\sem6-2018\\minor\\crime2011.xls"));
	            POIFSFileSystem fs = new POIFSFileSystem( input );
	            HSSFWorkbook wb = new HSSFWorkbook(fs);
	            HSSFSheet sheet = wb.getSheetAt(0);

	            Iterator rows = sheet.rowIterator();
	            
	            int i,k,j=5;
	            k=0;
	            while( rows.hasNext() ) {  
	            	
	            	i=0;
	            	String s="";
	            	HSSFRow row = (HSSFRow) rows.next();
	                Iterator cells = row.cellIterator();
	                if(k>0&&k<145){
	                while( cells.hasNext() ) {
	                    HSSFCell cell = (HSSFCell) cells.next();
	                    if(HSSFCell.CELL_TYPE_NUMERIC==cell.getCellType()){
	                    	if(i<=4)	                    		{
	                    		
	                    		vals[k-1][i]=cell.getNumericCellValue();
	                    		
	                    		}
	                    	else if(i==j)
	                    		res[k-1][0]=cell.getNumericCellValue();
	                    	
	                    	i++;

	                    }
	                    else
	                    if(HSSFCell.CELL_TYPE_STRING==cell.getCellType()){
	                        s=s+ cell.getStringCellValue();
	                        if(i==0)
	                        	i++;
	                    }
	                    else{
	                    
	                    }
	                }
	                }
	                
	                k++;
	            }
			
		} catch ( IOException ex ) {
            System.out.println("");
            ex.printStackTrace();
		}
			
			Matrix A = new Matrix(vals);
		      Matrix B = A.transpose();
		      Matrix C = B.times(A);
		      Matrix D = C.inverse();
		      Matrix E = D.times(B);
		      
		      Matrix F = new Matrix(res);
		      Matrix G = E.times(F);
		      G.print(1, 2);
		      
		      double[][] vall = new double[1][5];
		      vall[0][0]=1.0;
		      double[][] rest = new double[29][1];
		      String[] s = new String[29]; 

		      try {
					

		             InputStream input = new BufferedInputStream(
		                        new FileInputStream("C:\\Users\\admin\\Desktop\\SM\\sem6-2018\\minor\\crime2017.xls"));
		            POIFSFileSystem fs = new POIFSFileSystem( input );
		            HSSFWorkbook wb = new HSSFWorkbook(fs);
		            HSSFSheet sheet = wb.getSheetAt(0);

		            Iterator rows = sheet.rowIterator();
		            
		            int i,k,j=5;
		            k=0;
		            while( rows.hasNext() ) {  
		            	
		            	i=0;
		            	//String s="";
		            	HSSFRow row = (HSSFRow) rows.next();
		                Iterator cells = row.cellIterator();
		                if(k>0){
		                while( cells.hasNext() ) {
		                    HSSFCell cell = (HSSFCell) cells.next();
		                    if(HSSFCell.CELL_TYPE_NUMERIC==cell.getCellType()){
		                    	if(i<=4)
		                    		{		                    		
		                    		vall[0][i]=cell.getNumericCellValue();
		                    		}
		                    	
		                    	i++;
		                    }
		                    else
		                    if(HSSFCell.CELL_TYPE_STRING==cell.getCellType()){
		                        s[k-1]="" + cell.getStringCellValue();
		                        if(i==0)
		                        	i++;
		                    }
		                    else{
		                    
		                    }
		                }
		                Matrix H = new Matrix(vall);
		  		      
		  		      Matrix I = H.times(G);
		  		      
		  		      rest[k-1][0]=Math.round(Math.abs(I.get(0, 0)));
		                }
		                k++;
		            }
			} catch ( IOException ex ) {
	            System.out.println("");
	            ex.printStackTrace();
			}
		     
			for(int i=0;i<29;i++)
				{
				System.out.println(s[i] + " => "+rest[i][0]+"   ");
				}
		
	}			
}
