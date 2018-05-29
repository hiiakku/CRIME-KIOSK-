package Jama;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.Iterator;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;

public class reg_dowry {

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
	            
	            int i,k,j=6;
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
	                    	if(i<=4)
	                    		{
	                    	//	System.out.print( cell.getNumericCellValue()+"     " );
	                    		
	                    		vals[k-1][i]=cell.getNumericCellValue();
	                    		
	                    		}
	                    	else if(i==j)
	                    		res[k-1][0]=cell.getNumericCellValue();
	                    	//else
	                    		//{
	                    		//System.out.print( cell.getNumericCellValue() + "     " );
	                 
	                    	//	if(i==2)
	                    		//	map.put(s, (cell.getNumericCellValue()/Tot[i-1])*100);
	                    		
	                    		//}
	                    	i++;

	                       // sum += cell.getNumericCellValue();
	                    }
	                    else
	                    if(HSSFCell.CELL_TYPE_STRING==cell.getCellType()){
	                   //     System.out.print( cell.getStringCellValue()+"     " );
	                        s=s+ cell.getStringCellValue();
	                        if(i==0)
	                        	i++;
	                    }
	                    else{
	                    
	                    }
	                }
	        //        System.out.println();//"SUM : " + sum);
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
		      
		    //  E.print(5, 5);
		     // A.print(4, 1);
		      Matrix F = new Matrix(res);
		     // F.print(1, 2);
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

		            //double Tot[] = new double[7];
		            
		            Iterator rows = sheet.rowIterator();
		            
		            int i,k,j=6;
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
		                    	//	System.out.print( cell.getNumericCellValue()+"     " );
		                    		
		                    		vall[0][i]=cell.getNumericCellValue();
		                    		
		                    		}
		                    	else if(i==j){}
		                    		//rest[k-1][0]=cell.getNumericCellValue();
		                    	//else
		                    		//{
		                    		//System.out.print( cell.getNumericCellValue() + "     " );
		                 
		                    	//	if(i==2)
		                    		//	map.put(s, (cell.getNumericCellValue()/Tot[i-1])*100);
		                    		
		                    		//}
		                    	i++;

		                       // sum += cell.getNumericCellValue();
		                    }
		                    else
		                    if(HSSFCell.CELL_TYPE_STRING==cell.getCellType()){
		                   //     System.out.print( cell.getStringCellValue()+"     " );
		                        s[k-1]="" + cell.getStringCellValue();
		                        if(i==0)
		                        	i++;
		                    }
		                    else{
		                    
		                    }
		                }
		        //        System.out.println();//"SUM : " + sum);
		                Matrix H = new Matrix(vall);
		  		      
		  		      Matrix I = H.times(G);
		  		      Matrix J = I.times(0.5);
		  		      //I.print(1, 4);
		  		      
		  		      rest[k-1][0]=Math.round(Math.abs(I.get(0, 0)));//-rest[k-1][0])/I.get(0, 0);//rest[k-1][0];
		  		      
		                }
		                k++;
		            }
				
			} catch ( IOException ex ) {
	            System.out.println("");
	            ex.printStackTrace();
			}
		      
			/*
			for(int i=0;i<r;i++)
				{
				for(int j=0;j<c;j++)
				{
					System.out.print(vals[i][j]+"   ");
				}
				System.out.println();
				}
				*/
			for(int i=0;i<29;i++)
				{
				
				System.out.println(s[i] + " => "+rest[i][0]+"   ");
				
				String ss ="<tr><td>\n" + s[i] +" \n</td> "+"<td>"+String.format("%.2f",rest[i][0])+" \n</td>"+"</tr>\n";
                
                    try {
						Files.write(Paths.get("mytext.txt"), ss.getBytes(), StandardOpenOption.APPEND);
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
                
				}
		
	}			
}
