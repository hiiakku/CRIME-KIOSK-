package Jama;

public class anunachalpradesh {
	public static void main(String[] args) 
	{
		int r=116,c=5;
			double vals[][] = {{33,35,5,749},{30,31,2,785},{33,29,2,785},{31,30,3,852}};
			double res[][] = {{65},{57},{69},{86}};
			Matrix A = new Matrix(vals);
		      Matrix B = A.transpose();
		      Matrix C = B.times(A);
		      Matrix D = C.inverse();
		      Matrix E = D.times(B);
		      
		      Matrix F = new Matrix(res);
		      Matrix G = E.times(F);
		      G.print(1, 2);
		      double[][] vall = {{31,36,3,850}};
		     
              Matrix H = new Matrix(vall);

		      Matrix I = H.times(G);
  		      Matrix J = I.times(0.5);
  		      I.print(1, 2);
  		    System.out.println((I.get(0, 0)-49)/49);//rest[k-1][0];
	}

}
