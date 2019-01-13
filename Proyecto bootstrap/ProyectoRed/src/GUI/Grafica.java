package GUI;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartFrame;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.general.DefaultPieDataset;
import org.jfree.data.xy.XYDataset;
import org.jfree.data.xy.XYSeries;
import org.jfree.data.xy.XYSeriesCollection;

/** * A simple introduction to using JFreeChart.This demo is described in the * JFreeChart Developer Guide. */ 
public class Grafica 
{ 
	/** * The starting point for the demo. ** @param argsignored. */ 

	XYSeries con_ventana;
        XYSeries umbral;
        XYSeries limite;
	public Grafica()
	{
            con_ventana= new XYSeries("con_ventana");
            umbral= new XYSeries("umbral");
            limite= new XYSeries("limite");
	}

	public void plotTcp(int iteracion, int con_ventana,int umbral,int limite) 
	{ 
		this.con_ventana.add(iteracion, con_ventana);
                this.umbral.add(iteracion, umbral);
                this.limite.add(iteracion,limite);    
	}
        
public void plotGraph()
{
        XYSeriesCollection dataset = new XYSeriesCollection();
        dataset.addSeries(con_ventana);
        dataset.addSeries(umbral);
        dataset.addSeries(limite);

        //         Generate the graph
        JFreeChart chart = ChartFactory.createXYLineChart("HTTP CON TCP RENO", // Title
                "Iteracion", // x-axis Label
                "Ventana", // y-axis Label
                dataset, // Dataset
                PlotOrientation.VERTICAL, // Plot Orientation
                true, // Show Legend
                true, // Use tooltips
                false // Configure chart to generate URLs?
            );
		
		// create and display a frame...
		ChartFrame frame = new ChartFrame("TCP/RENO", chart); 
		frame.pack();
		frame.setVisible(true); 
		} 
}